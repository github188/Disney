package com.disney.web.vo;

import java.util.ArrayList;
import java.util.List;

public class GuideVO {
	
	private String destName;
	private List<String> steps = new ArrayList<String>();
	private String time;
	private String distince;
	
	private String innerPic;
	private String outPic;
	
	public String getDestName() {
		return destName;
	}
	public void setDestName(String destName) {
		this.destName = destName;
	}
	public List<String> getSteps() {
		return steps;
	}
	public void setSteps(List<String> steps) {
		this.steps = steps;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getDistince() {
		return distince;
	}
	public void setDistince(String distince) {
		this.distince = distince;
	}
	public String getInnerPic() {
		return innerPic;
	}
	public void setInnerPic(String innerPic) {
		this.innerPic = innerPic;
	}
	public String getOutPic() {
		return outPic;
	}
	public void setOutPic(String outPic) {
		this.outPic = outPic;
	}
}