package com.tranosa25.sportshop.entity;

import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.tranosa25.sportshop.model.SaleDTO;
import com.tranosa25.sportshop.entity.Product_Detail;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "product")
public class Product {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "product_id")
	private long productId;
	@Column(name = "product_name")
	private String productName;
	@Column(name = "price")
	private float price;
	@Column(name = "quantity")
	private int quantity;
	@Column(name = "description")
	private String description;
	@Column(name = "image")
	private String image;
	@ManyToOne
	@JoinColumn(name = "category_id")
	private Category category;
	
	public void setProductId(long productId) {
		this.productId = productId;
	}
	@ManyToOne
	@JoinColumn(name = "sale_id")
	private Sale sale;

	@OneToMany(mappedBy = "product")
	private List<Product_Detail> details;
	
	
	public List<Product_Detail> getDetails() {
		return details;
	}
	public void setDetails(List<Product_Detail> details) {
		this.details = details;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public void setSale(Sale sale) {
		this.sale = sale;
	}
	public Sale getSale() {
		return sale;
	}
	public long getProductId() {
		return productId;
	}
	public String getProductName() {
		return productName;
	}
	public float getPrice() {
		return price;
	}
	public int getQuantity() {
		return quantity;
	}
	public String getDescription() {
		return description;
	}
	public String getImage() {
		return image;
	}
	public Category getCategory() {
		return category;
	}


}
