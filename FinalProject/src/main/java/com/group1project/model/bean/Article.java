package com.group1project.model.bean;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@Entity
@Table(name="article")

public class Article implements Serializable{
	
	
	private static final long serialVersionUID = 1L;

	@EqualsAndHashCode.Include
	@Id
	@Column(name = "article_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer articleId;
	
	@Column(name="article_category", nullable = false)
	private String articleCategory;
	
	@Column(name="article_title", nullable = false)
	private String articleTitle;
	
	@Column(name="article_text", nullable = false)
	private String articleText;
	
	@Column(name="article_jogroup")
	private Integer articleJogroup;
	
	@Column(name="pic_id", nullable = false)
	private int picId;
	

	@Column(name="article_pic" ,columnDefinition = "varbinary(max)")
	private byte[] articlePic;
	
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss") // Spring MVC 用
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="article_date", columnDefinition="datetime") // 預設是 datetime2
	private Date articleDate;
	
	@ManyToOne
	@JoinColumn(name="account_id")
	private Account account;
	
	

}
