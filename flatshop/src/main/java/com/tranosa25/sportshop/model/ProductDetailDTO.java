package com.tranosa25.sportshop.model;
import java.util.List;


public class ProductDetailDTO {
	private long DetailId;
	private String date;
	private long ProductId;
	private int SizeId;
	private int  ColorId;
	private String image;
	private long Quantity;
	List<ProductDTO> Products;
	public ProductDetailDTO(long detailId, String date, long productId, int sizeId, int colorId , long Quantity,String image) {
		super();
		DetailId = detailId;
		this.date = date;
		ProductId = productId;
		SizeId = sizeId;
		ColorId = colorId;
		this.image = image;
		this.Quantity = Quantity;
	}
	public ProductDetailDTO() {
		// TODO Auto-generated constructor stub
	}
	public long getDetailId() {
		return DetailId;
	}
	public void setDetailId(long detailId) {
		DetailId = detailId;
	}
	
	public long getQuantity() {
		return Quantity;
	}
	public void setQuantity(long quantity) {
		Quantity = quantity;
	}
	public List<ProductDTO> getProducts() {
		return Products;
	}
	public void setProducts(List<ProductDTO> products) {
		Products = products;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public long getProductId() {
		return ProductId;
	}
	public void setProductId(long productId) {
		ProductId = productId;
	}
	
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getSizeId() {
		return SizeId;
	}
	public void setSizeId(int sizeId) {
		SizeId = sizeId;
	}
	public int getColorId() {
		return ColorId;
	}
	public void setColorId(int colorId) {
		ColorId = colorId;
	}
	
	
	
}
