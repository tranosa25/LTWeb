package com.coosi29.flatshop.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.validator.constraints.NotBlank;

import com.coosi29.flatshop.validator.Phone;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "user_id")
	private long userId;
	@NotBlank(message = "please enter email!")
	@Column(name = "email")
	private String email;
	@NotBlank(message = "please enter password!")
	@Column(name = "password")
	private String password;
	@NotBlank(message = "please enter fullname!")
	@Column(name = "full_name")
	private String fullname;
	@Phone(message = "Phone Number is invalid")
	@Column(name = "phone")
	private String phone;
	
	@Column(name = "address")
	private String address;
	
	@Column(name = "gender")
	private boolean gender;
	
	@Column(name = "verify")
	private boolean verify;

	@ManyToOne
	@JoinColumn(name = "role_id")
	private Role role;
	
	@Column(name = "avatar")
	private String avatar;





	public void setUserId(long userId) {
		this.userId = userId;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setGender(boolean gender) {
		this.gender = gender;
	}

	public void setVerify(boolean verify) {
		this.verify = verify;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public Role getRole() {
		return role;
	}

	public long getUserId() {
		return userId;
	}

	public String getEmail() {
		return email;
	}

	public String getPassword() {
		return password;
	}

	public String getFullname() {
		return fullname;
	}

	public String getPhone() {
		return phone;
	}

	public String getAddress() {
		return address;
	}

	public boolean isGender() {
		return gender;
	}

	public boolean isVerify() {
		return verify;
	}

	public String getAvatar() {
		return avatar;
	}
}
