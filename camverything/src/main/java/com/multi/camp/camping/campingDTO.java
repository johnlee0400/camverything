package com.multi.camp.camping;

public class campingDTO {

	private String manager_id;
	private String facltNm;
	private String lineIntro;
	private String intro;
	private String bizrno;
	private String facltDivNm;
	private String featureNm;
	private String induty;
	private String lctCl;
	private String doNm;
	private String addr1;
	private String mapX;
	private String mapY;
	private String tel;
	private String homepage;
	private String operPdCl;
	private String operDeCl;
	private String sbrsCl;
	private String firstImageUrl;
	
	public campingDTO() {
		super();
	}

	public campingDTO(String manager_id, String facltNm, String lineIntro, String intro, String bizrno,
			String facltDivNm, String featureNm, String induty, String lctCl, String doNm, String addr1, String mapX,
			String mapY, String tel, String homepage, String operPdCl, String operDeCl, String sbrsCl,
			String firstImageUrl) {
		super();
		this.manager_id = manager_id;
		this.facltNm = facltNm;
		this.lineIntro = lineIntro;
		this.intro = intro;
		this.bizrno = bizrno;
		this.facltDivNm = facltDivNm;
		this.featureNm = featureNm;
		this.induty = induty;
		this.lctCl = lctCl;
		this.doNm = doNm;
		this.addr1 = addr1;
		this.mapX = mapX;
		this.mapY = mapY;
		this.tel = tel;
		this.homepage = homepage;
		this.operPdCl = operPdCl;
		this.operDeCl = operDeCl;
		this.sbrsCl = sbrsCl;
		this.firstImageUrl = firstImageUrl;
	}

	@Override
	public String toString() {
		return "campingDTO [manager_id=" + manager_id + ", facltNm=" + facltNm + ", lineIntro=" + lineIntro + ", intro="
				+ intro + ", bizrno=" + bizrno + ", facltDivNm=" + facltDivNm + ", featureNm=" + featureNm + ", induty="
				+ induty + ", lctCl=" + lctCl + ", doNm=" + doNm + ", addr1=" + addr1 + ", mapX=" + mapX + ", mapY="
				+ mapY + ", tel=" + tel + ", homepage=" + homepage + ", operPdCl=" + operPdCl + ", operDeCl=" + operDeCl
				+ ", sbrsCl=" + sbrsCl + ", firstImageUrl=" + firstImageUrl + "]";
	}

	public String getManager_id() {
		return manager_id;
	}

	public void setManager_id(String manager_id) {
		this.manager_id = manager_id;
	}

	public String getFacltNm() {
		return facltNm;
	}

	public void setFacltNm(String facltNm) {
		this.facltNm = facltNm;
	}

	public String getLineIntro() {
		return lineIntro;
	}

	public void setLineIntro(String lineIntro) {
		this.lineIntro = lineIntro;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public String getBizrno() {
		return bizrno;
	}

	public void setBizrno(String bizrno) {
		this.bizrno = bizrno;
	}

	public String getFacltDivNm() {
		return facltDivNm;
	}

	public void setFacltDivNm(String facltDivNm) {
		this.facltDivNm = facltDivNm;
	}

	public String getFeatureNm() {
		return featureNm;
	}

	public void setFeatureNm(String featureNm) {
		this.featureNm = featureNm;
	}

	public String getInduty() {
		return induty;
	}

	public void setInduty(String induty) {
		this.induty = induty;
	}

	public String getLctCl() {
		return lctCl;
	}

	public void setLctCl(String lctCl) {
		this.lctCl = lctCl;
	}

	public String getDoNm() {
		return doNm;
	}

	public void setDoNm(String doNm) {
		this.doNm = doNm;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getMapX() {
		return mapX;
	}

	public void setMapX(String mapX) {
		this.mapX = mapX;
	}

	public String getMapY() {
		return mapY;
	}

	public void setMapY(String mapY) {
		this.mapY = mapY;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getHomepage() {
		return homepage;
	}

	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}

	public String getOperPdCl() {
		return operPdCl;
	}

	public void setOperPdCl(String operPdCl) {
		this.operPdCl = operPdCl;
	}

	public String getOperDeCl() {
		return operDeCl;
	}

	public void setOperDeCl(String operDeCl) {
		this.operDeCl = operDeCl;
	}

	public String getSbrsCl() {
		return sbrsCl;
	}

	public void setSbrsCl(String sbrsCl) {
		this.sbrsCl = sbrsCl;
	}

	public String getFirstImageUrl() {
		return firstImageUrl;
	}

	public void setFirstImageUrl(String firstImageUrl) {
		this.firstImageUrl = firstImageUrl;
	}

	
	
}
