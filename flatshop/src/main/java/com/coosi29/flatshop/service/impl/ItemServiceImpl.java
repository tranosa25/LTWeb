package com.coosi29.flatshop.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coosi29.flatshop.dao.ItemDao;
import com.coosi29.flatshop.entity.Item;
import com.coosi29.flatshop.entity.Order;
import com.coosi29.flatshop.entity.Product;
import com.coosi29.flatshop.entity.Product_Detail;
import com.coosi29.flatshop.model.ItemDTO;
import com.coosi29.flatshop.model.OrderDTO;
import com.coosi29.flatshop.model.ProductDTO;
import com.coosi29.flatshop.model.ProductDetailDTO;
import com.coosi29.flatshop.model.SaleDTO;
import com.coosi29.flatshop.service.ItemService;

@Service
@Transactional
public class ItemServiceImpl implements ItemService {

	@Autowired
	private ItemDao itemDao;
	
	@Override
	public void insert(ItemDTO itemDTO) {
		
		Product product = new Product(); 
		Product_Detail productdetail = new Product_Detail();
		productdetail.setDetail_id(itemDTO.getDetailDTO().getDetailId());
		product.setProductId(itemDTO.getProductDTO().getProductId()); //
		Order order = new Order();
		order.setOrderId(itemDTO.getOrderDTO().getOrderId());
		
		Item item = new Item();
		item.setItemId(itemDTO.getItemId());
		item.setProduct(product);
		item.setDetail(productdetail);
		item.setUnitPrice(itemDTO.getUnitPrice());
		item.setQuantity(itemDTO.getQuantity());
		item.setOrder(order);
		
		itemDao.insert(item);
	}

	@Override
	public void update(ItemDTO itemDTO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(long itemId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ItemDTO> findAll(int pageIndex, int pageSize) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ItemDTO> findByOrderId(long orderId) {
		List<Item> items = itemDao.findByOrderId(orderId);
		List<ItemDTO> itemDTOs = new ArrayList<>();
		for (Item item : items) {
			
			OrderDTO orderDTO = new OrderDTO();
			orderDTO.setOrderId(item.getOrder().getOrderId());
			SaleDTO saleDTO = new SaleDTO();
			saleDTO.setSaleId(((Product) item.getProduct()).getSale().getSaleId());
			saleDTO.setSalePercent(((Product) item.getProduct()).getSale().getSalePercent());
			
			ProductDTO productDTO = new ProductDTO();
			productDTO.setProductId(((Product) item.getProduct()).getProductId());
			productDTO.setImage(((Product) item.getProduct()).getImage());
			productDTO.setProductName(((Product) item.getProduct()).getProductName());
			productDTO.setPrice(((Product) item.getProduct()).getPrice());
			productDTO.setSaleDTO(saleDTO);
			
			ProductDetailDTO productdetail = new ProductDetailDTO();
			productdetail.setDetailId(((Product_Detail) item.getDetail()).getDetail_id());
			
			ItemDTO itemDTO = new ItemDTO();
			itemDTO.setItemId(item.getItemId());
			itemDTO.setOrderDTO(orderDTO);
			itemDTO.setProductDTO(productDTO);
			itemDTO.setQuantity(item.getQuantity());
			itemDTO.setUnitPrice(item.getUnitPrice());
			itemDTO.setDetailDTO(productdetail);
			
			itemDTOs.add(itemDTO);
		}
		return itemDTOs;
	}

}
