package Model;

import java.sql.Date;
import java.sql.Time;

public class VenueOrderDetails {
	
	private int id;
		private String firstName;
	    private String lastName;
	    private String email;
	    private String address;
	    private String country;
	    private String state;
	    private String city;
	    private int pinCode;
	    private String eventImage;
	    private String eventName;
	    private String eventCategory;
	    private Date eventDate;
	    private Time eventTime;
	    private int eventDuration;
	    private String eventDescription;

	    private String eventAddress1;
	    private String eventAddress2;
	    private String eventCity;
	    private String eventState;
	    private String eventCountry;
	    private String eventPinCode;
	    
	    private int quantity;
	    private int price;
	    private int total;
	    
	    private String eventCardNumber;
	    private java.sql.Date eventExpiryDate;
	    private int cvv;
	
	    public VenueOrderDetails() {
			super();
			// TODO Auto-generated constructor stub
		}

		public VenueOrderDetails(int id) {
			super();
			this.id = id;
		}

		public VenueOrderDetails(String email) {
			super();
			this.email = email;
		}

		public VenueOrderDetails(int id, String email) {
			super();
			this.id = id;
			this.email = email;
		}

		public VenueOrderDetails(String firstName, String lastName, String email, String eventImage, String eventName,
		        String eventCategory, Date eventDate, Time eventTime, int eventDuration, String eventDescription,
		        String eventAddress1, String eventAddress2, String eventCity, String eventState, String eventCountry, String eventPinCode,
		        int price,int quantity, int total) {
		    super();
		    this.firstName = firstName;
		    this.lastName = lastName;
		    this.email = email;
		    this.eventImage = eventImage;
		    this.eventName = eventName;
		    this.eventCategory = eventCategory;
		    this.eventDate = eventDate;
		    this.eventTime = eventTime;
		    this.eventDuration = eventDuration;
		    this.eventDescription = eventDescription;
		    this.eventAddress1 = eventAddress1;
		    this.eventAddress2 = eventAddress2;
		    this.eventCity = eventCity;
		    this.eventState = eventState;
		    this.eventCountry = eventCountry;
		    this.eventPinCode = eventPinCode;
		    this.price = price;
		    this.quantity = quantity;
		    this.total = total;
		}		
		public VenueOrderDetails(String firstName, String lastName, String email, String eventImage, String eventName,
		        String eventCategory, Date eventDate, Time eventTime) {
		    super();
		    this.firstName = firstName;
		    this.lastName = lastName;
		    this.email = email;
		    this.eventImage = eventImage;
		    this.eventName = eventName;
		    this.eventCategory = eventCategory;
		    this.eventDate = eventDate;
		    this.eventTime = eventTime;
		    
		}


		public VenueOrderDetails(String address, String country, String state, String city, int pinCode,
				String eventCardNumber, Date eventExpiryDate, int cvv) {
			super();
			this.address = address;
			this.country = country;
			this.state = state;
			this.city = city;
			this.pinCode = pinCode;
			this.eventCardNumber = eventCardNumber;
			this.eventExpiryDate = eventExpiryDate;
			this.cvv = cvv;
		}

		public VenueOrderDetails(String firstName, String lastName, String email, String address, String country,
				String state, String city, int pinCode, String eventImage, String eventName, String eventCategory,
				Date eventDate, Time eventTime, int eventDuration, String eventDescription, String eventAddress1,
				String eventAddress2, String eventCity, String eventState, String eventCountry, String eventPinCode,
				int quantity, int price,int total, String eventCardNumber, Date eventExpiryDate, int cvv) {
			super();
			this.firstName = firstName;
			this.lastName = lastName;
			this.email = email;
			this.address = address;
			this.country = country;
			this.state = state;
			this.city = city;
			this.pinCode = pinCode;
			this.eventImage = eventImage;
			this.eventName = eventName;
			this.eventCategory = eventCategory;
			this.eventDate = eventDate;
			this.eventTime = eventTime;
			this.eventDuration = eventDuration;
			this.eventDescription = eventDescription;
			this.eventAddress1 = eventAddress1;
			this.eventAddress2 = eventAddress2;
			this.eventCity = eventCity;
			this.eventState = eventState;
			this.eventCountry = eventCountry;
			this.eventPinCode = eventPinCode;
			this.quantity = quantity;
		    this.price = price;
			this.total = total;
			this.eventCardNumber = eventCardNumber;
			this.eventExpiryDate = eventExpiryDate;
			this.cvv = cvv;
		}

