package com.tranosa25.sportshop.model;


import com.tranosa25.sportshop.entity.Product_Detail;

public class ItemDTO {
	
	private long itemId;
	private ProductDTO productDTO;
	private float unitPrice;
	private int quantity;
	private OrderDTO orderDTO;
	private ProductDetailDTO detailDTO;
	public ItemDTO() {
		// TODO Auto-generated constructor stub
	}

	public ItemDTO(long itemId, ProductDTO productDTO, float unitPrice, int quantity, OrderDTO orderDTO,
			ProductDetailDTO detailDTO) {
		super();
		this.itemId = itemId;
		this.productDTO = productDTO;
		this.unitPrice = unitPrice;
		this.quantity = quantity;
		this.orderDTO = orderDTO;
		this.detailDTO = detailDTO;
	}
	public ProductDetailDTO getDetailDTO() {
		return detailDTO;
	}

	public void setDetailDTO(ProductDetailDTO detailDTO) {
		this.detailDTO = detailDTO;
	}

	public long getItemId() {
		return itemId;
	}

	public void setItemId(long itemId) {
		this.itemId = itemId;
	}

	public ProductDTO getProductDTO() {
		return productDTO;
	}

	public void setProductDTO(ProductDTO productDTO) {
		this.productDTO = productDTO;
	}

	public float getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(float unitPrice) {
		this.unitPrice = unitPrice;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public OrderDTO getOrderDTO() {
		return orderDTO;
	}

	public void setOrderDTO(OrderDTO orderDTO) {
		this.orderDTO = orderDTO;
	}
	
	
}
