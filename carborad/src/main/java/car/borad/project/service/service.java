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
		public void postMember(String model, String engine, String file) throws Exception {
			 mapper.postMember(model, engine,file);
		}
		public void postMembers(String ids, String pw, String name , String email) throws Exception {
			 mapper.postMembers(ids, pw, name,email);
		}
		public void postOrganizes(String name, String organize, String bookings, String last)  throws Exception {
			 mapper.postOrganizes(name, organize, bookings,last);
			
		}
}
