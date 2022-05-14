package com.owl.heybuddy.modules.mySpace;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class MySpace {

	// hybdSpace
	private String hyspSeq;
	private String hyspName;
	private Integer hyspTypeCd;
	private Integer hyspOrder;
	private Integer hyspUseNy;
	private Integer hyspDelNy;

	// hybdSpaceMember
	private String hysmSeq;
	private String hymmSeq;
	private String hysmRoleCd;

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

	/*******************************
	 * Getter & Setter
	 *******************************/

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

	public Integer getHyspTypeCd() {
		return hyspTypeCd;
	}

	public void setHyspTypeCd(Integer hyspTypeCd) {
		this.hyspTypeCd = hyspTypeCd;
	}

	public Integer getHyspOrder() {
		return hyspOrder;
	}

	public void setHyspOrder(Integer hyspOrder) {
		this.hyspOrder = hyspOrder;
	}

	public Integer getHyspUseNy() {
		return hyspUseNy;
	}

	public void setHyspUseNy(Integer hyspUseNy) {
		this.hyspUseNy = hyspUseNy;
	}

	public Integer getHyspDelNy() {
		return hyspDelNy;
	}

	public void setHyspDelNy(Integer hyspDelNy) {
		this.hyspDelNy = hyspDelNy;
	}

	public String getHysmSeq() {
		return hysmSeq;
	}

	public void setHysmSeq(String hysmSeq) {
		this.hysmSeq = hysmSeq;
	}

	public String getHymmSeq() {
		return hymmSeq;
	}

	public void setHymmSeq(String hymmSeq) {
		this.hymmSeq = hymmSeq;
	}

	public String getHysmRoleCd() {
		return hysmRoleCd;
	}

	public void setHysmRoleCd(String hysmRoleCd) {
		this.hysmRoleCd = hysmRoleCd;
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
