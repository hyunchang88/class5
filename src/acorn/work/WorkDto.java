package acorn.work;

public class WorkDto {
   private Number workno;
   private String workName;
   private String workDesc;
   private String workspace;
   private String workarea;
   private String workterm;
   private String workhow;
   private String workcompany;
   private String pic;

   
   public WorkDto(){}
   
	public WorkDto(Number workno, String workName, String workDesc, String workspace, String workarea, String workterm,
			String workhow, String workcompany, String pic) {
		super();
		this.workno = workno;
		this.workName = workName;
		this.workDesc = workDesc;
		this.workspace = workspace;
		this.workarea = workarea;
		this.workterm = workterm;
		this.workhow = workhow;
		this.workcompany = workcompany;
		this.pic = pic;
	}
   
	public Number getWorkno() {
		return workno;
	}
	
	public void setWorkno(Number workno) {
		this.workno = workno;
	}
	
	public String getWorkName() {
		return workName;
	}
	
	public void setWorkName(String workName) {
		this.workName = workName;
	}
	
	public String getWorkDesc() {
		return workDesc;
	}
	
	public void setWorkDesc(String workDesc) {
		this.workDesc = workDesc;
	}
	
	public String getWorkspace() {
		return workspace;
	}
	
	public void setWorkspace(String workspace) {
		this.workspace = workspace;
	}
	
	public String getWorkarea() {
		return workarea;
	}
	
	public void setWorkarea(String workarea) {
		this.workarea = workarea;
	}
	
	public String getWorkterm() {
		return workterm;
	}
	
	public void setWorkterm(String workterm) {
		this.workterm = workterm;
	}
	
	public String getWorkhow() {
		return workhow;
	}
	
	public void setWorkhow(String workhow) {
		this.workhow = workhow;
	}
	
	public String getWorkcompany() {
		return workcompany;
	}
	
	public void setWorkcompany(String workcompany) {
		this.workcompany = workcompany;
	}
	
	public String getPic() {
		return pic;
	}
	
	public void setPic(String pic) {
		this.pic = pic;
	}
	




  
}
