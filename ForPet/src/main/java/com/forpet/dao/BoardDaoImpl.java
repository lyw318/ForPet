package com.forpet.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.forpet.model.vo.Attachment;
import com.forpet.model.vo.Board;

@Repository
public class BoardDaoImpl implements BoardDao {
	
	@Autowired
	private SqlSessionTemplate session;

	@Override
	public int selectCount() {
		// TODO Auto-generated method stub
		return session.selectOne("board.selectCount");
	}

	@Override
	public List<Board> selectList(int cPage, int numPerPage) {
		// TODO Auto-generated method stub
		return session.selectList("board.selectList",null,new RowBounds((cPage-1)*numPerPage,numPerPage));
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
	public Board selectBoard(int boardNo) {
		return session.selectOne("board.selectBoard",boardNo);
	}

	@Override
	public List<Attachment> selectAttachment(int boardNo) {
		return session.selectList("board.selectAttachment",boardNo);
	}
	
	
	

}
