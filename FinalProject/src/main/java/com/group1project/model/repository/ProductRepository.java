package com.group1project.model.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.group1project.model.bean.Product;


public interface ProductRepository extends JpaRepository<Product, Integer> {
	public List<Product> findAllByProductNameLike(String key);
	
	public List<Product> findAllProductByProductArea(String tag);
		 
	public Page<Product> findAllByProductNameLike(String key,Pageable pab);
	
	@Query(value="select * from product where SYSDATETIME() >= start_date AND SYSDATETIME() <= end_date AND product_status = '上架'", nativeQuery = true)
	public Page<Product> findAllOnSaleProduct(Pageable pgb);
	
	@Query(value="select * from product where SYSDATETIME() >= start_date AND SYSDATETIME() <= end_date AND product_status = '上架' order by product_Id", nativeQuery = true)
	public List<Product> findAllSaleProduct();
	
	@Query(value="select * from product where account_id = :accountId", nativeQuery = true)
	public List<Product> findAllByAccountId(Integer accountId);
	
//	@Query(value="select product_id,avg(commentScore) from product_comment group by product_id  order by avg(commentScore) desc", nativeQuery = true)
//	public List<Product> findByCommentScore();

}
