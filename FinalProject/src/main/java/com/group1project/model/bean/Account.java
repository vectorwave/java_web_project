package com.group1project.model.bean;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.extern.slf4j.Slf4j;



@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@Slf4j

@Entity
@Table(name="login_info")
public class Account implements Serializable{
	
	private static final long serialVersionUID = 1L;

	@EqualsAndHashCode.Include
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="account_id")
	private Integer accountId;
	
	@Column(name="account_name")
	private String accountName;
	
	
	@Column(name="password")
	private String password;
	
	@Column(name="title")
	private String title;
	
	@Column(name="status")
	private String status;
	
	@Column(name="signup_date")
	private Date signupDate;
	
	
	@OneToOne(mappedBy = "account",cascade = CascadeType.ALL)
	@PrimaryKeyJoinColumn
	private Guide guide;
	
	@OneToOne(mappedBy = "account",cascade = CascadeType.ALL)
	@PrimaryKeyJoinColumn
	private Member member;
	
	@OneToMany(mappedBy = "account",fetch = FetchType.LAZY)
	private List<Order> orders;
	
	public static void main(String[] args) {
		log.info("hello");
	}
}
