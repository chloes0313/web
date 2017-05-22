package file.upload.servlet;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;




public class ImageUploadServlet_bak extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 이미지 저장 경로
		ServletContext context = getServletContext();
		String imageDir = context.getRealPath("/up_images"); // /up_images의 실제 파일 경로 리턴
		
		System.out.println(imageDir);
		String temDir = context.getInitParameter("tempdir"); // 업로드 파일 저장할 임시디랙터리
		
		// 1. DiskFileItemFactory 객체를 생성 - 임시저장소 정보 설정
		DiskFileItemFactory factory = new DiskFileItemFactory(1024*1024, new File(temDir));
		
		// 2. ServletFileUpload 객체 생성 - DiskFileItemFactory
		ServletFileUpload upload = new ServletFileUpload(factory);
	
		try{
		// 3. 요청파라미터 조회 작업
		List<FileItem> list = upload.parseRequest(req);
		for(FileItem item : list){
			String reqName = item.getFieldName();	// 요청 파라미터 이름 조회
			
			if(item.isFormField()){	//true:일반요청파람 
				String reqValue = item.getString("UTF-8");	//요청 파라미터 조회, 인코딩 설정 반드시 하세요!!
				req.setAttribute(reqName, reqValue);
			}else{					// false:파일요청파람
				String fileName = item.getName();	//업로드된 파일명
				//업로드되 ㄴ파일이 있는지 체크 : getSize():long - 업로드된 파일의 크기
				if(item.getSize() != 0){
					// 1. 임시경로 파일 최종 경로로 이동
					item.write(new File(imageDir, fileName));	// 매개변수로 받은 파일로 카피
					// 2. 임시경로 파일 삭제
					item.delete();
					req.setAttribute(reqName, fileName);
				}
			}
		}	//end of for
		
		//응답처리
		req.getRequestDispatcher("/upload_result.jsp").forward(req, resp);
		
		}catch(Exception e){
			//에러처리 페이지 이동
			e.printStackTrace();
			throw new ServletException(e);	// 예외 처리를 톰캣에게 맡김
		}
	}
}







