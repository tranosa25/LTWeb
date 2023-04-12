package com.tranosa25.sportshop.dao;

import java.util.List;

import com.tranosa25.sportshop.entity.Product_Color;

public interface ColorDao {
List<Product_Color> findAll();
List<Product_Color> findproductID(long productId);
}
