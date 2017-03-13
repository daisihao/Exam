package com.exam.dao;

import java.util.List;
import java.util.Map;

import com.exam.entity.PaperDetail;
import com.exam.entity.Question;

public interface PaperDetailDAO {
	/**
	 * 插入试卷明细
	 * @param paperDetail
	 */
	public void insert(PaperDetail paperDetail);
    public List<Question> selectPaper(Map<String,Object> map);
	
    /**
     * 批量插入
     */
    public void batchInsert(List<Map<String, Object>> list);
}
