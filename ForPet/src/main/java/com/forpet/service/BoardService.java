package com.forpet.service;

import java.util.List;

import com.forpet.model.vo.Attachment;
import com.forpet.model.vo.Board;
import com.forpet.model.vo.BoardComment;
import com.forpet.model.vo.BoardSearch;
import com.forpet.model.vo.Image;
import com.forpet.model.vo.Notice;

public interface BoardService {
	
	int selectCount(BoardSearch bs);
	List<Board> selectList(BoardSearch bs);
	int insertBoard(Board b, List<Attachment> attachmentList);
	
	Board selectBoard(int boardSeq);
	List<Attachment> selectAttachment(int boardSeq);
	int deleteBoard(int boardSeq);
	int board(int boardSeq);
	int updateBoard(Board b, List<Attachment> list);
	int addreadcount(int boardSeq);
	int commentInsert(BoardComment comments);
	List<BoardComment> selectCommentList(int boardSeq);
	int commentDelete(int commentSeq);


}
