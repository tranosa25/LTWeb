package com.coosi29.flatshop.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coosi29.flatshop.dao.ColorDao;
import com.coosi29.flatshop.entity.Product_Color;
import com.coosi29.flatshop.model.ProductColorDTO;
import com.coosi29.flatshop.service.ColorService;

@Transactional
@Service
public class ColorServerImpl implements ColorService {
	@Autowired
	private ColorDao colorDao;

	@Override
	public List<ProductColorDTO> findAll() {
		List<Product_Color> colors = colorDao.findAll();
		List<ProductColorDTO> colorDTOs = new ArrayList<ProductColorDTO>();
		for (Product_Color color : colors) {
			ProductColorDTO colorDTO = new ProductColorDTO();
			colorDTO.setColorId(color.getColor_id());
			colorDTO.setColor(color.getColor());
			colorDTOs.add(colorDTO);
		}
		return colorDTOs;
	}
	
	@Override
	public List<ProductColorDTO> findproductID(long productId) {
		List<Product_Color> colors = colorDao.findproductID(productId);
		List<ProductColorDTO> colorDTOs = new ArrayList<ProductColorDTO>();
		for (Product_Color color : colors) {
			ProductColorDTO colorDTO = new ProductColorDTO();
			colorDTO.setColorId(color.getColor_id());
			colorDTO.setColor(color.getColor());
			colorDTOs.add(colorDTO);
		}
		return colorDTOs;
	}
}
