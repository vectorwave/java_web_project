package com.group1project.model.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.group1project.model.bean.OrderDetail;
import com.group1project.model.bean.OrderDetailId;

public interface OrderDetailRepository extends JpaRepository<OrderDetail, OrderDetailId>{
	@Query(value="SELECT SUM(od.amount) amount,MONTH(od.date) month FROM order_detail AS od WHERE YEAR(od.date) = ?1 GROUP BY MONTH(od.date) ",nativeQuery = true)
	public List<Object[]> countAmountByMonth(Integer year);
	@Query(value="SELECT SUM(amount*product_price),product_area FROM order_detail INNER JOIN product ON product.product_id = order_detail.product_id GROUP BY product.product_area",nativeQuery = true)
	public List<Object[]> countIncomeByArea();
}
