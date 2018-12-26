/**  
 * Project Name:aescContract  
 * File Name:SsmbServiceImpl.java  
 * Package Name:com.aesc.service.impl  
 * Date:2017年8月14日上午11:32:33  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/  
  
package com.aesc.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.aesc.dao.SsmbDao;
import com.aesc.pojo.Ssmb;
import com.aesc.service.SsmbService;

/**  
 * ClassName:SsmbServiceImpl <br/>  
 * Function:  ADD FUNCTION. <br/>  
 * Reason:    ADD REASON. <br/>  
 * Date:     2017年8月14日 上午11:32:33 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */

@Transactional
@Service("SsmbService")
public class SsmbServiceImpl implements SsmbService {

  @Resource
  private SsmbDao ssmbDao; 
  
  @Override
  public void saveSsmb(Ssmb ssmb) {
    ssmbDao.saveSsmb(ssmb);
  }

  @Override
  public List<Ssmb> querySsmb() {
    return this.ssmbDao.querySsmb();
  }

  @Override
  public Ssmb querySsmbById(int contract_id) {
    return this.ssmbDao.querySsmbById(contract_id);
  }

  @Override
  public boolean updateSsmb(Ssmb ssmb) {
    boolean flag = ssmbDao.updateSsmb(ssmb);
    return flag;
  }

}
  
