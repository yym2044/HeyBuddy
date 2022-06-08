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
		
		List<File> fileUploaded = service.fileUploaded(vo);  
		model.addAttribute("fileUploaded", fileUploaded); 
		
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

		List<File> fileUploaded = service.fileUploaded(vo);    // 파일리스트
		model.addAttribute("fileUploaded", fileUploaded); 
		
		List<File> commentList = service.commentList(vo); // 모댓글리스트
		model.addAttribute("commnetList", commentList); 
		
		List<File> commentList2 = service.commentList2(vo); // 대댓글리스트
		model.addAttribute("commnetList2", commentList2); 
		
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
		redirectAttributes.addFlashAttribute("vo", vo);
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
	
	/*
	 * @RequestMapping(value = "/file/commentProc", method = RequestMethod.POST)
	 * public ResponseEntity<String> register(@RequestBody FileVo fileVo) {
	 * ResponseEntity<String> entity = null; try { service.commentCreate(fileVo);
	 * entity = new ResponseEntity<String>("regSuccess", HttpStatus.OK); } catch
	 * (Exception e) { e.printStackTrace(); entity = new
	 * ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST); } return
	 * entity; }
	 * 
	 */
	  
	  @RequestMapping(value = "/file/fileInst3") // 댓글 등록 받음 
		public String fileInst3(FileVo vo, Model model, File dto, RedirectAttributes redirectAttributes, HttpSession httpSession) throws Exception {
			
			service.commentCreate(dto);
			vo.setHycoSeq(dto.getHycoSeq());
			System.out.println("dto.getHycoText() : "+dto.getHycoText());
			redirectAttributes.addFlashAttribute("vo", vo);
			return "redirect:/file/fileView";
		}
	
	/*
	 * @RestController
	 * 
	 * @RequestMapping("/file/fileViewProc") public class ReplyController {
	 * 
	 * private final FileService fileService;
	 * 
	 * @Inject public ReplyController(FileService fileService) { this.fileService =
	 * fileService; }
	 * 
	 * //Reply Register
	 * 
	 * @RequestMapping(value = "", method = RequestMethod.POST) public
	 * ResponseEntity<String> register(@RequestBody FileVo fileVo) {
	 * ResponseEntity<String> entity = null; try {
	 * fileService.commentCreate(fileVo); entity = new
	 * ResponseEntity<String>("regSuccess", HttpStatus.OK); } catch (Exception e) {
	 * e.printStackTrace(); entity = new ResponseEntity<String>(e.getMessage(),
	 * HttpStatus.BAD_REQUEST); } return entity; }
	 * 
	 * //Reply List
	 * 
	 * @RequestMapping(value = "/all/{hydcSeq}", method = RequestMethod.GET) public
	 * ResponseEntity<List<FileVo>> list(@PathVariable("hydcSeq") Integer hydcSeq) {
	 * ResponseEntity<List<FileVo>> entity = null; try { entity = new
	 * ResponseEntity<List<FileVo>>(fileService.commentList(hydcSeq),
	 * HttpStatus.OK); } catch (Exception e) { e.printStackTrace(); entity = new
	 * ResponseEntity<List<FileVo>>(HttpStatus.BAD_REQUEST); } return entity; }
	 * 
	 * //Reply Modify
	 * 
	 * @RequestMapping(value = "/{hycoSeq}", method = {RequestMethod.PUT,
	 * RequestMethod.PATCH}) public ResponseEntity<String>
	 * update(@PathVariable("hycoSeq") Integer hycoSeq, @RequestBody FileVo fileVo)
	 * { ResponseEntity<String> entity = null; try { fileVo.setHycoSeq(hycoSeq);
	 * fileService.commentUpdate(fileVo); entity = new
	 * ResponseEntity<String>("modSuccess", HttpStatus.OK); } catch (Exception e) {
	 * e.printStackTrace(); entity = new ResponseEntity<String>(e.getMessage(),
	 * HttpStatus.BAD_REQUEST); } return entity; }
	 * 
	 * //Reply Delete
	 * 
	 * @RequestMapping(value = "/{reply_no}", method = RequestMethod.DELETE) public
	 * ResponseEntity<String> delete(@PathVariable("hycoSeq") Integer hycoSeq) {
	 * ResponseEntity<String> entity = null; try {
	 * fileService.commentDelete(hycoSeq); entity = new
	 * ResponseEntity<String>("delSuccess", HttpStatus.OK); } catch (Exception e) {
	 * e.printStackTrace(); entity = new ResponseEntity<String>(e.getMessage(),
	 * HttpStatus.BAD_REQUEST); } return entity; } }
	 */
	 
	
	
}
