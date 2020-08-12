package kr.co.sixpack.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.sixpack.vo.ReplyVO;

@Repository
public class ReplyDAOImpl implements ReplyDAO {
	
	@Inject SqlSession sql;
	
	// 댓글조회
	@Override
	public List<ReplyVO> readReply(int bno) throws Exception{
		return sql.selectList("replyMapper.readReply", bno);
	}
	
	// 댓글작성
	@Override
	public void writeReply(ReplyVO vo) throws Exception {
		// TODO Auto-generated method stub
		sql.insert("replyMapper.writeReply", vo);
	}
	
	// 댓글수정
	@Override
	public void updateReply(ReplyVO vo) throws Exception {
		// TODO Auto-generated method stub
		sql.update("replyMapper.updateReply",vo);
		
	}

	// 댓글삭제
	@Override
	public void deleteReply(ReplyVO vo) throws Exception {
		// TODO Auto-generated method stub
		sql.delete("replyMapper.deleteReply",vo);		
	}

	// 선택된 댓글 조회
	@Override
	public ReplyVO selectReply(int rno) throws Exception {
		// TODO Auto-generated method stub
		return sql.selectOne("replyMapper.selectReply",rno);
	}
	
}
