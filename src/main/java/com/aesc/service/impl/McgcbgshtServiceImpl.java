package com.aesc.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.aesc.dao.McgcbgshtDao;
import com.aesc.pojo.Mcgcbgsht;
import com.aesc.service.McgcbgshtService;
@Transactional
@Service("McgcbgshtService")
public class McgcbgshtServiceImpl implements McgcbgshtService {

 
	@Resource
	private McgcbgshtDao mcgcbgshtDao;
	/**
	 * 
	 * 
	 *实现类
	 * @param mcgcbgsht
	 * @see com.aesc.service.McgcbgshtService#SaveMcgcbgsht(com.aesc.pojo.Mcgcbgsht)
	 */
	
	@Override
	public void SaveMcgcbgsht(Mcgcbgsht mcgcbgsht) {
		mcgcbgshtDao.SaveMcgcbgsht(mcgcbgsht);

	}
	/**
	 * 
	 * 
	 *实现类
	 * @return
	 * @see com.aesc.service.McgcbgshtService#queryMcgcbgsht()
	 */
	@Override
	public List<Mcgcbgsht> queryMcgcbgsht() {
		// TODO Auto-generated method stub
		return this.mcgcbgshtDao.queryMcgcbgsht();
	}
	/**
	 * 
	 * 
	 *实现类
	 * @param contract_id
	 * @return
	 * @see com.aesc.service.McgcbgshtService#querymcgcbgshtListById(int)
	 */
	@Override
	public Mcgcbgsht querymcgcbgshtListById(int contract_id) {
		// TODO Auto-generated method stub
		return this.mcgcbgshtDao.querymcgcbgshtListById(contract_id);
	}
  @Override
  public boolean updateMcgcbgsht(Mcgcbgsht mcgcbgsht) {
    boolean flag = mcgcbgshtDao.updateMcgcbgsht(mcgcbgsht);
    return flag;
  }

}
