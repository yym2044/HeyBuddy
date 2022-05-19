package com.owl.heybuddy.modules.plan;

import java.util.Date;

public class Plan {

	private String hyplSeq;
	private Integer hyplDefaultNy;
	private String hyplName;
	private String hyplDate;
	private int hyplMember;
	private String hyplMemberName;
	private Integer hyplTypeCd;
	private String hyplDesc;
	private Integer hyplDelNy;
	
	// hybdMember
	
	private String hymmSeq;
	private String hymmName;
	
	
	// hybdSpaceMember
	private Integer hysmActiveNy;
	private Integer hysmRoleCd;
	private String hysmSeq;
	private String hyspName;
	private Integer hysmDelNy;
	
	// HybdSpace
	
	private Integer hyspDelNy;
	private String hyspSeq;
	
	
	// hybdMember
	private Integer hymmAdminNy;
	private Integer hymmDormancyNy;
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
	

	/******************************* Getter & Setter *******************************/
	
	

	public String getHyplSeq() {
		return hyplSeq;
	}
	public void setHyplSeq(String hyplSeq) {
		this.hyplSeq = hyplSeq;
	}
	public Integer getHyplDefaultNy() {
		return hyplDefaultNy;
	}
	public void setHyplDefaultNy(Integer hyplDefaultNy) {
		this.hyplDefaultNy = hyplDefaultNy;
	}
	public String getHyplName() {
		return hyplName;
	}
	public void setHyplName(String hyplName) {
		this.hyplName = hyplName;
	}
	
	public String getHyplDate() {
		return hyplDate;
	}
	public void setHyplDate(String hyplDate) {
		this.hyplDate = hyplDate;
	}
	public int getHyplMember() {
		return hyplMember;
	}
	public void setHyplMember(int hyplMember) {
		this.hyplMember = hyplMember;
	}
	public String getHyplMemberName() {
		return hyplMemberName;
	}
	public void setHyplMemberName(String hyplMemberName) {
		this.hyplMemberName = hyplMemberName;
	}
	public Integer getHyplTypeCd() {
		return hyplTypeCd;
	}
	public void setHyplTypeCd(Integer hyplTypeCd) {
		this.hyplTypeCd = hyplTypeCd;
	}
	public String getHyplDesc() {
		return hyplDesc;
	}
	public void setHyplDesc(String hyplDesc) {
		this.hyplDesc = hyplDesc;
	}
	public Integer getHyplDelNy() {
		return hyplDelNy;
	}
	public void setHyplDelNy(Integer hyplDelNy) {
		this.hyplDelNy = hyplDelNy;
	}
	public String getHymmSeq() {
		return hymmSeq;
	}
	public void setHymmSeq(String hymmSeq) {
		this.hymmSeq = hymmSeq;
	}
	public String getHymmName() {
		return hymmName;
	}
	public void setHymmName(String hymmName) {
		this.hymmName = hymmName;
	}
	public Integer getHysmActiveNy() {
		return hysmActiveNy;
	}
	public void setHysmActiveNy(Integer hysmActiveNy) {
		this.hysmActiveNy = hysmActiveNy;
	}
	public Integer getHysmRoleCd() {
		return hysmRoleCd;
	}
	public void setHysmRoleCd(Integer hysmRoleCd) {
		this.hysmRoleCd = hysmRoleCd;
	}
	public String getHysmSeq() {
		return hysmSeq;
	}
	public void setHysmSeq(String hysmSeq) {
		this.hysmSeq = hysmSeq;
	}
	public String getHyspName() {
		return hyspName;
	}
	public void setHyspName(String hyspName) {
		this.hyspName = hyspName;
	}
	public Integer getHysmDelNy() {
		return hysmDelNy;
	}
	public void setHysmDelNy(Integer hysmDelNy) {
		this.hysmDelNy = hysmDelNy;
	}
	public Integer getHyspDelNy() {
		return hyspDelNy;
	}
	public void setHyspDelNy(Integer hyspDelNy) {
		this.hyspDelNy = hyspDelNy;
	}
	public String getHyspSeq() {
		return hyspSeq;
	}
	public void setHyspSeq(String hyspSeq) {
		this.hyspSeq = hyspSeq;
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


	
	
}
