package com.forpet.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.forpet.model.vo.BoardSearch;
import com.forpet.model.vo.SmallBoard;
import com.forpet.model.vo.SmallBoardComment;

@Repository
public class SmallboardDaoImpl implements SmallboardDao {

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public int smallboardCommentDelete(int sbcommentSeq) {
		return session.delete("smallboard.smallboardCommentDelete",sbcommentSeq);
	}

	@Override
	public List<SmallBoardComment> smallboardCommentList(int smallboardSeq) {
		return session.selectList("smallboard.smallboardCommentList",smallboardSeq);
	}

	@Override
	public int smallboardcommentInsert(SmallBoardComment comments) {
		return session.insert("smallboard.smallboardcommentInsert",comments);
	}

	@Override
	public int updateSmallBoard(SmallBoard sb) {
		System.out.println(sb);
		return session.update("smallboard.updateSmallBoard",sb);
	}

	@Override
	public int deleteSmallBoard(int smallboardSeq) {
		return session.delete("smallboard.deleteSmallBoard",smallboardSeq);
	}

	@Override
	public SmallBoard selectSmallboard(int smallboardSeq) {
		return session.selectOne("smallboard.selectSmallboard",smallboardSeq);
	}

	@Override
	public int insertSmallboard(SmallBoard sb) {
		return session.insert("smallboard.insertSmallboard",sb);
	}

	@Override
	public int smallboardCount(BoardSearch bs) {
		return session.selectOne("smallboard.smallboardCount",bs);
	}

	@Override
	public List<SmallBoard> smallboardList(BoardSearch bs) {
		bs.parsing();
		RowBounds row=new RowBounds((bs.getcPageNo()-1)*bs.getNumPerPageNo(),bs.getNumPerPageNo());
		return session.selectList("smallboard.smallboardList",bs,row);
	}
	
	
}
