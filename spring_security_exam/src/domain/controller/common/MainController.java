package domain.controller.common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import domain.service.UserService;
import domain.vo.User;

/*
 *   /member/ 나 /admin/ 으로 요청하지 않는 작업을 처리하기 위한 컨트롤러 
 *   인증이 필요없는 작업 처리
 */
@Controller
public class MainController {
	@Autowired
	private UserService service;
	
	/**
	 * 회원 등록
	 * 처리후 join_success.do를 이용해 응답 처리 - redirect방식 이동, 요청파라미터로 등록된 userId 전달
	 * @param user
	 * @return
	 */
	@RequestMapping("/join_member")
	public ModelAndView joinMember(@ModelAttribute User user){
		service.addUser(user, "ROLE_MEMBER");
		return new ModelAndView("redirect:/join_success.do", "userId", user.getUserId());
	}
	
	/**
	 * 가입 성공후 성공정보를 보여주기 위한 handler 메소드
	 * 
	 * @param userId
	 * @return
	 */
	@RequestMapping("/join_success")
	public ModelAndView joinSuccess(@RequestParam String userId){
		User user = service.getUserByUserId(userId);
		return new ModelAndView("member/join_success.tiles", "user", user);
	}
	
	
}















