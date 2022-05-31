package com.owl.heybuddy.modules.file;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


 

@Controller
public class FileController {

	@Autowired
	FileServiceImpl service;

	@RequestMapping(value = "/file/fileList") // 문서리스트
	public String fileList(@ModelAttribute("vo") FileVo vo, Model model, HttpSession httpSession) throws Exception {

		if (vo.getHyspSeq() == null) {
			vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
		}

		int count = service.selectOneCount(vo);
		vo.setParamsPaging(count);
		if (count != 0) {
			List<File> list = service.documentList(vo);
			model.addAttribute("list", list);
			
		} else {
 
		}
		return "user/file/fileList";
	}
	

	@RequestMapping(value = "/file/fileListTemp") // 임시저장 문서 리스트
	public String fileListTemp(@ModelAttribute("vo") FileVo vo, Model model, HttpSession httpSession) throws Exception {

		if (vo.getHyspSeq() == null) {
			vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
		}

		List<File> selectListMember = service.selectListMemberInSpace(vo);
		model.addAttribute("selectListMember", selectListMember);

		int count = service.selectOneCount(vo);
		vo.setParamsPaging(count);
		if (count != 0) {
			List<File> list = service.documentListTemp(vo);
			model.addAttribute("list", list);
		} else {

		}
		return "user/file/fileListTemp";
	}

	@RequestMapping(value = "/file/fileView") // 문서확인
	public String fileView(@ModelAttribute("vo") FileVo vo, File dto, Model model, HttpSession httpSession) throws Exception {

		vo.setHymmSeq((String) httpSession.getAttribute("sessSeq")); //다른사람이올린문서권한막기
	
		File rt = service.documentView(vo);
		model.addAttribute("item", rt);

		List<File> list = service.fileUploaded(vo);  
		model.addAttribute("list", list); 
		model.addAttribute("fileUploaded", list); 
		
		return "user/file/fileView";

	}

	@RequestMapping(value = "/file/fileForm") // 문서등록
	public String fileForm(@ModelAttribute("vo") FileVo vo, Model model, HttpSession httpSession) throws Exception {
		
		File rt = service.documentView(vo);
		model.addAttribute("item", rt);

		return "user/file/fileForm";
	}

	@RequestMapping(value = "/file/fileInst1") // 문서 등록 받음 
	public String fileInst(FileVo vo, Model model, File dto, RedirectAttributes redirectAttributes, HttpSession httpSession) throws Exception {

		System.out.println("vo.getHydcTempNy :" + vo.getHydcTempNy());
		
		/* 
		 * if (vo.getHydcTempNy() == 0) { service.insertDocument(dto); } else {
		 * service.insertDocumentTemp(dto); }
		 */
		
		service.insertDocument(dto);
		vo.setHydcSeq(dto.getHydcSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/file/fileList";
	}
	
	@RequestMapping(value = "/file/fileInst2") // 임시등록 받음 
	public String fileInst2(FileVo vo, Model model, File dto, RedirectAttributes redirectAttributes, HttpSession httpSession) throws Exception {

		System.out.println("vo.getHydcTempNy :" + vo.getHydcTempNy());
		service.insertDocumentTemp(dto);
		vo.setHydcSeq(dto.getHydcSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/file/fileList";
	}

	@RequestMapping(value = "/file/fileEdit") // 문서수정
	public String fileEdit(@ModelAttribute("vo") FileVo vo, File dto, Model model, HttpSession httpSession)
			throws Exception {
		File rt = service.documentView(vo);
		model.addAttribute("item", rt);
		model.addAttribute("fileUploaded", service.fileUploaded(vo)); // 파일
		
		return "user/file/fileEdit";
	}
	
	@RequestMapping(value = "/file/fileUpdt") // 문서수정받음
	public String fileUpdt(File dto, FileVo vo, RedirectAttributes redirectAttributes, HttpSession httpSession)
			throws Exception {

		service.updateDocument(dto);
		return "redirect:/file/fileView";
	}
	
	@RequestMapping(value = "/file/fileEditTemp") // 임시저장리스트-> 최종등록 (업뎃개념)
	public String fileEditTemp(@ModelAttribute("vo") FileVo vo,File dto, Model model, HttpSession httpSession) throws Exception {
		File rt = service.documentViewTemp(vo);
		model.addAttribute("item", rt);
		model.addAttribute("fileUploaded", service.fileUploaded(vo)); // 파일
		return "user/file/fileEditTemp";
	}
	
	@RequestMapping(value = "/file/fileInstTemp") // 임시저장리스트-> 최종등록 (업뎃개념)
	public String fileInstTemp(FileVo vo, Model model, File dto, RedirectAttributes redirectAttributes, HttpSession httpSession) throws Exception {
		service.updateDocument(dto);

		return "redirect:/file/fileList";
	}

	
	@RequestMapping(value = "/file/fileNele") // 파일 가짜삭제
	public String memberNele(FileVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.updateDeleteDocument(vo);
		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
		redirectAttributes.addAttribute("hydcSeq", vo.getHydcSeq());
		redirectAttributes.addAttribute("hydcDelNy", vo.getHydcDelNy());
		redirectAttributes.addAttribute("hydcTitle", vo.getHydcTitle());
		redirectAttributes.addAttribute("hydcText", vo.getHydcText());
		redirectAttributes.addAttribute("shHydcOption", vo.getShHydcOption());
		redirectAttributes.addAttribute("shHydcValue", vo.getShHydcValue());
		return "redirect:/file/fileList";
	}
	
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
