package com.ispan.jotravel.model.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.ispan.jotravel.model.bean.OrderDetail;
import com.ispan.jotravel.model.bean.ProductOrder;
import com.ispan.jotravel.model.dao.OrderDetailRepository;
import com.ispan.jotravel.model.dao.OrderRepository;
import com.ispan.jotravel.model.dao.ProductRepository;
import com.ispan.jotravel.model.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {
	
	//引響:有對這個資料庫進行操作(crud)
	//理論上沒有引響的資料庫不管寫了什麼都不會出錯
	@Autowired private OrderRepository orderRepository;
	@Autowired private OrderDetailRepository detailRepository;
	@Autowired private ProductRepository productRepository;
	
	@Override //用使用者id查找訂單
	public Page<ProductOrder> getMyOrderPage(int index,int userId) { //引響資料庫:product_order
		//TODO
		PageRequest request =PageRequest.of(index-1, 5);
		return null;
	}
	@Override //將傳入的訂單資料保存到資料庫
	public void submitOrder(ProductOrder order) {//引響資料庫:product_order,order_detail
		orderRepository.saveAndFlush(order);
		for(OrderDetail detail:order.getDetails()) {
			detail.setOrderId(order.getOrderId());
		}
		detailRepository.saveAllAndFlush(order.getDetails());
	}
	@Override //輸入訂單，將訂單內的明細和商品資料填滿
	public ProductOrder fillOrder(ProductOrder order) {//引響資料庫:product_order,order_detail,product
		List<OrderDetail> details = detailRepository.findByOrderId(order.getOrderId());
		for(OrderDetail detail:details) {
			detail.setProduct(productRepository.findById(detail.getProductId()).get());
		}
		order.setDetails(details);
		return order;
	}
	@Override //以page傳回訂單，帶明細和商品資料
	public List<ProductOrder> getOrderPage(int index) {//引響資料庫:product_order,order_detail,product
		PageRequest request =PageRequest.of(index-1, 5);
		Page<ProductOrder> orderPage = orderRepository.findAll(request);
		List<ProductOrder> orders = orderPage.getContent();
		for(ProductOrder order:orders) {
			fillOrder(order);
		}
		return orders;
	}
	@Override //以訂單刪除訂單和關聯的訂單明細
	public void deleteOrder(int orderId) {//引響資料庫:product_order,order_detail
		Optional<ProductOrder> maybeOrder =orderRepository.findById(orderId);
		if(maybeOrder.isPresent()) {
			List<OrderDetail> details = detailRepository.findByOrderId(orderId);
			for(OrderDetail detail:details) {
				detailRepository.delete(detail);
			}
			orderRepository.delete(maybeOrder.get());	
		}
	}
	@Override //以orderId獲取一個帶訂單明細和商品資料的訂單
	public ProductOrder getFullOrder(int orderId) {//引響資料庫:product_order,order_detail,product
		Optional<ProductOrder> maybeOrder =orderRepository.findById(orderId);
		return maybeOrder.isPresent()?fillOrder(maybeOrder.get()):null;
	}
	@Override  //獲取全部訂單，帶訂單明細和商品資料
	public List<ProductOrder> getAll() {//引響資料庫:product_order,order_detail,product
		List<ProductOrder> orders=orderRepository.findAll();
		for(ProductOrder order:orders) {
			fillOrder(order);
		}
		return orders;
	}
	
	
	
	
	
}
