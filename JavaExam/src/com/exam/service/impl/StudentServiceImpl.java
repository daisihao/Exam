package com.exam.service.impl;

import java.lang.reflect.InvocationTargetException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.BeanUtils;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.exam.dao.MajorDAO;
import com.exam.dao.CardDAO;
import com.exam.dao.CardDetailDAO;
import com.exam.dao.PaperDAO;
import com.exam.dao.PaperDetailDAO;
import com.exam.dao.ScoreDAO;
import com.exam.dao.StudentDAO;
import com.exam.dao.SubjectinfoDAO;
import com.exam.dao.TeacherDAO;
import com.exam.entity.Major;
import com.exam.entity.Card;
import com.exam.entity.CardDetail;
import com.exam.entity.Paper;
import com.exam.entity.Question;
import com.exam.entity.Score;
import com.exam.entity.Student;
import com.exam.service.StudentService;
import com.exam.util.StringUtil;
import com.exam.view.CardDetailVO;
import com.exam.view.CardVO;
import com.exam.view.PaperVO;
import com.exam.view.QuestionVO;
import com.exam.view.ScoreRankVO;
import com.exam.view.ScoreVO;
import com.exam.view.StudentVO;

public class StudentServiceImpl implements StudentService {
	private StudentDAO studentDAOImpl;
	private PaperDetailDAO PaperDetailDAOImpl;
	private ScoreDAO scoreDAOImpl;// 学生成绩
	private SubjectinfoDAO subjectinfoDAOImpl;
	private TeacherDAO teacherDAOImpl;
	private PaperDAO paperDAOImpl;
	private MajorDAO majorDAOImpl;
	private CardDetailDAO cardDetailDAOImpl;

	public void setCardDetailDAOImpl(CardDetailDAO cardDetailDAOImpl) {
		this.cardDetailDAOImpl = cardDetailDAOImpl;
	}

	public void setMajorDAOImpl(MajorDAO majorDAOImpl) {
		this.majorDAOImpl = majorDAOImpl;
	}

	private CardDAO cardDAOImpl;

	public void setCardDAOImpl(CardDAO cardDAOImpl) {
		this.cardDAOImpl = cardDAOImpl;
	}

	public void setPaperDAOImpl(PaperDAO paperDAOImpl) {
		this.paperDAOImpl = paperDAOImpl;
	}

	public StudentDAO getStudentDAOImpl() {
		return studentDAOImpl;
	}

	public void setStudentDAOImpl(StudentDAO studentDAOImpl) {
		this.studentDAOImpl = studentDAOImpl;
	}

