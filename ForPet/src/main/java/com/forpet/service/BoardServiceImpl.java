package com.forpet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.forpet.common.exception.BoardException;
import com.forpet.dao.BoardDao;
import com.forpet.model.vo.Attachment;
import com.forpet.model.vo.Board;
import com.forpet.model.vo.BoardComment;
import com.forpet.model.vo.BoardSearch;
import com.forpet.model.vo.Image;
import com.forpet.model.vo.Notice;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDao dao;
	
	
	
	

	@Override
	public int commentDelete(int commentSeq) {
		return dao.commentDelete(commentSeq);
	}

	@Override
	public List<BoardComment> selectCommentList(int boardSeq) {
		return dao.selectCommentList(boardSeq);
	}

	@Override
	public int commentInsert(BoardComment comments) {
		// TODO Auto-generated method stub
		return dao.commentInsert(comments);
	}
	
	@Override
	public int addreadcount(int boardSeq) {
		return dao.addreadcount(boardSeq);
	}

	@Override
	@Transactional(rollbackFor = RuntimeException.class)
	public int updateBoard(Board b, List<Attachment> list) throws RuntimeException {
		int result = 0;
		result=dao.updateBoard(b);
		if(result<=0)
		{
			throw new RuntimeException();
		}
		if(list !=null&&list.size()>0)
		{
			for(Attachment a:list)
			{
				result=dao.insertAttachment(a);
				if(result==0)
				{
					throw new RuntimeException();
				}
			}
		}
		return result;
	}

	

	@Override
	public int board(int boardSeq) {
		return dao.board(boardSeq);
	}

	@Override
	public int deleteBoard(int boardSeq) {
		return dao.deleteBoard(boardSeq);
	}

	@Override
	public int selectCount(BoardSearch bs) {
		// TODO Auto-generated method stub
		return dao.selectCount(bs);
	}

	@Override
	public List<Board> selectList(BoardSearch bs) {
		// TODO Auto-generated method stub
		return dao.selectList(bs);
	}

	@Override
	public int insertBoard(Board b, List<Attachment> attachmentList) {

		int result=0;
		result=dao.insertBoard(b);
		if(result==0)throw new BoardException();
		if(attachmentList.size()>0)
		{
			for(Attachment a:attachmentList)
			{
				a.setBoardNo(b.getBoardSeq());
				result=dao.insertAttachment(a);
				if(result==0) throw new BoardException();
			}
		}
		return 0;
	}

	@Override
	public Board selectBoard(int boardSeq) {
		return dao.selectBoard(boardSeq);
	}

	@Override
	public List<Attachment> selectAttachment(int boardSeq) {
		return dao.selectAttachment(boardSeq);
	}
	
	

	
	
}
