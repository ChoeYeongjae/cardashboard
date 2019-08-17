package car.borad.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
 
import car.borad.project.mapper.mapper;
import car.borad.project.vo.Account;
import car.borad.project.vo.object;


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
	    public Account postLogin(Account object) throws Exception {
			 return mapper.postLogin(object);
		}
	    public Account getPws() throws Exception {
	    	 return mapper.getPws();
		}
		public void postMember(String model, String engine, String file) throws Exception {
			 mapper.postMember(model, engine,file);
		}
		public void postMembers(Account object) throws Exception {
			 mapper.postMembers(object);
		}
		public void postOrganizes(String names, String organize, String bookings, String last)  throws Exception {
			 mapper.postOrganizes(names, organize, bookings,last);
		}
		
		public void postCarFuel(String fuel)  throws Exception {
			 mapper.postCarFuel(fuel);
		}
		public void postCarOiling(String oiling)  throws Exception {
			 mapper.postCarOiling(oiling);
		}
		public void postCarMileage(String mileage)  throws Exception {
			 mapper.postCarMileage(mileage);
		}
		public void postCarEvent(String event)  throws Exception {
			 mapper.postCarEvent(event);
		}
		
}
