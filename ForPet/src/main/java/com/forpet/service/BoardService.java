package com.forpet.service;

import java.util.List;

import com.forpet.model.vo.Attachment;
import com.forpet.model.vo.Board;

public interface BoardService {
	
	int selectCount();
	List<Board> selectList(int cPage, int numPerPage);
	int insertBoard(Board b, List<Attachment> attachmentList);
	
	Board selectBoard(int boardNo);
	List<Attachment> selectAttachment(int boardNo);

}
