package com.aesc.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.aesc.dao.PjcwDao;
import com.aesc.pojo.Pjcw;
import com.aesc.service.PjcwService;

@Transactional
@Service("PjcwService")
public class PjcwServiceImpl implements PjcwService {

	@Resource
	private PjcwDao pjcwDao;
	
	@Override
	public void savePjcw(Pjcw pjcw) {
		pjcwDao.savePjcw(pjcw);

	}

	@Override
	public List<Pjcw> queryPjcw() {
		return this.pjcwDao.queryPjcw();
	}

	@Override
  public Pjcw queryPjcwListById(int contract_id) {
  	return this.pjcwDao.queryPjcwListById(contract_id);
  }
  
  @Override
  public boolean updatePjcw(Pjcw pjcw) {
    return this.pjcwDao.updatePjcw(pjcw);
  }

}
