package com.coosi29.flatshop.dao;

import java.util.List;

import com.coosi29.flatshop.entity.Product_Color;
import com.coosi29.flatshop.entity.Product_Size;

public interface SizeDao {
List<Product_Size> findAll();
List<Product_Size> findproductID(long productId);
}
