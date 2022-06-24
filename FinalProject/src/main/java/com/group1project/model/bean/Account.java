package com.group1project.model.bean;

import java.io.Serializable;
import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;



@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(onlyExplicitlyIncluded = true)

@Entity
@Table(name="login_info")
public class Account implements Serializable{
	
	private static final long serialVersionUID = 1L;

	@EqualsAndHashCode.Include
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="account_id")
	private Integer accountId;
	

	
	@Column(name="account_name", nullable = false, columnDefinition = "nvarchar(20)")
	private String accountName;
	
	
	@Column(name="password", nullable = false, columnDefinition = "varchar(20)")
	private String password;
	
	@Column(name="title", nullable = false, columnDefinition = "nvarchar(20)")
	private String title;
	
	@Column(name="status", nullable = false, columnDefinition = "bit")
	private String status;
	
	@JsonFormat(pattern="yyyy-MM-dd hh:mm:ss", timezone = "GMT+8")
	@DateTimeFormat(pattern="yyyy-MM-dd hh:mm:ss") // Spring MVC 用
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="signup_date", columnDefinition="datetime")
	private Date signupDate;
	
	
	@OneToOne(mappedBy = "account",cascade = CascadeType.ALL)
	@PrimaryKeyJoinColumn
	private Guide guide;
	
	@OneToOne(mappedBy = "account",cascade = CascadeType.ALL)
	@PrimaryKeyJoinColumn
	private Member member;
	
	@ToString.Exclude
	@OneToMany(mappedBy = "account",fetch = FetchType.LAZY)
	private List<Order> orders;
	
	
	@JsonCreator
	private Account(Integer account) {
		accountId=account;
	}
	
}
