package com.forpet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forpet.dao.SmallboardDao;
import com.forpet.model.vo.BoardSearch;
import com.forpet.model.vo.SmallBoard;
import com.forpet.model.vo.SmallBoardComment;

@Service
public class SmallboardServiceImpl implements SmallboardService {

	@Autowired
	private SmallboardDao dao;

	
	
	@Override
	public int smallboardCommentDelete(int sbcommentSeq) {
		return dao.smallboardCommentDelete(sbcommentSeq);
	}

	@Override
	public List<SmallBoardComment> smallboardCommentList(int smallboardSeq) {
		return dao.smallboardCommentList(smallboardSeq);
	}

	@Override
	public int smallboardcommentInsert(SmallBoardComment comments) {
		return dao.smallboardcommentInsert(comments);
	}

	@Override
	public int updateSmallBoard(SmallBoard sb) {
		return dao.updateSmallBoard(sb);
	}

	@Override
	public int deleteSmallBoard(int smallboardSeq) {
		return dao.deleteSmallBoard(smallboardSeq);
	}

	@Override
	public SmallBoard selectSmallboard(int smallboardSeq) {
		return dao.selectSmallboard(smallboardSeq);
	}

	@Override
	public int insertSmallboard(SmallBoard sb) {
		return dao.insertSmallboard(sb);
	}

	@Override
	public int smallboardCount(BoardSearch bs) {
		return dao.smallboardCount(bs);
	}

	@Override
	public List<SmallBoard> smallboardList(BoardSearch bs) {
		return dao.smallboardList(bs);
	}
	
	
}

