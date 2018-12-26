package com.aesc.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.aesc.dao.McgcwzcxmbDao;
import com.aesc.pojo.Mcgcwzcxmb;
import com.aesc.service.McgcwzcxmbService;
@Transactional
@Service("McgcwzcxmbService")
public class McgcwzcxmbServiceImpl implements McgcwzcxmbService {

	@Resource
	private McgcwzcxmbDao mcgcwzcxmbDao;
	@Override
	public void saveMcgcwzcxmb(Mcgcwzcxmb mcgcwzcxmb) {
		mcgcwzcxmbDao.saveMcgcwzcxmb(mcgcwzcxmb);

	}

	@Override
	public List<Mcgcwzcxmb> queryMcgcwzcxmb() {
		return this.mcgcwzcxmbDao.queryMcgcwzcxmb();
	}
	
	@Override
	public Mcgcwzcxmb queryMcgcwzcxmbById(int contract_id) {
		return this.mcgcwzcxmbDao.queryMcgcwzcxmbById(contract_id);
	}
	
  @Override
  public boolean updateMcgcwzcxmb(Mcgcwzcxmb mcgcwzcxmb) {
    boolean flag = mcgcwzcxmbDao.updateMcgcwzcxmb(mcgcwzcxmb);
    return flag;
  }

}
