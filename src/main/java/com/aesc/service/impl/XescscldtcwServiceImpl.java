/**  
 * Project Name:aescContract  
 * File Name:XescscldtcwServiceImpl.java  
 * Package Name:com.aesc.service.impl  
 * Date:2017年8月17日下午1:35:35  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/

package com.aesc.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.aesc.dao.XescscldtcwDao;
import com.aesc.pojo.Xescscldtcw;
import com.aesc.service.XescscldtcwService;

/**
 * ClassName:XescscldtcwServiceImpl <br/>
 * Function: TODO ADD FUNCTION. <br/>
 * Reason: TODO ADD REASON. <br/>
 * Date: 2017年8月17日 下午1:35:35 <br/>
 * 
 * @author Dawn Chen
 * @version
 * @since JDK 1.8
 * @see
 */

@Transactional
@Service("XescscldtcwService")
public class XescscldtcwServiceImpl implements XescscldtcwService {

  @Resource
  private XescscldtcwDao xescscldtcwDao;

  @Override
  public void saveXescscdxtcw(Xescscldtcw xescscldtcw) {
    xescscldtcwDao.saveXescscdxtcw(xescscldtcw);
  }

  @Override
  public List<Xescscldtcw> queryXescscldtcw() {

    // TODO Auto-generated method stub
    return this.xescscldtcwDao.queryXescscldtcw();
  }

  @Override
  public Xescscldtcw queryXescscldtcwById(int contract_id) {

    // TODO Auto-generated method stub
    return this.xescscldtcwDao.queryXescscldtcwById(contract_id);
  }

  @Override
  public boolean updateXescscldtcw(Xescscldtcw xescscldtcw) {
      
    // TODO Auto-generated method stub  
    return this.xescscldtcwDao.updateXescscldtcw(xescscldtcw);
  }

}
