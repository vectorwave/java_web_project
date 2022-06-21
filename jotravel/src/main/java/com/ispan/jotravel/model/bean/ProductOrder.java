package com.ispan.jotravel.model.bean;

import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@Entity
@Table(name="product_order")
public class ProductOrder {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="order_id")
	private Integer orderId;
	
	@Column(name="cash_flow",length=20)
	private String cashFlow;//TODO
	
	@Column(name="status",length = 20)
	private String status;// processing(處理中)|processed(處理完)|cancel(退單)
	
	@Column(name="fk_login_info_id")
	private Integer loginInfoId;
	
	@Transient
	private List<OrderDetail> details;
	
}
