package com.coosi29.flatshop.dao;

import java.util.List;

import com.coosi29.flatshop.entity.Product_Color;

public interface ColorDao {
List<Product_Color> findAll();
List<Product_Color> findproductID(long productId);
}
