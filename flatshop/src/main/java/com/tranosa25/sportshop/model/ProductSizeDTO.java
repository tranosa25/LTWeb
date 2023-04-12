package com.tranosa25.sportshop.model;
import java.util.List;
public class ProductSizeDTO {
private int SizeId;
private String Size;
List<ProductDTO> products;

public ProductSizeDTO(int sizeId, String size, List<ProductDTO> products) {
	super();
	SizeId = sizeId;
	Size = size;
	this.products = products;
}



public ProductSizeDTO() {
	super();
}

public int getSizeId() {
	return SizeId;
}

public void setSizeId(int sizeId) {
	SizeId = sizeId;
}

public String getSize() {
	return Size;
}

public void setSize(String size) {
	Size = size;
}

public List<ProductDTO> getProducts() {
	return products;
}

public void setProducts(List<ProductDTO> products) {
	this.products = products;
}

}
