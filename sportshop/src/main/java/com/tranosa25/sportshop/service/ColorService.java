package com.tranosa25.sportshop.service;
import java.util.List;

import com.tranosa25.sportshop.entity.Product_Color;
import com.tranosa25.sportshop.model.ProductColorDTO;

public interface ColorService {

	List<ProductColorDTO> findAll();
	List<ProductColorDTO> findproductID(long productId);
	
}
