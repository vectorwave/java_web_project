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
	private byte[] guidePhoto;
	
	
	public byte[] getGuidePhoto() {
		return guidePhoto;
	}

	public void setGuidePhoto(byte[] guidePhoto) {
		this.guidePhoto = guidePhoto;
	}

	public String getGuideGender() {
		return guideGender;
	}

	public void setGuideGender(String guideGender) {
		this.guideGender = guideGender;
	}

	public Integer getAccountId() {
		return accountId;
	}

	public void setAccountId(Integer accountId) {
		this.accountId = accountId;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public String getProfileName() {
		return profileName;
	}

	public void setProfileName(String profileName) {
		this.profileName = profileName;
	}

	public String getGuideDescription() {
		return guideDescription;
	}

	public void setGuideDescription(String guideDescription) {
		this.guideDescription = guideDescription;
	}

	public String getGuideName() {
		return guideName;
	}

	public void setGuideName(String guideName) {
		this.guideName = guideName;
	}

	public Date getGuideBirthday() {
		return guideBirthday;
	}

	public void setGuideBirthday(Date guideBirthday) {
		this.guideBirthday = guideBirthday;
	}

	public String getGuidePhone() {
		return guidePhone;
	}

	public void setGuidePhone(String guidePhone) {
		this.guidePhone = guidePhone;
	}

	public String getGuideEmail() {
		return guideEmail;
	}

	public void setGuideEmail(String guideEmail) {
		this.guideEmail = guideEmail;
	}

	public String getGuideAddress() {
		return guideAddress;
	}

	public void setGuideAddress(String guideAddress) {
		this.guideAddress = guideAddress;
	}

	public String getLicenceType() {
		return licenceType;
	}

	public void setLicenceType(String licenceType) {
		this.licenceType = licenceType;
	}

	public String getLicenceNo() {
		return licenceNo;
	}

	public void setLicenceNo(String licenceNo) {
		this.licenceNo = licenceNo;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public Guide(Integer accountId, String profileName, String guideDescription, String guideName,
			Date guideBirthday, String guideGender, String guidePhone, String guideEmail, String guideAddress,
			String licenceType, String licenceNo, byte[] guidePhoto) {
		super();
		this.accountId = accountId;
		this.profileName = profileName;
		this.guideDescription = guideDescription;
		this.guideName = guideName;
		this.guideBirthday = guideBirthday;
		this.guideGender = guideGender;
		this.guidePhone = guidePhone;
		this.guideEmail = guideEmail;
		this.guideAddress = guideAddress;
		this.licenceType = licenceType;
		this.licenceNo = licenceNo;
		this.guidePhoto = guidePhoto;
	}
	
	
}
