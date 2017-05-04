package com.penghai.dataplatform.bo;

/* 
 * 设备详细参数
 * @author Tuzki
 */
public class Demo {
	private Integer id;
	private Integer eid;
	private Integer kn;
	private Integer max_mohou;
	private Integer min_mohou;
	private Integer ejection_stroke;
	private Float ejection_pressure;
	private String picture;
	
	
	public int getId() {
		return id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public int getEid() {
		return eid;
	}
	
	public void setEid(Integer eid) {
		this.eid=eid;
	}
	
	public int getKn() {
		return kn;
	}
	
	public void setKn(Integer kn) {
		this.kn=kn;
	}
	
	public int getMax_mohou() {
		return max_mohou;
	}
	
	public void setMax_mohou(Integer max_mohou) {
		this.max_mohou=max_mohou;
	}
	
	public int getMin_mohou() {
		return min_mohou;
	}
	
	public void setMin_mohou(Integer min_mohou) {
		this.min_mohou=min_mohou;
	}
	
	public int getEjection_stroke() {
		return ejection_stroke;
	}
	
	public void setEjection_stroke(Integer ejection_stroke) {
		this.ejection_stroke=ejection_stroke;
	}
	
	public float getEjection_pressure() {
		return ejection_pressure;
	}
	
	public void setEjection_pressure(Float ejection_pressure) {
		this.ejection_pressure=ejection_pressure;
	}
	
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
}
