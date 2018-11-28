package com.aesc.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.aesc.dao.QpsqmsmbDao;
import com.aesc.pojo.Qpsqmsmb;
import com.aesc.service.QpsqmsmbService;
@Transactional
@Service("QpsqmsmbService")
public class QpsqmsmbServiceImpl implements QpsqmsmbService {

	@Resource
	private QpsqmsmbDao qpsqmsmbDao;
	
	@Override
	public void saveQpsqmsmb(Qpsqmsmb qpsqmsmb) {
		qpsqmsmbDao.saveQpsqmsmb(qpsqmsmb);
	}

	@Override
	public List<Qpsqmsmb> queryQpsqmsmb() {
		return this.qpsqmsmbDao.queryQpsqmsmb();
	}

	@Override
	public Qpsqmsmb queryQpsqmsmbById(int contract_id) {
		return this.qpsqmsmbDao.queryQpsqmsmbById(contract_id);
	}

  @Override
  public boolean updateQpsqmsmb(Qpsqmsmb qpsqmsmb) {
    return this.qpsqmsmbDao.updateQpsqmsmb(qpsqmsmb);
  }

}
