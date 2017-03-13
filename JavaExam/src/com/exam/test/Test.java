package com.exam.test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;



import javax.annotation.Resource;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.exam.dao.CardDAO;
import com.exam.dao.CardDetailDAO;
import com.exam.dao.MajorDAO;
import com.exam.dao.PaperDAO;
import com.exam.dao.TeacherDAO;
import com.exam.entity.Card;
import com.exam.entity.Major;
import com.exam.entity.Paper;
import com.exam.service.StudentService;
import com.exam.service.TeacherService;
import com.exam.view.PaperVO;
import com.exam.view.StudentVO;
import com.mysql.fabric.xmlrpc.base.Array;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:applicationContext.xml"})
public class Test extends AbstractJUnit4SpringContextTests{
	@Resource
	private StudentService studentServiceImpl;
	
	@org.junit.Test
	public void testAllstudent(){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("studentID", 37);
		List<PaperVO> studentPaper = studentServiceImpl.studentPaper(map);
		System.out.println("+++++++++++++++++++++"+studentPaper);
	}
	
	/*@org.junit.Test
	public void testInsertList(){
		String[] array=new String[]{"A","D","B","D","D","A","B","C","B","D","D","B","D","D","A","B","C","B","D","D","D","A","B","C","B","D"};
		String[] array2=new String[]{"A","A","A","A","A","A","A","A","A","A","A","A","A","A","A","A","A","A","A","A","A","A","A","A","A","A"};
		studentServiceImpl.insertList(array, 38, 36,array2);
	}*/
	
	/*@Resource
	private PaperDAO paperDAO;
	
	@org.junit.Test
	public void testSelect(){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("paperID", 1);
		Paper selectOne= paperDAO.selectByID(map);
		System.out.println(selectOne);
	}*/
	
	/*@Resource
	private MajorDAO majorDAO;
	
	@org.junit.Test
	public void testSelect(){
		List<Major> selectAllMajors = majorDAO.selectAllMajors();
		System.out.println(selectAllMajors);
	}*/
	
	/*@Resource
	private CardDetailDAO cardDetailDAOImpl;
	
	@org.junit.Test
	public void testInsertCardDetail(){
		List<Map<String,Object>> list=new ArrayList<>();
		String[] array=new String[]{"A","D","B","D","D","A","B","C","B","D","D","B","D","D","A","B","C","B","D","D","D","A","B","C","B","D"};
		for(int i=0;i<array.length;i++){
			Map<String,Object> map=new HashMap<String,Object>();
			map.put("CARD_ID", 3);
			map.put("CARD_ANSWER", array[i]);
			list.add(map);
		}
		cardDetailDAOImpl.insertCardDetail(list);
	}*/
	/*@Resource
	private CardDAO cardDAOImpl;
	
	@org.junit.Test
	public void testScoreRank(){
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("paperID", 82);
		List<Card> list = cardDAOImpl.scoreRank(map);
		System.out.println(list.size());
	}*/
}
