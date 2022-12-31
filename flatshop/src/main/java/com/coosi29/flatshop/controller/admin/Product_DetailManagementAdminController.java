package com.coosi29.flatshop.controller.admin;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.coosi29.flatshop.model.CategoryDTO;
import com.coosi29.flatshop.model.ProductDTO;
import com.coosi29.flatshop.model.ProductDetailDTO;
import com.coosi29.flatshop.model.SaleDTO;
import com.coosi29.flatshop.service.ColorService;
import com.coosi29.flatshop.service.ProductDetailService;
import com.coosi29.flatshop.service.ProductService;
import com.coosi29.flatshop.service.SizeService;

@Controller
@RequestMapping(value = "/admin")
public class Product_DetailManagementAdminController {
	@Autowired
	private ProductService productService;
	@Autowired
	private ColorService colorService;
	@Autowired
	private SizeService sizeService;
	@Autowired
	private ProductDetailService detailService;

	@GetMapping(value = "/productdetail-list")
	public String findAll(HttpServletRequest request, @RequestParam(name = "productId") long prouctId,
			@RequestParam(name = "productName") String prouctName) {
		int pageIndex = 0;
		int pageSize = 5;
		/*
		 * if (request.getParameter("pageIndex") != null) { pageIndex =
		 * Integer.parseInt(request.getParameter("pageIndex")); } int totalPage = 0; int
		 * count = detailService.count(); if (count % pageSize == 0) { totalPage = count
		 * / pageSize; } else { totalPage = count / pageSize + 1; }
		 */

		request.setAttribute("default", "default");
		request.setAttribute("ProductName", prouctName);
		// request.setAttribute("pageIndex", pageIndex);
		// request.setAttribute("totalPage", totalPage);
		request.setAttribute("details", detailService.findAllByproductId(prouctId));
		return "admin/product_detail/listProductDetail";
	}

	@GetMapping(value = "/productdetail-create")
	public String insert(HttpServletRequest request) {
		request.setAttribute("product", productService.findAllIdName());
		request.setAttribute("color", colorService.findAll());
		request.setAttribute("size", sizeService.findAll());
		return "admin/product_detail/createProductDetail";
	}

	@PostMapping(value = "/productdetail-create")
	public String insertPost(HttpServletRequest request, @RequestParam(name = "productId") long productId,
			@RequestParam(name = "quantity") int quantity, @RequestParam(name = "colorId") int colorId,
			@RequestParam(name = "sizeId") int sizeId, @RequestParam(name = "imageFile") MultipartFile imageFile) {
		ProductDetailDTO detailDTO = new ProductDetailDTO();
		detailDTO.setColorId(colorId);
		detailDTO.setProductId(productId);
		detailDTO.setQuantity(quantity);
		detailDTO.setSizeId(sizeId);
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		// tạo 1 đối tượng có định dạng thời gian yyyy-MM-dd
		Date date = new Date(); // lấy thời gian hệ thống
		String stringDate = dateFormat.format(date);// Định dạng thời gian theo trên
		System.out.println("Date: " + stringDate);
		detailDTO.setDate(stringDate);
		if (imageFile != null && imageFile.getSize() > 0) {
			String originalFilename = imageFile.getOriginalFilename();
			int lastIndex = originalFilename.lastIndexOf(".");
			String ext = originalFilename.substring(lastIndex);
			String avatarFilename = System.currentTimeMillis() + ext;
			File newfile = new File("D:\\image_spring_boot" + File.separator + avatarFilename);
			FileOutputStream fileOutputStream;
			try {
				fileOutputStream = new FileOutputStream(newfile);
				fileOutputStream.write(imageFile.getBytes());
				fileOutputStream.close();
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			detailDTO.setImage(avatarFilename);
		}

		detailService.insert(detailDTO);
		return "redirect:../admin/productdetail-create";
	}

	// Update product

	@GetMapping(value = "/productdetail-update")
	public String update(HttpServletRequest request, @RequestParam(name = "productId") long productId) {
		request.setAttribute("product", productService.findById(productId));
		request.setAttribute("sales", saleService.findAll());
		request.setAttribute("categories", categoryService.findAll());
		return "admin/product/updateProduct";
	}

	@PostMapping(value = "/productdetail-update")
	public String update(HttpServletRequest request,

			@RequestParam(name = "newPrice", required = false) String newPrice,

			@RequestParam(name = "imageFile", required = false) MultipartFile imageFile) {
		long productId = Long.parseLong(request.getParameter("productId"));
		long categoryId = Long.parseLong(request.getParameter("categoryId"));
		float oldprice = Float.parseFloat(request.getParameter("oldPrice"));
		String productName = request.getParameter("productName");
		String description = request.getParameter("description");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		String image = request.getParameter("image");
		String saleId = request.getParameter("saleId");

		SaleDTO saleDTO = new SaleDTO();
		saleDTO.setSaleId(saleId);
		CategoryDTO categoryDTO = new CategoryDTO();
		categoryDTO.setCategoryId(categoryId);
		ProductDTO productDTO = new ProductDTO();
		productDTO.setProductId(productId);
		productDTO.setSaleDTO(saleDTO);
		productDTO.setCategoryDTO(categoryDTO);
		productDTO.setProductName(productName);
		productDTO.setDescription(description);
		productDTO.setQuantity(quantity);
		if (newPrice == null || newPrice.equals("")) {
			productDTO.setPrice(oldprice);
		} else {
			productDTO.setPrice(Float.parseFloat(newPrice));
		}
		if (imageFile != null && imageFile.getSize() > 0) {
			String originalFilename = imageFile.getOriginalFilename();
			int lastIndex = originalFilename.lastIndexOf(".");
			String ext = originalFilename.substring(lastIndex);
			String avatarFilename = System.currentTimeMillis() + ext;
			File newfile = new File("D:\\image_spring_boot" + avatarFilename);
			FileOutputStream fileOutputStream;
			try {
				fileOutputStream = new FileOutputStream(newfile);
				fileOutputStream.write(imageFile.getBytes());
				fileOutputStream.close();
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			productDTO.setImage(avatarFilename);
		} else {
			productDTO.setImage(image);
		}

		productService.update(productDTO);
		return "redirect:/admin/product-list";
	}

	// Delete Product

	@GetMapping(value = "/productdetail-delete")
	public String delete(HttpServletRequest request) {
		String[] productdetailIds = request.getParameterValues("detailId");
		for (String detailId : productdetailIds) {
			productService.delete(Long.parseLong(detailId));
		}
		return "redirect:../admin/product-list";
	}

}
