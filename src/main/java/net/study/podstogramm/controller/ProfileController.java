package net.study.podstogramm.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.study.podstogramm.entity.Profile;
import net.study.podstogramm.form.PhotoForm;
import net.study.podstogramm.form.SignUpForm;
import net.study.podstogramm.model.CurrentProfile;
import net.study.podstogramm.service.EditProfileService;
import net.study.podstogramm.service.FindProfileService;
import net.study.podstogramm.util.SecurityUtil;

@Controller
public class ProfileController {
	
	@Autowired
	private EditProfileService editProfileService;
	
	@Autowired
	private FindProfileService findProfileService;
	
	
	@RequestMapping(value="/{login}", method=RequestMethod.GET)
	public String getProfile(@PathVariable("login") String login, Model model) {
		Profile profile = findProfileService.findByLogin(login);
		if(profile == null) {
			return "profile_not_found";
		}
		model.addAttribute("profile", profile);
		return "profile";
	}

	@RequestMapping(value="/profile", method=RequestMethod.GET)
	public String getProfile() {
		return "profile";
	}
	
	@RequestMapping(value="/error", method=RequestMethod.GET)
	public String getError(){
		return "error";
	}
	
	@RequestMapping(value="/sign-in")
	public String getSignIn() {
		CurrentProfile currentProfile = SecurityUtil.getCurrentProfile();
		if(currentProfile != null) {
			return "redirect:/" + currentProfile.getUsername();
		} else {
			return "sign-in";
		}
	}
	
	@RequestMapping(value="/sign-in-failed")
	public String signInFailed(HttpSession session){
		if(session.getAttribute("SPRING_SECURITY_LAST_EXCEPTION") == null) {
			return "redirect:/sign-in";
		}
		return "sign-in";
	}
	
	@RequestMapping(value="/sign-up", method=RequestMethod.GET)
	public String getSignUp(){
		return "sign-up";
	}
	
	
	@RequestMapping(value="/welcome", method=RequestMethod.GET)
	public String getWelcome(Model model) {
		model.addAttribute("profile", editProfileService.profile(SecurityUtil.getCurrentIdProfile()));
		model.addAttribute("photoForm", new PhotoForm(findProfileService.listPhotos()));
		return "welcome";
	}
	
	@RequestMapping(value="/edit", method=RequestMethod.GET)
	public String getEdit(Model model) {
		model.addAttribute("profile", editProfileService.profile(SecurityUtil.getCurrentIdProfile()));
		return "edit";
	}
	
	@RequestMapping(value="/password", method=RequestMethod.GET)
	public String getPassword(Model model){
		model.addAttribute("profile", editProfileService.profile(SecurityUtil.getCurrentIdProfile()));
		return "password";
	}
	
	@RequestMapping(value="/manage-access", method=RequestMethod.GET)
	public String getAccess(){
		return "manage-access";
	}
	
	@RequestMapping(value="/comment-filter", method=RequestMethod.GET)
	public String getCommentFilter(){
		return "comment-filter";
	}
	
	@RequestMapping(value="/emails", method=RequestMethod.GET)
	public String getEmails(){
		return "emails";
	}
	
	@RequestMapping(value="/help", method=RequestMethod.GET)
	public String getHelp() {
		return "help";
	}
	
	@RequestMapping(value="/sign-up", method=RequestMethod.POST)
	public String createProfile(@ModelAttribute("signUpForm") SignUpForm signUpForm, BindingResult bindingResult, Model model) {
		if(bindingResult.hasErrors()){
			return "sign-up";
		}
		Profile profile = editProfileService.createNewProfile(signUpForm);
		SecurityUtil.authentificate(profile);
		return "redirect:/welcome";
	}
	
	@RequestMapping(value="/my-profile")
	public String getMyProfile(@AuthenticationPrincipal CurrentProfile currentProfile) {
		return "redirect:/" + currentProfile.getUsername();
	}
}
