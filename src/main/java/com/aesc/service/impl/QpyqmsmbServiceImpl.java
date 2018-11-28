/**  
 * Project Name:aescContract  
 * File Name:QpyqmsmbServiceImpl.java  
 * Package Name:com.aesc.service.impl  
 * Date:2017年8月11日上午11:21:29  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/  
  
package com.aesc.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.aesc.dao.QpyqmsmbDao;
import com.aesc.pojo.Qpyqmsmb;
import com.aesc.service.QpyqmsmbService;

/**  
 * ClassName:QpyqmsmbServiceImpl <br/>  
 * Function: TODO ADD FUNCTION. <br/>  
 * Reason:   TODO ADD REASON. <br/>  
 * Date:     2017年8月11日 上午11:21:29 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */

@Transactional
@Service("QpyqmsmbService")
public class QpyqmsmbServiceImpl implements QpyqmsmbService {

    @Resource
    private QpyqmsmbDao qpyqmsmbDao;
    
    /**
     * 
     * 
     *实现类
     * @param qpyqmsmb
     * @see com.aesc.service.QpyqmsmbService#saveQpyqmsmb(com.aesc.pojo.Qpyqmsmb)
     * 时间：2017年8月11日 上午11:24:08；
     */
    @Override
    public void saveQpyqmsmb(Qpyqmsmb qpyqmsmb) {
        qpyqmsmbDao.saveQpyqmsmb(qpyqmsmb);
        // TODO Auto-generated method stub  

    }
/**
 * 
 * 
 *实现类
 * @return
 * @see com.aesc.service.QpyqmsmbService#queryQpyqmsmb()
 * 时间：2017年8月11日 上午11:24:13；
 */
    @Override
    public List<Qpyqmsmb> queryQpyqmsmb() {

        // TODO Auto-generated method stub  
        return this.qpyqmsmbDao.queryQpyqmsmb();
    }
/**
 * 
 * 
 *实现类
 * @param contract_id
 * @return
 * @see com.aesc.service.QpyqmsmbService#queryQpyqmsmbById(int)
 * 时间：2017年8月11日 上午11:24:16；
 */
    @Override
    public Qpyqmsmb queryQpyqmsmbById(int contract_id) {

        // TODO Auto-generated method stub  
        return this.qpyqmsmbDao.queryQpyqmsmbById(contract_id);
    }
    
@Override
public boolean updateQpyqmsmb(Qpyqmsmb qpyqmsmb) {
    
  // TODO Auto-generated method stub  
  return this.qpyqmsmbDao.updateQpyqmsmb(qpyqmsmb);
}

}
  
