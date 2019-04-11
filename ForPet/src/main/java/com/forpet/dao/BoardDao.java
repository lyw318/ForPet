package com.forpet.dao;

import java.util.List;

import com.forpet.model.vo.Attachment;
import com.forpet.model.vo.Board;
import com.forpet.model.vo.BoardComment;
import com.forpet.model.vo.BoardSearch;

public interface BoardDao {


	int selectCount(BoardSearch bs);
	List<Board> selectList(BoardSearch bs);
	int insertAttachment(Attachment a);
	int insertBoard(Board b);
	Board selectBoard(int boardSeq);
	List<Attachment> selectAttachment(int boardSeq);
	int deleteBoard(int boardSeq);
	int board(int boardSeq);
	int updateBoard(Board b);
	int addreadcount(int boardSeq);
	int commentInsert(BoardComment comments);
	List<BoardComment> selectCommentList(int boardSeq);
	int commentDelete(int commentSeq);
}
