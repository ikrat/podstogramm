package net.study.podstogramm.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import net.study.podstogramm.entity.Photo;
import net.study.podstogramm.entity.Profile;
import net.study.podstogramm.model.CurrentProfile;
import net.study.podstogramm.repository.storage.PhotosRepository;
import net.study.podstogramm.repository.storage.ProfileRepository;
import net.study.podstogramm.service.FindProfileService;

@Service
public class FindProfileServiceImpl implements FindProfileService, UserDetailsService {
	private static final Logger LOGGER = LoggerFactory.getLogger(FindProfileServiceImpl.class);
	@Autowired
	private ProfileRepository profileRepository;
	
	@Autowired
	private PhotosRepository photosRepository;

	@Override
	public Profile findByLogin(String login) {
		return profileRepository.findByLogin(login);
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Profile profile = findProfile(username);
		if(profile != null) {
			return new CurrentProfile(profile);
		} else {
			LOGGER.error("Profile not found by " + username);
			throw new UsernameNotFoundException("Profile not found by " + username);
		}
	}

	private Profile findProfile(String anyUniqueId) {
		Profile profile = profileRepository.findByLogin(anyUniqueId);
		if(profile == null) {
			profile = profileRepository.findByEmail(anyUniqueId);
			if(profile == null) {
				profile = profileRepository.findByPhone(anyUniqueId);
			}
		}
		return profile;
	}

	@Override
	public List<Photo> listPhotos() {
		return photosRepository.findAll(new Sort("created"));
	}
	
}
