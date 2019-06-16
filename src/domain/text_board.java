package domain;

import java.text.SimpleDateFormat;
import java.util.Date;

public class text_board {
	private String name;
	private String title;
	private int score;
	private String message;
	private String good_id;
	private String date;
	

	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getGood_id() {
		return good_id;
	}
	public void setGood_id(String good_id) {
		this.good_id = good_id;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public	int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	
}
