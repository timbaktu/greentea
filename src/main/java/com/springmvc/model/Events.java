package com.springmvc.model;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.annotations.Type;
import org.hibernate.validator.constraints.NotEmpty;
import org.joda.time.LocalDate;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="wf_events")
public class Events {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@NotNull
	@Size(min=3, max=50)
	@Column(name = "event_name", nullable = false)
	private String name;

	@NotNull
	@Size(min=3, max=50)
	@Column(name = "event_description", nullable = false)
	private String description;

	@NotNull
	@Size(min=3, max=50)
	@Column(name = "event_address", nullable = false)
	private String address;

	@NotNull
	@Size(min=3, max=50)
	@Column(name = "event_url", nullable = false)
	private String url;
	
	@NotNull
	@Size(min=3, max=50)
	@Column(name = "buy_url", nullable = false)
	private String buyurl;

	@NotNull
	@Size(min=3, max=50)
	@Column(name = "event_date", nullable = false)
	private String event_date;
	
	
	@NotNull
	@Size(min=3, max=50)
	@Column(name = "event_time", nullable = false)
	private String event_time;
	
	
	@NotNull
	@Size(min=3, max=50)
	@Column(name = "img_name", nullable = true)
	private String img_name;
	
	@NotNull
	@Digits(integer=8, fraction=2)
	@Column(name = "event_cost", nullable = false)
	private int cost;
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public void setevent_date(String event_date) {
		this.event_date = event_date;
	}

	public String getevent_date() {
		return event_date;
	}

	public void setevent_time(String event_time) {
		this.event_time = event_time;
	}

	public String getevent_time() {
		return event_time;
	}

	public String getbuyurl() {
		return buyurl;
	}

	public void setbuyurl(String buyurl) {
		this.buyurl = buyurl;
	}
	
	public String getimg_name() {
		return img_name;
	}

	public void setimg_name(String img_name) {
		this.img_name = img_name;
	}
		
	public String geturl() {
		return url;
	}

	public void seturl(String url) {
		this.url = url;
	}
	
	public String getaddress() {
		return address;
	}

	public void setaddress(String address) {
		this.address = address;
	}
	
	public int getcost() {
		return cost;
	}

	public void setcost(int cost) {
		this.cost = cost;
	}

	@Override
	public String toString() {
		return "ExercisePlan [id=" + id + ", img_name=" + img_name + ", name=" + name + ", event_time=" + event_time + ", event_date=" + event_date + ", buyurl=" + buyurl + ", url=" + url + ", address=" + address + ", description="
				+ description + ", cost=" + cost + "]";
	}
	
	
	

}
