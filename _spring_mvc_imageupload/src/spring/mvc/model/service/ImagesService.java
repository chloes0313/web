package spring.mvc.model.service;

import java.util.List;

import spring.mvc.vo.Image;

public interface ImagesService {

	/**
	 * 이미지 등록처리
	 * @param images
	 */
	void register(Image images);
	/**
	 * Image번호로 image 조회
	 * @param no
	 * @return
	 */
	Image findByNo(Integer no);
	/**
	 * 등록된 Images 목록 조회
	 * @return
	 */
	List<Image> list();
}
