package com.icia.web.model;

import java.io.Serializable;

public class WDAdminUser implements Serializable
{
	private static final long serialVersionUID = 1L;
	
	private String userId;    		// 사용자 아이디
	private String userPwd;   		// 비밀번호
	private String userName;  		// 사용자 명
	private String userNickname;	//닉네임
	private String userNumber;		//전화번호
	private String userEmail; 		// 사용자 이메일
	private String userGender;		//성별 (M: 남자, F: 여자)
	private String status;    		// 상태 (Y:정상/N:정지 OR 인증 전/ D:탈퇴)
	private String regDate;  		// 회원등록일
	private String marrytDate;		//결혼예정일
	private int userPoint;		//포인트(환불 취소 용도)
	private int uCheck;
	
	private long startRow;
	private long endRow;

	
	public WDAdminUser()
	{
		userId = "";
		userPwd = "";
		userName = "";
		userNickname = "";
		userNumber = "";
		userEmail = "";
		userGender = "";
		status = "";
		regDate = "";
		marrytDate = "";
		
		userPoint = 0;
		uCheck = 0;
		startRow = 0;
		endRow = 0;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getUserPwd() {
		return userPwd;
	}


	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getUserNickname() {
		return userNickname;
	}


	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}


	public String getUserNumber() {
		return userNumber;
	}


	public void setUserNumber(String userNumber) {
		this.userNumber = userNumber;
	}


	public String getUserEmail() {
		return userEmail;
	}


	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}


	public String getUserGender() {
		return userGender;
	}


	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public String getRegDate() {
		return regDate;
	}


	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}


	public String getMarrytDate() {
		return marrytDate;
	}


	public void setMarrytDate(String marrytDate) {
		this.marrytDate = marrytDate;
	}


	public int getUserPoint() {
		return userPoint;
	}


	public void setUserPoint(int userPoint) {
		this.userPoint = userPoint;
	}


	public int getuCheck() {
		return uCheck;
	}


	public void setuCheck(int uCheck) {
		this.uCheck = uCheck;
	}


	public long getStartRow() {
		return startRow;
	}


	public void setStartRow(long startRow) {
		this.startRow = startRow;
	}


	public long getEndRow() {
		return endRow;
	}


	public void setEndRow(long endRow) {
		this.endRow = endRow;
	}
	
}