	@Override
	public StudentVO studentLogin(Map<String, Object> studentLoginMap) throws Exception {
		StudentVO studentVo = new StudentVO();
		Student student = studentDAOImpl.studentLogin(studentLoginMap);
		try {
			org.apache.commons.beanutils.BeanUtils.copyProperties(studentVo, student);
		} catch (IllegalAccessException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		return studentVo;
	}

	public void setPaperDetailDAOImpl(PaperDetailDAO paperDetailDAOImpl) {
		PaperDetailDAOImpl = paperDetailDAOImpl;
	}

	public void setScoreDAOImpl(ScoreDAO scoreDAOImpl) {
		this.scoreDAOImpl = scoreDAOImpl;
	}

	public void setSubjectinfoDAOImpl(SubjectinfoDAO subjectinfoDAOImpl) {
		this.subjectinfoDAOImpl = subjectinfoDAOImpl;
	}

	public void setTeacherDAOImpl(TeacherDAO teacherDAOImpl) {
		this.teacherDAOImpl = teacherDAOImpl;
	}

	@Override

	public Map<Integer, QuestionVO> selctPaper(Map<String, Object> map) {

		// TODO Auto-generated method stub
		int i = 1;
		Map<Integer, QuestionVO> vomap = new HashMap<Integer, QuestionVO>();
		List<Question> list = new ArrayList<Question>();
		list = PaperDetailDAOImpl.selectPaper(map);
		for (Question question : list) {
			QuestionVO qvo = new QuestionVO();
			try {
				org.apache.commons.beanutils.BeanUtils.copyProperties(qvo, question);
				qvo.setQuestionAnswerA(StringUtil.entityString(question.getQuestionAnswerA()));
				qvo.setQuestionAnswerB(StringUtil.entityString(question.getQuestionAnswerB()));
				qvo.setQuestionAnswerC(StringUtil.entityString(question.getQuestionAnswerC()));
				qvo.setQuestionAnswerD(StringUtil.entityString(question.getQuestionAnswerD()));
				qvo.setQuestionStem(StringUtil.entityString(question.getQuestionStem()));
				vomap.put(i, qvo);
				i++;
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return vomap;
	}

	@Override
	public List<ScoreVO> findScoreBy(Map<String, Object> map) {
		List<ScoreVO> svolist = new ArrayList<ScoreVO>();
		List<Card> clist = cardDAOImpl.selectList(map);
		for (Card c : clist) {
			ScoreVO svo = new ScoreVO();
			svo.setScoreID(c.getCardID() + "");
			svo.setStudentID(c.getStudentID() + "");
			Map<String, Object> mymap = new HashMap<String, Object>();
			mymap.put("studentID", c.getStudentID());
			svo.setStudentName(studentDAOImpl.selectOne(mymap).getSutdentName());
			svo.setScore(c.getCardScore() + "");
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
	public List<StudentVO> allStudent() {
		List<StudentVO> list = new ArrayList<StudentVO>();
		StudentVO vo = null;
		List<Student> students = studentDAOImpl.selectAll();
		for (Student e : students) {
			vo = new StudentVO();
			try {
				org.apache.commons.beanutils.BeanUtils.copyProperties(vo, e);
				if (vo.getStudentAccount() == null) {
					vo.setStudentAccount("无");
				}
				list.add(vo);
			} catch (IllegalAccessException | InvocationTargetException e1) {
				e1.printStackTrace();
			}
		}
		return list;
	}

	@Override
	public List<PaperVO> SomePaper(Map<String, Object> map) {
		Date currentTime = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat formatter2 = new SimpleDateFormat("HH:mm:ss");
		String dateString = formatter.format(currentTime);
		String dateString2 = formatter2.format(currentTime);
		List<PaperVO> listpaVO = new ArrayList<PaperVO>();
		PaperVO pvo = null;
		Student student = studentDAOImpl.selectOne(map);
		String studentClass = student.getStudentClass();
		int studentID = student.getStudentID();
		Map<String, Object> map3 = new HashMap<String, Object>();
		map3.put("majorName", studentClass);
		Major major = majorDAOImpl.selectOne(map3);
		int id = major.getMajorID();
		Map<String, Object> map2 = new HashMap<String, Object>();
		map2.put("paperBak1", id);
		List<Paper> list = paperDAOImpl.select(map2);
		for (Paper paper : list) {
			String endTime = null;
			String deadLine = null;
			pvo = new PaperVO();
			try {
				org.apache.commons.beanutils.BeanUtils.copyProperties(pvo, paper);

				int paperID = paper.getPaperID();
				Map<String, Object> map4 = new HashMap<String, Object>();
				map4.put("paperID", paperID);
				map4.put("studentID", studentID);
				Card one = cardDAOImpl.selectOne(map4);

				String paperBeginDate = paper.getPaperBeginDate().substring(0, 10);
				String paperBak2 = paper.getPaperBak2();

				String hou = paperBak2.substring(0, 2);
				String min = paperBak2.substring(3, 5);
				String sec = paperBak2.substring(6, 8);
				int hou1 = Integer.parseInt(hou);
				int min1 = Integer.parseInt(min);
				int sec1 = Integer.parseInt(sec);

				int hou2 = Integer.parseInt(hou);
				int min2 = Integer.parseInt(min);
				int sec2 = Integer.parseInt(sec);

				min1 = min1 + 15;
				if (min1 >= 60) {
					hou1 = hou1 + 1;
					min1 = min1 - 60;
				}
				if (hou1 < 10 && min1 < 10 && sec1 < 10) {
					endTime = ("0" + hou1 + ":" + "0" + min1 + ":" + "0" + sec1);
				}
				if (hou1 < 10 && min1 < 10 && sec1 >= 10) {
					endTime = ("0" + hou1 + ":" + "0" + min1 + ":" + sec1);
				}
				if (hou1 < 10 && min1 >= 10 && sec1 < 10) {
					endTime = ("0" + hou1 + ":" + min1 + ":" + "0" + sec1);
				}
				if (hou1 < 10 && min1 >= 10 && sec1 >= 10) {
					endTime = ("0" + hou1 + ":" + min1 + ":" + sec1);
				}
				if (hou1 >= 10 && min1 < 10 && sec1 < 10) {
					endTime = (hou1 + ":" + "0" + min1 + ":" + "0" + sec1);
				}
				if (hou1 >= 10 && min1 < 10 && sec1 >= 10) {
					endTime = (hou1 + ":" + "0" + min1 + ":" + sec1);
				}
				if (hou1 >= 10 && min1 >= 10 && sec1 < 10) {
					endTime = (hou1 + ":" + min1 + ":" + "0" + sec1);
				}
				if (hou1 >= 10 && min1 >= 10 && sec1 >= 10) {
					endTime = (hou1 + ":" + min1 + ":" + sec1);
				}

				min2 = min2 + 90;
				if (60 <= min2 && min2 < 120) {
					hou2 = hou2 + 1;
					min2 = min2 - 60;
				}
				if (120 <= min2 && min2 <= 180) {
					hou2 = hou2 + 2;
					min2 = min2 - 120;
				}
				if (hou2 < 10 && min2 < 10 && sec2 < 10) {
					deadLine = ("0" + hou2 + ":" + "0" + min2 + ":" + "0" + sec2);
				}
				if (hou2 < 10 && min2 < 10 && sec2 >= 10) {
					deadLine = ("0" + hou2 + ":" + "0" + min2 + ":" + sec2);
				}
				if (hou2 < 10 && min2 >= 10 && sec2 < 10) {
					deadLine = ("0" + hou2 + ":" + min2 + ":" + "0" + sec2);
				}
				if (hou2 < 10 && min2 >= 10 && sec2 >= 10) {
					deadLine = ("0" + hou2 + ":" + min2 + ":" + sec2);
				}
				if (hou2 >= 10 && min2 < 10 && sec2 < 10) {
					deadLine = (hou2 + ":" + "0" + min2 + ":" + "0" + sec2);
				}
				if (hou2 >= 10 && min2 < 10 && sec2 >= 10) {
					deadLine = (hou2 + ":" + "0" + min2 + ":" + sec2);
				}
				if (hou2 >= 10 && min2 >= 10 && sec2 < 10) {
					deadLine = (hou2 + ":" + min2 + ":" + "0" + sec2);
				}
				if (hou2 >= 10 && min2 >= 10 && sec2 >= 10) {
					deadLine = (hou2 + ":" + min2 + ":" + sec2);
				}

				pvo.setDeadLine(deadLine);
				pvo.setIsExist(one);
				pvo.setEndTime(endTime);
				pvo.setPaperBeginDate(paperBeginDate);
				pvo.setCurrentTime(dateString2);
				pvo.setCurrentDate(dateString);
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			listpaVO.add(pvo);
		}
		return listpaVO;
	}

	@Override
	public void studentChangePwd(Map<String, Object> map) {
		studentDAOImpl.studentChangePwd(map);
	}

	@Override
	public int insertScore(Map<String, Object> map) {
		Card card = new Card();
		card.setPaperID(Integer.parseInt(map.get("paperID") + ""));
		card.setStudentID(Integer.parseInt(map.get("studentID") + ""));
		card.setCardScore(Integer.parseInt(map.get("score") + ""));
		Map<String, Object> mymap = new HashMap<String, Object>();
		mymap.put("paperID", card.getPaperID());
		card.setTeacherID(paperDAOImpl.select(mymap).get(0).getTeacherID());
		card.setCardStatus(0);
		card.setCardbak1(0);
		card.setCardbak2(null);
		card.setCardbak3(null);
		cardDAOImpl.insert(card);
		return 1;
	}

	@Override
	public void insertList(String[] array, int paperID, int studentID, String[] array2) {
		List<Map<String, Object>> list = new ArrayList<>();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("paperID", paperID);
		map.put("studentID", studentID);
		Card card = cardDAOImpl.selectOne(map);
		int CARD_ID = card.getCardID();
		for (int i = 0; i < array.length; i++) {
			Map<String, Object> mymap = new HashMap<String, Object>();
			mymap.put("CARD_ID", CARD_ID);
			mymap.put("CARD_ANSWER", array[i]);
			mymap.put("TRUE_ANSWER", array2[i]);
			list.add(mymap);
		}
		cardDetailDAOImpl.insertCardDetail(list);
	}

	@Override
	public PaperVO selectByID(Map<String, Object> map) {
		PaperVO pvo = new PaperVO();
		Paper paper = paperDAOImpl.selectByID(map);
		try {
			org.apache.commons.beanutils.BeanUtils.copyProperties(pvo, paper);
		} catch (IllegalAccessException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		return pvo;
	}

	/*
	 * public static void main(String[] args) { ApplicationContext atx=new
	 * ClassPathXmlApplicationContext("classpath:applicationContext.xml");
	 * StudentService bean =
	 * atx.getBean("studentServiceImpl",StudentService.class);
	 * Map<String,Object> map=new HashMap<String,Object>(); map.put("paperBak1",
	 * 0); Map<Integer, QuestionVO> selctPaper = bean.selctPaper(map);
	 * System.out.println(selctPaper.get(12).getQuestionAnswerB());
	 * List<PaperVO> somePaper = bean.SomePaper(map);
	 * System.out.println(somePaper.size()); map.put("studentID", 30);
	 * List<ScoreVO> svolist = bean.findScoreBy(map); for(ScoreVO s:svolist){
	 * System.out.println(s); } map.put("paperID", 38); map.put("studentID",
	 * 36); map.put("teacherID", 5); map.put("cardStatus", 0); map.put("score",
	 * 86); map.put("cardbak1", 0); map.put("cardbak2", null);
	 * map.put("cardbak3", null); bean.insertScore(map); String[] array=new
	 * String[]{"A","D","B","D","D","A","B","C","B","D","D","B","D","D","A","B",
	 * "C","B","D","D","D","A"}; bean.insertList(array, 46, 36); }
	 */

	public static void main(String[] args) {
		ApplicationContext atx = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
		StudentService bean = atx.getBean("studentServiceImpl", StudentService.class);
		Map<String, Object> map = new HashMap<String, Object>();
		/*map.put("studentID", 30);
		List<PaperVO> paper = bean.SomePaper(map);
		System.out.println(paper.size());*/
		/*map.put("cardID", 310);
		CardVO cardVO = bean.selectOne(map);
		map.clear();
		map.put("paperID", cardVO.getPaperID());
		List<ScoreRankVO> slist = bean.searchScoreRank(map);
		for(ScoreRankVO s:slist){
			System.out.println(s);
		}*/
		/*
		 * map.put("cardID", 294); List<CardDetailVO> cdvolist =
		 * bean.searchCardDetailBy(map); for(CardDetailVO c:cdvolist){
		 * System.out.println(c); }
		 */
	}

	@Override
	public List<CardDetailVO> searchCardDetailBy(Map<String, Object> map) {
		List<CardDetailVO> cdvolist = new ArrayList<>();
		List<CardDetail> cdlist = cardDetailDAOImpl.selectCardDetailList(map);
		for (int i = 0; i < cdlist.size(); i++) {
			CardDetailVO cvo = new CardDetailVO();
			cvo.setCardno((i + 1) + "");
			String studentAns = cdlist.get(i).getCardAnswer();
			String trueAns = cdlist.get(i).getTrueAnswer();
			cvo.setStudentAns(studentAns);
			cvo.setTrueAns(trueAns);
			if (studentAns.equals(trueAns)) {
				cvo.setCheck("✔");
			} else {
				cvo.setCheck("✘");
			}
			cdvolist.add(cvo);
		}
		return cdvolist;
	}

	@Override
	public void loginStatus(Map<String, Object> map) {
		studentDAOImpl.loginStatus(map);
	}

	@Override
	public int checkIP(Map<String, Object> map) {
		return studentDAOImpl.checkIP(map);
	}

	@Override
	public List<ScoreRankVO> searchScoreRank(Map<String, Object> map) {
		List<ScoreRankVO> srvolist = new ArrayList<>();
		List<Card> clist = cardDAOImpl.scoreRank(map);
		for (int i = 0; i < clist.size(); i++) {
			ScoreRankVO srvo = new ScoreRankVO();
			srvo.setScore(clist.get(i).getCardScore() + "");// 学生成绩
			srvo.setSortno("第" + (i + 1) + "名");// 学生排名
			Map<String, Object> mymap = new HashMap<String, Object>();
			mymap.put("paperID", clist.get(i).getPaperID());
			String s1=paperDAOImpl.searchPaper(mymap).getPaperBeginDate().substring(0, 10);
			String s2=paperDAOImpl.searchPaper(mymap).getPaperBak2();
			srvo.setPaperBeginDate(s1+" "+s2);// 考试开始日期
			srvo.setPaperDeclareRule(paperDAOImpl.searchPaper(mymap).getPaperDeclareRule());// 考试科目
			mymap.clear();
			mymap.put("studentID", clist.get(i).getStudentID());
			srvo.setStudentName(studentDAOImpl.selectOne(mymap).getSutdentName());// 学生姓名
			srvo.setStudentno(studentDAOImpl.selectOne(mymap).getStudentNo());// 学生学号
			srvolist.add(srvo);
		}
		return srvolist;
	}

	@Override
	public List<PaperVO> studentPaper(Map<String, Object> map) {
		Date currentTime = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat formatter2 = new SimpleDateFormat("HH:mm:ss");
		String dateString = formatter.format(currentTime);
		String dateString2 = formatter2.format(currentTime);
		List<PaperVO> listpaVO = new ArrayList<PaperVO>();
		PaperVO pvo = null;
		Student student = studentDAOImpl.selectOne(map);
		String studentClass = student.getStudentClass();
		int studentID = student.getStudentID();
		Map<String, Object> map3 = new HashMap<String, Object>();
		map3.put("majorName", studentClass);
		Major major = majorDAOImpl.selectOne(map3);
		int id = major.getMajorID();
		Map<String, Object> map2 = new HashMap<String, Object>();
		map2.put("paperBak1", id);
		List<Paper> list = paperDAOImpl.selectStu(map2);
		for (Paper paper : list) {
			String endTime = null;
			String deadLine = null;
			String exist=null;
			pvo = new PaperVO();
			try {
				org.apache.commons.beanutils.BeanUtils.copyProperties(pvo, paper);

				int paperID = paper.getPaperID();
				Map<String, Object> map4 = new HashMap<String, Object>();
				map4.put("paperID", paperID);
				map4.put("studentID", studentID);
				Card one = cardDAOImpl.selectOne(map4);
				
				if(one==null){
					exist="未参加该考试";
				}else{
					exist="已完成该考试";
				}

				String paperBeginDate = paper.getPaperBeginDate().substring(0, 10);
				String paperBak2 = paper.getPaperBak2();

				String hou = paperBak2.substring(0, 2);
				String min = paperBak2.substring(3, 5);
				String sec = paperBak2.substring(6, 8);
				int hou1 = Integer.parseInt(hou);
				int min1 = Integer.parseInt(min);
				int sec1 = Integer.parseInt(sec);

				int hou2 = Integer.parseInt(hou);
				int min2 = Integer.parseInt(min);
				int sec2 = Integer.parseInt(sec);

				min1 = min1 + 15;
				if (min1 >= 60) {
					hou1 = hou1 + 1;
					min1 = min1 - 60;
				}
				if (hou1 < 10 && min1 < 10 && sec1 < 10) {
					endTime = ("0" + hou1 + ":" + "0" + min1 + ":" + "0" + sec1);
				}
				if (hou1 < 10 && min1 < 10 && sec1 >= 10) {
					endTime = ("0" + hou1 + ":" + "0" + min1 + ":" + sec1);
				}
				if (hou1 < 10 && min1 >= 10 && sec1 < 10) {
					endTime = ("0" + hou1 + ":" + min1 + ":" + "0" + sec1);
				}
				if (hou1 < 10 && min1 >= 10 && sec1 >= 10) {
					endTime = ("0" + hou1 + ":" + min1 + ":" + sec1);
				}
				if (hou1 >= 10 && min1 < 10 && sec1 < 10) {
					endTime = (hou1 + ":" + "0" + min1 + ":" + "0" + sec1);
				}
				if (hou1 >= 10 && min1 < 10 && sec1 >= 10) {
					endTime = (hou1 + ":" + "0" + min1 + ":" + sec1);
				}
				if (hou1 >= 10 && min1 >= 10 && sec1 < 10) {
					endTime = (hou1 + ":" + min1 + ":" + "0" + sec1);
				}
				if (hou1 >= 10 && min1 >= 10 && sec1 >= 10) {
					endTime = (hou1 + ":" + min1 + ":" + sec1);
				}

				min2 = min2 + 90;
				if (60 <= min2 && min2 < 120) {
					hou2 = hou2 + 1;
					min2 = min2 - 60;
				}
				if (120 <= min2 && min2 <= 180) {
					hou2 = hou2 + 2;
					min2 = min2 - 120;
				}
				if (hou2 < 10 && min2 < 10 && sec2 < 10) {
					deadLine = ("0" + hou2 + ":" + "0" + min2 + ":" + "0" + sec2);
				}
				if (hou2 < 10 && min2 < 10 && sec2 >= 10) {
					deadLine = ("0" + hou2 + ":" + "0" + min2 + ":" + sec2);
				}
				if (hou2 < 10 && min2 >= 10 && sec2 < 10) {
					deadLine = ("0" + hou2 + ":" + min2 + ":" + "0" + sec2);
				}
				if (hou2 < 10 && min2 >= 10 && sec2 >= 10) {
					deadLine = ("0" + hou2 + ":" + min2 + ":" + sec2);
				}
				if (hou2 >= 10 && min2 < 10 && sec2 < 10) {
					deadLine = (hou2 + ":" + "0" + min2 + ":" + "0" + sec2);
				}
				if (hou2 >= 10 && min2 < 10 && sec2 >= 10) {
					deadLine = (hou2 + ":" + "0" + min2 + ":" + sec2);
				}
				if (hou2 >= 10 && min2 >= 10 && sec2 < 10) {
					deadLine = (hou2 + ":" + min2 + ":" + "0" + sec2);
				}
				if (hou2 >= 10 && min2 >= 10 && sec2 >= 10) {
					deadLine = (hou2 + ":" + min2 + ":" + sec2);
				}
				pvo.setExist(exist);
				pvo.setDeadLine(deadLine);
				pvo.setIsExist(one);
				pvo.setEndTime(endTime);
				pvo.setPaperBeginDate(paperBeginDate);
				pvo.setCurrentTime(dateString2);
				pvo.setCurrentDate(dateString);
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			listpaVO.add(pvo);
		}
		return listpaVO;
	}

	@Override
	public CardVO selectOne(Map<String, Object> cardMap) {
		CardVO cardVO = new CardVO();
		Card card = cardDAOImpl.selectOne(cardMap);
		try {
			org.apache.commons.beanutils.BeanUtils.copyProperties(cardVO, card);
		} catch (IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
		}
		return cardVO;
	}


	@Override
	public StudentVO selectStudentByID(Map<String, Object> map2) {
		StudentVO studentVO=new StudentVO();
		Student selectOne = studentDAOImpl.selectOne(map2);
		try {
			org.apache.commons.beanutils.BeanUtils.copyProperties(studentVO, selectOne);
		} catch (IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
		}
		return studentVO;
	}


	//学生修改信息
	@Override
	public void updateStudentDetail(Map<String, Object> map) {
		studentDAOImpl.updateStudentDetail(map);
	}
	
	
	

}
