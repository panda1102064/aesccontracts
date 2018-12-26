package com.aesc.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.aesc.dao.DscwcktcwDao;
import com.aesc.pojo.Dscwcktcw;
import com.aesc.service.DscwcktcwService;
@Transactional
@Service("DscwcktcwService")
public class DscwcktcwServiceImpl implements DscwcktcwService {

	@Resource
	private DscwcktcwDao dscwcktcwDao;
	
	@Override
	public void saveDscwcktcw(Dscwcktcw dscwcktcw) {
		dscwcktcwDao.saveDscwcktcw(dscwcktcw);
	}

	@Override
	public List<Dscwcktcw> queryDscwcktcw() {
		return this.dscwcktcwDao.queryDscwcktcwAll();
	}

	@Override
	public Dscwcktcw queryDscwcktcwById(int contract_id) {
		return this.dscwcktcwDao.queryDscwcktcwById(contract_id);
	}

  @Override
  public boolean updateDscwcktcw(Dscwcktcw dscwcktcw) {
    return this.dscwcktcwDao.updateDscwcktcw(dscwcktcw);
  }

}
