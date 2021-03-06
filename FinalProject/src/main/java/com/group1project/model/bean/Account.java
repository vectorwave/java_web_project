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
import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;




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
	
	
	@Column(name="password", nullable = false, columnDefinition = "varchar(max)")
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
	
	@JsonIgnore
	@OneToOne(mappedBy = "account",cascade = CascadeType.ALL)
	@PrimaryKeyJoinColumn
	private Member member;
	
	@JsonIgnore
	@ToString.Exclude
	@OneToMany(mappedBy = "account",fetch = FetchType.LAZY)
	private List<Order> orders;
	
	
//	@JsonCreator
	private Account(Integer account) {
		accountId=account;
	}


	public Integer getAccountId() {
		return accountId;
	}


	public void setAccountId(Integer accountId) {
		this.accountId = accountId;
	}


	public String getAccountName() {
		return accountName;
	}


	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public Date getSignupDate() {
		return signupDate;
	}


	public void setSignupDate(Date signupDate) {
		this.signupDate = signupDate;
	}


	public Guide getGuide() {
		return guide;
	}


	public void setGuide(Guide guide) {
		this.guide = guide;
	}


	public Member getMember() {
		return member;
	}


	public void setMember(Member member) {
		this.member = member;
	}


	public List<Order> getOrders() {
		return orders;
	}


	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}





	@Override
	public String toString() {
		return "Account [accountId=" + accountId + ", accountName=" + accountName + ", password=" + password
				+ ", title=" + title + ", status=" + status + ", signupDate=" + signupDate + ", guide=" + guide
				+ ", member=" + member + ", orders=" + orders + "]";
	}


	public Account(Integer accountId, String accountName, String password, String title, String status, Date signupDate,
			Guide guide) {
		super();
		this.accountId = accountId;
		this.accountName = accountName;
		this.password = password;
		this.title = title;
		this.status = status;
		this.signupDate = signupDate;
		this.guide = guide;
	}
	
	
}
