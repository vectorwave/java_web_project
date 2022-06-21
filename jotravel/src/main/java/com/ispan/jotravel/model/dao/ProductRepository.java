package com.ispan.jotravel.model.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ispan.jotravel.model.bean.Product;
@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {
}
