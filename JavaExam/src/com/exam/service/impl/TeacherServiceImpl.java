package com.exam.service.impl;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.exam.dao.CardDAO;
import com.exam.dao.MajorDAO;
import com.exam.dao.PaperDAO;
import com.exam.dao.PaperDetailDAO;
import com.exam.dao.QuestionDAO;
import com.exam.dao.ScoreDAO;
import com.exam.dao.StudentDAO;
import com.exam.dao.SubjectinfoDAO;
import com.exam.dao.TeacherDAO;
import com.exam.dao.impl.CardDAOImpl;
import com.exam.entity.Card;
import com.exam.entity.Major;
import com.exam.entity.Paper;
import com.exam.entity.PaperDetail;
import com.exam.entity.Question;
import com.exam.entity.Score;
import com.exam.entity.Student;
import com.exam.entity.Subjectinfo;
import com.exam.entity.Teacher;
import com.exam.service.TeacherService;
import com.exam.util.MD5;
import com.exam.util.StringUtil;
import com.exam.view.CardVO;
import com.exam.view.MajorVO;
import com.exam.view.PaperVO;
import com.exam.view.QuestionVO;
import com.exam.view.ScoreByClassVO;
import com.exam.view.ScoreVO;
import com.exam.view.StudentVO;
import com.exam.view.TeacherVO;

public class TeacherServiceImpl implements TeacherService {
	private static final int SUMTWO = 789;
	private static final int SUMFOUR = 481;
	private static final int SUMSIX = 116;
	private QuestionDAO questionDAOImpl;
	private PaperDAO paperDAOImpl;
	private PaperDetailDAO paperDetailDAOImpl;
	private TeacherDAO teacherDAOImpl;
	private ScoreDAO scoreDAOImpl;// 学生成绩
	private StudentDAO studentDAOImpl;
	private SubjectinfoDAO subjectinfoDAOImpl;
	private MajorDAO majorDAOImpl;
	private CardDAO cardDAOImpl;
	
	public void setCardDAOImpl(CardDAO cardDAOImpl) {
		this.cardDAOImpl = cardDAOImpl;
	}

	public void setMajorDAOImpl(MajorDAO majorDAOImpl) {
		this.majorDAOImpl = majorDAOImpl;
	}

	public TeacherDAO getTeacherDAOImpl() {
		return teacherDAOImpl;
	}

	public void setTeacherDAOImpl(TeacherDAO teacherDAOImpl) {
		this.teacherDAOImpl = teacherDAOImpl;
	}

	public QuestionDAO getQuestionDAOImpl() {
		return questionDAOImpl;
	}

	public void setQuestionDAOImpl(QuestionDAO questionDAOImpl) {
		this.questionDAOImpl = questionDAOImpl;
	}

	public PaperDAO getPaperDAOImpl() {
		return paperDAOImpl;
	}

	public void setPaperDAOImpl(PaperDAO paperDAOImpl) {
		this.paperDAOImpl = paperDAOImpl;
	}

	public PaperDetailDAO getPaperDetailDAOImpl() {
		return paperDetailDAOImpl;
	}

	public void setPaperDetailDAOImpl(PaperDetailDAO paperDetailDAOImpl) {
		this.paperDetailDAOImpl = paperDetailDAOImpl;
	}

	public void setScoreDAOImpl(ScoreDAO scoreDAOImpl) {
		this.scoreDAOImpl = scoreDAOImpl;
	}

	public void setStudentDAOImpl(StudentDAO studentDAOImpl) {
		this.studentDAOImpl = studentDAOImpl;
	}

	public void setSubjectinfoDAOImpl(SubjectinfoDAO subjectinfoDAOImpl) {
		this.subjectinfoDAOImpl = subjectinfoDAOImpl;
	}

