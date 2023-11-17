package SMMS.user;

public class Report {
	private int id;
	private int nostds;
	private int npas;
	private int npias;
	private String remark;
	private String verification;
	public int getId() {
		return id;
	}
	public int getNostds() {
		return nostds;
	}
	public int getNpas() {
		return npas;
	}
	public int getNpias() {
		return npias;
	}
	public String getRemark() {
		return remark;
	}
	public String getVerification() {
		return verification;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setNostds(int nostds) {
		this.nostds = nostds;
	}
	public void setNpas(int npas) {
		this.npas = npas;
	}
	public void setNpias(int npias) {
		this.npias = npias;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public void setVerification(String verification) {
		this.verification = verification;
	}
	@Override
	public String toString() {
		return "Report [id=" + id + ", nostds=" + nostds + ", npas=" + npas + ", npias=" + npias + ", remark=" + remark
				+ ", verification=" + verification + "]";
	}
	
	
	
	
	
}
