package com.coosi29.flatshop.service;

import java.util.List;

import com.coosi29.flatshop.entity.Product_Color;
import com.coosi29.flatshop.entity.Product_Detail;
import com.coosi29.flatshop.model.ProductDTO;
import com.coosi29.flatshop.model.ProductDetailDTO;

public interface ProductDetailService {
	ProductDetailDTO findproductdetailID(long productId,int colorId,int sizeId);

	void insert(ProductDetailDTO detailDTO);

	void update(ProductDetailDTO detailDTO);

	void delete(long productId);

	int count();

	List<ProductDetailDTO> findAllByproductId(long productId);
	
}
