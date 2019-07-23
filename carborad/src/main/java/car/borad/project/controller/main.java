package car.borad.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import car.borad.project.vo.object;
import car.borad.project.service.service;

@Controller
public class main {
		@Autowired
	    service service;
	    
	    @RequestMapping("/query")
	    public @ResponseBody List<object> query() throws Exception{
	        return service.getAll();
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
	    @RequestMapping("/loginfali")
	    public String loginfali() throws Exception{
	        return "loginfali";
	    }
	    @RequestMapping("/member")
	    public String member() throws Exception{
	        return "member";
	    }
	    @RequestMapping("/carmember")
	    public String carmember() throws Exception{
	        return "carmember";
	    }
}
