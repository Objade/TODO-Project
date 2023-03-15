package toDoList;

import java.util.Date;

public class Todo {
	private int idx;
	private String work;
	private String date;
	private Boolean done;
	
	public Todo() {
		
	}
	
	public Todo(int idx, String work, String date, Boolean done) {
		this.idx = idx;
		this.work = work;
		this.date = date;
		this.done = done;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getWork() {
		return work;
	}

	public void setWork(String work) {
		this.work = work;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public Boolean getDone() {
		return done;
	}

	public void setDone(Boolean done) {
		this.done = done;
	}
	
	
	
	
}
