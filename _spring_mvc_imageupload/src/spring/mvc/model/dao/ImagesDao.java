package spring.mvc.model.dao;

import java.util.List;

import spring.mvc.vo.Image;

public interface ImagesDao {

	int insert(Image images);
	Image selectByNo(Integer no);
	List<Image> selectList();
}
