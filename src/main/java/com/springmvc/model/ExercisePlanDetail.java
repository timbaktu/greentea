package com.springmvc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.GenerationType;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.SecondaryTable;
import javax.persistence.SecondaryTables;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name="wf_exerciseplandetail") 
@SecondaryTables({
      @SecondaryTable(name="wf_all_exercises", pkJoinColumns={@PrimaryKeyJoinColumn(name = "id")})
      })

public class ExercisePlanDetail implements java.io.Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 4020362183194205605L;

	
	public ExercisePlanDetail() {
		// TODO Auto-generated constructor stub
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@NotNull
	@Size(min=3, max=50)
	@Column(table = "wf_all_exercises", name = "exercise_name", nullable = false)
	private String name;

	@NotNull
	@Size(min=3, max=200)
	@Column(table = "wf_all_exercises", name = "img_name", nullable = false)
	private String img_name;

	@NotNull
	@Size(min=3, max=200)
	@Column(table = "wf_all_exercises", name = "how_to", nullable = false)
	private String how_to;
	
	@NotNull
	@Size(min=3, max=200)
	@Column(table = "wf_all_exercises", name = "video_link", nullable = false)
	private String video_link;
	
	@NotNull
	@Size(min=3, max=50)
	@Column(table = "wf_all_exercises", name = "exercise_description", nullable = false)
	private String description;
	
	@NotNull
	@Size(min=3, max=50)
	@Column(name = "interval", nullable = false)
	private String interval;

	
	@NotNull
	@Digits(integer=8, fraction=2)
	@Column(name = "number_of_reps", nullable = false)
	private int no_of_reps;
	
	@NotNull
	@Digits(integer=8, fraction=2)
	@Column(name = "number_of_sets", nullable = false)
	private int no_of_sets;
	
	
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

	public String getimg_name() {
		return img_name;
	}

	public void setimg_name(String img_name) {
		this.img_name = img_name;
	}
	
	public String gethow_to() {
		return how_to;
	}

	public void sethow_to(String how_to) {
		this.how_to = how_to;
	}
	
	public String getvideo_link() {
		return video_link;
	}

	public void setvideo_link(String video_link) {
		this.video_link = video_link;
	}
	
	public String getInterval() {
		return interval;
	}

	public void setInterval(String interval) {
		this.interval = interval;
	}
	
	public String getDescription() {
		return description;
	}

	public int getno_of_reps() {
		return no_of_reps;
	}

	public void setno_of_reps(int no_of_reps) {
		this.no_of_reps = no_of_reps;
	}

	public int getno_of_sets() {
		return no_of_sets;
	}

	public void setno_of_sets(int no_of_sets) {
		this.no_of_sets = no_of_sets;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	


	@Override
	public String toString() {
		return "ExercisePlanDetail [id=" + id + ", name=" + name + ", description="
		+ description + ", video_link=" + video_link + ", how_to=" + how_to + ", img_name=" + img_name + ", interval=" + interval + ", no_of_reps=" + no_of_reps + ", no_of_sets=" + no_of_sets + "]";
	}
	
	
	

}
