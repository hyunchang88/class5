package acorn.work;

public class WorkDto {
   private String name;
   private String type;
   private String space;
   private String area;
   private String term;
   private String how;
   private String company;
   private String pic;
   
   public WorkDto(){}

   public WorkDto(String name, String type, String space, String area, String term, String how, String company,
         String pic) {
      super();
      this.name = name;
      this.type = type;
      this.space = space;
      this.area = area;
      this.term = term;
      this.how = how;
      this.company = company;
      this.pic = pic;
   }

   public String getName() {
      return name;
   }

   public void setName(String name) {
      this.name = name;
   }

   public String getType() {
      return type;
   }

   public void setType(String type) {
      this.type = type;
   }

   public String getSpace() {
      return space;
   }

   public void setSpace(String space) {
      this.space = space;
   }

   public String getArea() {
      return area;
   }

   public void setArea(String area) {
      this.area = area;
   }

   public String getTerm() {
      return term;
   }

   public void setTerm(String term) {
      this.term = term;
   }

   public String getHow() {
      return how;
   }

   public void setHow(String how) {
      this.how = how;
   }

   public String getCompany() {
      return company;
   }

   public void setCompany(String company) {
      this.company = company;
   }

   public String getPic() {
      return pic;
   }

   public void setPic(String pic) {
      this.pic = pic;
   };
   
}