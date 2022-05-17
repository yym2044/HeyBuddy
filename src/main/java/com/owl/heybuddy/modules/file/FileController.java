package com.owl.heybuddy.modules.file;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.owl.heybuddy.modules.member.MemberVo;


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
	
	@RequestMapping(value = "/file/fileView") // 문서학인
	public String fileView(@ModelAttribute("vo") FileVo vo,  Model model) throws Exception {
		File rt = service.documentView(vo);
		
		model.addAttribute("item", rt);
		model.addAttribute("fileUploaded", service.fileUploaded(vo));
		return "user/file/fileView";
	}
	
	@RequestMapping(value = "/file/fileForm") // 문서등록
	public String fileForm(@ModelAttribute("vo") FileVo vo,  Model model) throws Exception {
		
		File rt = service.documentView(vo); 
		model.addAttribute("item", rt);
		return "user/file/fileForm";
	}
	
	 @RequestMapping(value = "/file/fileInst") // 문서등록받음 
	 public String fileInst(FileVo vo, Model model, File dto, RedirectAttributes redirectAttributes) throws Exception {
	 service.insertDocument(dto);
	 vo.setHydcSeq(dto.getHydcSeq());
	 redirectAttributes.addFlashAttribute("vo", vo); 
	 return "redirect:/file/fileView";
	 }
	 

	@RequestMapping(value = "/file/fileEdit") // 문서수정
	public String fileEdit(@ModelAttribute("vo") FileVo vo, Model model) throws Exception {
	
		 File rt = service.documentView(vo); 
		 model.addAttribute("item", rt); 
		 model.addAttribute("fileUploaded", service.fileUploaded(vo));
			
		return "user/file/fileEdit";
	}

	 @RequestMapping(value = "/file/fileUpdt") // 문서수정받음 
	 public String  fileUpdt(@ModelAttribute("vo") File dto, MemberVo vo) throws Exception {
	 service.updateDocument(dto); 
	 return "redirect:/file/fileView"; 
	 }

	 
	@RequestMapping(value = "/file/fileListTemp") // 문서 임시저장 리스트
	public String fileListTemp() throws Exception {
		return "user/file/fileListTemp";
	}
	
	@RequestMapping(value = "/file/fileEditTemp") // 문서 임시저장 등록페이지
	public String fileEditTemp() throws Exception {
		return "user/file/fileEditTemp";
	}
	


	 @RequestMapping(value = "/file/fileNele") // 문서가짜삭제 
	 public String fileNele(FileVo vo, RedirectAttributes redirectAttributes) throws Exception { 
	 service.updateDeleteDocument(vo);
	 redirectAttributes.addAttribute("thisPage", vo.getThisPage());
	 redirectAttributes.addAttribute("hybdmmSeq", vo.getHymmSeq());
	 redirectAttributes.addAttribute("hybdmmDelNy", vo.getHymmDelNy());
	 redirectAttributes.addAttribute("hybdmmName", vo.getHymmName());
	 redirectAttributes.addAttribute("shMemberOption", vo.getShHydcOption());
	 redirectAttributes.addAttribute("shMemberValue", vo.getShHydcValue());
	 return "redirect:/xdmin/member/memberList"; 
	 }
	 
	
	
}
