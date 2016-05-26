package com.disney.web.controller.generate.shop;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.disney.constant.Lo2LoType;
import com.disney.model.FromToOptimize;
import com.disney.util.Ajax;
import com.disney.web.controller.generate.GenerateBaseController;
import com.disney.web.controller.generate.GenerateFix;

@Controller
@RequestMapping("/shop")
public class P2ToShopController  extends GenerateBaseController{

	
	@RequestMapping(value="/p2",method=RequestMethod.GET)
	@ResponseBody
	public Map<String,Object> p2Generate(){
		
		String parkEntrance = "03-0002-000B";
		
		generate("05-0001-0001",parkEntrance);
		generate("05-0001-0002",parkEntrance);
		generate("05-0001-0003",parkEntrance);
		generate("05-0001-0004",parkEntrance);
		
		return Ajax.buildSuccessResult();
	}
	
	private void generate(String viewCode,String parkEntrance){
		//CHECK
		if(locationService.find(viewCode) == null || locationService.find(parkEntrance) == null ){
			return;
		}
		
		
		//Generate from to
		 FromToOptimize i2o = geFromTo(parkEntrance, viewCode, false, false, null, null, 0);
		 locationService.addFromTo(i2o);
		 
		 FromToOptimize o2i = geFromTo(viewCode, parkEntrance, false, false, null, null, 0);
		 locationService.addFromTo(o2i);
		 
		//Generate location to location
		 for(int i=0;i<GenerateFix.P2_QRCODE_NUM;i++){
			//inner
			String from = parkEntrance.substring(0,8)+getQrCodeSuffix(i+1);
			String to = viewCode;
			generateLo2Lo(from,to,parkEntrance,i2o,Lo2LoType.PARKINNER_2_VIEW);
		}
		 
		 for(int i=0;i<GenerateFix.P2_QRCODE_NUM;i++){
			//inner
			String from = viewCode;
			String to = parkEntrance.substring(0,8)+getQrCodeSuffix(i+1);
			generateLo2Lo(from,to,parkEntrance,o2i,Lo2LoType.VIEW_2_PARKINNER);
		}
	}

}