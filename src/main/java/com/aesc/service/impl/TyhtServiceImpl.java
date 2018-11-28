/**  
 * Project Name:aescContract  
 * File Name:TyhtServiceImpl.java  
 * Package Name:com.aesc.service.impl  
 * Date:2017年8月17日上午9:59:38  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/  
  
package com.aesc.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.aesc.dao.TyhtDao;
import com.aesc.pojo.Tyht;
import com.aesc.service.TyhtService;

/**  
 * ClassName:TyhtServiceImpl <br/>  
 * Function: TODO ADD FUNCTION. <br/>  
 * Reason:   TODO ADD REASON. <br/>  
 * Date:     2017年8月17日 上午9:59:38 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */

@Transactional
@Service("TyhtService")
public class TyhtServiceImpl implements TyhtService {

  @Resource
  private TyhtDao tyhtDao;
  
  @Override
  public void saveTyht(Tyht tyht) {

    tyhtDao.saveTyht(tyht);

  }

  @Override
  public List<Tyht> queryTyht() {

    // TODO Auto-generated method stub  
    return this.tyhtDao.queryTyht();
  }

  @Override
  public Tyht queryTyhtById(int contract_id) {

    // TODO Auto-generated method stub  
    return this.tyhtDao.queryTyhtById(contract_id);
  }

  @Override
  public boolean updateTyht(Tyht tyht) {
      
    // TODO Auto-generated method stub  
    return this.tyhtDao.updateTyht(tyht);
  }

}
  
