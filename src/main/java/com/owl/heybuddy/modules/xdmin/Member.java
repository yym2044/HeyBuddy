package com.owl.heybuddy.modules.xdmin;



import org.springframework.web.multipart.MultipartFile;

public class Member {
	


	/* hybdmember */
	private String hybdmmSeq;
	private Integer hybdmmAdminNy;
	private Integer hybdmmDormancyNy;
	private String hybdmmName;
	private String hybdmmId ;
	private String hybdmmDob;
	private String hybdmmPassword;
	private Integer hybdmmGenderCd;
	private String hybdmmNumber;
	private String hybdmmSaveCd;
	private Integer hybdmmEmailConsentNy;
	private Integer hybdmmSmsConsentNy;
	private Integer hybdmmDelNy;
	private String hybdmmDesc;
	
	
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

	
	/* hybdSpacemember */
	private String hybdSmSeq;
	private Integer hybdSmRoleCd;
	
	

	public String getHybdmmSeq() {
		return hybdmmSeq;
	}
	public void setHybdmmSeq(String hybdmmSeq) {
		this.hybdmmSeq = hybdmmSeq;
	}
	public Integer getHybdmmAdminNy() {
		return hybdmmAdminNy;
	}
	public void setHybdmmAdminNy(Integer hybdmmAdminNy) {
		this.hybdmmAdminNy = hybdmmAdminNy;
	}
	public Integer getHybdmmDormancyNy() {
		return hybdmmDormancyNy;
	}
	public void setHybdmmDormancyNy(Integer hybdmmDormancyNy) {
		this.hybdmmDormancyNy = hybdmmDormancyNy;
	}
	public String getHybdmmName() {
		return hybdmmName;
	}
	public void setHybdmmName(String hybdmmName) {
		this.hybdmmName = hybdmmName;
	}
	public String getHybdmmId() {
		return hybdmmId;
	}
	public void setHybdmmId(String hybdmmId) {
		this.hybdmmId = hybdmmId;
	}
	public String getHybdmmDob() {
		return hybdmmDob;
	}
	public void setHybdmmDob(String hybdmmDob) {
		this.hybdmmDob = hybdmmDob;
	}
	public String getHybdmmPassword() {
		return hybdmmPassword;
	}
	public void setHybdmmPassword(String hybdmmPassword) {
		this.hybdmmPassword = hybdmmPassword;
	}
	public Integer getHybdmmGenderCd() {
		return hybdmmGenderCd;
	}
	public void setHybdmmGenderCd(Integer hybdmmGenderCd) {
		this.hybdmmGenderCd = hybdmmGenderCd;
	}
	public String getHybdmmSaveCd() {
		return hybdmmSaveCd;
	}
	public void setHybdmmSaveCd(String hybdmmSaveCd) {
		this.hybdmmSaveCd = hybdmmSaveCd;
	}
	public Integer getHybdmmEmailConsentNy() {
		return hybdmmEmailConsentNy;
	}
	public void setHybdmmEmailConsentNy(Integer hybdmmEmailConsentNy) {
		this.hybdmmEmailConsentNy = hybdmmEmailConsentNy;
	}
	public Integer getHybdmmSmsConsentNy() {
		return hybdmmSmsConsentNy;
	}
	public void setHybdmmSmsConsentNy(Integer hybdmmSmsConsentNy) {
		this.hybdmmSmsConsentNy = hybdmmSmsConsentNy;
	}
	public Integer getHybdmmDelNy() {
		return hybdmmDelNy;
	}
	public void setHybdmmDelNy(Integer hybdmmDelNy) {
		this.hybdmmDelNy = hybdmmDelNy;
	}
	public String getHybdmmDesc() {
		return hybdmmDesc;
	}
	public void setHybdmmDesc(String hybdmmDesc) {
		this.hybdmmDesc = hybdmmDesc;
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
	public String getHybdSmSeq() {
		return hybdSmSeq;
	}
	public void setHybdSmSeq(String hybdSmSeq) {
		this.hybdSmSeq = hybdSmSeq;
	}
	public Integer getHybdSmRoleCd() {
		return hybdSmRoleCd;
	}
	public void setHybdSmRoleCd(Integer hybdSmRoleCd) {
		this.hybdSmRoleCd = hybdSmRoleCd;
	}
	public String getHybdmmNumber() {
		return hybdmmNumber;
	}
	public void setHybdmmNumber(String hybdmmNumber) {
		this.hybdmmNumber = hybdmmNumber;
	}

}