	@Override
	public List<QuestionVO> selectQuestion(Map<String, Object> questionMap) {
		Map<String, Object> currentMap = new HashMap<String, Object>();
		currentMap.put("currentTwo",
				(int) ((Math.random() * (SUMTWO - 10) + 1)));
		currentMap.put("currentFour",
				(int) ((Math.random() * (SUMFOUR - 10) + 1)));
		currentMap.put("currentSix",
				(int) ((Math.random() * (SUMSIX - 10) + 1)));

		List<Question> queTwo = questionDAOImpl.selectQueTwo(currentMap);
		List<Question> queFour = questionDAOImpl.selectQueFour(currentMap);
		List<Question> queSix = questionDAOImpl.selectQueSix(currentMap);
		List<QuestionVO> questionList = new ArrayList<QuestionVO>();
		QuestionVO QVO = null;

		// 插入两分题目
		for (Question question : queTwo) {
			QVO = new QuestionVO();
			try {
				BeanUtils.copyProperties(QVO, question);
				QVO.setQuestionAnswerA(StringUtil.entityString(question.getQuestionAnswerA()));
				QVO.setQuestionAnswerB(StringUtil.entityString(question.getQuestionAnswerB()));
				QVO.setQuestionAnswerC(StringUtil.entityString(question.getQuestionAnswerC()));
				QVO.setQuestionAnswerD(StringUtil.entityString(question.getQuestionAnswerD()));
				QVO.setQuestionStem(StringUtil.entityString(question.getQuestionStem()));
				questionList.add(QVO);
			} catch (IllegalAccessException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
		}

		// 插入四分题目
		for (Question question : queFour) {
			QVO = new QuestionVO();
			try {
				BeanUtils.copyProperties(QVO, question);
				QVO.setQuestionAnswerA(StringUtil.entityString(question.getQuestionAnswerA()));
				QVO.setQuestionAnswerB(StringUtil.entityString(question.getQuestionAnswerB()));
				QVO.setQuestionAnswerC(StringUtil.entityString(question.getQuestionAnswerC()));
				QVO.setQuestionAnswerD(StringUtil.entityString(question.getQuestionAnswerD()));
				QVO.setQuestionStem(StringUtil.entityString(question.getQuestionStem()));
				questionList.add(QVO);
			} catch (IllegalAccessException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
		}

		// 插入六分题目
		for (Question question : queSix) {
			QVO = new QuestionVO();
			try {
				BeanUtils.copyProperties(QVO, question);
				QVO.setQuestionAnswerA(StringUtil.entityString(question.getQuestionAnswerA()));
				QVO.setQuestionAnswerB(StringUtil.entityString(question.getQuestionAnswerB()));
				QVO.setQuestionAnswerC(StringUtil.entityString(question.getQuestionAnswerC()));
				QVO.setQuestionAnswerD(StringUtil.entityString(question.getQuestionAnswerD()));
				QVO.setQuestionStem(StringUtil.entityString(question.getQuestionStem()));
				questionList.add(QVO);
			} catch (IllegalAccessException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
		}
	//	int paperID = this.createPaper(questionMap);
	//	this.createPaperDetail(questionList,paperID);
		return questionList;
	}
	@Override
	public List<QuestionVO> createPaper2(Map<String , Object> map){
		List<QuestionVO> questionList=(List<QuestionVO>) map.get("questionList");
		int paperID = this.createPaper(map);
		this.createPaperDetail(questionList,paperID);
		return null;
		
	}
	public int createPaper(Map<String, Object> questionMap) {
		Paper paper = new Paper();
		paper.setPaperBeginDate((String) questionMap.get("paperBeginDate"));
		paper.setPaperBak2((String) questionMap.get("paperBeginTime"));
		paper.setPaperDifficulty((String) questionMap.get("paperDifficulty"));
		paper.setPaperCreateTime((String) questionMap.get("paperCreateTime"));
		paper.setPaperDeclareRule((String) questionMap.get("paperDeclareRule"));
		paper.setPaperNO((String) questionMap.get("paperNO"));
		paper.setPaperStatus(1);
		paper.setPaperTotalScore(100);
		paper.setPaperTotalTime(90);
		paper.setPaperType((String) questionMap.get("paperType"));
		paper.setTeacherID(Integer.parseInt((String) questionMap
				.get("teacherID")));
		paper.setPaperBak1(Integer.parseInt((String)questionMap.get("paperBak1")));
		return paperDAOImpl.insert(paper);
	}

	public void createPaperDetail(List<QuestionVO> questionList,int paperID) {
//		PaperDetail paperDetail = null;
//		for (int i = 0; i < questionList.size(); i++) {
//			paperDetail = new PaperDetail();
//			paperDetail.setPaperID(paperID);
//			paperDetail.setQuestionID(Integer.parseInt(questionList.get(i)
//					.getQuestionID()));
//			paperDetailDAOImpl.insert(paperDetail);
//		}
		
		List<Map<String, Object>> list=new ArrayList<Map<String,Object>>();
		for (int i = 0; i < questionList.size(); i++) {
			Map<String, Object> map=new HashMap<String, Object>();
			map.put("paperID", paperID);
			map.put("questionID", questionList.get(i).getQuestionID());
			list.add(map);
		}
		paperDetailDAOImpl.batchInsert(list);
	}

	@Override
	public List<QuestionVO> selectAll() {
		List<Question> selectAll = questionDAOImpl.selectAll();
		List<QuestionVO> questionList = new ArrayList<QuestionVO>();
		QuestionVO QVO = null;

		for (Question question : selectAll) {
			QVO = new QuestionVO();
			try {
				BeanUtils.copyProperties(QVO, question);
				QVO.setQuestionAnswerA(StringUtil.entityString(question.getQuestionAnswerA()));
				QVO.setQuestionAnswerB(StringUtil.entityString(question.getQuestionAnswerB()));
				QVO.setQuestionAnswerC(StringUtil.entityString(question.getQuestionAnswerC()));
				QVO.setQuestionAnswerD(StringUtil.entityString(question.getQuestionAnswerD()));
				QVO.setQuestionStem(StringUtil.entityString(question.getQuestionStem()));
				questionList.add(QVO);
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				e.printStackTrace();
			}
		}
		return questionList;
	}

	@Override
	public TeacherVO teacherLogin(Map<String, Object> teacherLoginMap) throws Exception{
		TeacherVO teacherVO = new TeacherVO();
		Teacher teacher = teacherDAOImpl.teacherLogin(teacherLoginMap);
		try {
			BeanUtils.copyProperties(teacherVO, teacher);
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}

		return teacherVO;
	}

	@Override
	public List<TeacherVO> allTeacher() {
		List<TeacherVO> list = new ArrayList<TeacherVO>();
		TeacherVO teacherVO = null;
		Map<String, Object> teacherMap = null;
		List<Teacher> selecTeacher = teacherDAOImpl.selecTeacher(teacherMap);
		for (Teacher e : selecTeacher) {
			teacherVO = new TeacherVO();
			try {
				BeanUtils.copyProperties(teacherVO, e);
				list.add(teacherVO);
			} catch (IllegalAccessException | InvocationTargetException e1) {
				e1.printStackTrace();
			}
		}
		return list;
	}

	/*
	 * public static void main(String[] args) { ApplicationContext ctx=new
	 * ClassPathXmlApplicationContext("classpath:applicationContext.xml");
	 * TeacherService teacherService =
	 * ctx.getBean("teacherServiceImpl",TeacherService.class); Map<String,
	 * Object> currentMap=new HashMap<String, Object>();
	 * currentMap.put("currentTwo", 5); currentMap.put("currentFour", 5);
	 * currentMap.put("currentSix", 5); List<QuestionVO> selectQuestion =
	 * teacherService.selectQuestion(currentMap);
	 * System.out.println(selectQuestion.size()); }
	 */

	@Override
	public List<PaperVO> selectAllPaper() {
		List<PaperVO> listPaperVO = new ArrayList<PaperVO>();
		List<Paper> select = paperDAOImpl.select();

		for (Paper paper : select) {
			PaperVO pvo=new PaperVO();
			int id = paper.getTeacherID();
			Map<String, Object> teacherMap = new HashMap<String, Object>();
			teacherMap.put("teacherID", id);
			List<Teacher> listTeacher = teacherDAOImpl.selecTeacher(teacherMap);
			try {
				BeanUtils.copyProperties(pvo, paper);
				pvo.setTeacherName(listTeacher.get(0).getTeacherName());
				listPaperVO.add(pvo);
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				e.printStackTrace();
			}		
		}
		return listPaperVO;
	}

	@Override
	public List<ScoreVO> selectAllScore() {
		List<ScoreVO> svolist=new ArrayList<ScoreVO>();
		Map<String,Object> scoreMap=new HashMap<String,Object>();
		List<Card> slist = cardDAOImpl.selectList(scoreMap);
		for(Card c:slist){
			ScoreVO svo = new ScoreVO();
			svo.setScoreID(c.getCardID()+"");
			svo.setStudentID(c.getStudentID()+"");
			Map<String, Object> mymap=new HashMap<String,Object>();
			mymap.put("studentID", c.getStudentID());
			svo.setStudentName(studentDAOImpl.selectOne(mymap).getSutdentName());
			svo.setScore(c.getCardScore()+"");
			mymap.clear();
			mymap.put("teacherID", c.getTeacherID());
			svo.setTeacherName(teacherDAOImpl.selecTeacher(mymap).get(0).getTeacherName());
			mymap.clear();
			mymap.put("paperID", c.getPaperID());
			svo.setPaperType(paperDAOImpl.select(mymap).get(0).getPaperType());
			svo.setPaperDate(paperDAOImpl.select(mymap).get(0).getPaperBeginDate());
			svolist.add(svo);
		}
		return svolist;
	}
	
	@Override
	public List<MajorVO> allMajors() {
		List<MajorVO> list=new ArrayList<MajorVO>();
		MajorVO majorVO=null;
		List<Major> majors = majorDAOImpl.selectAllMajors();
		for (Major e:majors) {
			try {
				majorVO=new MajorVO();
				BeanUtils.copyProperties(majorVO, e);
				list.add(majorVO);
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			} catch (InvocationTargetException e1) {
				e1.printStackTrace();
			}
		}
		return list;
	}
	
	
	
	@Override
	public List<ScoreByClassVO> allScoreByClass(Map<String, Object> map){
		List<ScoreByClassVO> slist=new ArrayList<ScoreByClassVO>();
		String paperNO=(String) map.get("paperNO");
		PaperVO paperVO=new PaperVO();
		List<StudentVO> studentVO=new ArrayList<StudentVO>();
		Paper paper=paperDAOImpl.selectPaperByNO(map);
		map.put("majorID",paper.getPaperBak1());
		Major ma=majorDAOImpl.selectOne2(map);
		map.put("studentClass",ma.getMajorName());
		List<Student> student=studentDAOImpl.selectAllByClass(map);
		try {
			BeanUtils.copyProperties(paperVO, paper);
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		Map<String, Object> map2=new HashMap<String, Object>();
		map2.put("teacherID", paperVO.getTeacherID());
		List<Teacher> tlist=teacherDAOImpl.selecTeacher(map2);
		TeacherVO tvo=new TeacherVO();
		for(Teacher tt:tlist){
			try {
				BeanUtils.copyProperties(tvo, tt);
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				e.printStackTrace();
			}
		}
		for(Student s:student){
			StudentVO svo=new StudentVO();
			try {
				BeanUtils.copyProperties(svo,s);
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				e.printStackTrace();
			}
			studentVO.add(svo);
		}
		
		for(StudentVO svo:studentVO){
			Map<String, Object> map1=new HashMap<String, Object>();
			map1.put("studentID",svo.getStudentID());
			map1.put("paperID",paperVO.getPaperID());
			Card card=cardDAOImpl.selectOne(map1);
			if(card!=null){	
			CardVO cvo=new CardVO();
			try {
				BeanUtils.copyProperties(cvo, card);
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				e.printStackTrace();
			}
			
			ScoreByClassVO scvo=new ScoreByClassVO();
			scvo.setPaperDeclareRule(paperVO.getPaperDeclareRule());
			scvo.setPaperDate(paperVO.getPaperCreateTime());
			scvo.setPaperDifficulty(paperVO.getPaperDifficulty());
			scvo.setPaperNO(paperVO.getPaperNO());
			scvo.setPaperType(paperVO.getPaperType());
			scvo.setScore(cvo.getCardScore());
			scvo.setStudentName(svo.getSutdentName());
			scvo.setStudentNO(svo.getStudentNo());
			scvo.setStudentClass(svo.getStudentClass());
			scvo.setTeacherName(tvo.getTeacherName());
			slist.add(scvo);
			}
		}
		return slist;
		
	}
	/*public static void main(String[] args) {
		ApplicationContext ctx=new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
		TeacherService ts =ctx.getBean("teacherServiceImpl",TeacherService.class);
		List<ScoreVO> svolist = ts.selectAllScore();
		for(ScoreVO s:svolist){
			System.out.println(s);
		}
	}*/

	@Override
	public int upadteQuestionService(Map<String, Object> map){
		return questionDAOImpl.upadteQuestion(map);
	}

}
