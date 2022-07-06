package com.group1project.model.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.group1project.model.bean.ProductComment;

public interface ProductCommentRepository extends JpaRepository<ProductComment, Integer> {
	public List<ProductComment> findAllByProductProductNameLike(String key);
	public List<ProductComment> findAllByProductProductId(Integer productId);

	@Query(value = "select [prouct_comment_id] from product_comment where product_id = :product_id",nativeQuery = true)
	public List<Integer> findByProduct_productId( @Param("product_id") Integer productId);
	
	@Query(value="select avg(commentScore) from product_comment group by product_id  order by avg(commentScore) desc",nativeQuery = true)
	public List<Double> findByCommentScore();
	
	@Query(value="select product_id from product_comment group by product_id order by avg(commentScore) desc",nativeQuery = true)
	public List<Integer> sortProductId();
}
