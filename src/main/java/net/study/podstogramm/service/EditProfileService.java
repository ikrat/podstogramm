package net.study.podstogramm.service;

import net.study.podstogramm.entity.Profile;
import net.study.podstogramm.form.SignUpForm;

public interface EditProfileService {

	Profile createNewProfile(SignUpForm signUpForm);
	
	Profile profile (long idProfile);
}
