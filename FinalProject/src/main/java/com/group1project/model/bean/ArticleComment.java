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
@Table(name="article_comment")
public class ArticleComment implements Serializable{
	

	private static final long serialVersionUID = 1L;
	
	@EqualsAndHashCode.Include
	@Id
	@Column(name = "article_comment_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int articleCommentId;
	
	@Column(name="article_comment_text", nullable = false)
	private String articleCommentText;
		
	@Column(name="article_comment_date", columnDefinition="date") // 預設是 datetime2
	private Date articleCommentDate;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="article_id")
	private Article article;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="account_id")
	private Account account;
	
	
	





	
}
