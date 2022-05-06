package com.owl.heybuddy.modules.file;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FileController { 
	

	@RequestMapping(value = "/file/fileList") // 파일리스트
	public String fileList() throws Exception {
		return "user/file/fileList";
	}

	@RequestMapping(value = "/file/fileView") // 파일학인
	public String fileView() throws Exception {
		return "user/file/fileView";
	}
	
	@RequestMapping(value = "/file/fileForm") // 파일등록
	public String fileForm() throws Exception {
		return "user/file/fileForm";
	}

	@RequestMapping(value = "/file/fileEdit") // 파일수정
	public String fileEdit() throws Exception {
		return "user/file/fileEdit";
	}

	@RequestMapping(value = "/file/fileListTemp") // 임시저장 리스트
	public String fileListTemp() throws Exception {
		return "user/file/fileListTemp";
	}
}
