package com.coosi29.flatshop.model;

public class CartDTO {
	
	private long cartId;
	private UserDTO userDTO;
	private ProductDetailDTO productdetailDTO;
	private ProductDTO productDTO;
	private int quantity;
	
	public CartDTO() {
		// TODO Auto-generated constructor stub
	}

	public CartDTO(long cartId, UserDTO userDTO, ProductDTO productDTO, int quantity,ProductDetailDTO productdetailDTO) {
		super();
		this.productdetailDTO = productdetailDTO;
		this.cartId = cartId;
		this.userDTO = userDTO;
		this.productDTO = productDTO;
		this.quantity = quantity;
	}
    
	public ProductDetailDTO getProductdetailDTO() {
		return productdetailDTO;
	}

	public void setProductdetailDTO(ProductDetailDTO productdetailDTO) {
		this.productdetailDTO = productdetailDTO;
	}

	public long getCartId() {
		return cartId;
	}

	public void setCartId(long cartId) {
		this.cartId = cartId;
	}

	public UserDTO getUserDTO() {
		return userDTO;
	}

	public void setUserDTO(UserDTO userDTO) {
		this.userDTO = userDTO;
	}

	public ProductDTO getProductDTO() {
		return productDTO;
	}

	public void setProductDTO(ProductDTO productDTO) {
		this.productDTO = productDTO;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	
	
}
