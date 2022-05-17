package com.owl.heybuddy.modules.file;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class FileVo { 

		private String hydcSeq;
		private String hyspSeq;
		private String hymmSeq;
		private String hydcTitle;
		private String hydcText;
		private Integer hydcDelNy;
	
		// RegMod
		private String regIp;
		private String regSeq;
		private String regDeviceCd;
		private Date regDateTime;
		private Date regDateTimeSvr;
		private String modIp;
		private String modSeq;
		private String modDeviceCd;
		private Date modDateTime;
		private Date modDateTimeSvr;
		
	
	
		//common
		private String shHydcOption;
		private String shHydcValue;

		// Search
		private Integer shHydcDelNy;
		private String shHydcTitle;
		private String shHydcText;
	
		
		//paging	
			private int thisPage = 1;									// 현재 페이지
			private int rowNumToShow = 10;								// 화면에 보여줄 데이터 줄 갯수
			private int pageNumToShow = 5;								// 화면에 보여줄 페이징 번호 갯수

			private int totalRows;										// 전체 데이터 갯수
			private int totalPages;										// 전체 페이지 번호
			private int startPage;										// 시작 페이지 번호
			private int endPage;										// 마지막 페이지 번호
			
			private int startRnumForOracle = 1;							// 쿼리 시작 row
			private int endRnumForOracle;								// 쿼리 끝 row
			private Integer RNUM;
			
			private int startRnumForMysql = 0;							// 쿼리 시작 row
			
			

			public void setParamsPaging(int totalRowsParam) {
			
			totalRows = totalRowsParam;

			totalPages = totalRows / rowNumToShow;

			if (totalRows % rowNumToShow > 0) {
				totalPages = totalPages+ 1;
			}

			if (totalPages < thisPage) {
				thisPage = totalPages;
			}
			
			startPage = (((thisPage - 1) / pageNumToShow) * pageNumToShow + 1);

			endPage = (startPage + pageNumToShow - 1);

			if (endPage > totalPages) {
				endPage = (totalPages);
			}
			
			endRnumForOracle = ((rowNumToShow * thisPage));
			startRnumForOracle = ((endRnumForOracle - rowNumToShow) + 1);
			if (startRnumForOracle < 1) startRnumForOracle = 1;
			
			
			if (thisPage == 1  || thisPage == 0 ) {
				startRnumForMysql = 0;
			} else {
				startRnumForMysql = ((rowNumToShow * (thisPage-1)));
			}
			
			System.out.println("getThisPage():" + thisPage);
			System.out.println("getTotalRows():" + totalRows);
			System.out.println("getRowNumToShow():" + rowNumToShow);
			System.out.println("getTotalPages():" + totalPages);
			System.out.println("getStartPage():" + startPage);
			System.out.println("getEndPage():" + endPage);		
			System.out.println("getStartRnumForOracle():" + startRnumForOracle);
			System.out.println("getEndRnumForOracle():" + endRnumForOracle);
			System.out.println("getStartRnumForMysql(): " + startRnumForMysql);
	}

			//hybdMember
			private Integer hymmAdminNy;
			private Integer hymmDormancyNy;
			private String hymmName;
			private String hymmId;
			private String hymmPassword;
			private Integer hymmGenderCd;
			private String hymmNumber;
			private String hymmEmail;
			private String hymmDob;
			private Integer hymmSaveCd;
			private Integer hymmEmailConsentNy;
			private Integer hymmSmsConsentNy;
			private String hymmDesc;
			private Integer hymmDelNy;
		
			// uploaded
			private MultipartFile[] file0;
			private MultipartFile[] file1;
			private MultipartFile file;
			private String tableName;
			private String seq;
			private Integer type;
			private Integer defaultNy;
			private Integer sort;
			private String originalFileName;
			private String uuidFileName;
			private String ext;
			private long size;
			private Integer delNy;
			private String pseq;
			private String path;

	
	/******************************* Getter & Setter *******************************/
	
	public String getHydcSeq() {
		return hydcSeq;
	}
	public void setHydcSeq(String hydcSeq) {
		this.hydcSeq = hydcSeq;
	}
	public String getHyspSeq() {
		return hyspSeq;
	}
	public void setHyspSeq(String hyspSeq) {
		this.hyspSeq = hyspSeq;
	}
	public String getHymmSeq() {
		return hymmSeq;
	}
	public void setHymmSeq(String hymmSeq) {
		this.hymmSeq = hymmSeq;
	}
	public String getHydcTitle() {
		return hydcTitle;
	}
	public void setHydcTitle(String hydcTitle) {
		this.hydcTitle = hydcTitle;
	}
	public String getHydcText() {
		return hydcText;
	}
	public void setHydcText(String hydcText) {
		this.hydcText = hydcText;
	}
	public Integer getHydcDelNy() {
		return hydcDelNy;
	}
	public void setHydcDelNy(Integer hydcDelNy) {
		this.hydcDelNy = hydcDelNy;
	}
	public String getRegIp() {
		return regIp;
	}
	public void setRegIp(String regIp) {
		this.regIp = regIp;
	}
	public String getRegSeq() {
		return regSeq;
	}
	public void setRegSeq(String regSeq) {
		this.regSeq = regSeq;
	}
	public String getRegDeviceCd() {
		return regDeviceCd;
	}
	public void setRegDeviceCd(String regDeviceCd) {
		this.regDeviceCd = regDeviceCd;
	}
	public Date getRegDateTime() {
		return regDateTime;
	}
	public void setRegDateTime(Date regDateTime) {
		this.regDateTime = regDateTime;
	}
	public Date getRegDateTimeSvr() {
		return regDateTimeSvr;
	}
	public void setRegDateTimeSvr(Date regDateTimeSvr) {
		this.regDateTimeSvr = regDateTimeSvr;
	}
	public String getModIp() {
		return modIp;
	}
	public void setModIp(String modIp) {
		this.modIp = modIp;
	}
	public String getModSeq() {
		return modSeq;
	}
	public void setModSeq(String modSeq) {
		this.modSeq = modSeq;
	}
	public String getModDeviceCd() {
		return modDeviceCd;
	}
	public void setModDeviceCd(String modDeviceCd) {
		this.modDeviceCd = modDeviceCd;
	}
	public Date getModDateTime() {
		return modDateTime;
	}
	public void setModDateTime(Date modDateTime) {
		this.modDateTime = modDateTime;
	}
	public Date getModDateTimeSvr() {
		return modDateTimeSvr;
	}
	public void setModDateTimeSvr(Date modDateTimeSvr) {
		this.modDateTimeSvr = modDateTimeSvr;
	}
	

	



	public int getThisPage() {
		return thisPage;
	}




	public void setThisPage(int thisPage) {
		this.thisPage = thisPage;
	}




	public int getRowNumToShow() {
		return rowNumToShow;
	}




	public void setRowNumToShow(int rowNumToShow) {
		this.rowNumToShow = rowNumToShow;
	}




	public int getPageNumToShow() {
		return pageNumToShow;
	}




	public void setPageNumToShow(int pageNumToShow) {
		this.pageNumToShow = pageNumToShow;
	}




	public int getTotalRows() {
		return totalRows;
	}




	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}




	public int getTotalPages() {
		return totalPages;
	}




	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}




	public int getStartPage() {
		return startPage;
	}




	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}




	public int getEndPage() {
		return endPage;
	}




	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}




	public int getStartRnumForOracle() {
		return startRnumForOracle;
	}




	public void setStartRnumForOracle(int startRnumForOracle) {
		this.startRnumForOracle = startRnumForOracle;
	}




	public int getEndRnumForOracle() {
		return endRnumForOracle;
	}




	public void setEndRnumForOracle(int endRnumForOracle) {
		this.endRnumForOracle = endRnumForOracle;
	}




	public Integer getRNUM() {
		return RNUM;
	}




	public void setRNUM(Integer rNUM) {
		RNUM = rNUM;
	}




	public int getStartRnumForMysql() {
		return startRnumForMysql;
	}




	public void setStartRnumForMysql(int startRnumForMysql) {
		this.startRnumForMysql = startRnumForMysql;
	}
	
	public String getShHydcOption() {
		return shHydcOption;
	}




	public void setShHydcOption(String shHydcOption) {
		this.shHydcOption = shHydcOption;
	}




	public String getShHydcValue() {
		return shHydcValue;
	}




	public void setShHydcValue(String shHydcValue) {
		this.shHydcValue = shHydcValue;
	}




	public Integer getShHydcDelNy() {
		return shHydcDelNy;
	}




	public void setShHydcDelNy(Integer shHydcDelNy) {
		this.shHydcDelNy = shHydcDelNy;
	}




	public String getShHydcTitle() {
		return shHydcTitle;
	}




	public void setShHydcTitle(String shHydcTitle) {
		this.shHydcTitle = shHydcTitle;
	}




	public String getShHydcText() {
		return shHydcText;
	}




	public void setShHydcText(String shHydcText) {
		this.shHydcText = shHydcText;
	}

	

	



	public Integer getHymmAdminNy() {
	return hymmAdminNy;
}
public void setHymmAdminNy(Integer hymmAdminNy) {
	this.hymmAdminNy = hymmAdminNy;
}
public Integer getHymmDormancyNy() {
	return hymmDormancyNy;
}
public void setHymmDormancyNy(Integer hymmDormancyNy) {
	this.hymmDormancyNy = hymmDormancyNy;
}
public String getHymmName() {
	return hymmName;
}
public void setHymmName(String hymmName) {
	this.hymmName = hymmName;
}
public String getHymmId() {
	return hymmId;
}
public void setHymmId(String hymmId) {
	this.hymmId = hymmId;
}
public String getHymmPassword() {
	return hymmPassword;
}
public void setHymmPassword(String hymmPassword) {
	this.hymmPassword = hymmPassword;
}
public Integer getHymmGenderCd() {
	return hymmGenderCd;
}
public void setHymmGenderCd(Integer hymmGenderCd) {
	this.hymmGenderCd = hymmGenderCd;
}
public String getHymmNumber() {
	return hymmNumber;
}
public void setHymmNumber(String hymmNumber) {
	this.hymmNumber = hymmNumber;
}
public String getHymmEmail() {
	return hymmEmail;
}
public void setHymmEmail(String hymmEmail) {
	this.hymmEmail = hymmEmail;
}
public String getHymmDob() {
	return hymmDob;
}
public void setHymmDob(String hymmDob) {
	this.hymmDob = hymmDob;
}
public Integer getHymmSaveCd() {
	return hymmSaveCd;
}
public void setHymmSaveCd(Integer hymmSaveCd) {
	this.hymmSaveCd = hymmSaveCd;
}
public Integer getHymmEmailConsentNy() {
	return hymmEmailConsentNy;
}
public void setHymmEmailConsentNy(Integer hymmEmailConsentNy) {
	this.hymmEmailConsentNy = hymmEmailConsentNy;
}
public Integer getHymmSmsConsentNy() {
	return hymmSmsConsentNy;
}
public void setHymmSmsConsentNy(Integer hymmSmsConsentNy) {
	this.hymmSmsConsentNy = hymmSmsConsentNy;
}
public String getHymmDesc() {
	return hymmDesc;
}
public void setHymmDesc(String hymmDesc) {
	this.hymmDesc = hymmDesc;
}
public Integer getHymmDelNy() {
	return hymmDelNy;
}
public void setHymmDelNy(Integer hymmDelNy) {
	this.hymmDelNy = hymmDelNy;
}


