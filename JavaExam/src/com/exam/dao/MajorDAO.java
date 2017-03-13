package com.exam.dao;

import java.util.List;
import java.util.Map;

import com.exam.entity.Major;

public interface MajorDAO {
	public List<Major> selectAllMajors();
	public Major selectOne(Map<String, Object> map);
	Major selectOne2(Map<String, Object> map);
}
