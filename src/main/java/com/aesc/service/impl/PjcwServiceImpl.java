package com.aesc.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.aesc.dao.PjcwDao;
import com.aesc.pojo.Pjcw;
import com.aesc.service.PjcwService;

@Transactional
@Service("PjcwService")
public class PjcwServiceImpl implements PjcwService {

	@Resource
	private PjcwDao pjcwDao;
	
	@Override
	public void savePjcw(Pjcw pjcw) {
		pjcwDao.savePjcw(pjcw);

	}
/**
 * 
 * 
 *实现类
 * @return
 * @see com.aesc.service.PjcwService#queryPjcw()
 */
	@Override
	public List<Pjcw> queryPjcw() {
		// TODO Auto-generated method stub
		return this.pjcwDao.queryPjcw();
	}
	/**
	 * 
	 * 
	 *实现类
	 * @param contract_id
	 * @return
	 * @see com.aesc.service.PjcwService#queryPjcwListById(int)
	 */
@Override
public Pjcw queryPjcwListById(int contract_id) {
	// TODO Auto-generated method stub
	return this.pjcwDao.queryPjcwListById(contract_id);
}
  @Override
  public boolean updatePjcw(Pjcw pjcw) {
      
    // TODO Auto-generated method stub  
    return this.pjcwDao.updatePjcw(pjcw);
  }

}
