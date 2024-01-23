package Model;

import java.sql.Date;
import java.sql.Time;

public class VenueEvent {
    private int id;
    private String event_name;
    private String event_category;
    private Date event_date;
    private Time event_time;
    private int event_duration;
    private String event_image; // I'm assuming event_image is placed after event_duration
    private String event_description;
    private String event_venue;
    private String event_address1;
    private String event_address2;
    private String event_country;
    private String event_state;
    private String event_city;
    private int event_pin_code;
    private int event_price;
    private int event_total_tickets;

    // Constructors, getters, and setters

    public VenueEvent() {
        // Default constructor
    }

    public VenueEvent(int id) {
		super();
		this.id = id;
	}

	public VenueEvent(int id, String event_name, String event_category, Date event_date, Time event_time,
                            int event_duration, String event_image, String event_description, String event_venue,
                            String event_address1, String event_address2, String event_country, String event_state,
                            String event_city, int event_pin_code, int event_price, int event_total_tickets) {
        this.id = id;
        this.event_name = event_name;
        this.event_category = event_category;
        this.event_date = event_date;
        this.event_time = event_time;
        this.event_duration = event_duration;
        this.event_image = event_image;
        this.event_description = event_description;
        this.event_venue = event_venue;
        this.event_address1 = event_address1;
        this.event_address2 = event_address2;
        this.event_country = event_country;
        this.event_state = event_state;
        this.event_city = event_city;
        this.event_pin_code = event_pin_code;
        this.event_price = event_price;
        this.event_total_tickets = event_total_tickets;
    }
    
    

    public VenueEvent(String event_name, String event_category, Date event_date, Time event_time, int event_duration,
			String event_image, String event_description, String event_venue, String event_address1,
			String event_address2, String event_country, String event_state, String event_city, int event_pin_code,
			int event_price, int event_total_tickets) {
		super();
		this.event_name = event_name;
		this.event_category = event_category;
		this.event_date = event_date;
		this.event_time = event_time;
		this.event_duration = event_duration;
		this.event_image = event_image;
		this.event_description = event_description;
		this.event_venue = event_venue;
		this.event_address1 = event_address1;
		this.event_address2 = event_address2;
		this.event_country = event_country;
		this.event_state = event_state;
		this.event_city = event_city;
		this.event_pin_code = event_pin_code;
		this.event_price = event_price;
		this.event_total_tickets = event_total_tickets;
	}

	// Add getters and setters for each field

    
    
    // toString() method for debugging or logging purposes
    @Override
    public String toString() {
        return "VenueEventTicket{" +
                "id=" + id +
                ", event_name='" + event_name + '\'' +
                ", event_category='" + event_category + '\'' +
                ", event_date=" + event_date +
                ", event_time=" + event_time +
                ", event_duration=" + event_duration +
                ", event_image='" + event_image + '\'' +
                ", event_description='" + event_description + '\'' +
                ", event_venue='" + event_venue + '\'' +
                ", event_address1='" + event_address1 + '\'' +
                ", event_address2='" + event_address2 + '\'' +
                ", event_country='" + event_country + '\'' +
                ", event_state='" + event_state + '\'' +
                ", event_city='" + event_city + '\'' +
                ", event_pin_code=" + event_pin_code +
                ", event_price=" + event_price +
                ", event_total_tickets=" + event_total_tickets +
                '}';
    }

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEvent_name() {
		return event_name;
	}

	public void setEvent_name(String event_name) {
		this.event_name = event_name;
	}

	public String getEvent_category() {
		return event_category;
	}

	public void setEvent_category(String event_category) {
		this.event_category = event_category;
	}

	public Date getEvent_date() {
		return event_date;
	}

	public void setEvent_date(Date event_date) {
		this.event_date = event_date;
	}

	public Time getEvent_time() {
		return event_time;
	}

	public void setEvent_time(Time event_time) {
		this.event_time = event_time;
	}

	public int getEvent_duration() {
		return event_duration;
	}

	public void setEvent_duration(int event_duration) {
		this.event_duration = event_duration;
	}

	public String getEvent_image() {
		return event_image;
	}

	public void setEvent_image(String event_image) {
		this.event_image = event_image;
	}

	public String getEvent_description() {
		return event_description;
	}

	public void setEvent_description(String event_description) {
		this.event_description = event_description;
	}

	public String getEvent_venue() {
		return event_venue;
	}

	public void setEvent_venue(String event_venue) {
		this.event_venue = event_venue;
	}

	public String getEvent_address1() {
		return event_address1;
	}

	public void setEvent_address1(String event_address1) {
		this.event_address1 = event_address1;
	}

	public String getEvent_address2() {
		return event_address2;
	}

	public void setEvent_address2(String event_address2) {
		this.event_address2 = event_address2;
	}

	public String getEvent_country() {
		return event_country;
	}

	public void setEvent_country(String event_country) {
		this.event_country = event_country;
	}

	public String getEvent_state() {
		return event_state;
	}

	public void setEvent_state(String event_state) {
		this.event_state = event_state;
	}

	public String getEvent_city() {
		return event_city;
	}

	public void setEvent_city(String event_city) {
		this.event_city = event_city;
	}

	public int getEvent_pin_code() {
		return event_pin_code;
	}

	public void setEvent_pin_code(int event_pin_code) {
		this.event_pin_code = event_pin_code;
	}

	public int getEvent_price() {
		return event_price;
	}

	public void setEvent_price(int event_price) {
		this.event_price = event_price;
	}

	public int getEvent_total_tickets() {
		return event_total_tickets;
	}

	public void setEvent_total_tickets(int event_total_tickets) {
		this.event_total_tickets = event_total_tickets;
	}
}
