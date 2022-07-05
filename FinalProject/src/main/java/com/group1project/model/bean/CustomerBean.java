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
	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("CustomerBean [id=");
		builder.append(id);
		builder.append(", serviceInfo=");
		builder.append(serviceInfo);
		builder.append(", description=");
		builder.append(description);
		builder.append(", name=");
		builder.append(name);
		builder.append(", phone=");
		builder.append(phone);
		builder.append(", email=");
		builder.append(email);
		builder.append(", preferedContactTime=");
		builder.append(preferedContactTime);
		builder.append(", processStatus=");
		builder.append(processStatus);
		builder.append(", remark=");
		builder.append(remark);
		builder.append(", createdAt=");
		builder.append(createdAt);
		builder.append(", modifiedAt=");
		builder.append(modifiedAt);
		builder.append("]");
		return builder.toString();
	}

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
