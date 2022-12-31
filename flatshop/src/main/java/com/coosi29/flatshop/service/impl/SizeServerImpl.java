package com.coosi29.flatshop.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coosi29.flatshop.dao.SizeDao;
import com.coosi29.flatshop.entity.Product_Size;
import com.coosi29.flatshop.model.ProductSizeDTO;
import com.coosi29.flatshop.service.SizeService;

@Transactional
@Service
public class SizeServerImpl implements SizeService {
	@Autowired
	private SizeDao sizeDao;

	@Override
	public List<ProductSizeDTO> findAll() {
		List<Product_Size> sizes = sizeDao.findAll();
		List<ProductSizeDTO> sizeDTOs = new ArrayList<ProductSizeDTO>();
		for (Product_Size size : sizes) {
			ProductSizeDTO sizeDTO = new ProductSizeDTO();
			sizeDTO.setSizeId(size.getSize_id());
			sizeDTO.setSize(size.getSize());
			sizeDTOs.add(sizeDTO);
		}
		return sizeDTOs;
	}
	@Override
	public List<ProductSizeDTO> findproductID(long productId) {
		List<Product_Size> sizes = sizeDao.findproductID(productId);
		List<ProductSizeDTO> sizeDTOs = new ArrayList<ProductSizeDTO>();
		for (Product_Size size : sizes) {
			ProductSizeDTO sizeDTO = new ProductSizeDTO();
			sizeDTO.setSizeId(size.getSize_id());
			sizeDTO.setSize(size.getSize());
			sizeDTOs.add(sizeDTO);
		}
		return sizeDTOs;
	}
}
