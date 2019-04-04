package com.forpet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forpet.common.exception.BoardException;
import com.forpet.dao.BoardDao;
import com.forpet.model.vo.Attachment;
import com.forpet.model.vo.Board;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDao dao;

	@Override
	public int selectCount() {
		// TODO Auto-generated method stub
		return dao.selectCount();
	}

	@Override
	public List<Board> selectList(int cPage, int numPerPage) {
		// TODO Auto-generated method stub
		return dao.selectList(cPage, numPerPage);
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
	public Board selectBoard(int boardNo) {
		return dao.selectBoard(boardNo);
	}

	@Override
	public List<Attachment> selectAttachment(int boardNo) {
		return dao.selectAttachment(boardNo);
	}
	
	

	
	
}
