package com.group1project.model.bean;

import java.io.Serializable;
import java.sql.Date;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import org.hibernate.annotations.Generated;
import org.hibernate.annotations.GenerationTime;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.NaturalId;
import org.hibernate.annotations.Parameter;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;


@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@Entity
@Table(name = "member_info")
public class Member implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@EqualsAndHashCode.Include
	@Id
	@Column(name = "member_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer memberId;
	
//	@EqualsAndHashCode.Include
//	@Id
//	@GeneratedValue(generator = "pkGenerator")
//	@GenericGenerator(name="pkGenerator",strategy = "foreign",parameters = @Parameter(name="property",value="account"))
//	@Column(name="account_id")
//	private Integer accountId;
	
	@OneToOne
	@JsonIgnore
	@JoinColumn(name="account_id")
	private Account account;
	
//	@OneToOne
//	@JoinColumn(name="account_id")
//	@MapsId
//	private Account account;
	

	
	@Column(name = "member_name", columnDefinition = "nvarchar(30)")
	private String memberName;

	@Column(name = "phone", columnDefinition = "varchar(20)")
	private String phone;

	@Column(name = "gender", columnDefinition = "bit")
	private Long gender;

	@Column(name = "email",columnDefinition = "varchar(50)")
	private String email;

	@Column(name = "address", columnDefinition = "nvarchar(50)")
	private String address;

	@Column(name = "birthdate", columnDefinition = "date")
	private Date birthDate;

	@Column(name = "photopath", columnDefinition = "varbinary(max)")
	private byte[] photoPath;

	public Integer getMemberId() {
		return memberId;
	}

	public void setMemberId(Integer memberId) {
		this.memberId = memberId;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Long getGender() {
		return gender;
	}

	public void setGender(Long gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public byte[] getPhotoPath() {
		return photoPath;
	}

	public void setPhotoPath(byte[] photoPath) {
		this.photoPath = photoPath;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public Member(Integer memberId, String memberName, String phone, Long gender, String email, String address,
			Date birthDate, byte[] photoPath) {
		super();
		this.memberId = memberId;
		this.memberName = memberName;
		this.phone = phone;
		this.gender = gender;
		this.email = email;
		this.address = address;
		this.birthDate = birthDate;
		this.photoPath = photoPath;
	}

	

	

}
