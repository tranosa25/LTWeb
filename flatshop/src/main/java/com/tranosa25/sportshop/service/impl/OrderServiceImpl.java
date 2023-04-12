package com.tranosa25.sportshop.service.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tranosa25.sportshop.dao.OrderDao;
import com.tranosa25.sportshop.entity.Order;
import com.tranosa25.sportshop.entity.User;
import com.tranosa25.sportshop.model.OrderDTO;
import com.tranosa25.sportshop.model.UserDTO;
import com.tranosa25.sportshop.service.OrderService;

@Service
@Transactional
public class OrderServiceImpl implements OrderService{
	
	@Autowired
	private OrderDao orderDao;

	@Override
	public void insert(OrderDTO orderDTO) {
		
		
		User user = new User();
		user.setUserId(orderDTO.getUserDTO().getUserId());
		
		Order order = new Order();
		order.setOrderId(orderDTO.getOrderId());
		order.setBuyDate(orderDTO.getBuyDate());
		order.setStatus(orderDTO.getStatus());
		order.setPriceTotal(orderDTO.getPriceTotal());
		order.setBuyer(user);
		
		orderDao.insert(order);
	}

	@Override
	public void update(OrderDTO orderDTO) {
		

		User user = new User();
		user.setUserId(orderDTO.getUserDTO().getUserId());
		
		Order order = new Order();
		order.setOrderId(orderDTO.getOrderId());
		order.setBuyDate(orderDTO.getBuyDate());
		order.setStatus(orderDTO.getStatus());
		order.setPriceTotal(orderDTO.getPriceTotal());
		order.setBuyer(user);
		
		orderDao.update(order);
	}

	@Override
	public void delete(long orderId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<OrderDTO> findAll(int pageInde, int pageSize) {
		List<Order> orders = orderDao.findAll(pageInde, pageSize);
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
		
		List<OrderDTO> orderDTOs = new ArrayList<OrderDTO>();
		for (Order order : orders) {
			UserDTO userDTO = new UserDTO();
			userDTO.setUserId(order.getBuyer().getUserId());
			userDTO.setEmail(order.getBuyer().getEmail());
			userDTO.setAddress(order.getBuyer().getAddress());
			userDTO.setPhone(order.getBuyer().getPhone());
			userDTO.setFullname(order.getBuyer().getFullname());
			
			OrderDTO orderDTO = new OrderDTO();
			orderDTO.setOrderId(order.getOrderId());
			String strBuyDate = sdf.format(order.getBuyDate());
			orderDTO.setBuyDate(order.getBuyDate());
			orderDTO.setStatus(order.getStatus());
			orderDTO.setPriceTotal(order.getPriceTotal());
			orderDTO.setUserDTO(userDTO);
			orderDTOs.add(orderDTO);
//			order.setBuyer(user);
		}
		return orderDTOs;
	}

	@Override
	public List<OrderDTO> findByBuyer(long userId) {
		List<Order> orders = orderDao.findByBuyer(userId);
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
		
		List<OrderDTO> orderDTOs = new ArrayList<OrderDTO>();
		for (Order order : orders) {
			OrderDTO orderDTO = new OrderDTO();
			orderDTO.setOrderId(order.getOrderId());
			String strBuyDate = sdf.format(order.getBuyDate());
			orderDTO.setBuyDate(order.getBuyDate());
			orderDTO.setStatus(order.getStatus());
			orderDTO.setPriceTotal(order.getPriceTotal());
			orderDTOs.add(orderDTO);
//			order.setBuyer(user);
		}
		return orderDTOs;
	}

	@Override
	public int count() {
		return orderDao.count();
	}

	@Override
	public OrderDTO findById(long orderId) {
		Order order = orderDao.findById(orderId);
		
		UserDTO userDTO = new UserDTO();
		userDTO.setUserId(order.getBuyer().getUserId());
		userDTO.setFullname(order.getBuyer().getFullname());
		userDTO.setAddress(order.getBuyer().getAddress());
		userDTO.setEmail(order.getBuyer().getEmail());
		userDTO.setPhone(order.getBuyer().getPhone());
		
		OrderDTO orderDTO = new OrderDTO();
		orderDTO.setOrderId(order.getOrderId());
		orderDTO.setBuyDate(order.getBuyDate());
		orderDTO.setStatus(order.getStatus());
		orderDTO.setPriceTotal(order.getPriceTotal());
		orderDTO.setUserDTO(userDTO);
		return orderDTO;
	}

}
