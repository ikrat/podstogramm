package net.study.podstogramm.repository.storage;

import org.springframework.data.repository.PagingAndSortingRepository;

import net.study.podstogramm.entity.Profile;

public interface ProfileRepository extends PagingAndSortingRepository<Profile, Long> {

	int countByLogin(String login);
	
	Profile findByLogin(String login);
	
	Profile findByEmail(String email);
	
	Profile findByPhone(String phone);
	
}
