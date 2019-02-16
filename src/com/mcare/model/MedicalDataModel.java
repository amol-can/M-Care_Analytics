package com.mcare.model;

public class MedicalDataModel {
	private String uid;
	private String name;
	private String date;
	private String bp;
	private String bSugar;
	private String aSugar;
	private String plat;
	private String weight;
	private String protein;
	private String hiv;
	
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getBp() {
		return bp;
	}
	public void setBp(String bp) {
		this.bp = bp;
	}
	public String getbSugar() {
		return bSugar;
	}
	public void setbSugar(String bSugar) {
		this.bSugar = bSugar;
	}
	public String getaSugar() {
		return aSugar;
	}
	public void setaSugar(String aSugar) {
		this.aSugar = aSugar;
	}
	public String getPlat() {
		return plat;
	}
	public void setPlat(String plat) {
		this.plat = plat;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getProtein() {
		return protein;
	}
	public void setProtein(String protein) {
		this.protein = protein;
	}
	public String getHiv() {
		return hiv;
	}
	public void setHiv(String hiv) {
		this.hiv = hiv;
	}

	@Override
	public String toString() {
		return "MedicalDataModel [uid=" + uid + ", name=" + name + ", date=" + date + ", bp=" + bp + ", bSugar="
				+ bSugar + ", aSugar=" + aSugar + ", plat=" + plat + ", weight=" + weight + ", protein=" + protein
				+ ", hiv=" + hiv + "]";
	}
	

}
