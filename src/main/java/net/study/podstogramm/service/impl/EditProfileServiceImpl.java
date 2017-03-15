package net.study.podstogramm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.study.podstogramm.entity.Profile;
import net.study.podstogramm.form.SignUpForm;
import net.study.podstogramm.repository.storage.ProfileRepository;
import net.study.podstogramm.service.EditProfileService;

@Service
//@SuppressWarnings("unchecked")
public class EditProfileServiceImpl implements EditProfileService {
	
	@Value("${generate.login.suffix.length}")
	private int generateLoginSuffixLength;

	@Value("${generate.login.alphabet}")
	private String generateLoginAlphabet;

	@Value("${generate.login.max.try.count}")
	private int maxTryCountToGenerateLogin;
	
	@Autowired
	private ProfileRepository profileRepository;

	@Override
	@Transactional
	public Profile createNewProfile(SignUpForm signUpForm) {
		Profile profile = new Profile();
		profile.setLogin(signUpForm.getLogin());
		profile.setEmail(signUpForm.getEmail());
		profile.setPassword(signUpForm.getPassword());
		profile.setPublications((long) 0);
		profileRepository.save(profile);
		return profile;
	}

	@Override
	public Profile profile(long idProfile) {
		return profileRepository.findOne(idProfile);
	}

}
