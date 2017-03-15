package net.study.podstogramm.form;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import net.study.podstogramm.entity.Photo;

public class PhotoForm implements Serializable {
	private static final long serialVersionUID = 5316386249519287621L;
	
	private List<Photo> items = new ArrayList<>();

	public PhotoForm() {
		super();
	}

	public PhotoForm(List<Photo> items) {
		super();
		this.items = items;
	}

	public List<Photo> getItems() {
		return items;
	}

	public void setItems(List<Photo> items) {
		this.items = items;
	}
	
	

}
