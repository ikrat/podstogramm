package net.study.podstogramm.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;
import java.util.List;


@Entity
@Table(name="photo")
public class Photo extends AbstractEntity<Long> implements Serializable, ProfileEntity {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="PHOTO_ID_GENERATOR", sequenceName="PHOTO_SEQ", allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="PHOTO_ID_GENERATOR")
	@Column(unique=true, nullable=false)
	private Long id;

	@Column(nullable=false)
	private Long comments;

	@Column
	private String content;

	@Column
	private Timestamp created;

	@Column(nullable=false)
	private Long likes;

	@Column(nullable=false, length=255)
	private String src;

	//bi-directional many-to-one association to Comment
	@OneToMany(mappedBy="photo", cascade={CascadeType.MERGE, CascadeType.PERSIST})
	@OrderBy("created DESC")
	private List<Comment> commentsSet;

	//bi-directional many-to-one association to Profile
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="id_profile", nullable=false)
	private Profile profile;

	public Photo() {
	}

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getComments() {
		return this.comments;
	}

	public void setComments(Long comments) {
		this.comments = comments;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getCreated() {
		return this.created;
	}

	public void setCreated(Timestamp created) {
		this.created = created;
	}

	public Long getLikes() {
		return this.likes;
	}

	public void setLikes(Long likes) {
		this.likes = likes;
	}

	public String getSrc() {
		return this.src;
	}

	public void setSrc(String src) {
		this.src = src;
	}

	public List<Comment> getCommentsSet() {
		return this.commentsSet;
	}

	public void setCommentsSet(List<Comment> commentsSet) {
		this.commentsSet = commentsSet;
	}

	public Comment addCommentsSet(Comment commentsSet) {
		getCommentsSet().add(commentsSet);
		commentsSet.setPhoto(this);

		return commentsSet;
	}

	public Comment removeCommentsSet(Comment commentsSet) {
		getCommentsSet().remove(commentsSet);
		commentsSet.setPhoto(null);

		return commentsSet;
	}

	public Profile getProfile() {
		return this.profile;
	}

	public void setProfile(Profile profile) {
		this.profile = profile;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((comments == null) ? 0 : comments.hashCode());
		result = prime * result + ((commentsSet == null) ? 0 : commentsSet.hashCode());
		result = prime * result + ((content == null) ? 0 : content.hashCode());
		result = prime * result + ((created == null) ? 0 : created.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((likes == null) ? 0 : likes.hashCode());
		result = prime * result + ((profile == null) ? 0 : profile.hashCode());
		result = prime * result + ((src == null) ? 0 : src.hashCode());
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
		Photo other = (Photo) obj;
		if (comments == null) {
			if (other.comments != null)
				return false;
		} else if (!comments.equals(other.comments))
			return false;
		if (commentsSet == null) {
			if (other.commentsSet != null)
				return false;
		} else if (!commentsSet.equals(other.commentsSet))
			return false;
		if (content == null) {
			if (other.content != null)
				return false;
		} else if (!content.equals(other.content))
			return false;
		if (created == null) {
			if (other.created != null)
				return false;
		} else if (!created.equals(other.created))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (likes == null) {
			if (other.likes != null)
				return false;
		} else if (!likes.equals(other.likes))
			return false;
		if (profile == null) {
			if (other.profile != null)
				return false;
		} else if (!profile.equals(other.profile))
			return false;
		if (src == null) {
			if (other.src != null)
				return false;
		} else if (!src.equals(other.src))
			return false;
		return true;
	}

}