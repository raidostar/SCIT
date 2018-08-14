package global.sesoc.test9.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.test9.vo.Reply;

@Repository
public class ReplyRepository {
		@Autowired
		SqlSession session;
		
		public int insert(Reply reply) {
			ReplyMapper mapper = session.getMapper(ReplyMapper.class);
			int result = mapper.insert(reply);
			return result;
		}

		public List<Reply> select() {
			ReplyMapper mapper = session.getMapper(ReplyMapper.class);
			List<Reply> list = mapper.select();
			return list;
		}

		public int delete(int replynum) {
			ReplyMapper mapper = session.getMapper(ReplyMapper.class);
			int result = mapper.delete(replynum);
			return result;
		}
}
