package com.exam.dao;

import java.util.List;
import java.util.Map;

import com.exam.entity.Card;

public interface CardDAO {
	public Card selectOne(Map<String, Object> cardMap);
	
	public List<Card> selectList(Map<String, Object> cardMap);
	
	public int insert(Card card);
	
	public List<Card> scoreRank(Map<String,Object> map);
}
