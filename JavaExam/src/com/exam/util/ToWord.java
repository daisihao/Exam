package com.exam.util;

import java.awt.Color;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import clover.com.lowagie.text.Document;
import clover.com.lowagie.text.Element;

import com.exam.dao.CardDAO;
import com.exam.entity.Card;
import com.exam.service.StudentService;
import com.exam.view.ScoreRankVO;
import com.itextpdf.text.Font;

import clover.com.lowagie.text.PageSize;
import clover.com.lowagie.text.Paragraph;
import clover.com.lowagie.text.Table;

import com.itextpdf.text.pdf.BaseFont;

import clover.com.lowagie.text.rtf.RtfWriter2;

public class ToWord {

	// 表头
	//public static final String[] tableHeader = { "考试日期","试卷类型", "分数","排名"};
	//public static final String[] tableContent = { "2015-08-15","机试","99","1"};
	// 数据表字段数
	private static final int colNumber = 6;
	// 表格的设置
	private static final int spacing = 2;
	private static final int padding = 2;

	// 导出到word文档
	public static void exportWodDocument(List<String[]> list) {
		// 创建word文档PageSize.A4,表示用什么型号的纸
		Document document = new Document(PageSize.A4);
		try {
			RtfWriter2.getInstance(document, new FileOutputStream("D:\\成绩排名.doc"));
			document.open();
			// 设置中文字体大小
			BaseFont bfChinese = BaseFont.createFont("STSong-Light", "UniGB-UCS2-H", BaseFont.NOT_EMBEDDED);
			Font fontChinese = new Font(bfChinese, 16, Font.NORMAL);
			// 标题字体风格  
	        //Font ThemeFont = new Font(bfChinese, 24, Font.BOLD);  
	        // 创建主题的Phrases对象  
	        Paragraph theme = new Paragraph("学生成绩排名表");
	        theme.setAlignment(Element.ALIGN_CENTER);
	        document.add(theme); 
			// 创建有8列的表格
			Table datatable = new Table(colNumber);
			// 每列宽度
			int[] cellsWidth = { 3, 2, 3,3, 2, 2};
			datatable.setWidths(cellsWidth);
			datatable.setPadding(padding);
			datatable.setBorderWidth(spacing);
			datatable.setBackgroundColor(Color.ORANGE);
			datatable.setDefaultHorizontalAlignment(Element.ALIGN_CENTER);
			// 添加表头元素
			String[] tableHeader = { "学号","姓名","考试科目","考试时间","分数","排名"};
			for (int i = 0; i < colNumber; i++) {
				datatable.addCell(new Paragraph(tableHeader[i]));
			}
			// 添加子元素
				// 添加子元素
			for (String[] string : list) {
				for (int j = 0; j < colNumber; j++) {
					datatable.addCell(new Paragraph(string[j]));
				}
			}
			document.add(datatable);

		} catch (Exception e) {
			e.printStackTrace();
		}
		document.close();

	}

	public static void main(String[] args) throws Exception {
		//String[] tableContent = { "201226240204","范志新","2015","java基础","99","1"};
		ApplicationContext atx = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
		StudentService bean = atx.getBean("studentServiceImpl", StudentService.class);
		CardDAO cdao = atx.getBean("cardDAOImpl", CardDAO.class);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cardID", 310);
		Card card = cdao.selectOne(map);
		map.clear();
		map.put("paperID", card.getPaperID());
		List<ScoreRankVO> slist = bean.searchScoreRank(map);
		System.out.println(slist.size());
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
		//String[] tableContent=new String[];
		exportWodDocument(ls);
	}
}
