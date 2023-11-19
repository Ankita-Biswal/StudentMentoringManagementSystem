package SMMS.user;

public class File {
	private int id;
	private String files;
	private String task;
	public int getId() {
		return id;
	}
	public String getFiles() {
		return files;
	}
	public String getTask() {
		return task;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setFiles(String files) {
		this.files = files;
	}
	public void setTask(String task) {
		this.task = task;
	}
	@Override
	public String toString() {
		return "File [id=" + id + ", files=" + files + ", task=" + task + "]";
	}
	

}
