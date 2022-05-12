package com.owl.heybuddy.modules.file;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class FileController {  
	 
	@Autowired
	FileServiceImpl service;

	@RequestMapping(value = "/file/fileList") // 문서리스트
	public String fileList(@ModelAttribute("vo") FileVo vo, Model model) throws Exception {
		int count = service.selectOneCount(vo);
		vo.setParamsPaging(count);
		if (count != 0) {
			List<File> list = service.documentList(vo);
			model.addAttribute("list", list);
		} else {

		}
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
	
	@RequestMapping(value = "/file/fileEditTemp") // 임시저장 등록페이지
	public String fileEditTemp() throws Exception {
		return "user/file/fileEditTemp";
	}
}
