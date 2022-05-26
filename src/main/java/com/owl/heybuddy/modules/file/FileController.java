package com.owl.heybuddy.modules.file;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.owl.heybuddy.modules.member.Member;
import com.owl.heybuddy.modules.member.MemberVo;

@Controller
public class FileController {

	@Autowired
	FileServiceImpl service;

	@RequestMapping(value = "/file/fileList") // 문서리스트
	public String fileList(@ModelAttribute("vo") FileVo vo, Model model, HttpSession httpSession) throws Exception {

		if (vo.getHyspSeq() == null) {
			vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
		}

		List<File> selectListMember = service.selectListMemberInSpace(vo);
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
	public String fileView(@ModelAttribute("vo") FileVo vo, MemberVo mo, File dto, Model model, HttpSession httpSession) throws Exception {

		File rt = service.documentView(vo);
		model.addAttribute("item", rt);
//		model.addAttribute("uploaded", service.profileUploaded(mo)); // 멤버사진	임시로 주석 (05.24)
		model.addAttribute("fileUploaded", service.fileUploaded(vo)); // 파일

		return "user/file/fileView";

	}

	@RequestMapping(value = "/file/fileForm") // 문서등록
	public String fileForm(@ModelAttribute("vo") FileVo vo, Model model, HttpSession httpSession) throws Exception {
		File rt = service.documentView(vo);
		model.addAttribute("item", rt);

		return "user/file/fileForm";
	}

	@RequestMapping(value = "/file/fileInst") // 문서등록받음
	public String fileInst(FileVo vo, Model model, File dto, RedirectAttributes redirectAttributes, HttpSession httpSession) throws Exception {

		service.insertDocument(dto);
		
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
		
		vo.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
		vo.setHydcSeq((String) httpSession.getAttribute("hydcSeq"));

		return "user/file/fileEdit";
	}

	@RequestMapping(value = "/file/fileUpdt") // 문서수정받음
	public String fileUpdt(File dto, FileVo vo, RedirectAttributes redirectAttributes, HttpSession httpSession)
			throws Exception {
		dto.setHyspSeq((String) httpSession.getAttribute("hyspSeq"));
		dto.setHydcSeq((String) httpSession.getAttribute("hydcSeq"));
		
		service.updateDocument(dto);

		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/file/fileView";
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
	
	@RequestMapping(value = "/file/fileEditTemp") // 임시저장 문서 학인 및 등록
	public String fileEditTemp(@ModelAttribute("vo") FileVo vo,File dto, Model model, HttpSession httpSession) throws Exception {
		File rt = service.documentViewTemp(vo);
		model.addAttribute("item", rt);
		model.addAttribute("fileUploaded", service.fileUploaded(vo)); // 파일
		return "user/file/fileEditTemp";
	}
	@RequestMapping(value = "/file/fileInstTemp") // 임시 문서등록받음
	public String fileInstTemp(FileVo vo, Model model, File dto, RedirectAttributes redirectAttributes, HttpSession httpSession) throws Exception {
		service.insertDocumentTemp(dto);
		vo.setHydcSeq(dto.getHydcSeq());
		redirectAttributes.addFlashAttribute("vo", vo);

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
