package com.tranosa25.sportshop.service;
import java.util.List;

import com.tranosa25.sportshop.entity.Product_Color;
import com.tranosa25.sportshop.model.ProductColorDTO;
import com.tranosa25.sportshop.model.ProductSizeDTO;

public interface SizeService {

	List<ProductSizeDTO> findAll();
	List<ProductSizeDTO> findproductID(long productId);
	
}
