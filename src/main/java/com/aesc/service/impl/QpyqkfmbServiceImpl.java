package com.aesc.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.aesc.dao.QpyqkfmbDao;
import com.aesc.pojo.Qpyqkfmb;
import com.aesc.service.QpyqkfmbService;
@Transactional
@Service("QpyqkfmbService")
public class QpyqkfmbServiceImpl implements QpyqkfmbService {

	@Resource
	private QpyqkfmbDao qpyqkfmbDao;
	
	@Override
	public void saveQpyqkfmb(Qpyqkfmb qpyqkfmb) {
		// TODO Auto-generated method stub
		qpyqkfmbDao.saveQpyqkfmb(qpyqkfmb);
	}

	@Override
	public List<Qpyqkfmb> queryQpyqkfmb() {
		// TODO Auto-generated method stub
		return this.qpyqkfmbDao.queryQpyqkfmb();
	}

	@Override
	public Qpyqkfmb queryQpyqkfmbById(int contract_id) {
		// TODO Auto-generated method stub
		return this.qpyqkfmbDao.queryQpyqkfmbById(contract_id);
	}

  @Override
  public boolean updateQpyqkfmb(Qpyqkfmb qpyqkfmb) {
      
    // TODO Auto-generated method stub  
    return this.qpyqkfmbDao.updateQpyqkfmb(qpyqkfmb);
  }

}
