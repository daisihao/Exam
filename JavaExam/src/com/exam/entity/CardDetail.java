package com.exam.entity;

import java.io.Serializable;

/**
 * 答题明细实体
 * @author czg
 *
 */
public class CardDetail implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 5790695262823807048L;
	//答题明细编号
	private int cardDetailID;
	//试卷编号
	private int cardID;
	//试卷所有题目答案
	private String cardAnswer;
	//试卷正确答案
	private String trueAnswer;
	
	public CardDetail() {
	}

	public CardDetail(int cardDetailID, int cardID, String cardAnswer, String trueAnswer) {
		super();
		this.cardDetailID = cardDetailID;
		this.cardID = cardID;
		this.cardAnswer = cardAnswer;
		this.trueAnswer = trueAnswer;
	}

	public int getCardDetailID() {
		return cardDetailID;
	}

	public void setCardDetailID(int cardDetailID) {
		this.cardDetailID = cardDetailID;
	}

	public int getCardID() {
		return cardID;
	}

	public void setCardID(int cardID) {
		this.cardID = cardID;
	}

	public String getCardAnswer() {
		return cardAnswer;
	}

	public void setCardAnswer(String cardAnswer) {
		this.cardAnswer = cardAnswer;
	}
	
	public String getTrueAnswer() {
		return trueAnswer;
	}

	public void setTrueAnswer(String trueAnswer) {
		this.trueAnswer = trueAnswer;
	}

	@Override
	public String toString() {
		return "CardDetail [cardDetailID=" + cardDetailID + ", cardID=" + cardID + ", cardAnswer=" + cardAnswer
				+ ", trueAnswer=" + trueAnswer + "]";
	}
}
