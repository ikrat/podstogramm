package net.study.podstogramm.entity;

import java.io.Serializable;
import javax.persistence.*;


@Entity
@Table(name="profile_restore")
public class ProfileRestore extends AbstractEntity<Long> implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(unique=true, nullable=false)
	private Long id;

	@Column(nullable=false, unique=true, length=255)
	private String token;

	//bi-directional one-to-one association to Profile
	@OneToOne(fetch=FetchType.LAZY, optional=false)
	@JoinColumn(name="id", nullable=false)
	private Profile profile;

	public ProfileRestore() {
	}

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getToken() {
		return this.token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	public Profile getProfile() {
		return this.profile;
	}

	public void setProfile(Profile profile) {
		this.profile = profile;
	}
}