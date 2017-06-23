package spring.mvc.model.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.model.dao.ImagesDao;
import spring.mvc.vo.Image;

@Repository
public class ImagesDaoImpl implements ImagesDao {
	@Autowired
	private SqlSessionTemplate session;
	@Override
	public int insert(Image images) {
		return session.insert(getSqlId("insert"), images);
	}

	@Override
	public Image selectByNo(Integer no) {
		return session.selectOne(getSqlId("selectByNo"), no);
	}

	@Override
	public List<Image> selectList() {
		return session.selectList(getSqlId("selectList"));
	}
	private String getSqlId(String id){
		return "spring.mvc.imagesMpapper."+id;
	}
}
