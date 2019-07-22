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

}
