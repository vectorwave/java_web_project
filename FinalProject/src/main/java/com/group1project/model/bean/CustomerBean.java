package com.group1project.model.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name ="support")
public class CustomerBean {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="serviceInfo")
	private String serviceInfo;
	
	@Column(name="description")
	private String description; 
	
	@Column(name="name")
	private String name;
	
	@Column(name="phone")
	private String phone;
	
	@Column(name="email")
	private String email;
	
	@Column(name="preferedContactTime")
	private String preferedContactTime;
	
	@Column(name="processStatus")
	private String processStatus;
	
	@Column(name="remark")
	private String remark;
	
	@Column(name="createdAt")
	private String createdAt;
	
	@Column(name="modifiedAt")
	private String modifiedAt;
	
	public CustomerBean() {
	}

	public CustomerBean(String serviceInfo, String description, String name, String phone,String email,
			String preferedContactTime, String processStatus, String remark, String createdAt, String modifiedAt) {
		super();
		this.serviceInfo = serviceInfo;
		this.description = description;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.preferedContactTime = preferedContactTime;
		this.processStatus = processStatus;
		this.remark = remark;
		this.createdAt = createdAt;
		this.modifiedAt = modifiedAt;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getServiceInfo() {
		return serviceInfo;
	}

	public void setServiceInfo(String serviceInfo) {
		this.serviceInfo = serviceInfo;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPreferedContactTime() {
		return preferedContactTime;
	}

	public void setPreferedContactTime(String preferedContactTime) {
		this.preferedContactTime = preferedContactTime;
	}

	public String getProcessStatus() {
		return processStatus;
	}

	public void setProcessStatus(String processStatus) {
		this.processStatus = processStatus;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(String createdAt) {
		this.createdAt = createdAt;
	}

	public String getModifiedAt() {
		return modifiedAt;
	}

	public void setModifiedAt(String modifiedAt) {
		this.modifiedAt = modifiedAt;
	}
}
