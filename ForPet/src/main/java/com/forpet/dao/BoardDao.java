package com.forpet.dao;

import java.util.List;

import com.forpet.model.vo.Attachment;
import com.forpet.model.vo.Board;

public interface BoardDao {


	int selectCount();
	List<Board> selectList(int cPage, int numPerPage);
	int insertAttachment(Attachment a);
	int insertBoard(Board b);
	Board selectBoard(int boardNo);
	List<Attachment> selectAttachment(int boardNo);

}