		public VenueOrderDetails(int id, String firstName, String lastName, String email, String address,
				String country, String state, String city, int pinCode, String eventImage, String eventName,
				String eventCategory, Date eventDate, Time eventTime, int eventDuration, String eventDescription,
				String eventAddress1, String eventAddress2, String eventCity, String eventState, String eventCountry,
				String eventPinCode, int quantity, int price,int total, String eventCardNumber, Date eventExpiryDate, int cvv) {
			super();
			this.id = id;
			this.firstName = firstName;
			this.lastName = lastName;
			this.email = email;
			this.address = address;
			this.country = country;
			this.state = state;
			this.city = city;
			this.pinCode = pinCode;
			this.eventImage = eventImage;
			this.eventName = eventName;
			this.eventCategory = eventCategory;
			this.eventDate = eventDate;
			this.eventTime = eventTime;
			this.eventDuration = eventDuration;
			this.eventDescription = eventDescription;
			this.eventAddress1 = eventAddress1;
			this.eventAddress2 = eventAddress2;
			this.eventCity = eventCity;
			this.eventState = eventState;
			this.eventCountry = eventCountry;
			this.eventPinCode = eventPinCode;
			this.quantity = quantity;
		    this.price = price;
			this.total = total;
			this.eventCardNumber = eventCardNumber;
			this.eventExpiryDate = eventExpiryDate;
			this.cvv = cvv;
		}

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getFirstName() {
			return firstName;
		}

		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}

		public String getLastName() {
			return lastName;
		}

		public void setLastName(String lastName) {
			this.lastName = lastName;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getAddress() {
			return address;
		}

		public void setAddress(String address) {
			this.address = address;
		}

		public String getCountry() {
			return country;
		}

		public void setCountry(String country) {
			this.country = country;
		}

		public String getState() {
			return state;
		}

		public void setState(String state) {
			this.state = state;
		}

		public String getCity() {
			return city;
		}

		public void setCity(String city) {
			this.city = city;
		}

		public int getPinCode() {
			return pinCode;
		}

		public void setPinCode(int pinCode) {
			this.pinCode = pinCode;
		}

		public String getEventImage() {
			return eventImage;
		}

		public void setEventImage(String eventImage) {
			this.eventImage = eventImage;
		}

		public String getEventName() {
			return eventName;
		}

		public void setEventName(String eventName) {
			this.eventName = eventName;
		}

		public String getEventCategory() {
			return eventCategory;
		}

		public void setEventCategory(String eventCategory) {
			this.eventCategory = eventCategory;
		}

		public Date getEventDate() {
			return eventDate;
		}

		public void setEventDate(Date eventDate) {
			this.eventDate = eventDate;
		}

		public Time getEventTime() {
			return eventTime;
		}

		public void setEventTime(Time eventTime) {
			this.eventTime = eventTime;
		}

		public int getEventDuration() {
			return eventDuration;
		}

		public void setEventDuration(int eventDuration) {
			this.eventDuration = eventDuration;
		}

		public String getEventDescription() {
			return eventDescription;
		}

		public void setEventDescription(String eventDescription) {
			this.eventDescription = eventDescription;
		}

		public String getEventAddress1() {
			return eventAddress1;
		}

		public void setEventAddress1(String eventAddress1) {
			this.eventAddress1 = eventAddress1;
		}

		public String getEventAddress2() {
			return eventAddress2;
		}

		public void setEventAddress2(String eventAddress2) {
			this.eventAddress2 = eventAddress2;
		}

		public String getEventCity() {
			return eventCity;
		}

		public void setEventCity(String eventCity) {
			this.eventCity = eventCity;
		}

		public String getEventState() {
			return eventState;
		}

		public void setEventState(String eventState) {
			this.eventState = eventState;
		}

		public String getEventCountry() {
			return eventCountry;
		}

		public void setEventCountry(String eventCountry) {
			this.eventCountry = eventCountry;
		}

		public String getEventPinCode() {
			return eventPinCode;
		}

		public void setEventPinCode(String eventPinCode) {
			this.eventPinCode = eventPinCode;
		}

		public int getQuantity() {
			return quantity;
		}

		public void setQuantity(int quantity) {
			this.quantity = quantity;
		}

		public int getTotal() {
			return total;
		}

		public int getPrice() {
			return price;
		}

		public void setPrice(int price) {
			this.price = price;
		}

		public void setTotal(int total) {
			this.total = total;
		}

		public String getEventCardNumber() {
			return eventCardNumber;
		}

		public void setEventCardNumber(String eventCardNumber) {
			this.eventCardNumber = eventCardNumber;
		}

		public java.sql.Date getEventExpiryDate() {
			return eventExpiryDate;
		}

		public void setEventExpiryDate(java.sql.Date eventExpiryDate) {
			this.eventExpiryDate = eventExpiryDate;
		}

		public int getCvv() {
			return cvv;
		}

		public void setCvv(int cvv) {
			this.cvv = cvv;
		}

		@Override
		public String toString() {
			return "VenueOrderDetails [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", email="
					+ email + ", address=" + address + ", country=" + country + ", state=" + state + ", city=" + city
					+ ", pinCode=" + pinCode + ", eventImage=" + eventImage + ", eventName=" + eventName
					+ ", eventCategory=" + eventCategory + ", eventDate=" + eventDate + ", eventTime=" + eventTime
					+ ", eventDuration=" + eventDuration + ", eventDescription=" + eventDescription + ", eventAddress1="
					+ eventAddress1 + ", eventAddress2=" + eventAddress2 + ", eventCity=" + eventCity + ", eventState="
					+ eventState + ", eventCountry=" + eventCountry + ", eventPinCode=" + eventPinCode + ", quantity="
					+ quantity + ", total=" + total + ", eventCardNumber=" + eventCardNumber + ", eventExpiryDate="
					+ eventExpiryDate + ", cvv=" + cvv + "]";
		}

}
