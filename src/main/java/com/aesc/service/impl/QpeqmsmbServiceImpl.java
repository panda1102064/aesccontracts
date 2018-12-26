package com.aesc.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.aesc.dao.QpeqmsmbDao;
import com.aesc.pojo.Qpeqmsmb;
import com.aesc.service.QpeqmsmbService;
@Transactional
@Service("QpeqmsmbService")
public class QpeqmsmbServiceImpl implements QpeqmsmbService {

	@Resource
	private QpeqmsmbDao qpeqmsmbDao;
	/**
	 * 
	 * 
	 *实现类
	 * @param qpeqmsmb
	 * @see com.aesc.service.QpeqmsmbService#saveQpeqmsmb(com.aesc.pojo.Qpeqmsmb)
	 */
	@Override
	public void saveQpeqmsmb(Qpeqmsmb qpeqmsmb) {
		qpeqmsmbDao.saveQpeqmsmb(qpeqmsmb);
	}
	/**
	 * 
	 *实现类
	 * @return
	 * @see com.aesc.service.QpeqmsmbService#queryQpeqmsmb()
	 */
	@Override
	public List<Qpeqmsmb> queryQpeqmsmb() {
		return this.qpeqmsmbDao.queryQpeqmsmb();
	}
	/**
	 * 
	 *实现类
	 * @param contract_id
	 * @return
	 * @see com.aesc.service.QpeqmsmbService#queryQpeqmsmbById(int)
	 */
	@Override
	public Qpeqmsmb queryQpeqmsmbById(int contract_id) {
		return this.qpeqmsmbDao.queryQpeqmsmbById(contract_id);
	}
	
  @Override
  public boolean updateQpeqmsmb(Qpeqmsmb qpeqmsmb) {
    return this.qpeqmsmbDao.updateQpeqmsmb(qpeqmsmb);
  }

}
