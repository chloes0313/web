package spring.mvc.model.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.mvc.model.dao.ImagesDao;
import spring.mvc.model.service.ImagesService;
import spring.mvc.vo.Image;

@Service
public class ImagesServiceImpl implements ImagesService {

	@Autowired
	private ImagesDao dao;
	@Override
	public void register(Image images) {
		dao.insert(images);
	}

	@Override
	public Image findByNo(Integer no) {
		return dao.selectByNo(no);
	}

	@Override
	public List<Image> list() {
		return dao.selectList();
	}

}
