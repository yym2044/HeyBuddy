package com.owl.heybuddy.modules.file;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class File { 
 

	
	// document
	private String hydcSeq;
	private String hyspSeq;
	private String hymmSeq;
	private String hydcTitle;
	private String hydcText;
	private String hydcType;

	private Integer hydcDelNy;
	private Integer hydcTempNy;
	

	// RegMod
	private String regIp;
	private String regSeq;
	private String regDevice;
	private String regDeviceCd;
	private Date regDateTime;
	private Date regDateTimeSvr;
	private String modIp;
	private String modSeq;
	private String modDevice;
	private String modDeviceCd;
	private Date modDateTime;
	private Date modDateTimeSvr;
	
	// hybdComment 
	private String hycoSeq;
	private Integer hycoDefaultNy;
	private String hycoText;
	private Integer hycoDelNy;
	private Integer hycoGroupSeq;
	private Integer hycoGroupDepth;
	private Integer hycoGroupType;
	private Integer hycoGroupParent;

	
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
	private String path2;
	private String hyflSeq;
	private Integer hyflType;
	private Integer hyflDefaultNy;
	private Integer hyflSort;
	private String hyflOriginalFileName;
	private String hyflUuidFileName;
	private String hyflExt;
	private long hyflSize;
	private Integer hyflDelNy;
	private String hyflPseq;
	private String hyflPath;
	
	
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
	
	// hybdSpaceMember
	private Integer hysmRoleCd;
	

	
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
	


	public String getHycoSeq() {
		return hycoSeq;
	}
	public void setHycoSeq(String hycoSeq) {
		this.hycoSeq = hycoSeq;
	}
	public Integer getHycoDefaultNy() {
		return hycoDefaultNy;
	}
	public void setHycoDefaultNy(Integer hycoDefaultNy) {
		this.hycoDefaultNy = hycoDefaultNy;
	}
	public String getHycoText() {
		return hycoText;
	}
	public void setHycoText(String hycoText) {
		this.hycoText = hycoText;
	}
	public Integer getHycoDelNy() {
		return hycoDelNy;
	}
	public void setHycoDelNy(Integer hycoDelNy) {
		this.hycoDelNy = hycoDelNy;
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
 
 
public Integer getHysmRoleCd() {
	return hysmRoleCd;
}
public void setHysmRoleCd(Integer hysmRoleCd) {
	this.hysmRoleCd = hysmRoleCd;
}



public Integer getHydcDelNy() {
	return hydcDelNy;
}
public void setHydcDelNy(Integer hydcDelNy) {
	this.hydcDelNy = hydcDelNy;
}
public Integer getHydcTempNy() {
	return hydcTempNy;
}
public void setHydcTempNy(Integer hydcTempNy) {
	this.hydcTempNy = hydcTempNy;
}


public String getPath2() {
	return path2;
}
public void setPath2(String path2) {
	this.path2 = path2;
}
	
public String getRegDevice() {
	return regDevice;
}
public void setRegDevice(String regDevice) {
	this.regDevice = regDevice;
}
public String getModDevice() {
	return modDevice;
}
public void setModDevice(String modDevice) {
	this.modDevice = modDevice;
}

public String getHyflSeq() {
	return hyflSeq;
}
public void setHyflSeq(String hyflSeq) {
	this.hyflSeq = hyflSeq;
}
public Integer getHyflType() {
	return hyflType;
}
public void setHyflType(Integer hyflType) {
	this.hyflType = hyflType;
}
public Integer getHyflDefaultNy() {
	return hyflDefaultNy;
}
public void setHyflDefaultNy(Integer hyflDefaultNy) {
	this.hyflDefaultNy = hyflDefaultNy;
}
public Integer getHyflSort() {
	return hyflSort;
}
public void setHyflSort(Integer hyflSort) {
	this.hyflSort = hyflSort;
}
public String getHyflOriginalFileName() {
	return hyflOriginalFileName;
}
public void setHyflOriginalFileName(String hyflOriginalFileName) {
	this.hyflOriginalFileName = hyflOriginalFileName;
}
public String getHyflUuidFileName() {
	return hyflUuidFileName;
}
public void setHyflUuidFileName(String hyflUuidFileName) {
	this.hyflUuidFileName = hyflUuidFileName;
}
public String getHyflExt() {
	return hyflExt;
}
public void setHyflExt(String hyflExt) {
	this.hyflExt = hyflExt;
}
public long getHyflSize() {
	return hyflSize;
}
public void setHyflSize(long hyflSize) {
	this.hyflSize = hyflSize;
}
public Integer getHyflDelNy() {
	return hyflDelNy;
}
public void setHyflDelNy(Integer hyflDelNy) {
	this.hyflDelNy = hyflDelNy;
}
public String getHyflPseq() {
	return hyflPseq;
}
public void setHyflPseq(String hyflPseq) {
	this.hyflPseq = hyflPseq;
}
public String getHyflPath() {
	return hyflPath;
}
public void setHyflPath(String hyflPath) {
	this.hyflPath = hyflPath;
}
public Integer getHycoGroupSeq() {
	return hycoGroupSeq;
}
public void setHycoGroupSeq(Integer hycoGroupSeq) {
	this.hycoGroupSeq = hycoGroupSeq;
}
public Integer getHycoGroupDepth() {
	return hycoGroupDepth;
}
public void setHycoGroupDepth(Integer hycoGroupDepth) {
	this.hycoGroupDepth = hycoGroupDepth;
}


public Integer getHycoGroupType() {
	return hycoGroupType;
}
public void setHycoGroupType(Integer hycoGroupType) {
	this.hycoGroupType = hycoGroupType;
}
public String getHydcType() {
	return hydcType;
}
public void setHydcType(String hydcType) {
	this.hydcType = hydcType;
}
public Integer getHycoGroupParent() {
	return hycoGroupParent;
}
public void setHycoGroupParent(Integer hycoGroupParent) {
	this.hycoGroupParent = hycoGroupParent;
}

}
