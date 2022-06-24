package com.group1project.model.bean;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@Entity
@Table(name = "guide_info")
public class Guide implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@EqualsAndHashCode.Include
	@Id
	@GeneratedValue(generator = "pkGenerator")
	@GenericGenerator(name="pkGenerator",strategy = "foreign",parameters = @Parameter(name="property",value="account"))
	private Integer accountId;
	
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="account_id")
	@MapsId
	private Account account;

	@Column(name = "profile_name", columnDefinition = "nvarchar(50)", nullable = false)
	private String profileName;

	@Column(name = "guide_description", columnDefinition = "nvarchar(255)", nullable = true)
	private String guideDescription;
	
	@Column(name = "guide_name", columnDefinition = "nvarchar(30)", nullable = false)
	private String guideName;

	@Column(name = "guide_birthday", columnDefinition="date", nullable=false)
	private Date guideBirthday;
	
	@Column(name = "guide_gender",columnDefinition = "nvarchar(5)", nullable = false)
	private String guideGender;
	
	@Column(name = "guide_phone",columnDefinition = "varchar(20)", nullable = false)
	private String guidePhone;
	
	@Column(name = "guide_email",columnDefinition = "varchar(100)", nullable = false)
	private String guideEmail;
	
	@Column(name = "guide_address",columnDefinition = "nvarchar(100)", nullable = false)
	private String guideAddress;
	
	@Column(name = "licence_type",columnDefinition = "nvarchar(50)", nullable = false)
	private String licenceType;
	
	@Column(name = "licence_no",columnDefinition = "varchar(50)", nullable = false)
	private String licenceNo;
	
	@Column(name = "guide_photo",columnDefinition = "varbinary(MAX)", nullable = true)
	private String guidePhoto;
	


}
