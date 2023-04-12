package com.tranosa25.sportshop.dao;

import java.util.List;

import com.tranosa25.sportshop.entity.Product;

public interface ProductDao {

	void insert(Product product);
	
	void update(Product product);
	
	void delete(long productId);
	
	Product findById(long productId);
	
	List<Product> findAll(int pageIndex, int pageSize);
	
	List<Product> findAllByCategoryId(long categoryId, int pageIndex, int pageSize);
	
	List<Product> findAllIdName();
	int count();
	
	int countByCategoryId(long categoryId);
	
	List<Product> hotProducts(int pageIndex, int pageSize);
	
	List<Product> featuredProducts(int pageIndex, int pageSize);
	

	List<Product> search(long categoryId, String pricing, float priceFrom, float priceTo, String sort, String text,
			int pageIndex, int pageSize,int colorId);

	int countBySearch(long categoryId, String pricing, float priceFrom, float priceTo, String text,int colorId);
}
