package com.aesc.service.impl;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.aesc.dao.CwDao;
import com.aesc.pojo.Cw;
import com.aesc.service.CwService;
@Transactional
@Service("CwService")
public class CwServiceImpl implements CwService {

	@Resource
	private CwDao cwDao;
	
	@Override
	public ArrayList<Cw> queryAll() {
		return this.cwDao.queryAll();
	}

	@Override
	public void save(Cw cw) {
		cwDao.save(cw);
	}

	@Override
	public Cw queryById(int contract_id) {
		return this.cwDao.queryById(contract_id);
	}

  @Override
  public boolean updateCw(Cw cw) {
    return this.cwDao.updateCw(cw);
  }

}
