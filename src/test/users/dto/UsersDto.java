package test.users.dto;

public class UsersDto {
	private String memberId;
	private String memberPwd;
	private String memberName;
	private String companyNo;
	private String memberLevel;
	private String memberEmail;
	private String memberPhone;
	private String workArea;
	private String regdate;
	// 디폴트 생성자
	public UsersDto(){}
	public UsersDto(String memberId, String memberPwd, String memberName, String companyNo, String memberLevel,
			String memberEmail, String memberPhone, String workArea, String regdate) {
		super();
		this.memberId = memberId;
		this.memberPwd = memberPwd;
		this.memberName = memberName;
		this.companyNo = companyNo;
		this.memberLevel = memberLevel;
		this.memberEmail = memberEmail;
		this.memberPhone = memberPhone;
		this.workArea = workArea;
		this.regdate = regdate;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPwd() {
		return memberPwd;
	}
	public void setMemberPwd(String memberPwd) {
		this.memberPwd = memberPwd;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getCompanyNo() {
		return companyNo;
	}
	public void setCompanyNo(String companyNo) {
		this.companyNo = companyNo;
	}
	public String getMemberLevel() {
		return memberLevel;
	}
	public void setMemberLevel(String memberLevel) {
		this.memberLevel = memberLevel;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public String getMemberPhone() {
		return memberPhone;
	}
	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}
	public String getWorkArea() {
		return workArea;
	}
	public void setWorkArea(String workArea) {
		this.workArea = workArea;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	
}
