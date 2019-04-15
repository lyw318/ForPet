package com.forpet.dao;

import java.util.List;

import com.forpet.model.vo.BoardSearch;
import com.forpet.model.vo.SmallBoard;
import com.forpet.model.vo.SmallBoardComment;

public interface SmallboardDao {
	
	int smallboardCount(BoardSearch bs);
	List<SmallBoard> smallboardList(BoardSearch bs);
	int insertSmallboard(SmallBoard sb);
	SmallBoard selectSmallboard(int smallboardSeq);
	int deleteSmallBoard(int smallboardSeq);
	int updateSmallBoard(SmallBoard sb);
	int smallboardcommentInsert(SmallBoardComment comments);
	List<SmallBoardComment> smallboardCommentList(int smallboardSeq);
	int smallboardCommentDelete(int sbcommentSeq);

}
