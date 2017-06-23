package domain.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TilesController {

	@RequestMapping("/member/join")
	public String join(){
		System.out.println("TilesController.join() 실행");
		return "member/join_success.tiles";
	}
	@RequestMapping("/product/register")
	public String productRegister(){
		System.out.println("TilesController.productRegister() 실행");
		return "product/register_success.tiles";
	}
	
	@RequestMapping("/no_tiles.do")
	public String noTiles(){
		return "/WEB-INF/view/no_tiles.jsp";
	}
}
