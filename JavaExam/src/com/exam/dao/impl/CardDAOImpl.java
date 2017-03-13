package com.exam.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.exam.dao.CardDAO;
import com.exam.entity.Card;

public class CardDAOImpl extends SqlSessionDaoSupport implements CardDAO {

	@Override
	public Card selectOne(Map<String, Object> cardMap) {
		return getSqlSession().selectOne("com.exam.dao.impl.CardDAO.SelectOne",cardMap);
	}

	@Override
	public List<Card> selectList(Map<String, Object> cardMap) {
		return getSqlSession().selectList("com.exam.dao.impl.CardDAO.selectList", cardMap);
	}

	@Override
	public int insert(Card card) {
		return getSqlSession().insert("com.exam.dao.impl.CardDAO.insertOne", card);
	}

	@Override
	public List<Card> scoreRank(Map<String, Object> map) {
		return getSqlSession().selectList("com.exam.dao.impl.CardDAO.scoreRank", map);
	}

	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext(
				"classpath:applicationContext.xml");
		CardDAO bean = ctx.getBean("cardDAOImpl",CardDAO.class);
			Map<String, Object> cardMap = new HashMap<String, Object>();
		//cardMap.put("cardID", 1);
		//Card card = bean.selectOne(cardMap);
			//cardMap.put("studentID", 30);
		/*List<Card> clist = bean.selectList(cardMap);
		for(Card c:clist){
			System.out.println(c);
		}
		//bean.insert(new Card(cardID, paperID, studentID, teacherID, cardStatus, cardScore))
		cardMap.put("paperID", 46);
		cardMap.put("studentID", 36);
		Card card = bean.selectOne(cardMap);
		System.out.println(card);*/
			cardMap.put("cardID", 310);
			Card c = bean.selectOne(cardMap);
			cardMap.clear();
			cardMap.put("paperID", c.getPaperID());
			List<Card> list = bean.scoreRank(cardMap);
			for (Card card : list) {
				System.out.println(card);
			}
	}
}
