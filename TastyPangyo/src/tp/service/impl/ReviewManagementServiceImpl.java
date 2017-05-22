package tp.service.impl;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import tp.dao.impl.ReviewDaoImpl;
import tp.service.ReviewManagementService;
import tp.util.SqlSessionFactoryManager;
import tp.vo.Review;

public class ReviewManagementServiceImpl implements ReviewManagementService {
	private static SqlSessionFactory factory;
	private static ReviewManagementServiceImpl instance;
	private ReviewManagementServiceImpl() throws IOException{
		SqlSessionFactoryManager ssfm = SqlSessionFactoryManager.getInstance();
		factory = ssfm.getSqlSessionFactory();
	}
	public static ReviewManagementServiceImpl getInstance() throws IOException{
		if(instance == null){
			instance = new ReviewManagementServiceImpl();
		}
		return instance;
	}
	
	SqlSessionFactoryManager ssfm = SqlSessionFactoryManager.getInstance();
	ReviewDaoImpl dao = ReviewDaoImpl.getInstance();
	
	
	List<Review> list = null;
	Review review = null;
	int count = 0;
	
	
	
	@Override
	public void addReview(Review review) {
		SqlSession session = null;
		try{
			session = factory.openSession();
			count = dao.insertReview(session, review);
			System.out.printf("%d개의 리뷰가 등록되었습니다.%n",count);
			session.commit();
		}finally{
			session.close();
		}
	}

	@Override
	public void updateReview(Review review) {
		SqlSession session = null;
		try{
			session = factory.openSession();
			count = dao.updateReview(session, review);
			System.out.printf("%d개의 리뷰가 수정되었습니다.%n",count);
			session.commit();
		}finally{
			session.close();
		}
	}

	@Override
	public void deleteReviewByMemberId(String memberId) {
		SqlSession session = null;
		try{
			session = factory.openSession();
			count = dao.deleteReviewByMemberId(session, memberId);
			System.out.printf("%d개의 리뷰가 삭제되었습니다.%n",count);
			session.commit();
		}finally{
			session.close();
		}
	}

	@Override
	public void deleteReviewSelected(String[] noArr){
		SqlSession session = null;
		try{
			session = factory.openSession();
			count = 0;
			for(String s : noArr){
				count += dao.deleteReviewSelected(session, Integer.parseInt(s));
			}
			System.out.printf("%d개의 리뷰가 삭제되었습니다.%n",count);
			session.commit();
		}finally{
			session.close();
		}
	}

	@Override
	public void deleteReviewByRegisteredDate(Date registeredDate) {
		SqlSession session = null;
		try{
			session = factory.openSession();
			count = dao.deleteReviewByRegisteredDate(session, registeredDate);
			System.out.printf("리뷰 등록일[%s]로 삭제 : %d개의 리뷰가 삭제되었습니다.%n",new SimpleDateFormat("yyyy-MM-dd").format(registeredDate),count);
			session.commit();
		}finally{
			session.close();
		}
	}
	
	
	@Override
	public void deleteReviewByRestaurantName(String restaurantName) {
		SqlSession session = null;
		try{
			session = factory.openSession();
			count = dao.deleteReviewByRestaurantName(session, restaurantName);
			System.out.printf("맛집 이름[%s]으로 삭제 : %d개의 리뷰가 삭제되었습니다.%n",restaurantName,count);
			session.commit();
		}finally{
			session.close();
		}
		
	}
	
	
	@Override
	public void deleteReviewByRestaurantId(int restaurantId) {
		SqlSession session = null;
		try{
			session = factory.openSession();
			count = dao.deleteReviewByRestaurantId(session, restaurantId);
			System.out.printf("맛집 번호[%s]로 삭제 : %d개의 리뷰가 삭제되었습니다.%n",restaurantId,count);
			session.commit();
		}finally{
			session.close();
		}
	}
	
