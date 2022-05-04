package com.owl.heybuddy.common.util;

import java.io.File;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import com.owl.heybuddy.common.constants.Constants;
import com.owl.heybuddy.modules.xdmin.Member;



public class UtilUpload {

	
	/* 멤버 프로필사진업로드 */
	
	public static void upload(MultipartFile multipartFile, String className, Member dto) throws Exception {

		String fileName = multipartFile.getOriginalFilename();
		String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
		String uuid = UUID.randomUUID().toString();
		String uuidFileName = uuid + "." + ext;

		String pathModule = className;
		String nowString = UtilDateTime.nowString();
		String pathDate = nowString.substring(0, 4) + "/" + nowString.substring(5, 7) + "/"
				+ nowString.substring(8, 10);
		String path = Constants.UPLOAD_PATH_PREFIX + "/" + pathModule + "/" + pathDate + "/";

		createPath(path);

		multipartFile.transferTo(new File(path + uuidFileName));

		dto.setPath("/infra/resources/uploaded/" + pathModule + "/" + pathDate + "/"); 
		dto.setOriginalFileName(fileName);
		dto.setUuidFileName(uuidFileName);
		dto.setExt(ext);
		dto.setSize(multipartFile.getSize());

	}

	public static void createPath(String path) {
		File uploadPath = new File(path);

		if (!uploadPath.exists()) {
			uploadPath.mkdir();
		} else {
		}
	}
	
	
	/* 문서 파일업로드 */

	/*	public static void uploadProduct(MultipartFile multipartFile, String className) throws Exception {

		String fileName = multipartFile.getOriginalFilename();
		String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
		String uuid = UUID.randomUUID().toString();
		String uuidFileName = uuid + "." + ext;

		String pathModule = className;
		String nowString = UtilDateTime.nowString();
		String pathDate = nowString.substring(0, 4) + "/" + nowString.substring(5, 7) + "/"
				+ nowString.substring(8, 10);
		String path = Constants.UPLOAD_PATH_PREFIX + "/" + pathModule + "/" + pathDate + "/";

		createPath2(path);

		multipartFile.transferTo(new File(path + uuidFileName));

		dto.setPath("/infra/resources/uploaded/" + pathModule + "/" + pathDate + "/");
		dto.setOriginalFileName(fileName);
		dto.setUuidFileName(uuidFileName);
		dto.setExt(ext);
		dto.setSize(multipartFile.getSize());

	}
	
	 public static void createPath2 (String path) { 
		 File uploadPath = new File(path);
	 
	 if (!uploadPath.exists()) { 
		 uploadPath.mkdir(); 
		 } else {// by pass } }
	 
	 }

} */
	 
}