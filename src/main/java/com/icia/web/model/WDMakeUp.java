package com.icia.web.model;

import java.io.Serializable;

import org.slf4j.LoggerFactory;

public class WDMakeUp implements Serializable{

	private static final long serialVersionUID = 1L;

	//메이크업 코드
	private String mCode;
	//메이크업 업체 명
	private String mName;
	//주소
	private String mLocation;
	//전화번호
	private String mNumber;
	//이미지파일명
	private String mImgName;
	//메이크업 기본 가격
	private long mPrice;
	//업체 설명
	private String mContent;
	//추가 인원당 가격
	private long mPlus;
	
	

	private String mAddpeople;
	
	
	private String searchType;      	//검색타입(1:이름, 2:제묵, 3:내용)
	private String searchValue;      	//검색값
	private long startRow;         		//시작 rownum
	private long endRow;         		//끝rownum
	
	private WDMakeUpFile wdMakeUpFile;
	
	private long mDiscount;
	
	private String wDate;			//검색 조건 날짜
	
	private String year;
	private String month;
	private String day;
	
	//생성자
	public WDMakeUp() 
	{
		mCode = "";
		mName = "";
		mLocation = "";
		mNumber = "";
		mImgName = "";
		mPrice = 0;
		mContent = "";
		mPlus = 0;
		searchType = "";
		searchValue = "";
		startRow = 0;
		endRow = 0;
		wdMakeUpFile = null;
		mDiscount = 0;
		mAddpeople = "";
		
		wDate = "";
		year = "";
		month = "";
		day = "";
	}

	public String getmAddpeople() {
		return mAddpeople;
	}

	public void setmAddpeople(String mAddpeople) {
		this.mAddpeople = mAddpeople;
	}
	
	public String getmCode() {
		return mCode;
	}

	public void setmCode(String mCode) {
		this.mCode = mCode;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public String getmLocation() {
		return mLocation;
	}

	public void setmLocation(String mLocation) {
		this.mLocation = mLocation;
	}

	public String getmNumber() {
		return mNumber;
	}

	public void setmNumber(String mNumber) {
		this.mNumber = mNumber;
	}

	public String getmImgName() {
		return mImgName;
	}

	public void setmImgName(String mImgName) {
		this.mImgName = mImgName;
	}

	public long getmPrice() {
		return mPrice;
	}

	public void setmPrice(long mPrice) {
		this.mPrice = mPrice;
	}

	public String getmContent() {
		return mContent;
	}

	public void setmContent(String mContent) {
		this.mContent = mContent;
	}

	public long getmPlus() {
		return mPlus;
	}

	public void setmPlus(long mPlus) {
		this.mPlus = mPlus;
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getSearchValue() {
		return searchValue;
	}

	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
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

	public WDMakeUpFile getWdMakeUpFile() {
		return wdMakeUpFile;
	}

	public void setWdMakeUpFile(WDMakeUpFile wdMakeUpFile) {
		this.wdMakeUpFile = wdMakeUpFile;
	}

	public long getmDiscount() {
		return mDiscount;
	}

	public void setmDiscount(long mDiscount) {
		this.mDiscount = mDiscount;
	}

	public String getwDate() {
		return wDate;
	}

	public void setwDate(String wDate) {
		this.wDate = wDate;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}
	
	
}
