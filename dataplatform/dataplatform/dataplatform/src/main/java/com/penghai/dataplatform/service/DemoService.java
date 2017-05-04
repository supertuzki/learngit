package com.penghai.dataplatform.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.penghai.dataplatform.bo.Demo;
import com.penghai.dataplatform.dao.DemoMapper;

/*
 * 查询设备所有信息的Service
 * @author tuzki
 */
@Service
public class DemoService {
	@Autowired
	private DemoMapper demoMapper;
	
	public List<Demo> getDemo(Integer id) {
		List<Demo> demo = demoMapper.selectDemo(id);
		return demo;
	}
}
