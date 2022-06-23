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

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@Entity
@Table(name = "member_info")
public class Member implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@EqualsAndHashCode.Include
	@Id
	@GeneratedValue(generator = "pkGenerator")
	@GenericGenerator(name="pkGenerator",strategy = "foreign",parameters = @Parameter(name="property",value="account"))
	@Column(name="account_id")
	private Integer accountId;
	
	@OneToOne
	@JoinColumn(name="account_id")
	@MapsId
	private Account account;
	
	
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

	

}
