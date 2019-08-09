package car.borad.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
 
import car.borad.project.mapper.mapper;
import car.borad.project.vo.object;


@Service
public class service {
	 	@Autowired
	    mapper mapper;
	    
	    public List<object> getAll() throws Exception{
	        return mapper.getAll();
	    }
	    public object postLogin(object object) throws Exception {
			 return mapper.postLogin(object);
		}
	    public object getPws() throws Exception {
	    	 return mapper.getPws();
		}
		public void postMember(String model, String engine, String file) throws Exception {
			 mapper.postMember(model, engine,file);
		}
		public void postMembers(object object) throws Exception {
			 mapper.postMembers(object);
		}
		public void postOrganizes(String names, String organize, String bookings, String last)  throws Exception {
			 mapper.postOrganizes(names, organize, bookings,last);
		}
		public void postCarInfo(String fuel, String oiling, String mileage, String event, String time)  throws Exception {
			 mapper.postCarInfo(fuel, oiling, mileage,event,time);
		}
		
}
