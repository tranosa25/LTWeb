package com.tranosa25.sportshop.controller.client;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.tranosa25.sportshop.model.ItemDTO;
import com.tranosa25.sportshop.model.ProductDTO;
import com.tranosa25.sportshop.model.ProductDetailDTO;
import com.tranosa25.sportshop.service.ProductDetailService;
import com.tranosa25.sportshop.service.ProductService;

@Controller
@RequestMapping(value = "/client")
public class CartClientController {

	@Autowired
	private ProductService productService;
	@Autowired
	private ProductDetailService detailService;
	
	@GetMapping(value = "/cart")
	public String cart(HttpServletRequest request, HttpSession session) {
		Object object = session.getAttribute("cart");
		int totalQuantity = 0;
		float subTotal = 0;
		float grandTotal = 0;
		if (object != null) {
			HashMap<Long, ItemDTO> mapItem = (HashMap<Long, ItemDTO>) object;
			for(Map.Entry<Long, ItemDTO> entry : mapItem.entrySet()) {
			    Long key = entry.getKey();
			    ItemDTO value = entry.getValue();
			    totalQuantity += value.getQuantity();
			    subTotal += (value.getUnitPrice() * value.getQuantity());
			}
			grandTotal = subTotal + 25;
		}
		session.setAttribute("totalQuantity", totalQuantity);
		session.setAttribute("subTotal", subTotal);
		session.setAttribute("grandTotal", grandTotal);
		return "client/cart"; 
	}
	
	// Add product to cart
	
	@GetMapping(value = "/add-to-cart")
	public String addToCart(HttpServletRequest request, HttpSession session,
			@RequestParam(name = "productId") long productId) {
		
		ProductDTO productDTO = productService.findById(productId); // lay thong tin cua san pham khi nguoi dung chon mua
		float unitPrice = productDTO.getPrice() - Math.round((productDTO.getPrice() * productDTO.getSaleDTO().getSalePercent() / 100));
		
		Object object = session.getAttribute("cart"); // lay danh sach san pham trong gio hang tren session
		
		if (object == null) { // neu gio hang trong => them san pham vao gio hang va tao session moi chua gio hang
			ItemDTO itemsDTO = new ItemDTO();
			itemsDTO.setProductDTO(productDTO);
			itemsDTO.setUnitPrice(unitPrice);
			itemsDTO.setQuantity(1);
			//itemsDTO
			Map<Long, ItemDTO> mapItem = new HashMap<Long, ItemDTO>();
			mapItem.put(productId, itemsDTO); // luu san pham vao map(gio hang) voi key = id cua san pham
			session.setAttribute("cart", mapItem); // luu gio hang vao session
		} else {  // neu gio hang da co san pham
			Map<Long, ItemDTO> mapItem = (Map<Long, ItemDTO>) object;
			if (mapItem.get(productId) == null) { // neu san pham chua co trong gio hang => them san pham vao gio hang
				ItemDTO itemsDTO = new ItemDTO();
				itemsDTO.setProductDTO(productDTO);
				itemsDTO.setUnitPrice(unitPrice);
				itemsDTO.setQuantity(1);
				mapItem.put(productId, itemsDTO); // luu san pham vao gio hang
			} else { // neu san pham da co trong gio hang => tang so luong san pham do trong gio hang len
				ItemDTO itemsDTO = mapItem.get(productId);
				int quantity = itemsDTO.getQuantity();
				if (quantity < 5) {
					itemsDTO.setQuantity(quantity + 1);
				}
			}
			session.setAttribute("cart", mapItem);
		}
		return "redirect:../client/cart";
	}
	
	@PostMapping(value = "/add-to-cart")
	public String addToCart(HttpSession session, @RequestParam(name = "productId") long productId,
			@RequestParam(name = "quantity") int quantity,@RequestParam(name="colorId")int colorId,@RequestParam(name="sizeId") int sizeId) {
		ProductDetailDTO detailDTO=detailService.findproductdetailID(productId,colorId, sizeId) ;
		ProductDTO productDTO = productService.findById(productId);
		float unitPrice = productDTO.getPrice() - Math.round((productDTO.getPrice() * productDTO.getSaleDTO().getSalePercent() / 100));
		Object object = session.getAttribute("cart");
		if (object == null) {
			ItemDTO itemsDTO = new ItemDTO();
			itemsDTO.setProductDTO(productDTO);
			itemsDTO.setQuantity(quantity);
			itemsDTO.setUnitPrice(unitPrice);
			itemsDTO.setDetailDTO(detailDTO);
			Map<Long, ItemDTO> mapItem = new HashMap<Long, ItemDTO>();
			mapItem.put(productId, itemsDTO);
			session.setAttribute("cart", mapItem);
		} else {
			Map<Long, ItemDTO> mapItem = (Map<Long, ItemDTO>) object;
			if (mapItem.get(productId) == null) {
				ItemDTO itemsDTO = new ItemDTO();
				itemsDTO.setProductDTO(productDTO);
				itemsDTO.setQuantity(quantity);
				itemsDTO.setUnitPrice(unitPrice);
				itemsDTO.setDetailDTO(detailDTO);
				mapItem.put(productId, itemsDTO);
			} else {
				ItemDTO itemsDTO = mapItem.get(productId);
				itemsDTO.setQuantity(quantity);
			}
			session.setAttribute("cart", mapItem);
		}

		return "redirect:../client/cart";
	}
	
	// Detele product from cart
	
	@GetMapping(value = "/delete-from-cart")
	public String deleteFromCart(HttpServletRequest request, HttpSession session,
			@RequestParam(name = "productId") long productId) {
		
		Object object = session.getAttribute("cart");
		Map<Long, ItemDTO> mapItem = (Map<Long, ItemDTO>) object;
		mapItem.remove(productId);
		session.setAttribute("cart", mapItem);
		return "redirect:../client/cart";
	}
}
