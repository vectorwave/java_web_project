package com.ispan.jotravel.model.bean;

import java.io.Serializable;

import javax.persistence.Embeddable;

import lombok.Data;
@Data
@Embeddable
public class DetailPK implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private Integer orderId;
	private Integer productId;
}
