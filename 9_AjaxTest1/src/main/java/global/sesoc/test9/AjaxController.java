package global.sesoc.test9;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import global.sesoc.test9.vo.User;

@Controller
public class AjaxController {
		
		@RequestMapping(value="ajaxReq1", method=RequestMethod.GET)
		public @ResponseBody String ajaxReq1() {
			System.out.println("그랩성공");
			return "그랩성공";
		}
		
		@RequestMapping(value="ajaxReq2", method=RequestMethod.GET)
		public @ResponseBody Map<String, String> ajaxReq2(String name, String phone) {			
			Map<String, String> map = new HashMap<>();
			map.put("name", name);
			map.put("phone", phone);
			return map;
		}
		@RequestMapping(value="/ajaxView3", method=RequestMethod.GET)
		public String ajaxView3() {
			
			return "ajaxView3";
		}
		
		@ResponseBody
		@RequestMapping(value="send1", method=RequestMethod.POST)
		public String send1(String userid) {
			System.out.println(userid);
			return "success";
		}
		
		@ResponseBody
		@RequestMapping(value="send2", method=RequestMethod.POST)
		public Map<String, String> send2(@RequestBody Map<String, String> map) {
			System.out.println(map);
			return map;
		}
		
		@ResponseBody
		@RequestMapping(value="send3", method=RequestMethod.POST)
		public User send3(@RequestBody User user) {
			System.out.println(user);
			return user;
		}
		
		
		
}
