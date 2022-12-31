package com.coosi29.flatshop.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coosi29.flatshop.dao.ColorDao;
import com.coosi29.flatshop.dao.ProductDetailDao;
import com.coosi29.flatshop.entity.Category;
import com.coosi29.flatshop.entity.Product;
import com.coosi29.flatshop.entity.Product_Color;
import com.coosi29.flatshop.entity.Product_Detail;
import com.coosi29.flatshop.entity.Product_Size;
import com.coosi29.flatshop.entity.Sale;
import com.coosi29.flatshop.model.CategoryDTO;
import com.coosi29.flatshop.model.ProductColorDTO;
import com.coosi29.flatshop.model.ProductDTO;
import com.coosi29.flatshop.model.ProductDetailDTO;
import com.coosi29.flatshop.model.SaleDTO;
import com.coosi29.flatshop.service.ProductDetailService;

@Transactional
@Service
public class ProductDetailServiceimpl implements ProductDetailService{
	
	@Autowired
	private ProductDetailDao detailDAO;

	@Override
	public void insert(ProductDetailDTO detailDTO) {
		Product_Detail productdetail = new Product_Detail();
		Product product = new Product();
		product.setProductId(detailDTO.getProductId());
		//product.setProductName(detailDTO.);
		productdetail.setProduct(product);
		productdetail.setDate(detailDTO.getDate());
		productdetail.setImage(detailDTO.getImage());
		productdetail.setQuantity(detailDTO.getQuantity());
		Product_Color color = new Product_Color();
		color.setColor_id(detailDTO.getColorId());
		Product_Size size = new Product_Size();
		size.setSize_id(detailDTO.getSizeId());
		productdetail.setColor(color);
		productdetail.setSize(size);

		detailDAO.insert(productdetail);
	}

	@Override
	public void update(ProductDetailDTO detailDTO) {
		Product_Detail productdetail = new Product_Detail();
		Product product = new Product();
		product.setProductId(detailDTO.getProductId());
		//product.setProductName(detailDTO.);
		productdetail.setProduct(product);
		productdetail.setImage(detailDTO.getImage());
		productdetail.setQuantity(detailDTO.getQuantity());
		Product_Color color = new Product_Color();
		color.setColor_id(detailDTO.getColorId());
		Product_Size size = new Product_Size();
		size.setSize_id(detailDTO.getSizeId());
		productdetail.setColor(color);
		productdetail.setSize(size);

		detailDAO.update(productdetail);
	}

	@Override
	public void delete(long detailId) {
		// TODO Auto-generated method stub
		detailDAO.delete(detailId);
	}
	@Override
	public int count() {
		return detailDAO.count();
	}

	@Override
	public ProductDetailDTO findproductdetailID(long productId,int colorId,int sizeId) {
		Product_Detail details = detailDAO.findproductID(productId,colorId,sizeId);
		//ProductDetailDTO detailDTOs = new ProductDetailDTO();
		
			ProductDetailDTO detailDTO = new ProductDetailDTO();
			detailDTO.setColorId(details.getColor().getColor_id());
			detailDTO.setDate(details.getDate());
			detailDTO.setDetailId(details.getDetail_id());
			detailDTO.setProductId(details.getProduct().getProductId());
			detailDTO.setSizeId(details.getSize().getSize_id());
			//detailDTOs.add(detailDTO);
		
		return detailDTO;
	}
	// Tìm product_detail với productId
	@Override
	public List<ProductDetailDTO> findAllByproductId(long productId) {
		List<Product_Detail> productdetails = detailDAO.findAllByCategoryId(productId);
		List<ProductDetailDTO> productdetailDTOs = new ArrayList<>();
		for (Product_Detail productdetail : productdetails) {
		
			ProductDetailDTO productdetailDTO = new ProductDetailDTO();
			
			productdetailDTO.setDetailId(productdetail.getDetail_id());
			productdetailDTO.setColorId(productdetail.getColor().getColor_id());
			productdetailDTO.setImage(productdetail.getImage());
			productdetailDTO.setDate(productdetail.getDate());
			productdetailDTO.setSizeId(productdetail.getSize().getSize_id());
			productdetailDTO.setQuantity(productdetail.getQuantity());
			productdetailDTO.setProductId(productdetail.getProduct().getProductId());
			
			productdetailDTOs.add(productdetailDTO);
			
		}
		return productdetailDTOs;
	}

}
