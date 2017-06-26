package domain.vo;

import java.io.Serializable;

public class User implements Serializable{
	private String userId;
	private String userPassword;
	private String userName;
	private String userEmail;
	private int userEnable;
	public User() {
	}
	public User(String userId, String userPassword, String userName, String userEmail, int userEnable) {
		this.userId = userId;
		this.userPassword = userPassword;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userEnable = userEnable;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public int getUserEnable() {
		return userEnable;
	}
	public void setUserEnable(int userEnable) {
		this.userEnable = userEnable;
	}
	@Override
	public String toString() {
		return "User [userId=" + userId + ", userPassword=" + userPassword + ", userName=" + userName + ", userEmail="
				+ userEmail + ", userEnable=" + userEnable + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((userEmail == null) ? 0 : userEmail.hashCode());
		result = prime * result + userEnable;
		result = prime * result + ((userId == null) ? 0 : userId.hashCode());
		result = prime * result + ((userName == null) ? 0 : userName.hashCode());
		result = prime * result + ((userPassword == null) ? 0 : userPassword.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		if (userEmail == null) {
			if (other.userEmail != null)
				return false;
		} else if (!userEmail.equals(other.userEmail))
			return false;
		if (userEnable != other.userEnable)
			return false;
		if (userId == null) {
			if (other.userId != null)
				return false;
		} else if (!userId.equals(other.userId))
			return false;
		if (userName == null) {
			if (other.userName != null)
				return false;
		} else if (!userName.equals(other.userName))
			return false;
		if (userPassword == null) {
			if (other.userPassword != null)
				return false;
		} else if (!userPassword.equals(other.userPassword))
			return false;
		return true;
	}
	
	
}
