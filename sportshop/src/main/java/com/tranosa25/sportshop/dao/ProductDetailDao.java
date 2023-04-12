package com.tranosa25.sportshop.dao;

import java.util.List;

import com.tranosa25.sportshop.entity.Product_Color;
import com.tranosa25.sportshop.entity.Product_Detail;

public interface ProductDetailDao {

	void insert(Product_Detail productdetail);
	
	void update(Product_Detail productdetail);
	
	void delete(long productdetail);
	
	Product_Detail findById(long productdetail);
	
	//List<Product_Detail> findAll(int pageIndex, int pageSize);
	
	//List<Product_Detail> findAllByCategoryId(long categoryId, int pageIndex, int pageSize);
	
	//int count();
	
	//int countByCategoryId(long categoryId);
	
	//List<Product_Detail> hotProducts(int pageIndex, int pageSize);
	
	//List<Product_Detail> featuredProducts(int pageIndex, int pageSize);
	
	List<Product_Detail> search(long productId);
	Product_Detail findproductID(long productId,int colorId,int sizeId);

	int count();

	List<Product_Detail> findAllByCategoryId(long productId);

	Product_Detail findByDetailId(long detailId);
	
	//int countBySearch(long categoryId, String pricing, float priceFrom, float priceTo, String text, int colorId);
}
