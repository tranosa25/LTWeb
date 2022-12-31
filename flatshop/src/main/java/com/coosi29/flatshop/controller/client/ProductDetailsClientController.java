package com.coosi29.flatshop.controller.client;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.coosi29.flatshop.service.CategoryService;
import com.coosi29.flatshop.service.ColorService;
import com.coosi29.flatshop.service.ProductDetailService;
import com.coosi29.flatshop.service.ProductService;
import com.coosi29.flatshop.service.SizeService;

@Controller
@RequestMapping(value = "/client")
public class ProductDetailsClientController {

	@Autowired
	private ProductService productService;
	@Autowired
	private ColorService colorService;
	@Autowired
	private SizeService sizeService;
	@Autowired
	private ProductDetailService detailService;
	
	@GetMapping(value = "/product-details")
	public String productDetails(HttpServletRequest request, @RequestParam(name = "productId") long productId,HttpSession session) {
		request.setAttribute("product", productService.findById(productId));
		session.setAttribute("colors", colorService.findproductID(productId));
		session.setAttribute("sizes", sizeService.findproductID(productId));
		//session.setAttribute("sizes", sizeService.findproductID(productId));
		/*
		 * if(request.getParameter("colorId")!=null) {int colorId =
		 * Integer.parseInt(request.getParameter("colorId")); int sizeId =
		 * Integer.parseInt(request.getParameter("sizeId"));
		 * session.setAttribute("detail_id",detailService.findproductdetailID(productId,
		 * colorId, sizeId) );}
		 */
		return "client/product_details";
	}
}
