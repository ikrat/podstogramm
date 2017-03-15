package net.study.podstogramm.entity;

import java.io.Serializable;
import javax.persistence.*;

import org.springframework.data.elasticsearch.annotations.Document;

import java.sql.Timestamp;
import java.util.List;


@Entity
@Table(name="profile")
@Document(indexName="profile")
public class Profile extends AbstractEntity<Long> implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="PROFILE_ID_GENERATOR", sequenceName="PROFILE_SEQ", allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="PROFILE_ID_GENERATOR")
	@Column(unique=true, nullable=false)
	private Long id;

	@Column(name="about_me")
	private String aboutMe;

	@Column(name="avatar", length=255)
	private String avatar;

	@Column(insertable=false)
	private Timestamp created;

	@Column(length=100)
	private String email;

	@Column(name="name", length=150)
	private String name;

	@Column(length=15)
	private String gender;

	@Column(nullable=false, length=50)
	private String login;

	@Column(nullable=false, length=50)
	private String password;

	@Column(length=50)
	private String phone;
	
	@Column(length=100)
	private String site;

	@Column
	private Long publications;
	
	@Column
	private Long followers;
	
	@Column
	private Long following;

	//bi-directional many-to-one association to Comment
	@OneToMany(mappedBy="profile")
	private List<Comment> comments;

	//bi-directional many-to-one association to Photo
	@OneToMany(mappedBy="profile")
	private List<Photo> photos;

	//bi-directional one-to-one association to ProfileRestore
	@OneToOne(mappedBy="profile")
	private ProfileRestore profileRestore;

	public Profile() {
	}

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getAboutMe() {
		return this.aboutMe;
	}

	public void setAboutMe(String aboutMe) {
		this.aboutMe = aboutMe;
	}

	public String getAvatar() {
		return this.avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public Timestamp getCreated() {
		return this.created;
	}

	public void setCreated(Timestamp created) {
		this.created = created;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getLogin() {
		return this.login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Long getPublications() {
		return this.publications;
	}

	public void setPublications(Long publications) {
		this.publications = publications;
	}

	public String getSite() {
		return site;
	}

	public void setSite(String site) {
		this.site = site;
	}

	public List<Comment> getComments() {
		return this.comments;
	}

	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}

	public Long getFollowers() {
		return followers;
	}

	public void setFollowers(Long followers) {
		this.followers = followers;
	}

	public Long getFollowing() {
		return following;
	}

	public void setFollowing(Long following) {
		this.following = following;
	}

	public Comment addComment(Comment comment) {
		getComments().add(comment);
		comment.setProfile(this);

		return comment;
	}

	public Comment removeComment(Comment comment) {
		getComments().remove(comment);
		comment.setProfile(null);

		return comment;
	}

	public List<Photo> getPhotos() {
		return this.photos;
	}

	public void setPhotos(List<Photo> photos) {
		this.photos = photos;
	}

	public Photo addPhoto(Photo photo) {
		getPhotos().add(photo);
		photo.setProfile(this);

		return photo;
	}

	public Photo removePhoto(Photo photo) {
		getPhotos().remove(photo);
		photo.setProfile(null);

		return photo;
	}

	public ProfileRestore getProfileRestore() {
		return this.profileRestore;
	}

	public void setProfileRestore(ProfileRestore profileRestore) {
		this.profileRestore = profileRestore;
	}

}