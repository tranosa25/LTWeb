package com.tranosa25.sportshop.service;

import java.util.List;

import com.tranosa25.sportshop.model.OrderDTO;

public interface OrderService {

	void insert(OrderDTO orderDTO);
	
	void update(OrderDTO orderDTO);
	
	void delete(long orderId);
	
	List<OrderDTO> findAll(int pageInde, int pageSize);
	
	List<OrderDTO> findByBuyer(long userId);
	
	int count();
	
	OrderDTO findById(long orderId);
	
}
