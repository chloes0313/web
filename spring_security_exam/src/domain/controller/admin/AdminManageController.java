package domain.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
//관리자를 관리하느 컨트롤러
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import domain.service.UserService;
import domain.vo.User;
@Controller
@RequestMapping("/admin/")
public class AdminManageController {

	@Autowired
	private UserService service;

	/**
	 * 관리자를 등록하는 메소드.
	 * 등록 처리후 join_success.do로 redirect방식으로 이동 (MainController) - 요청파라미터로 등록된 userId 전송
	 * @param user
	 * @return
	 */
	@RequestMapping("register_admin")
	public ModelAndView registerAdmin(@ModelAttribute User user){
		service.addUser(user, "ROLE_ADMIN");
		return new ModelAndView("redirect:/join_success.do", "userId", user.getUserId());
	}
}
