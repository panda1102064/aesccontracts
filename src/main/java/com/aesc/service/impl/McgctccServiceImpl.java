/**  
 * Project Name:aescContract  
 * File Name:McgctccServiceImpl.java  
 * Package Name:com.aesc.service.impl  
 * Date:2017年12月12日上午9:58:35  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/  
  
package com.aesc.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.aesc.dao.McgctccDao;
import com.aesc.pojo.Mcgctcc;
import com.aesc.service.McgctccService;

/**  
 * ClassName:McgctccServiceImpl <br/>  
 * Function: TODO ADD FUNCTION. <br/>  
 * Reason:   TODO ADD REASON. <br/>  
 * Date:     2017年12月12日 上午9:58:35 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */
@Transactional
@Service("McgctccService")
public class McgctccServiceImpl implements McgctccService {

  @Resource
  private McgctccDao mcgctccDao;
  @Override
  public void saveMcgctcc(Mcgctcc mcgctcc) {
      mcgctccDao.saveMcgctcc(mcgctcc);
  }
  @Override
  public List<Mcgctcc> queryMcgctcc() {
    return this.mcgctccDao.queryMcgctcc();
  }
  @Override
  public Mcgctcc queryMcgctccById(int contract_id) {
    return this.mcgctccDao.queryMcgctccById(contract_id);
  }
  @Override
  public boolean updateMcgctcc(Mcgctcc mcgctcc) {
    return this.mcgctccDao.updateMcgctcc(mcgctcc);
  }

}
  
