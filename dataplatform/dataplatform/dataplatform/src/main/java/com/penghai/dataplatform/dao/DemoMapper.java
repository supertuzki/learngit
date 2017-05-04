package com.penghai.dataplatform.dao;

import java.util.List;
import com.penghai.dataplatform.bo.Demo;

public interface DemoMapper {
	public List<Demo> selectDemo(Integer id);
}
