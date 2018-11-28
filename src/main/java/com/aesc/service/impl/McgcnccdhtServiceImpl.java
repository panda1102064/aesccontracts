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
/**
 * 
 * 
 *实现类
 * @param mcgcnccdht
 * @see com.aesc.service.McgcnccdhtService#saveMcgcnccdht(com.aesc.pojo.Mcgcnccdht)
 */
	@Override
	public void saveMcgcnccdht(Mcgcnccdht mcgcnccdht) {
		mcgcnccdhtDao.saveMcgcnccdht(mcgcnccdht);

	}
@Override
public List<Mcgcnccdht> queryMcgcnccdht() {
	// TODO Auto-generated method stub
	return this.mcgcnccdhtDao.queryMcgcbgsht();
}
@Override
public Mcgcnccdht queryMcgcnccdhtById(int contract_id) {
	// TODO Auto-generated method stub
	return this.mcgcnccdhtDao.queryMcgcbgshtById(contract_id);
}
@Override
public boolean updateMcgcnccdht(Mcgcnccdht mcgcnccdht) {
    boolean flag = mcgcnccdhtDao.updateMcgcnccdht(mcgcnccdht);
  // TODO Auto-generated method stub  
  return flag;
}

}
