package com.coosi29.flatshop.service;
import java.util.List;

import com.coosi29.flatshop.entity.Product_Color;
import com.coosi29.flatshop.model.ProductColorDTO;
import com.coosi29.flatshop.model.ProductSizeDTO;

public interface SizeService {

	List<ProductSizeDTO> findAll();
	List<ProductSizeDTO> findproductID(long productId);
	
}
