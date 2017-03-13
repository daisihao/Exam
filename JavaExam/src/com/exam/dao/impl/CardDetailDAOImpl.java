package com.exam.dao.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.exam.dao.CardDetailDAO;
import com.exam.entity.CardDetail;

public class CardDetailDAOImpl extends SqlSessionDaoSupport implements CardDetailDAO {

	@Override
	public CardDetail selectOne(Map<String, Object> cardDetailMap) {
		return getSqlSession().selectOne("com.exam.dao.CardDetailDAO.selectOne", cardDetailMap);
	}
	public static void main(String[] args) {
		ApplicationContext ctx=new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
		CardDetailDAO cdao = ctx.getBean("cardDetailDAOImpl",CardDetailDAO.class);
		Map<String,Object> map=new HashMap<String,Object>();
		/*map.put("cardDetailID", 1);
		CardDetail cd = cdao.selectOne(map);
		System.out.println(cd);*/
		map.put("cardID", 64);
		List<CardDetail> list = cdao.selectCardDetailList(map);
		for(CardDetail c:list){
			System.out.print(c.getCardAnswer()+","+c.getTrueAnswer()+"\n");
		}
	}

	@Override
	public void insertCardDetail(List<Map<String, Object>> list) {
		getSqlSession().insert("com.exam.dao.CardDetailDAO.batchInsert", list);
	}

	@Override
	public List<CardDetail> selectCardDetailList(Map<String, Object> map) {
		return getSqlSession().selectList("com.exam.dao.CardDetailDAO.selectOne", map);
	}
}
