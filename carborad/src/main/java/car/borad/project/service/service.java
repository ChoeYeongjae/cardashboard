package car.borad.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
 
import car.borad.project.mapper.mapper;
import car.borad.project.vo.Account;
import car.borad.project.vo.CarInfo;


@Service
public class service {
	 	@Autowired
	    mapper mapper;
	    
	    public List<Account> getAll() throws Exception{
	        return mapper.getAll();
	    }
	    public List<Account> getDuplicate() throws Exception{
	        return mapper.getDuplicate();
	    }
	    public List<Account> getMemberDuplicate() throws Exception{
	        return mapper.getMemberDuplicate();
	    }
	    public List<CarInfo> getCarInfo() throws Exception{
	        return mapper.getCarInfo();
	    }
	    public Account postLogin(Account object) throws Exception {
			 return mapper.postLogin(object);
		}
	    public Account getPws() throws Exception {
	    	 return mapper.getPws();
		}
		public void postMember(String ids,String model, String engine, String file) throws Exception {
			 mapper.postMember(ids,model, engine,file);
		}
		public void postMembers(Account object) throws Exception {
			 mapper.postMembers(object);
		}
		public void postOrganizes(String names, String organize, String bookings, String last)  throws Exception {
			 mapper.postOrganizes(names, organize, bookings,last);
		}
		
		public void postCarFuel(String fuel, String ids)  throws Exception {
			 mapper.postCarFuel(fuel, ids);
		}
		public void postCarOiling(String oiling, String ids)  throws Exception {
			 mapper.postCarOiling(oiling,ids);
		}
		public void postCarMileage(String mileage, String ids)  throws Exception {
			 mapper.postCarMileage(mileage,ids);
		}
		public void postCarEvent(String event, String ids)  throws Exception {
			 mapper.postCarEvent(event,ids);
		}
		
}
