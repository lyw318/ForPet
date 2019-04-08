package com.forpet.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.forpet.model.vo.Attachment;
import com.forpet.model.vo.Board;
import com.forpet.model.vo.BoardSearch;

@Repository
public class BoardDaoImpl implements BoardDao {
	
	@Autowired
	private SqlSessionTemplate session;

	@Override
	public int selectCount(BoardSearch bs) {
		// TODO Auto-generated method stub
		return session.selectOne("board.selectCount",bs);
	}

	@Override
	public int board(int boardSeq) {
		return session.selectOne("member.board", boardSeq);
	}

	@Override
	public int deleteBoard(int boardSeq) {
		return session.delete("board.deleteBoard",boardSeq);
	}


	@Override
	public List<Board> selectList(BoardSearch bs) {
		// TODO Auto-generated method stub
		bs.parsing();
		RowBounds row=new RowBounds((bs.getcPageNo()-1)*bs.getNumPerPageNo(),bs.getNumPerPageNo());
		return session.selectList("board.selectList",bs,row);
	}

	@Override
	public int insertAttachment(Attachment a) {
		return session.insert("board.insertAttachment", a);
	}

	@Override
	public int insertBoard(Board b) {
		return session.insert("board.insertBoard",b);
	}

	@Override
	public Board selectBoard(int boardSeq) {
		return session.selectOne("board.selectBoard",boardSeq);
	}

	@Override
	public List<Attachment> selectAttachment(int boardSeq) {
		return session.selectList("board.selectAttachment",boardSeq);
	}
	
	
	

}
