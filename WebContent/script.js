function submitForm() {
    // Get form data
    var formData = {
     
      // Add more fields as needed
    };
  
    // Generate PDF using html2pdf library
    var content = document.getElementById('registrationForm');
    html2pdf(content, {
      margin: 10,
      filename: 'registration_form.pdf',
      image: { type: 'jpeg', quality: 0.98 },
      html2canvas: { scale: 2 },
      jsPDF: { unit: 'mm', format: 'a4', orientation: 'portrait' }
    }).then(function(pdf) {
      // Save the PDF on the server (you need to implement this on the server side)
      savePDFOnServer(pdf.output('blob'));
  
      // Optionally, you can open the PDF in a new tab
      // pdf.output('dataurlnewwindow');
    });
  }
  
  function savePDFOnServer(pdfBlob) {
    // Send the PDF blob to the server (you need to implement this on the server side)
    var xhr = new XMLHttpRequest();
    xhr.open('POST', 'save_pdf.php', true);
    xhr.setRequestHeader('Content-Type', 'application/pdf');
    xhr.send(pdfBlob);
  
    // Handle the server response (optional)
    xhr.onreadystatechange = function() {
      if (xhr.readyState == 4 && xhr.status == 200) {
        // Optionally handle the server response
        console.log(xhr.responseText);
      }
    };
    // Generate PDF using jsPDF and html2pdf libraries
  var pdf = new jsPDF();
  pdf.html(tableHTML, {
    callback: function(pdf) {
      pdf.save(`${formData.firstname}_registration_form.pdf`);
    },
    x: 10,
    y: 10,
  });
  }
  