package net.study.podstogramm.form;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import net.study.podstogramm.entity.Comment;

public class CommentsForm implements Serializable {
	private static final long serialVersionUID = 5360266854382201395L;

	private List<Comment> items = new ArrayList<>();

	public CommentsForm(List<Comment> items) {
		super();
		this.items = items;
	}

	public CommentsForm() {
		super();
	}

	public List<Comment> getItems() {
		return items;
	}

	public void setItems(List<Comment> items) {
		this.items = items;
	}
	
	
}
