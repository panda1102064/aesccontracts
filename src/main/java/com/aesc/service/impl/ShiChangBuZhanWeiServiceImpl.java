/**  
 * Project Name:aescContract  
 * File Name:ShiChangBuZhanWeiServiceImpl.java  
 * Package Name:com.aesc.service.impl  
 * Date:2017年9月29日下午2:46:55  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/  
  
package com.aesc.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.aesc.dao.ShiChangBuZhanWeiDao;
import com.aesc.pojo.ShiChangBuZhanWeiHeTongTimes;
import com.aesc.pojo.ShiChangBuZhanWeiHeTong;
import com.aesc.service.ShiChangBuZhanWeiService;

/**  
 * ClassName:ShiChangBuZhanWeiServiceImpl <br/>  
 * Function:  ADD FUNCTION. <br/>  
 * Reason:    ADD REASON. <br/>  
 * Date:     2017年9月29日 下午2:46:55 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */
@Transactional
@Service("ShiChangBuZhanWeiService")
public class ShiChangBuZhanWeiServiceImpl implements ShiChangBuZhanWeiService {

  @Resource
  private ShiChangBuZhanWeiDao zwDao;
  
  /**
   *实现类
   * @param zeHt
   * @param zwTime
   * @see com.aesc.service.ShiChangBuZhanWeiService#saveHt(com.aesc.pojo.ShiChangBuZhanWeiHeTong, com.aesc.pojo.ShiChangBuZhanWeiHeTongTimes)
   * 时间：2017年9月30日 上午9:17:23；
   */
  @Override
  public void saveHt(ShiChangBuZhanWeiHeTong zeHt, ShiChangBuZhanWeiHeTongTimes zwTime) {
    zwDao.saveHt(zeHt);
    zwTime.setContract_id(zwDao.getZwId());
    zwDao.saveHtime(zwTime);
    
  }

  /**
   *实现类
   * @return
   * @see com.aesc.service.ShiChangBuZhanWeiService#queryZwht()
   * 时间：2017年9月30日 下午3:27:22；
   */
  @Override
  public List<ShiChangBuZhanWeiHeTong> queryZwht() {
    return this.zwDao.queryZwht();
  }

  /**
   *实现类
   * @param contract_id
   * @return
   * @see com.aesc.service.ShiChangBuZhanWeiService#queryZwhtById(int)
   * 时间：2017年9月30日 下午3:49:31；
   */
  @Override
  public ShiChangBuZhanWeiHeTong queryZwhtById(int contract_id) {
    return this.zwDao.queryZwhtById(contract_id);
  }

  /**
   *实现类
   * @param contract_id
   * @return
   * @see com.aesc.service.ShiChangBuZhanWeiService#queryZwhtTimeById(int)
   * 时间：2017年9月30日 下午3:49:35；
   */
  @Override
  public ShiChangBuZhanWeiHeTongTimes queryZwhtTimeById(int contract_id) {
    return this.zwDao.queryZwhtTimeById(contract_id);
  }

  /**
   *实现类
   * @param zwTimes
   * @return
   * @see com.aesc.service.ShiChangBuZhanWeiService#transverterZhanWeiHeTongTimesList(com.aesc.pojo.ShiChangBuZhanWeiHeTongTimes)
   * 时间：2017年9月30日 下午3:49:40；
   */
  @Override
  public List<ShiChangBuZhanWeiHeTongTimes> transverterZhanWeiHeTongTimesList(ShiChangBuZhanWeiHeTongTimes zwTimes) {
    List<ShiChangBuZhanWeiHeTongTimes> list = new ArrayList<ShiChangBuZhanWeiHeTongTimes>();
    if(zwTimes == null){
      return null;
    }else{
      String[] pay_year = zwTimes.getPay_year().split(",");
      String[] pay_month = zwTimes.getPay_month().split(",");
      String[] pay_day = zwTimes.getPay_day().split(",");
      String[] percents = zwTimes.getPercents().split(",");
      String[] amounts = zwTimes.getAmounts().split(",");
      String[] pay_upper = zwTimes.getPay_upper().split(",");
      for (int i = 0; i < pay_year.length; i++) {
        ShiChangBuZhanWeiHeTongTimes zwt = new ShiChangBuZhanWeiHeTongTimes();
        zwt.setPay_year(pay_year[i]);
        zwt.setPay_month(pay_month[i]);
        zwt.setPay_day(pay_day[i]);
        zwt.setPercents(percents[i]);
        zwt.setAmounts(amounts[i]);
        zwt.setPay_upper(pay_upper[i]);
        list.add(zwt);
      }
    }
    return list;
  }
}
