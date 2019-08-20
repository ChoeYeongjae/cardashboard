package car.borad.project.mapper;

import java.util.List;

import car.borad.project.vo.Account;
import car.borad.project.vo.CarInfo;

public interface mapper {
	public List<Account> getAll() throws Exception;
	public List<Account> getAlls() throws Exception;
	public Account postLogin(Account object) throws Exception;
	public void postMember(String ids, String model, String engine, String file) throws Exception;
	public void postMembers(Account object) throws Exception;
	public void postOrganizes(String names, String organize, String bookings, String last) throws Exception;
	public Account getPws() throws Exception;
	public String postDuplicate(Account object) throws Exception;
	public List<Account> getDuplicate() throws Exception;	
	public List<Account> getMemberDuplicate() throws Exception;	
	public List<CarInfo> getCarInfo() throws Exception;	
	
	
	public void postCarFuel(String fuel,String ids) throws Exception;
	public void postCarOiling(String oiling,String ids) throws Exception;
	public void postCarMileage(String mileage,String ids) throws Exception;
	public void postCarEvent(String event,String ids) throws Exception;

}
