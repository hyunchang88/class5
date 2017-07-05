package acorn.orderRequest;

public class OrderRequestDao {
	// 싱글톤 만드는 형식대로 코딩
	private static OrderRequestDao dao;
	private OrderRequestDao(){}
	public static OrderRequestDao getInstance(){
		if(dao==null){
			dao=new OrderRequestDao();
		}
		return dao;
	}
	
	// 이제 필요한 메소드 만들면 됌
	
}
