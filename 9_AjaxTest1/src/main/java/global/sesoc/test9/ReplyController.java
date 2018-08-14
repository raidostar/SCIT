package global.sesoc.test9;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import global.sesoc.test9.dao.ReplyRepository;
import global.sesoc.test9.vo.Reply;

@Controller
public class ReplyController {
		
	@Autowired
	ReplyRepository repository;
	
		//reply 화면 요청
		@RequestMapping(value="reply", method=RequestMethod.GET)
		public String replyForm() {
			return "replyForm";
		}
		
		//reply insert 실행
		@ResponseBody
		@RequestMapping(value="replyInsert", method=RequestMethod.POST)
		public Integer replyInsert(@RequestBody Reply reply){
			System.out.println(reply);
			int result = repository.insert(reply);
			return result;
		}
		
		@ResponseBody
		@RequestMapping(value="replyAll", method=RequestMethod.POST)
		public List<Reply> replyAll(){
			List<Reply> replyList = repository.select();
			return replyList;
		}
		
		@ResponseBody
		@RequestMapping(value="replyDelete", method=RequestMethod.GET)
		public Integer replyDelete(int replynum) {
			int result = repository.delete(replynum);
			return result;
		}
}
