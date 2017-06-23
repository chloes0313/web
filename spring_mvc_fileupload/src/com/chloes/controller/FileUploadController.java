package com.chloes.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.chloes.vo.Board;

@Controller
public class FileUploadController {
	
	@RequestMapping("/uploadImage1")	// input type="file"으로 전송받는 변수는 MultipartFile 타입으로 선언
	public String imageUpload1(@RequestParam String title,
								@RequestParam String content,
								@RequestParam MultipartFile upImage,
								HttpServletRequest request,
								ModelMap map) throws IllegalStateException, IOException{
		
		//업로드된 파일은 임시 경로에 있음 -> 최종 저장 디렉터리에 옮기는 작업
		if(upImage != null && !upImage.isEmpty()){
			String fileName = upImage.getOriginalFilename();
			long size= upImage.getSize();
			System.out.printf("파일명 :%s, 파일크기 :%d%n", fileName, size);
			
			//이동 : request.getServletContext().getRealPath("하위 경로") - Application의 Root경로의 실제 파일경로로 리턴
			System.out.println("request.getServletContext().getRealPath() : "+ request.getServletContext().getRealPath("/up_image") );
			File dest = new File(request.getServletContext().getRealPath("/up_image"), fileName);
			upImage.transferTo(dest);	// Exception 던짐
			map.addAttribute("fileName", fileName);
			
		}
		map.addAttribute("title", title);
		map.addAttribute("content", content);
		return "response";
	}

	
	@RequestMapping("/uploadImage2")
	public String imageUpload2(@ModelAttribute Board board,
								HttpServletRequest request,
								ModelMap map) throws IllegalStateException, IOException{
		//파일 이동 (임시경로->최종경로(up_image))
		String destDir = request.getServletContext().getRealPath("/up_image");
		List<MultipartFile> list = board.getUpImage();
		ArrayList<String> imageNames = new ArrayList<>();	// 파일들의 이름 저장할 list
		//업로드된 파일명whghl, vkdlf dlehdcjfl
		
		for(int i = 0 ; i < list.size(); i++){
			MultipartFile mFile = list.get(i);
			if(mFile != null  && !mFile.isEmpty()){	//업로드된 파일이 있을 땨
				imageNames.add(mFile.getOriginalFilename());
				mFile.transferTo(new File(destDir, mFile.getOriginalFilename()));
			}
		}
		
	map.addAttribute("imageNames", imageNames);
		return "response2";
	}


}


