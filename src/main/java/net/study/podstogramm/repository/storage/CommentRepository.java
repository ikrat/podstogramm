package net.study.podstogramm.repository.storage;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.repository.PagingAndSortingRepository;

import net.study.podstogramm.entity.Comment;
import net.study.podstogramm.entity.Photo;

public interface CommentRepository extends PagingAndSortingRepository<Comment, Long>{

	List<Comment> findAll(Sort sort);
	
	List<Comment> findById(Photo photo);
}
