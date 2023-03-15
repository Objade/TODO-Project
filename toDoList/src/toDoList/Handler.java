package toDoList;

import java.util.ArrayList;


public class Handler {
	
	private ArrayList<Todo> list = new ArrayList<Todo>();
	private int idx;
	
	private int nextIdx() {
		++idx;
		return idx;
	}
	
	public Handler() {
		if(list.isEmpty()) {
			list.add(new Todo(nextIdx(), "테스트1", "2022-07-05", true));
			list.add(new Todo(nextIdx(), "테스트2", "2022-11-07", true));
		}
	}
	
	public ArrayList<Todo> getList() {
		return list;
	}
	
	public void insert(Todo ob) {
		ob.setIdx(nextIdx());
		list.add(ob);	
	}
	
	public void delete(int idx) {
		list.removeIf(ob -> ob.getIdx() == idx);
	}
	
	public Todo getItem(int idx) {
		Todo item = null;
		
		for(Todo to : list) {
			item = to;
			break;
		}
		
		return item;
	}
	
	
	public void update(Todo to) {
		int index = -1;
		for(int i = 0; i < list.size(); i++) {
			if(list.get(i).getIdx() == to.getIdx()) {
				index = i;
				break;
			}
		}
		list.set(index, to);
		
	}
	
	
	
	
	
	
	
}
