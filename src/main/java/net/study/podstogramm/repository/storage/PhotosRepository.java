package net.study.podstogramm.repository.storage;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.repository.PagingAndSortingRepository;

import net.study.podstogramm.entity.Photo;
import net.study.podstogramm.entity.Profile;

public interface PhotosRepository extends PagingAndSortingRepository<Photo, Long>{

	List<Photo> findAll(Sort sort);
	
	Photo findById(long id);
	
	Photo findByProfile(Profile profile);
}
