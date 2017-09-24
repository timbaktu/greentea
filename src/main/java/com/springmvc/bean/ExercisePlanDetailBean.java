package com.springmvc.bean;

public class ExercisePlanDetailBean implements java.io.Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private int schedule_id;
	private String name;
	private String description;
	private String video_link;
	private String how_to;
	private String interval;
	private int no_of_reps;
	private int no_of_sets;
	private String img_name;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getSchedule_id() {
		return schedule_id;
	}
	public void setSchedule_id(int schedule_id) {
		this.schedule_id = schedule_id;
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
	public String getVideo_link() {
		return video_link;
	}
	public void setVideo_link(String video_link) {
		this.video_link = video_link;
	}
	public String getHow_to() {
		return how_to;
	}
	public void setHow_to(String how_to) {
		this.how_to = how_to;
	}
	public String getInterval() {
		return interval;
	}
	public void setInterval(String interval) {
		this.interval = interval;
	}
	public int getNo_of_reps() {
		return no_of_reps;
	}
	public void setNo_of_reps(int no_of_reps) {
		this.no_of_reps = no_of_reps;
	}
	public int getNo_of_sets() {
		return no_of_sets;
	}
	public void setNo_of_sets(int no_of_sets) {
		this.no_of_sets = no_of_sets;
	}
	public String getImg_name() {
		return img_name;
	}
	public void setImg_name(String img_name) {
		this.img_name = img_name;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
	
}
