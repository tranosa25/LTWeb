package com.coosi29.flatshop.entity;

import java.util.Collection;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.engine.profile.Fetch;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Product_Color {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name ="color_id")
	private int color_id;
	@Column(name ="color")
	private String color;
	@OneToMany(mappedBy = "color")
	private List<Product_Detail> details;
	
	public int getColor_id() {
		return color_id;
	}
	public void setColor_id(int color_id) {
		this.color_id = color_id;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	
	public List<Product_Detail> getDetails() {
		return details;
	}
	public void setDetails(List<Product_Detail> details) {
		this.details = details;
	}



}
