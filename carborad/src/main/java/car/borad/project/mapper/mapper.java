package car.borad.project.mapper;

import java.util.List;

import car.borad.project.vo.object;

public interface mapper {
	public List<object> getAll() throws Exception;
	public object postLogin(object object) throws Exception;
	public void postMember(String model, String engine, String file, String ids) throws Exception;
	public void postMembers(object object) throws Exception;
	public void postOrganizes(String names, String organize, String bookings, String last) throws Exception;
	public void postCarInfo(String fuel, String oiling, String mileage, String event ,String time) throws Exception;
	public object getPws() throws Exception;
	public String postDuplicate(object object) throws Exception;
	public List<object> getDuplicate() throws Exception;	
	public List<object> getMemberDuplicate() throws Exception;	

}
