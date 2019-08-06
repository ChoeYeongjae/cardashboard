package car.borad.project.mapper;

import java.util.List;

import car.borad.project.vo.object;

public interface mapper {
	public List<object> getAll() throws Exception;
	public void postLogin(String ids, String pw) throws Exception;
	public void postMember(String model, String engine, String file) throws Exception;
	public void postMembers(String ids, String pw, String name , String email) throws Exception;
	public void postOrganizes(String names, String organize, String bookings, String last);
	public void postCarInfo(String fuel, String oiling, String mileage, String event ,String time);
	
}
