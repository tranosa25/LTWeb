package com.tranosa25.sportshop.service;

import java.util.List;

import com.tranosa25.sportshop.entity.Product_Color;
import com.tranosa25.sportshop.entity.Product_Detail;
import com.tranosa25.sportshop.model.ProductDTO;
import com.tranosa25.sportshop.model.ProductDetailDTO;

public interface ProductDetailService {
	ProductDetailDTO findproductdetailID(long productId,int colorId,int sizeId);

	void insert(ProductDetailDTO detailDTO);

	void update(ProductDetailDTO detailDTO);

	void delete(long productId);

	int count();

	List<ProductDetailDTO> findAllByproductId(long productId);

	ProductDetailDTO findByDetailId(long detailId);
	
}
