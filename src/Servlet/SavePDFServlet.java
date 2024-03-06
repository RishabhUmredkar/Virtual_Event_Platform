package Servlet;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.util.UUID;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/savePDFServlet")
public class SavePDFServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try (InputStream pdfData = request.getInputStream()) {
            // Save the PDF to a file on the server
            String uniqueId = UUID.randomUUID().toString();
            Path pdfPath = Files.createTempFile("generated_pdf_" + uniqueId, ".pdf");
            Files.copy(pdfData, pdfPath, StandardCopyOption.REPLACE_EXISTING);

            response.getWriter().write(pdfPath.toString());
        }
    }
}
