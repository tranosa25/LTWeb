package com.coosi29.flatshop.service;
import java.util.List;

import com.coosi29.flatshop.entity.Product_Color;
import com.coosi29.flatshop.model.ProductColorDTO;

public interface ColorService {

	List<ProductColorDTO> findAll();
	List<ProductColorDTO> findproductID(long productId);
	
}
