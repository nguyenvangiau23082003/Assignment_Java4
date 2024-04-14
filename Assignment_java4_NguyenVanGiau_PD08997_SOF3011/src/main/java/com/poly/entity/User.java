package com.poly.entity;

import javax.persistence.Table;

import com.poly.constant.NamedStored;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedStoredProcedureQueries;
import javax.persistence.NamedStoredProcedureQuery;
import javax.persistence.StoredProcedureParameter;


@NamedStoredProcedureQueries({
	@NamedStoredProcedureQuery(name = NamedStored.FIND_USER_BY_HREF,
								procedureName = "sp_selectUsersLikedVideoByVideoHref",
								resultClasses = {User.class},
								parameters = @StoredProcedureParameter(name = "videoHref", type = String.class)
			)
})

@Entity
@Table(name = "`user`")
public class User {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@Column(name = "username")
	private String username;
	
	@Column(name = "password")
	
	private String password;
	@Column(name = "email")
	private String email;
	
	@Column(name = "isAdmin")
	private boolean isAdmin;
	
	@Column(name = "isActive")
	private boolean isActive;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public boolean isAdmin() {
		return isAdmin;
	}

	public void setAdmin(boolean isAdmin) {
		this.isAdmin = isAdmin;
	}

	public boolean isActive() {
		return isActive;
	}

	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}
	
	
	
	
}
