package com.aesc.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.aesc.dao.Lsyf_wwgfDao;
import com.aesc.pojo.Lsyf_wwgf;
import com.aesc.service.Lsyf_wwgfService;
@Transactional
@Service("Lsyf_wwgfService")
public class Lsyf_wwgfServiceImpl implements Lsyf_wwgfService {

	@Resource
	private Lsyf_wwgfDao lsyf_wwgfDao;
	@Override
	public void saveLsyf_wwgf(Lsyf_wwgf lsyf_wwgf) {
		lsyf_wwgfDao.saveLsyf_wwgf(lsyf_wwgf);

	}
	@Override
	public List<Lsyf_wwgf> queryLsyf_wwgf() {
		return this.lsyf_wwgfDao.queryLsyf_wwgf();
	}
	@Override
	public Lsyf_wwgf queryLsyf_wwgfById(int contract_id) {
		return this.lsyf_wwgfDao.queryLsyf_wwgfById(contract_id);
	}
  @Override
  public boolean updateLsyf_wwgf(Lsyf_wwgf lsyf_wwgf) {
    return this.lsyf_wwgfDao.updateLsyf_wwgf(lsyf_wwgf);
  }
	
}
