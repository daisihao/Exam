package com.exam.dao;

import java.util.List;
import java.util.Map;

import com.exam.entity.Paper;

public interface PaperDAO {

	public int insert(Paper paper);
	public List<Paper> select();
	public List<Paper> select(Map<String, Object> map);//查询指定专业的10条试卷
	public List<Paper> selectStu(Map<String, Object> map);//查询指定专业的所有试卷
	public Paper selectByID(Map<String, Object> map);
	Paper selectPaperByNO(Map<String, Object> map);
	
	public Paper searchPaper(Map<String,Object> map);
}