public MultipartFile[] getFile0() {
return file0;
}
public void setFile0(MultipartFile[] file0) {
this.file0 = file0;
}
public MultipartFile[] getFile1() {
return file1;
}
public void setFile1(MultipartFile[] file1) {
this.file1 = file1;
}
public MultipartFile getFile() {
return file;
}
public void setFile(MultipartFile file) {
this.file = file;
}
public String getTableName() {
return tableName;
}
public void setTableName(String tableName) {
this.tableName = tableName;
}
public String getSeq() {
return seq;
}
public void setSeq(String seq) {
this.seq = seq;
}
public Integer getType() {
return type;
}
public void setType(Integer type) {
this.type = type;
}
public Integer getDefaultNy() {
return defaultNy;
}
public void setDefaultNy(Integer defaultNy) {
this.defaultNy = defaultNy;
}
public Integer getSort() {
return sort;
}
public void setSort(Integer sort) {
this.sort = sort;
}
public String getOriginalFileName() {
return originalFileName;
}
public void setOriginalFileName(String originalFileName) {
this.originalFileName = originalFileName;
}
public String getUuidFileName() {
return uuidFileName;
}
public void setUuidFileName(String uuidFileName) {
this.uuidFileName = uuidFileName;
}
public String getExt() {
return ext;
}
public void setExt(String ext) {
this.ext = ext;
}
public long getSize() {
return size;
}
public void setSize(long size) {
this.size = size;
}
public Integer getDelNy() {
return delNy;
}
public void setDelNy(Integer delNy) {
this.delNy = delNy;
}
public String getPseq() {
return pseq;
}
public void setPseq(String pseq) {
this.pseq = pseq;
}
public String getPath() {
return path;
}
public void setPath(String path) {
this.path = path;
}

	

	
}
