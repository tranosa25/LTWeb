package com.tranosa25.sportshop.controller.client;

import java.sql.Date;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tranosa25.sportshop.dao.ItemDao;
import com.tranosa25.sportshop.dao.OrderDao;
import com.tranosa25.sportshop.entity.Item;
import com.tranosa25.sportshop.entity.Order;
import com.tranosa25.sportshop.entity.Product;
import com.tranosa25.sportshop.entity.Product_Detail;
import com.tranosa25.sportshop.entity.User;
import com.tranosa25.sportshop.model.ItemDTO;
import com.tranosa25.sportshop.model.UserPrincipal;

@Controller
@RequestMapping(value = "/client")
public class CheckoutController {

	@Autowired
	private OrderDao orderDao;
	
	@Autowired
	private ItemDao itemDao;
	
	@PostMapping(value = "/checkout")
	public String checkout(HttpSession session) {
		
		float subTotal = 0; // tong tien hang
		float fee = 5; // phi ship = 5$
		
		UserPrincipal userPrincipal = (UserPrincipal) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		// lay thong tin nguoi mua hang
		User user = new User();
		user.setUserId(userPrincipal.getUserId());
		
        Date date = new Date(new java.util.Date().getTime()); // lay ngay hien tai
        
		Object object = session.getAttribute("cart"); // lay danh sach gio hang tu session
		Map<Long, ItemDTO> mapItem = (Map<Long, ItemDTO>) object;
		
		for(Map.Entry<Long, ItemDTO> entry : mapItem.entrySet()) {
		    Long key = entry.getKey();
		    ItemDTO value = entry.getValue();
		    
		    subTotal += (value.getUnitPrice() * value.getQuantity()); // tinh tong tien hang
		}
		
		Order order = new Order();
		order.setBuyDate(date);
		order.setBuyer(user);
		order.setStatus("PENDING");
		order.setPriceTotal(subTotal + fee);
		
		orderDao.insert(order);
		
		// insert danh sach san pham trong don hang vao bang item
		for(Map.Entry<Long, ItemDTO> entry : mapItem.entrySet()) {
		    Long key = entry.getKey();
		    ItemDTO value = entry.getValue();
		    
		    Product product = new Product();
		    product.setProductId(entry.getValue().getProductDTO().getProductId());
		    Product_Detail prodetail = new Product_Detail();
		    prodetail.setDetail_id(entry.getValue().getDetailDTO().getDetailId());
		    Item item = new Item();
		    item.setItemId(entry.getValue().getItemId());
		    item.setProduct(product);
		    item.setDetail(prodetail);
		    item.setQuantity(entry.getValue().getQuantity());
		    item.setUnitPrice(entry.getValue().getUnitPrice());
		    item.setOrder(order);
		    
		    // insert vao bang item
			itemDao.insert(item);
		}
	
		mapItem.clear();
		session.setAttribute("cart", mapItem);
		
		return "redirect:/client/my-order";
	}
}
