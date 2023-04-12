package com.tranosa25.sportshop.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tranosa25.sportshop.dao.SaleDao;
import com.tranosa25.sportshop.entity.Sale;
import com.tranosa25.sportshop.model.SaleDTO;
import com.tranosa25.sportshop.service.SaleService;

@Service
@Transactional
public class SaleServiceImpl implements SaleService {

	@Autowired
	private SaleDao saleDao;
	
	@Override
	public List<SaleDTO> findAll() {
		List<Sale> sales = saleDao.findAll();
		List<SaleDTO> saleDTOs = new ArrayList<>();
		for (Sale sale : sales) {
			SaleDTO saleDTO = new SaleDTO();
			saleDTO.setSaleId(sale.getSaleId());
			saleDTO.setSalePercent(sale.getSalePercent());
			saleDTOs.add(saleDTO);
		}
		return saleDTOs;
	}

}
