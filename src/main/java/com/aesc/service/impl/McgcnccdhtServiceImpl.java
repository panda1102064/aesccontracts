package com.aesc.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.aesc.dao.McgcnccdhtDao;
import com.aesc.pojo.Mcgcnccdht;
import com.aesc.service.McgcnccdhtService;
@Transactional
@Service("McgcnccdhtService")
public class McgcnccdhtServiceImpl implements McgcnccdhtService {
	
	@Resource
	private McgcnccdhtDao mcgcnccdhtDao;

	@Override
	public void saveMcgcnccdht(Mcgcnccdht mcgcnccdht) {
		mcgcnccdhtDao.saveMcgcnccdht(mcgcnccdht);

	}
@Override
public List<Mcgcnccdht> queryMcgcnccdht() {
	return this.mcgcnccdhtDao.queryMcgcbgsht();
}
@Override
public Mcgcnccdht queryMcgcnccdhtById(int contract_id) {
	return this.mcgcnccdhtDao.queryMcgcbgshtById(contract_id);
}
@Override
public boolean updateMcgcnccdht(Mcgcnccdht mcgcnccdht) {
    boolean flag = mcgcnccdhtDao.updateMcgcnccdht(mcgcnccdht);
    return flag;
}

}
