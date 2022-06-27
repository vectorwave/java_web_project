package com.group1project.model.bean;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonProperty.Access;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@Entity
@Table(name="order_detail")

public class OrderDetail implements Serializable{
	
	
	private static final long serialVersionUID = 1L;
	
	@JsonIgnore
	@EmbeddedId
	@EqualsAndHashCode.Include
	private OrderDetailId detailId = new OrderDetailId();
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JsonProperty(access = Access.WRITE_ONLY)
	@MapsId(value = "orderId")
	@JoinColumn(name="order_id")
	private Order order;
	
	@MapsId(value="productId")
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="product_id")
	private Product product;
	
	@Column(name="amount")
	private Long amount;
	
	@Column(name="date")
	private Date date;
	
	@Column(name="total_days")
	private Long totalDays;
	
	
	
}
