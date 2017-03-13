package com.exam.dao;

import java.util.List;
import java.util.Map;

import com.exam.entity.CardDetail;

public interface CardDetailDAO {
	public CardDetail selectOne(Map<String,Object> cardDetailMap);
	
	/*
	 * 将学生答题答案插入答题卡详细表中
	 */
	public void insertCardDetail(List<Map<String,Object>> list);
	
	public List<CardDetail> selectCardDetailList(Map<String,Object> map);
}
