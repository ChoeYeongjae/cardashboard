package car.borad.project.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Base64.Encoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.HttpRequest;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.apache.commons.codec.binary.Base64;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder; 

import car.borad.project.vo.object;
import car.borad.project.service.service;

@Controller
public class main {
	
		@Autowired
	    service service;
	    // responesentity 테스트
		@RequestMapping(value = "/user", method = RequestMethod.GET)
	    public ResponseEntity<List<object>> listAllUsers() throws Exception {
	        List<object> users = service.getAll();
	        return new ResponseEntity<List<object>>(users, HttpStatus.OK);
	    }
	    
	    @RequestMapping("/")
	    public String login() throws Exception{
	        return "login";
	    }
	    @RequestMapping("/admin")
	    public String admin() throws Exception{
	        return "admin";
	    }
	    @RequestMapping("/chart")
	    public String chart() throws Exception{
	        return "chart";
	    }
	    @RequestMapping("/carInfo")
	    public String carinfo() throws Exception{
	        return "carInfo";
	    }
	    @RequestMapping(value = "/carInfos1", method = RequestMethod.POST)
	    public String login(
	    		 object object
	    		)throws Exception{
	        try{
	        	object login = service.postLogin(object);
	        	boolean test = passEncoder.matches(object.getPw(), login.getPw());
	        	System.out.println(test);
	            if(login != null && test){
	            	System.out.println("성공");
	                return "carInfo";
	            }else{
	                return "member";
	            }
	        }catch(Exception e){
	            return "member";
	        }
	    }
	    @RequestMapping("/loginfali")
	    public String loginfali() throws Exception{
	        return "loginfali";
	    }
	    @RequestMapping("/member")
	    public String member() throws Exception{
	        return "member";
	    }
	    @RequestMapping(value = "/carInfos", method = RequestMethod.POST)
	    public void  carInfos(
	    		@RequestParam(value = "model", required = false) String model,
	    		@RequestParam(value = "engine", required = false) String engine,
	    		@RequestParam(value = "file", required = false) String file
	    		) throws Exception{
	    	byte[] encoded = Base64.encodeBase64(file.getBytes());
	    	System.out.print(new String(encoded));
	    	//디코딩
	    	//byte[] decoded = Base64.decodeBase64(encoded);
	    	//System.out.print(new String(decoded));
	    	service.postMember(model, engine, new String(encoded));
	    }

	    @Autowired
	    BCryptPasswordEncoder passEncoder;

	    @RequestMapping(value = "/carmembers", method = RequestMethod.POST)
	    public void  carmembers(
	    		object object
	    		) throws Exception{
	    	String inputPw = object.getPw();
	    	String encodedPassword = passEncoder.encode(inputPw);
	    	object.setPw(encodedPassword);
	    	service.postMembers(object);
	    }
	    @RequestMapping("/carmember")
	    public String carmember() throws Exception{
	        return "carmember";
	    }
	    @RequestMapping(value = "/organizes", method = RequestMethod.POST)
	    public void organizes(
	    		@RequestParam(value = "names", required = false) String names,
	    		@RequestParam(value = "organize", required = false) String organize,
	    		@RequestParam(value = "bookings", required = false) String bookings,
	    		@RequestParam(value = "last", required = false) String last
	    		) throws Exception{
	    	service.postOrganizes(names, organize, bookings ,last);
	    }
	    @RequestMapping("/organize")
	    public String organize() throws Exception{
	        return "organize";
	    }
	    @RequestMapping(value = "/carModal", method = RequestMethod.POST)
	    public void carModal(
	    		@RequestParam(value = "fuel", required = false) String fuel,
	    		@RequestParam(value = "oiling", required = false) String oiling,
	    		@RequestParam(value = "mileage", required = false) String mileage,
	    		@RequestParam(value = "event", required = false) String event,
	    		@RequestParam(value = "time", required = false) String time
	    	  ) throws Exception{
	    	service.postCarInfo(fuel, oiling, mileage ,event,time);
	    }
}
