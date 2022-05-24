package com.owl.heybuddy.modules.member;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class MemberVo {

	
	// space
	private String hyspSeq;
	private String hyspName;
	private String hysmSeq;

	// common
	private String shMemberOption;
	private String shMemberValue;

	// Search
	private Integer shHymmDelNy;
	private String shHymmName;
	private Integer shHymmDormancyNy; 

	private Integer ShMemberOptionDate;
	private String ShMemberDateEnd;
	private String ShMemberDateStart;

	// paging
	private int thisPage = 1; // 현재 페이지
	private int rowNumToShow = 10; // 화면에 보여줄 데이터 줄 갯수
	private int pageNumToShow = 5; // 화면에 보여줄 페이징 번호 갯수

	private int totalRows; // 전체 데이터 갯수
	private int totalPages; // 전체 페이지 번호
	private int startPage; // 시작 페이지 번호
	private int endPage; // 마지막 페이지 번호

	private int startRnumForOracle = 1; // 쿼리 시작 row
	private int endRnumForOracle; // 쿼리 끝 row
	private Integer RNUM;

	private int startRnumForMysql = 0; // 쿼리 시작 row

	public void setParamsPaging(int totalRowsParam) {

		totalRows = totalRowsParam;

		totalPages = totalRows / rowNumToShow;

		if (totalRows % rowNumToShow > 0) {
			totalPages = totalPages + 1;
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
		if (startRnumForOracle < 1)
			startRnumForOracle = 1;

		if (thisPage == 1 || thisPage == 0) {
			startRnumForMysql = 0;
		} else {
			startRnumForMysql = ((rowNumToShow * (thisPage - 1)));
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

	// 선택삭제
	private String[] checkboxSeqArray;

	/* hybdmember */

	private String hymmSeq;
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
	private String hymmEmailConsentNy;
	private String hymmSmsConsentNy;
	private String hymmDesc;
	private Integer hymmDelNy;

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

	public String getShMemberOption() {
		return shMemberOption;
	}

	public void setShMemberOption(String shMemberOption) {
		this.shMemberOption = shMemberOption;
	}

	public String getShMemberValue() {
		return shMemberValue;
	}

	public void setShMemberValue(String shMemberValue) {
		this.shMemberValue = shMemberValue;
	}

	public Integer getShHymmDelNy() {
		return shHymmDelNy;
	}

	public void setShHymmDelNy(Integer shHymmDelNy) {
		this.shHymmDelNy = shHymmDelNy;
	}

	public String getShHymmName() {
		return shHymmName;
	}

	public void setShHymmName(String shHymmName) {
		this.shHymmName = shHymmName;
	}

	public Integer getShHymmDormancyNy() {
		return shHymmDormancyNy;
	}

	public void setShHymmDormancyNy(Integer shHymmDormancyNy) {
		this.shHymmDormancyNy = shHymmDormancyNy;
	}

	public Integer getShMemberOptionDate() {
		return ShMemberOptionDate;
	}

	public void setShMemberOptionDate(Integer shMemberOptionDate) {
		ShMemberOptionDate = shMemberOptionDate;
	}

	public String getShMemberDateEnd() {
		return ShMemberDateEnd;
	}

	public void setShMemberDateEnd(String shMemberDateEnd) {
		ShMemberDateEnd = shMemberDateEnd;
	}

	public String getShMemberDateStart() {
		return ShMemberDateStart;
	}

	public void setShMemberDateStart(String shMemberDateStart) {
		ShMemberDateStart = shMemberDateStart;
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

	public String[] getCheckboxSeqArray() {
		return checkboxSeqArray;
	}

	public void setCheckboxSeqArray(String[] checkboxSeqArray) {
		this.checkboxSeqArray = checkboxSeqArray;
	}

	public String getHymmSeq() {
		return hymmSeq;
	}

	public void setHymmSeq(String hymmSeq) {
		this.hymmSeq = hymmSeq;
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

	public String getHymmEmailConsentNy() {
		return hymmEmailConsentNy;
	}

	public void setHymmEmailConsentNy(String hymmEmailConsentNy) {
		this.hymmEmailConsentNy = hymmEmailConsentNy;
	}

	public String getHymmSmsConsentNy() {
		return hymmSmsConsentNy;
	}

	public void setHymmSmsConsentNy(String hymmSmsConsentNy) {
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

	public String getHyspSeq() {
		return hyspSeq;
	}

	public void setHyspSeq(String hyspSeq) {
		this.hyspSeq = hyspSeq;
	}

	public String getHyspName() {
		return hyspName;
	}

	public void setHyspName(String hyspName) {
		this.hyspName = hyspName;
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

	public String getHysmSeq() {
		return hysmSeq;
	}

	public void setHysmSeq(String hysmSeq) {
		this.hysmSeq = hysmSeq;
	}
	
	
	
}
