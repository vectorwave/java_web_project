package com.group1project.model.bean;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@Entity
@Table(name="feedback")
public class Feedback implements Serializable{

	
	private static final long serialVersionUID = 1L;
	
	@EqualsAndHashCode.Include
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "feedback_id")
	private Integer feedbackId;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="account_id")
	private Account account;
	
	
	@Column(name = "feedback")
	private String feedback;
	
	@Column(name = "feedback_email")
	private String feedbackEmail;
	
	
	@Column(name="start_date", columnDefinition="date") // 預設是 datetime2
	private Date startDate;
	
	@Column(name="updated_time", columnDefinition="date") // 預設是 datetime2
	private Date updatedDate;
	
	@Column(name = "status")
	private String status;
	
	// 檢查是否有時間，沒有的話依照現在時間產生
			@PrePersist // helper function 在物件轉換成 Persistent 狀態以前，做此方法
			public void onCreate() {
				if(updatedDate == null) {
					this.updatedDate = new Date(System.currentTimeMillis());
				}
			}
}
