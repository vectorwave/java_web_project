package com.ispan.jotravel.model.dao;



import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.ispan.jotravel.model.bean.ProductOrder;

public interface OrderRepository extends JpaRepository<ProductOrder, Integer> {
	public List<ProductOrder> findByLoginInfoId(int loginInfoId);
	public Page<ProductOrder> findByLoginInfoId(int loginInfoId,Pageable pageable);
}
