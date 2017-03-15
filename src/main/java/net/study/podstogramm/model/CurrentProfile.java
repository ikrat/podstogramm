package net.study.podstogramm.model;

import java.util.Collections;

import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import net.study.podstogramm.Constants;
import net.study.podstogramm.entity.Profile;

public class CurrentProfile extends User {
	private static final long serialVersionUID = 102811806565329497L;
	private final Long id;
	private final String name;
	private final String login;
	
	public CurrentProfile(Profile profile) {
		super(profile.getLogin(), profile.getPassword(), true, true, true, true, Collections.singleton(new SimpleGrantedAuthority(Constants.USER)));
		this.id = profile.getId();
		this.name = profile.getName();
		this.login = profile.getLogin();
	}
	
	public Long getId() {
		return id;
	}
	
	public String getName() {
		return name;
	}
	
	public String getLogin(){
		return login;
	}

	@Override
	public String toString() {
		return String.format("CurrentAccount [id=%s, username=%s]", id, getUsername());
	}
}
