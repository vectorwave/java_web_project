package com.ispan.jotravel.model.service;

import java.util.List;

import org.springframework.data.domain.Page;

import com.ispan.jotravel.model.bean.ProductOrder;

public interface OrderService {
	
	public Page<ProductOrder> getMyOrderPage(int index,int userId);
	//用分頁顯示這個用戶的訂單
	public void submitOrder(ProductOrder order);
	//提交一份完整訂單
	public ProductOrder fillOrder(ProductOrder order);
	//填滿訂單中的明細資料
	public Page<ProductOrder> getOrderPage(int index);
	//用分頁顯示全部訂單
	public void deleteOrder(int orderId);
	//刪除訂單和其下屬的訂單明細
	public ProductOrder getFullOrder(int orderId);
	//以id獲取完整的訂單
	public List<ProductOrder> getAll();
	// 獲得全部的訂單，帶商品資料
}