package com.forpet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.forpet.dao.HealthDao;
import com.forpet.model.vo.BoardSearch;
import com.forpet.model.vo.HealthInfo;
import com.forpet.model.vo.Image;

@Service
public class HealthServiceImpl implements HealthService {

	@Autowired
	private HealthDao dao;

	@Override
	public int healthCount(BoardSearch bs) {
		return dao.healthCount(bs);
	}

	@Override
	public List<HealthInfo> healthList(BoardSearch bs) {
		return dao.healthList(bs);
	}

	@Override
	@Transactional(rollbackFor = RuntimeException.class)
	public int insertInfo(HealthInfo hi, List<Image> list) throws RuntimeException {
		int result = 0;
		result=dao.insertInfo(hi);
		if(result<=0)
		{
			throw new RuntimeException();
		}
		if(list != null && list.size()>0)
		{
			for(Image i : list)
			{
				i.setRefseq(hi.getInfoSeq());
				result = dao.insertInfoImage(i);
				if(result<=0)
				{
					throw new RuntimeException();
				}		
			}
		}
		return result;
	}

	@Override
	public HealthInfo selectOne(int no) {
		return dao.selectOne(no);
	}

	@Override
	public List<String> infoImageList(int no) {
		return dao.infoImageList(no);
	}

	@Override
	@Transactional(rollbackFor = RuntimeException.class)
	public int deleteInfo(int infoSeq, List<String> list) {
		int result;
		if(list != null && list.size()>0)
		{
			for(int i=0; i<list.size(); i++)
			{
				result = dao.deleteInfoImage(list.get(i));
				if(result<1)
				{
					throw new RuntimeException();
				}
			}
		}
		result = dao.deleteInfo(infoSeq);
		if(result<1)
		{
			throw new RuntimeException();
		}
		return result;
	}
	
}
