package com.aesc.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.aesc.dao.QpsqkfmbDao;
import com.aesc.pojo.Qpsqkfmb;
import com.aesc.service.QpsqkfmbService;
@Transactional
@Service("QpsqkfmbService")
public class QpsqkfmbServiceImpl implements QpsqkfmbService {

	@Resource
	private QpsqkfmbDao qpsqkfmbDao;
	
	@Override
	public void saveQpsqkfmb(Qpsqkfmb qpsqkfmb) {
		qpsqkfmbDao.saveQpsqkfmb(qpsqkfmb);

	}
	@Override
	public List<Qpsqkfmb> queryQpsqkfmb() {
		return this.qpsqkfmbDao.queryQpsqkfmb();
	}
	@Override
	public Qpsqkfmb queryQpsqkfmbById(int contract_id) {
		return this.qpsqkfmbDao.queryQpsqkfmbById(contract_id);
	}
  @Override
  public boolean updateQpsqkfmb(Qpsqkfmb qpsqkfmb) {
    return this.qpsqkfmbDao.updateQpsqkfmb(qpsqkfmb) ;
  }

}
