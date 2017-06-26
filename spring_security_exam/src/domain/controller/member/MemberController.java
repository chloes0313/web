package domain.controller.member;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import domain.service.UserService;
import domain.vo.User;

/*
 *   /member/ 경로로 요청하는 작업을 처리하기 위한 Controller
 */
@Controller
@RequestMapping("/member/")
public class MemberController {

	@Autowired
	private UserService service;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	/**
	 * 사용자 정보 수정 - 관리자/회원 공통으로 자기 정보 수정시 사용.
	 * 수정할 정보와 현재 패스워드를 받는다.
	 * 수정후 mypage로 이동
	 * @param user
	 * @param oldUserPassword
	 * @return
	 */
	@RequestMapping("update_profile")
	public String updateUserProfile(@ModelAttribute User user, 
										@RequestParam String oldUserPassword){
		//요청한 사용자의 정보 조회
			SecurityContext context = SecurityContextHolder.getContext();
			Authentication authentication = context.getAuthentication();
//				Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

			//패스워드 체크
			
			System.out.println(oldUserPassword);
			if(!passwordEncoder.matches(oldUserPassword, ((User)authentication.getPrincipal()).getUserPassword())){ 
				//정보수정 폼으로 이동
				System.out.println("패스워드가 다릅니다.");
				throw new RuntimeException("패스워드가 틀립니다.");
			}
			//Business Logic 호출
			service.updateUserProfile(user);
			
			
			//UsernamePasswordAuthenticationToken newAutentication = new UsernamePasswordAuthenticationToken(user, user.getUserPassword(), authentication.getAuthorities());
			
			
			//권한(Authority) 변경 또는 추가 시
			List<GrantedAuthority> list = new ArrayList<>(authentication.getAuthorities());
			list.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
			UsernamePasswordAuthenticationToken newAutentication = 
					new UsernamePasswordAuthenticationToken(user, user.getUserPassword(), list);
			
			context.setAuthentication(newAutentication);
			
			return "member/mypage.tiles";
	}
}








