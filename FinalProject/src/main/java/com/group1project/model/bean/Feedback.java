package com.group1project.model.bean;

import java.util.Date;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name="feedback")
public class Feedback {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "feedback_id")
	private Integer feedbackId;
	
	@Column(name = "account_id")
	private Integer accountId;
	
	@Column(name = "feedback")
	private String feedback;
	
	@Column(name = "feedback_email")
	private String feedbackEmail;
	
	@JsonFormat(pattern="yyyy-MM-dd", timezone = "GMP+8")
	@DateTimeFormat(pattern="yyyy-MM-dd") // Spring MVC 用
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="start_date", columnDefinition="date") // 預設是 datetime2
	private Date startDate;
	
	@JsonFormat(pattern="yyyy-MM-dd", timezone = "GMP+8")
	@DateTimeFormat(pattern="yyyy-MM-dd") // Spring MVC 用
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="updated_date", columnDefinition="date") // 預設是 datetime2
	private Date updatedDate;
	
	@Column(name = "status")
	private String status;
	
	// 檢查是否有時間，沒有的話依照現在時間產生
			@PrePersist // helper function 在物件轉換成 Persistent 狀態以前，做此方法
			public void onCreate() {
				if(updatedDate == null) {
					this.updatedDate = new Date();
				}
			}
	
	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Feedback [feedbackId=");
		builder.append(feedbackId);
		builder.append(", loginInfoId=");
		builder.append(accountId);
		builder.append(", feedback=");
		builder.append(feedback);
		builder.append(", feedbackEmail=");
		builder.append(feedbackEmail);
		builder.append(", startDate=");
		builder.append(startDate);
		builder.append(", updatedDate=");
		builder.append(updatedDate);
		builder.append(", status=");
		builder.append(status);
		builder.append("]");
		return builder.toString();
	}


	public Integer getFeedbackId() {
		return feedbackId;
	}


	public void setFeedbackId(Integer feedbackId) {
		this.feedbackId = feedbackId;
	}


	public Integer getAccountId() {
		return accountId;
	}


	public void setAccountId(Integer accountId) {
		this.accountId = accountId;
	}


	public String getFeedback() {
		return feedback;
	}


	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}


	public String getFeedbackEmail() {
		return feedbackEmail;
	}


	public void setFeedbackEmail(String feedbackEmail) {
		this.feedbackEmail = feedbackEmail;
	}


	public Date getStartDate() {
		return startDate;
	}


	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}


	public Date getUpdatedDate() {
		return updatedDate;
	}


	public void setUpdatedDate(Date updatedDate) {
		this.updatedDate = updatedDate;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public Feedback() {
		// TODO Auto-generated constructor stub
	}

}
