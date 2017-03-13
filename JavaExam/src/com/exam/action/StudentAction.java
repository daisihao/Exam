package com.exam.action;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.exam.service.StudentService;
import com.exam.util.MD5;
import com.exam.util.MacAddress;
import com.exam.util.MailUtil;
import com.exam.util.ToWord;
import com.exam.view.CardDetailVO;
import com.exam.view.CardVO;
import com.exam.view.PaperVO;
import com.exam.view.QuestionVO;
import com.exam.view.ScoreRankVO;
import com.exam.view.ScoreVO;
import com.exam.view.StudentVO;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class StudentAction extends ActionSupport {

	private static final long serialVersionUID = -6284732951667012882L;
	private StudentService studentServiceImpl;

	private String account;
	private String password;
	private String confirm_password;
	private String password_new;
	private List<PaperVO> listPVOA;
	
	public List<PaperVO> getListPVOA() {
		return listPVOA;
	}

	public void setListPVOA(List<PaperVO> listPVOA) {
		this.listPVOA = listPVOA;
	}

	// 所有学生列表
	private List<StudentVO> allStudentList;

	private List<ScoreVO> scoreVOList;// 学生成绩结果
	private String studentID;
	public String getStudentID() {
		return studentID;
	}

	private String studentClass;
	private String today;
	public String getToday() {
		return today;
	}

	public void setToday(String today) {
		this.today = today;
	}

	private List<PaperVO> listPVO;
	private Map<String, Object> ScoreMap = new HashMap<String, Object>();
	private String[] answer;//学生做题答案
	private String[] correctanswer;//试卷参考答案
	
	public void setCorrectanswer(String[] correctanswer) {
		this.correctanswer = correctanswer;
	}

	public void setAnswer(String[] answer) {
		this.answer = answer;
	}

	public List<PaperVO> getListPVO() {
		return listPVO;
	}

	public void setListPVO(List<PaperVO> listPVO) {
		this.listPVO = listPVO;
	}

	public String getStudentClass() {
		return studentClass;
	}

	public void setStudentClass(String studentClass) {
		this.studentClass = studentClass;
	}

	public void setStudentID(String studentID) {
		this.studentID = studentID;
	}

	public List<StudentVO> getAllStudentList() {
		return allStudentList;
	}

	public List<ScoreVO> getScoreVOList() {
		return scoreVOList;

	}

	public void setScoreVOList(List<ScoreVO> scoreVOList) {
		this.scoreVOList = scoreVOList;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	private StudentVO studentVo;

	public void setStudentServiceImpl(StudentService studentServiceImpl) {
		this.studentServiceImpl = studentServiceImpl;
	}

	public StudentVO getStudentVo() {
		return studentVo;
	}

	public void setStudentVo(StudentVO studentVo) {
		this.studentVo = studentVo;
	}

	public String studentLogin() {
		/*String ip = null;
		try {
			ip = MacAddress.getMACAddress(InetAddress.getLocalHost());
		} catch (UnknownHostException e1) {
			// TODO 自动生成的 catch 块
			e1.printStackTrace();
		} catch (Exception e1) {
			// TODO 自动生成的 catch 块
			e1.printStackTrace();
		}*/
		//用户密码校验
		Map<String, Object> studentLoginMap = new HashMap<String, Object>();
		studentLoginMap.put("account", account);
		studentLoginMap.put("password", MD5.GetMD5Code(password));
		try {
			studentVo = studentServiceImpl.studentLogin(studentLoginMap);
			if("0".equals(studentVo.getStudentIsDelete())){
				return "no";
			}
			Map<String, Object> session = ActionContext.getContext().getSession();
			session.put("studentVo", studentVo);
		} catch (Exception e) {
			return "noo";
		}
		//  MAC校验
		Map<String, Object> ipMap = new HashMap<String, Object>();
		ipMap.put("ip", org.apache.struts2.ServletActionContext.getRequest().getRemoteAddr());
		if(studentServiceImpl.checkIP(ipMap)!=0){
			return "success";//测试的时候用success，上线的时候改为ip
		}
		
		//System.out.println(org.apache.struts2.ServletActionContext.getRequest().getRemoteAddr());
		Map<String, Object> m = new HashMap<String, Object>();
		m.put("studentAccount", account);
		m.put("studentIsDelete", 1);//注意修改，1为未登录，0为登录。测试的时候改为1，上线改为0
		m.put("ip",org.apache.struts2.ServletActionContext.getRequest().getRemoteAddr());
		studentServiceImpl.loginStatus(m);
		return "success";
	}
	public String studentExit(){
		Map<String, Object> session = ActionContext.getContext().getSession();
		session.put("studentVo", "");
		Map<String, Object> studentLoginMap = new HashMap<String, Object>();
		studentLoginMap.put("studentAccount", account);
		studentLoginMap.put("studentIsDelete", 1);
		studentLoginMap.put("ip", "");
		System.out.println(studentLoginMap);
		studentServiceImpl.loginStatus(studentLoginMap);
		return "success";
	}

	/* 查找试卷 */
	private Map<Integer, QuestionVO> qmap;
	private String paperID;
	private String score;
	private String paperName;
	
	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	public Map<Integer, QuestionVO> getQmap() {
		return qmap;
	}

	public void setQmap(Map<Integer, QuestionVO> qmap) {
		this.qmap = qmap;
	}

	public String getPaperID() {
		return paperID;
	}

	public void setPaperID(String paperID) {
		this.paperID = paperID;
	}

	public String selectPaperID() {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("paperID", paperID);
		PaperVO selectByID = studentServiceImpl.selectByID(map);
		String paperBeginDate = selectByID.getPaperBeginDate().substring(0,11).replace("-", "/");
		
		String beginTime = selectByID.getPaperBak2();
		String clockTime=paperBeginDate+beginTime;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss"); 
		Date date=null;
		Date canExitDate=null;
		try {
			date=sdf.parse(clockTime);
			canExitDate=sdf.parse(clockTime);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		if (date.getMinutes()<30) {
			date.setMinutes(date.getMinutes()+30);
			date.setHours(date.getHours()+1);
			//canExitDate.setMinutes(canExitDate.getMinutes()+30);
		}else {
			date.setMinutes(date.getMinutes()-30);
			date.setHours(date.getHours()+2);
			//canExitDate.setMinutes(canExitDate.getMinutes()-30);
			//canExitDate.setHours(canExitDate.getHours()+1);
		}
		if(date.getMinutes()<55){
			canExitDate.setMinutes(canExitDate.getMinutes()+5);
		}else{
			canExitDate.setMinutes(canExitDate.getMinutes()-55);
			canExitDate.setHours(canExitDate.getHours()+1);
		}
		String format=sdf.format(date);
		String canExitTime=sdf.format(canExitDate);
		Map<String, Object> session = ActionContext.getContext().getSession();
		session.put("clockTime", format);
		session.put("canExitTime", canExitTime);
		return "success";
	}

	public String selectPaper() {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("paperID", paperID);
		/* System.out.println(paperID); */
		qmap = studentServiceImpl.selctPaper(map);
		return "success";
	}
	
	
	/*
	 *查询指定专业的所有考试 
	 * */
	public String searchSomePaper(){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("studentID", studentID);
		List<PaperVO> listPVO = studentServiceImpl.SomePaper(map);
		Map<String, Object> session = ActionContext.getContext().getSession();
		session.put("listPVO", listPVO);
		return "success";
	}
	

	/*
	 * 学生查找成绩
	 */
	public String searchScore() {
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("studentID", studentID);
		scoreVOList = studentServiceImpl.findScoreBy(map);// 查找该学生所有课程成绩
		//System.out.println(getScoreVOList().size());
		return "success";
	}

	/**
	 * 获得学生列表
	 * 
	 * @return
	 */
	public String AllStudent() {
		allStudentList = studentServiceImpl.allStudent();
		// System.out.println(getAllStudentList().size());
		return "success";
	}
	
	/*
	 * 学生修改密码
	 */
	private Map<String, Object> pwddata = new HashMap<String, Object>();
	public String studentChangePwd(){
		pwddata.put("studentPwd", MD5.GetMD5Code(password_new));
		pwddata.put("studentAccount", account);
		
		pwddata.put("password", MD5.GetMD5Code(password));
		pwddata.put("account", account);
		try {
			StudentVO studentLogin = studentServiceImpl.studentLogin(pwddata);
			if(studentLogin!=null){
				studentServiceImpl.studentChangePwd(pwddata);
				pwddata.put("type", "success");
			}
		} catch (Exception e) {
			pwddata.put("type", "error");
		}
		return "success";
		
	}
	
	public String insertScore(){
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("paperID", paperID);
		map.put("studentID", studentID);
		map.put("score", score);
		//System.out.println(paperID+","+studentID+","+score);
		//System.out.println(answer[0]);
		//System.out.println(correctanswer[0]);
		studentServiceImpl.insertScore(map);
		String[] array = answer[0].split(",");
		String[] array2= correctanswer[0].split(",");
		studentServiceImpl.insertList(array, Integer.parseInt(paperID), Integer.parseInt(studentID),array2);
		ScoreMap.put("type", "success");
		return "success";
	}

	public Map<String, Object> getScoreMap() {
		return ScoreMap;
	}

	public void setScoreMap(Map<String, Object> scoreMap) {
		ScoreMap = scoreMap;
	}

	public String getPaperName() {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("paperID", paperID);
		return studentServiceImpl.selectByID(map).getPaperDeclareRule();
	}

	public void setPaperName(String paperName) {
		/*try {
			paperName =new String(paperName.getBytes("iso-8859-1"),"utf-8");*/
			this.paperName = paperName;
		/*} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} */
	}
	
	public String searchStudentPaper(){
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("studentID", studentID);
	    listPVOA = studentServiceImpl.studentPaper(map);
		//System.out.println(listPVOA);
		return "success";
	}

	/*
	 * 查找学生答题卡详情
	 */
	private String cardID;//答题卡ID
	private List<CardDetailVO> cardDetailList;//答题卡详情集合
	
	public void setCardID(String cardID) {
		this.cardID = cardID;
	}
	
	public String getCardID() {
		return cardID;
	}
	
	public List<CardDetailVO> getCardDetailList() {
		return cardDetailList;
	}

	public void setCardDetailList(List<CardDetailVO> cardDetailList) {
		this.cardDetailList = cardDetailList;
	}

	public String searchCard(){
		Map<String,Object> map=new HashMap<>();
		map.put("cardID", cardID);
		cardDetailList=studentServiceImpl.searchCardDetailBy(map);
		return "success";
	}
	/*
	 * 学生成绩排名
	 */
	public String scoreRank(){
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("cardID", cardID);
		CardVO cardVO = studentServiceImpl.selectOne(map);
		map.clear();
		map.put("paperID", cardVO.getPaperID());
		List<ScoreRankVO> slist = studentServiceImpl.searchScoreRank(map);//通过答题卡ID找到该科目所有学生的成绩排名
		List<String[]> ls=new ArrayList<String[]>();
		for(int i=0;i<slist.size();i++){
			String[] s=new String[6];
			s[0]=slist.get(i).getStudentno();
			s[1]=slist.get(i).getStudentName();
			s[2]=slist.get(i).getPaperDeclareRule();
			s[3]=slist.get(i).getPaperBeginDate();
			s[4]=slist.get(i).getScore();
			s[5]=slist.get(i).getSortno();
			ls.add(s);
		}
		ToWord.exportWodDocument(ls);
		String studentID = cardVO.getStudentID();
		Map<String, Object> map2=new HashMap<String, Object>();
		map2.put("studentID", studentID);
		StudentVO studentVO=studentServiceImpl.selectStudentByID(map2);
		String email=studentVO.getStudentEmail();
		String cardScore = cardVO.getCardScore();
		String examName=slist.get(0).getPaperDeclareRule();
		MailUtil.sendEmail(email, examName, cardScore);
		return "success";
	}
	
	//学生修改信息
	public String updateStudentDetail(){
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("studentAccount", studentVo.getStudentAccount());
		map.put("sutdentName", studentVo.getSutdentName());
		map.put("studentSex",studentVo.getStudentSex());
		map.put("studentAge",studentVo.getStudentAge());
		map.put("studentPhone", studentVo.getStudentPhone());
		map.put("studentCollege",studentVo.getStudentCollege());
		map.put("studentEmail",studentVo.getStudentEmail());
		map.put("studentAddress", studentVo.getStudentAddress());
		map.put("studentNo", studentVo.getStudentNo());
		System.out.println(studentVo.getStudentNo());
		studentServiceImpl.updateStudentDetail(map);
		ScoreMap.put("result", "ok");
		return "ok";		
	}

	public void setConfirm_password(String confirm_password) {
		this.confirm_password = confirm_password;
	}

	public void setPassword_new(String password_new) {
		this.password_new = password_new;
	}

	public Map<String, Object> getPwddata() {
		return pwddata;
	}

	public void setPwddata(Map<String, Object> pwddata) {
		this.pwddata = pwddata;
	}

}
