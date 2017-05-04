package com.penghai.dataplatform.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.penghai.dataplatform.bo.Demo;
import com.penghai.dataplatform.service.DemoService;

@Controller
public class SelectDemoController extends BaseController {
	@Autowired
	private DemoService demoService;
	
	@RequestMapping("/demo")
	public String selectDemo() {
		Integer did = Integer.parseInt(request.getParameter("id"));
		// 查询出某一设备的详细信息
		List<Demo> demo = demoService.getDemo(did);
		JSONArray jsonArray = new JSONArray();
		for(Demo d:demo) {
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("id", d.getId());
			jsonObject.put("eid", d.getEid());
			jsonObject.put("kn", d.getKn());
			jsonObject.put("max_mohou", d.getMax_mohou());
			jsonObject.put("min_mohou", d.getMin_mohou());
			jsonObject.put("ejection_stroke", d.getEjection_stroke());
			jsonObject.put("ejection_pressure", d.getEjection_pressure());
			jsonObject.put("picture", d.getPicture());
			jsonArray.add(jsonObject);
		}
		request.setAttribute("demoList", jsonArray);
		return "demo";
	}

}
