package kr.co.sixpack.service;

import java.util.List;

import kr.co.sixpack.vo.ReplyVO;

public interface ReplyService {

	// 댓글조희
	public List<ReplyVO> readReply(int bno) throws Exception;

	// 댓글작성
	public void writeReply(ReplyVO vo) throws Exception;
	
	// 댓글수정
	public void updateReply(ReplyVO vo) throws Exception;

	// 댓글삭제
	public void deleteReply(ReplyVO vo) throws Exception;
	
	// 댓글수정
	public ReplyVO selectReply(int rno) throws Exception;
	
}
