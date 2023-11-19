package SMMS.user;

public class TodoDtls {
	private int id;
	private String name;
	private String todo;
	private String course;
	private String assignment;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public String getTodo() {
		return todo;
	}
	public String getCourse() {
		return course;
	}
	public String getAssignment() {
		return assignment;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setTodo(String todo) {
		this.todo = todo;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public void setAssignment(String assignment) {
		this.assignment = assignment;
	}
	@Override
	public String toString() {
		return "Entity [id=" + id + ", name=" + name + ", todo=" + todo + ", course=" + course + ", assignment="
				+ assignment + "]";
	}
	
	
	
	
	

}
