package global.sesoc.test9.dao;

import java.util.List;

import global.sesoc.test9.vo.Reply;

public interface ReplyMapper {
		public int insert(Reply reply);
		public int delete(int replynum);
		public List<Reply> select();
		public int update(Reply reply);
}