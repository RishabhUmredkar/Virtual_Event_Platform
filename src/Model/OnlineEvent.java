package Model;

import java.sql.Date;
import java.sql.Time;

public class OnlineEvent {
    private int id;
    private String event_name;
    private String event_category;
    private Date event_date;
    private Time event_time;
    private int event_duration;
    private String event_image;
    private String event_description;
    private String event_hosting; // New field added
    private int event_price;
    private int event_total_tickets;

    // Constructors, getters, and setters

    public OnlineEvent() {
        // Default constructor
    }

    public OnlineEvent(int id) {
        super();
        this.id = id;
    }

    public OnlineEvent(int id, String event_name, String event_category, Date event_date, Time event_time,
            int event_duration, String event_image, String event_description, String event_hosting,
            int event_price, int event_total_tickets) {
        this.id = id;
        this.event_name = event_name;
        this.event_category = event_category;
        this.event_date = event_date;
        this.event_time = event_time;
        this.event_duration = event_duration;
        this.event_image = event_image;
        this.event_description = event_description;
        this.event_hosting = event_hosting;
        this.event_price = event_price;
        this.event_total_tickets = event_total_tickets;
    }

    public OnlineEvent(String event_name, String event_category, Date event_date, Time event_time, int event_duration,
            String event_image, String event_description, String event_hosting,
            int event_price, int event_total_tickets) {
        super();
        this.event_name = event_name;
        this.event_category = event_category;
        this.event_date = event_date;
        this.event_time = event_time;
        this.event_duration = event_duration;
        this.event_image = event_image;
        this.event_description = event_description;
        this.event_hosting = event_hosting;
        this.event_price = event_price;
        this.event_total_tickets = event_total_tickets;
    }

    // Add getters and setters for each field

    // toString() method for debugging or logging purposes
    @Override
    public String toString() {
        return "OnlineEvent{" + "id=" + id + ", event_name='" + event_name + '\'' + ", event_category='"
                + event_category + '\'' + ", event_date=" + event_date + ", event_time=" + event_time
                + ", event_duration=" + event_duration + ", event_image='" + event_image + '\'' + ", event_description='"
                + event_description + '\'' + ", event_hosting='" + event_hosting + '\'' + ", event_price=" + event_price
                + ", event_total_tickets=" + event_total_tickets + '}';
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

	public String getEvent_hosting() {
		return event_hosting;
	}

	public void setEvent_hosting(String event_hosting) {
		this.event_hosting = event_hosting;
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

    // Rest of the code (getters and setters) remains unchanged
}
