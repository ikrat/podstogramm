package net.study.podstogramm.form;

import java.io.Serializable;

public class SignUpForm implements Serializable {
	private static final long serialVersionUID = 5904797254491731346L;

	private String login;
	private String email;
	private String password;
	private String confirmPassword;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	
}
