package com.owl.heybuddy.modules.file;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.owl.heybuddy.modules.member.MemberVo;
import com.owl.heybuddy.modules.mySpace.MySpace;
import com.owl.heybuddy.modules.mySpace.MySpaceVo;



@Controller
public class FileController {  
	 
	@Autowired
	FileServiceImpl service;

	@RequestMapping(value = "/file/fileList") // 문서리스트
	public String fileList(@ModelAttribute("vo") FileVo vo, Model model, HttpSession httpSession) throws Exception {
	
		
		if(vo.getHyspSeq() != null) {
			httpSession.setAttribute("hyspSeq", vo.getHyspSeq());
		}
		
		vo.setHymmSeq((String) httpSession.getAttribute("sessSeq"));
		vo.setHymmName((String) httpSession.getAttribute("sessName"));
		vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
		vo.setHyspName((String) httpSession.getAttribute("hyspName"));
		
		System.out.println("vo.getHymmSeq :" + vo.getHymmSeq());
		System.out.println("vo.getHymmName :" + vo.getHymmName());
		System.out.println("vo.getHyspSeq :" + vo.getHyspSeq());
		System.out.println("vo.getHyspName :" + vo.getHyspName());
		
		
	    List<File> selectListMember = service.selectListMember(vo); 
	    model.addAttribute("selectListMember", selectListMember); 
	    
		int count = service.selectOneCount(vo);
		vo.setParamsPaging(count);
		if (count != 0) {
			List<File> list = service.documentList(vo);
			model.addAttribute("list", list);
		} else {

		}
		return "user/file/fileList";
	}
	
	@RequestMapping(value = "/file/fileView") // 문서확인
	public String fileView(@ModelAttribute("vo") FileVo vo, MemberVo mo,File dto, Model model) throws Exception {
		
		File rt = service.documentView(vo);
		 model.addAttribute("item", rt);
		 model.addAttribute("uploaded", service.profileUploaded(mo)); //멤버사진
		 model.addAttribute("fileUploaded", service.fileUploaded(vo));  //파일
		return "user/file/fileView";
		
	}
	
	@RequestMapping(value = "/file/fileForm") // 문서등록
	public String fileForm(@ModelAttribute("vo") FileVo vo,  Model model, HttpSession httpSession) throws Exception {
		
		model.addAttribute("space", service.selectOneSpace(vo));

		return "user/file/fileForm";
	}
	
	 @RequestMapping(value = "/file/fileInst") // 문서등록받음 
	 public String fileInst(FileVo vo, Model model, File dto, RedirectAttributes redirectAttributes,
			 HttpSession httpSession) throws Exception {

			dto.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
			
			service.insertDocument(dto);
			
			vo.setHymmSeq((String) httpSession.getAttribute("sessSeq"));
			vo.setHyspSeq(dto.getHyspSeq());
			
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

		//임시저장등록
		//임시저장등록inst
	 
	@RequestMapping(value = "/file/fileListTemp") // 임시저장 문서 리스트
	public String fileListTemp() throws Exception {
		return "user/file/fileListTemp";
	}
	
	@RequestMapping(value = "/file/fileViewTemp") // 임시저장 문서 학인
	public String fileViewTemp(@ModelAttribute("vo") FileVo vo, MemberVo mo, Model model) throws Exception {
		File rt = service.documentView(vo);
		model.addAttribute("item", rt);
		model.addAttribute("fileUploaded", service.fileUploaded(vo));  //파일
		return "user/file/fileViewTemp";
	}
	
	@RequestMapping(value = "/file/fileEditTemp") // 문서 임시저장 등록페이지
	public String fileEditTemp(@ModelAttribute("vo") FileVo vo,  Model model) throws Exception {
		File rt = service.documentView(vo); 
		model.addAttribute("item", rt);
		
		return "user/file/fileEditTemp";
	}

	//임시저장등록은 그냥 등록하는페이지랑 넘어가는거 똑같이..

		@RequestMapping(value = "/file/fileMultiNele") // 멀티 가짜삭제
		public String fileNele(FileVo vo, RedirectAttributes redirectAttributes) throws Exception {
			String[] checkboxSeqArray = vo.getCheckboxSeqArray();
			for (String checkboxSeq : checkboxSeqArray) {
				vo.setHydcSeq(checkboxSeq);
				 service.updateDeleteDocument(vo);
			}
			redirectAttributes.addFlashAttribute("vo", vo);
			return "redirect:/file/fileList";
		}
}
