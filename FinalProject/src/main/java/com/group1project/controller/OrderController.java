package com.group1project.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.group1project.model.bean.Order;
import com.group1project.model.service.OrderService;

@RestController
@RequestMapping("order")
public class OrderController {

	@Autowired
	OrderService orderService;

	@GetMapping("all")
	public Object getAllOrder(HttpSession session) {
		Integer accountId = (Integer) session.getAttribute("loginuser.accountId");
		if (accountId == null)
			accountId = 1;
		Page<Order> orderPage=orderService.findByAccountId(accountId);
		return new Object() {public List<Order> orders = orderPage.getContent();
		public Integer totalPages = orderPage.getTotalPages();};
	}

	@GetMapping("all/{page}")
	public Object getAllOrderByPageNumber(HttpSession session,@PathVariable("page") Integer pageNumber) {
		Integer accountId = (Integer) session.getAttribute("loginuser.accountId");
		if (accountId == null)
			accountId = 1;
		return orderService.findByAccountId(accountId, pageNumber);
	}

	@PostMapping
	public Object postOrder(@RequestBody Order order) {
		return orderService.save(order);
	}

	@DeleteMapping("delete")
	public void deleteOrderDetail(@RequestParam("orderId") Integer orderId,
			@RequestParam(value = "productId", required = false) Integer productId) {
		if (productId == null)
			orderService.deleteOrder(orderId);
		else
			orderService.deleteOrderDetail(productId, orderId);

	}
	
	@GetMapping("download")
	public List<Order> downloadOrder(HttpSession session){
		Integer accountId= (Integer) session.getAttribute("accountId");
		if(accountId == null)
			accountId = 1;
		return orderService.findAllByAccountId(accountId);
	}

}
