package net.study.podstogramm.service;

import java.util.List;

import net.study.podstogramm.entity.Photo;
import net.study.podstogramm.entity.Profile;

public interface FindProfileService {

	Profile findByLogin (String login);

	List<Photo> listPhotos();
}
