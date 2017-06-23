package spring.mvc.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import spring.mvc.model.service.ImagesService;
import spring.mvc.vo.Image;

@Controller
@RequestMapping("/images")
public class ImagesController {
	//TODO Eclipse 경로 변경 (uploadImages)
	private String eclipseDir = "C:\\Java\\eclipse-jee-neon-2-win32-x86_64\\eclipse\\workspace_web\\_spring_mvc_imageupload\\WebContent\\uploadImages"; 
	 
	@Autowired
	private ImagesService service;
	@RequestMapping("/register")
	public String register(@ModelAttribute Image images, HttpServletRequest request) throws Exception{
		String upImageDir = request.getServletContext().getRealPath("/uploadImages");
		MultipartFile upImage = images.getUpImage();
		if(upImage!=null && !upImage.isEmpty()){
			images.setOriginalName(upImage.getOriginalFilename());
			String newImageName = UUID.randomUUID().toString();//UUID를 이용해 파일명 생성
			System.out.println(newImageName);
			images.setSaveName(newImageName);
			File dest = new File(upImageDir, newImageName);
			//파일 이동
			/************************************
			 * 이클립스 경로로 카피
			 *************************************/
			copyToEclipseDir(newImageName, upImage);
			/************************************
			 * 이클립스 경로로 카피
			 *************************************/
			//파일 이동시키기
			upImage.transferTo(dest);
			//저장
			service.register(images);
			return "redirect:/images/findByNo.do?no="+images.getNo();
		}else{
			return "/error.jsp";
		}
	}
	private void copyToEclipseDir(String newImageName, MultipartFile upImage) throws Exception{
		File eclipseDest = new File(eclipseDir, newImageName);
		FileOutputStream fo = new FileOutputStream(eclipseDest);
		InputStream is = upImage.getInputStream();
		byte [] b = new byte[10000];
		int cnt = is.read(b);
		while(cnt != -1){
			fo.write(b, 0, cnt);
			cnt = is.read(b);
		}
		fo.close();
		is.close();
	}
	@RequestMapping("/findByNo")
	public ModelAndView findByNo(Integer no){
		Image image = service.findByNo(no);
		return new ModelAndView("/body/image_view.jsp", "image", image);
	}
	@RequestMapping("/list")
	public ModelAndView list(){
		List<Image> list = service.list();
		return new ModelAndView("/body/list.jsp", "list", list);
	}
}
