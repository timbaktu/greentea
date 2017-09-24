package com.springmvc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name="wf_all_exercises") 

public class Exercises  implements java.io.Serializable{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	@NotNull
	@Size(min=3, max=50)
	@Column(name = "exercise_description", nullable = false)
	private String description;
	
	@NotNull
	@Size(min=3, max=50)
	@Column(name = "img_name", nullable = false)
	private String img_name;
	
	@NotNull
	@Size(min=3, max=50)
	@Column(name = "how_to", nullable = false)
	private String how_to;
	
	@NotNull
	@Size(min=3, max=50)
	@Column(name = "video_link", nullable = false)
	private String video_link;
	
	@NotNull
	@Size(min=3, max=50)
	@Column(name = "exercise_name", nullable = false)
	private String name;
	
	
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

	public String getImg_name() {
		return img_name;
	}

	public void setImg_name(String img_name) {
		this.img_name = img_name;
	}

	public String getHow_to() {
		return how_to;
	}

	public void setHow_to(String how_to) {
		this.how_to = how_to;
	}

	public String getVideo_link() {
		return video_link;
	}

	public void setVideo_link(String video_link) {
		this.video_link = video_link;
	}
	
	
	
	
}
