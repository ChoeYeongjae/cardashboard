package car.borad.project.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Base64.Encoder;
import java.util.List;

import javax.servlet.http.HttpSession;

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

import car.borad.project.vo.Account;
import car.borad.project.vo.CarInfo;
import car.borad.project.service.service;

@Controller
public class main {
	
		@Autowired
	    service service;
	    // responesentity 테스트
		@RequestMapping(value = "/users", method = RequestMethod.GET)
	    public ResponseEntity<List<Account>> listAllUsers() throws Exception {
	        List<Account> users = service.getAlls();
	        return new ResponseEntity<List<Account>>(users, HttpStatus.OK);
	    }
		@RequestMapping(value = "/user", method = RequestMethod.GET)
	    public ResponseEntity<List<Account>> listAllUser() throws Exception {
	        List<Account> users = service.getAll();
	        return new ResponseEntity<List<Account>>(users, HttpStatus.OK);
	    }
		
		@RequestMapping(value = "/carInfos2", method = RequestMethod.GET)
	    public ResponseEntity<List<CarInfo>> carInfoIF() throws Exception {
	        List<CarInfo> info = service.getCarInfo();
	        System.out.print(info.get(0).getFile());
	        String encoded = info.get(0).getFile();
	        byte[] decoded = Base64.decodeBase64(encoded);
	        System.out.print(new String(decoded));
	        
	        return new ResponseEntity<List<CarInfo>>(info, HttpStatus.OK);
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
	    @RequestMapping(value = "/duplicate", method = RequestMethod.GET)
	    public ResponseEntity<List<Account>> idsUsers() throws Exception {
	        List<Account> users = service.getDuplicate();
	        return new ResponseEntity<List<Account>>(users, HttpStatus.OK);
	    }
	    @RequestMapping(value = "/carInfos1", method = RequestMethod.POST)
	    public String login(
	    		Account object
	    		)throws Exception{
	        try{
	        	Account login = service.postLogin(object);
	        	boolean test = passEncoder.matches(object.getPw(), login.getPw());
	        	
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
	    @RequestMapping(value = "/memberDuplicate", method = RequestMethod.GET)
	    public ResponseEntity<List<Account>> memberDuplicate() throws Exception {
	        List<Account> member = service.getDuplicate();
	        return new ResponseEntity<List<Account>>(member, HttpStatus.OK);
	    }
	    @RequestMapping(value = "/carInfos", method = RequestMethod.POST)
	    public void carInfos(
	    		@RequestParam(value = "ids", required = false) String ids,
	    		@RequestParam(value = "model", required = false) String model,
	    		@RequestParam(value = "engine", required = false) String engine,
	    		@RequestParam(value = "file", required = false) String file
	    		) throws Exception{
	    	byte[] encoded = Base64.encodeBase64(file.getBytes());
	    	System.out.print(new String(encoded));
	    	//디코딩
	    	//byte[] decoded = Base64.decodeBase64(encoded);
	    	//System.out.print(new String(decoded));
	    	service.postMember(ids,model, engine, new String(encoded));
	    }

	    @Autowired
	    BCryptPasswordEncoder passEncoder;

	    @RequestMapping(value = "/carmembers", method = RequestMethod.POST)
	    public void  carmembers(
	    		Account object
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
	    @RequestMapping(value = "/carFuel", method = RequestMethod.POST)
	    public void carFuel(
	    		@RequestParam(value = "fuel", required = false) String fuel,
	    		@RequestParam(value = "ids", required = false) String ids
	    	  ) throws Exception{
	    	service.postCarFuel(fuel,ids);
	    }
	    @RequestMapping(value = "/carOiling", method = RequestMethod.POST)
	    public void carOiling(
	    		@RequestParam(value = "oiling", required = false) String oiling,
	    		@RequestParam(value = "ids", required = false) String ids
	    	  ) throws Exception{
	    	service.postCarOiling(oiling,ids);
	    }
	    @RequestMapping(value = "/carMileage", method = RequestMethod.POST)
	    public void carMileage(
	    		@RequestParam(value = "mileage", required = false) String mileage,
	    		@RequestParam(value = "ids", required = false) String ids
	    	  ) throws Exception{
	    	service.postCarMileage(mileage,ids);
	    }
	    @RequestMapping(value = "/carEvent", method = RequestMethod.POST)
	    public void carEvent(
	    		@RequestParam(value = "event", required = false) String event,
	    		@RequestParam(value = "ids", required = false) String ids
	    		) throws Exception{
	    	service.postCarEvent(event,ids);
	    }
}
