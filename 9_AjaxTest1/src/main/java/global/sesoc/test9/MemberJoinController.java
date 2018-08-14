package global.sesoc.test9;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import global.sesoc.test9.vo.Education;
import global.sesoc.test9.vo.UserCollect;

@Controller
public class MemberJoinController {
		
		@RequestMapping(value="/memberJoin", method=RequestMethod.GET)
		public String memberJoin() {
			return "memberJoin";
		}
		
		@ResponseBody
		@RequestMapping(value="regist1", method=RequestMethod.POST)
		public List<Education> regist1(@RequestBody List<Education> edu){
			return edu;
		}
		
		@ResponseBody
		@RequestMapping(value="regist2", method=RequestMethod.POST)
		public UserCollect regist1(@RequestBody UserCollect usercollect){
			return usercollect;
		}
}