	@Override
	public void deleteReviewByTitle(String title) {
		SqlSession session = null;
		try{
			session = factory.openSession();
			count = dao.deleteReviewByTitle(session, title);
			System.out.printf("맛집 제목[%s]로 삭제 : %d개의 리뷰가 삭제되었습니다.%n",title,count);
			session.commit();
		}finally{
			session.close();
		}
	}	
	
	@Override
	public void deleteReviewByComments(String comments) {
		SqlSession session = null;
		try{
			session = factory.openSession();
			count = dao.deleteReviewByComments(session, comments);
			System.out.printf("맛집 내용[%s]로 삭제 : %d개의 리뷰가 삭제되었습니다.%n",comments,count);
			session.commit();
		}finally{
			session.close();
		}
	}
	
	
	
	
	
	
	
//	--select------------------------------------------------------------
	
	@Override
	public void selectAllReview() {
		SqlSession session = null;
		try{
			session = factory.openSession();
			list = dao.selectAllReviewOrderByNo(session);
			printList(list, "모든 리뷰 목록(리뷰번호)");
			session.commit();
		}finally{
			session.close();
		}
	}
	
	
	@Override
	public void selectAllReviewOrderByMemberId() {
		SqlSession session = null;
		try{
			session = factory.openSession();
			list = dao.selectAllReviewOrderByMemberId(session);
			printList(list, "모든 리뷰 목록(회원아이디)");
			session.commit();
		}finally{
			session.close();
		}
	}
	
	@Override
	public void selectAllReviewOrderByNewestRegistered() {
		SqlSession session = null;
		try{
			session = factory.openSession();
			list = dao.selectAllReviewOrderByNewestRegistered(session);
			printList(list, "모든 리뷰 목록(최신등록순)");
			session.commit();
		}finally{
			session.close();
		}
	}
	
	
	@Override
	public void selectReviewByRegisteredDate(Date registeredDate) {
		SqlSession session = null;
		try{
			session = factory.openSession();
			list = dao.selectReviewByRegisteredDate(session, registeredDate);
			printList(list, String.format("등록일[%s]으로 조회", new SimpleDateFormat("yyyy-MM-dd").format(registeredDate)));
			session.commit();
		}finally{
			session.close();
		}
	}
	
	
	@Override
	public void selectReviewByRegisteredDateRange(Date fromDate, Date toDate) {
		SqlSession session = null;
		try{
			session = factory.openSession();
			list = dao.selectReviewByRegisteredDateRange(session, fromDate, toDate);
			printList(list, String.format("등록기간[%s-%s]으로 조회", new SimpleDateFormat("yyyy-MM-dd").format(fromDate), new SimpleDateFormat("yyyy-MM-dd").format(toDate)));
			session.commit();
		}finally{
			session.close();
		}
	}
	
	@Override
	public void selectReviewByTitle(String title) {
		SqlSession session = null;
		try {
			session = factory.openSession();
			list = dao.selectReviewByTitle(session, title);
			printList(list, String.format("제목[%s]으로 조회", title));
			session.commit();
		}finally{
			session.close();
		}
		
	}
	
	
	@Override
	public void selectReviewByComments(String comments) {
		SqlSession session = null;
		try {
			session = factory.openSession();
			list = dao.selectReviewByComments(session, comments);
			printList(list, String.format("내용[%s]으로 조회", comments));
			session.commit();
		}finally{
			session.close();
		}
	}
	
	@Override
	public void selectReviewByNo(int reviewNo) {
		SqlSession session = null;
		try{
			session = factory.openSession();
			review = dao.selectReviewByNo(session, reviewNo);
			
			System.out.printf("----------리뷰번호[%s]로 조회----------%n", reviewNo);
			System.out.println(review);
			session.commit();
		}finally{
			session.close();
		}
	}
	
	
	
	
	
	
	
	
//	--print--------------------------------------------------------------------------
	public void printList(List<Review> list, String label){
		System.out.printf("-----------%s-----------%n", label);
		for(Review r : list){
			System.out.println(r);
		}
		System.out.println("-----------------------------------");
		
	}
	

}
