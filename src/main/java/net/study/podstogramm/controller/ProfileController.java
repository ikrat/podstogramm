package net.study.podstogramm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProfileController {

	@RequestMapping(value="/profile", method=RequestMethod.GET)
	public String getProfile() {
		return "profile";
	}
	
	@RequestMapping(value="/welcome", method=RequestMethod.GET)
	public String getWelcome(){
		return "welcome";
	}
	
	@RequestMapping(value="/edit", method=RequestMethod.GET)
	public String getEdit() {
		return "edit";
	}
	
	@RequestMapping(value="/password", method=RequestMethod.GET)
	public String getPassword(){
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
}
