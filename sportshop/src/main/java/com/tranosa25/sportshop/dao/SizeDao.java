package com.tranosa25.sportshop.dao;

import java.util.List;

import com.tranosa25.sportshop.entity.Product_Color;
import com.tranosa25.sportshop.entity.Product_Size;

public interface SizeDao {
List<Product_Size> findAll();
List<Product_Size> findproductID(long productId);
}
