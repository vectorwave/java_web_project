package com.ispan.jotravel.model.bean;

import java.sql.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;
import lombok.NoArgsConstructor;


@NoArgsConstructor
@Data
@Entity
@Table(name="order_detail")
@IdClass(DetailPK.class)
public class OrderDetail {

	@Id
	@Column(name="fk_order_id")
	private Integer orderId;
	
	@Id
	@Column(name="fk_product_id")
	private Integer productId;
	
	@Column(name="amount")
	private Long amount;
	
	@JsonFormat(pattern="yyyy-MM-dd", timezone = "GMT+8")
	@Column(name="date")
	private Date date;
	
	@Column(name="total_days")
	private Long days;
	
	@Transient
	private Product product;
}
