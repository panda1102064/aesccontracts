package com.aesc.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.aesc.dao.DscwswtcwDao;
import com.aesc.pojo.Dscwswtcw;
import com.aesc.service.DscwswtcwService;
@Transactional
@Service("DscwswtcwService")
public class DscwswtcwServiceImpl implements DscwswtcwService {

	@Resource
	private DscwswtcwDao dscwswtcwDao;
	@Override
	public void saveDscwswtcw(Dscwswtcw dscwswtcw) {
		dscwswtcwDao.saveDscwswtcw(dscwswtcw);
	}
	@Override
	public List<Dscwswtcw> queryDscwswtcw() {
		return this.dscwswtcwDao.queryDscwswtcw();
	}
	@Override
	public Dscwswtcw queryDscwswtcwById(int contract_id) {
		return this.dscwswtcwDao.queryDscwswtcwById(contract_id);
	}
  @Override
  public boolean updateDscwswtcw(Dscwswtcw dscwswtcw) {
    return this.dscwswtcwDao.updateDscwswtcw(dscwswtcw);
  }

}
