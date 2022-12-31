package com.coosi29.flatshop.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Product_Detail implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name="detail_id")
	private long detail_id;
	@ManyToOne
	@JoinColumn(name="product_id")
	private Product product;
	
	@ManyToOne
	@JoinColumn(name="size_id")
	private Product_Size size;
	
	@ManyToOne
	@JoinColumn(name ="color_id")
	private Product_Color color;
	
	@Column(name="quantity")
	private long quantity;
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	@Column (name ="date")
	private String date;
	@Column(name="image")
	private String image;
	
	@OneToMany(mappedBy = "detail")
	private List<Item> itemss;
	
	public List<Item> getItemss() {
		return itemss;
	}
	public void setItemss(List<Item> itemss) {
		this.itemss = itemss;
	}
	public Product_Size getSize() {
		return size;
	}
	public void setSize(Product_Size size) {
		this.size = size;
	}
	public long getDetail_id() {
		return detail_id;
	}
	public void setDetail_id(long detail_id) {
		this.detail_id = detail_id;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	
	public Product_Color getColor() {
		return color;
	}
	public void setColor(Product_Color color) {
		this.color = color;
	}
	public long getQuantity() {
		return quantity;
	}
	public void setQuantity(long quantity) {
		this.quantity = quantity;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	

}
