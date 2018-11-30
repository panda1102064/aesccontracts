/**  
 * Project Name:aescContract  
 * File Name:DslqhtServiceImpl.java  
 * Package Name:com.aesc.service.impl  
 * Date:2017年8月18日下午4:35:08  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/  
  
package com.aesc.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.aesc.dao.DslqhtDao;
import com.aesc.pojo.DslqDate;
import com.aesc.pojo.Dslqht;
import com.aesc.service.DslqhtService;

/**  
 * ClassName:DslqhtServiceImpl <br/>  
 * Function: TODO ADD FUNCTION. <br/>  
 * Reason:   TODO ADD REASON. <br/>  
 * Date:     2017年8月18日 下午4:35:08 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */

@Transactional
@Service("DslqhtService")
public class DslqhtServiceImpl implements DslqhtService {

  @Resource
  private DslqhtDao dslqhtDao;
  
  @Override
  public void saveDslqht(Dslqht dslqht) {
    dslqhtDao.saveDslqht(dslqht);

  }

  @Override
  public List<Dslqht> queryDslqht() {
    return this.dslqhtDao.queryDslqht();
  }

  @Override
  public Dslqht queryDslqhtById(int contract_id) {
    return this.dslqhtDao.queryDslqhtById(contract_id);
  }

  @Override
  public void saveDslqDate(DslqDate dslqDate) {
   // dslqDate.setContract_id(dslqhtDao.getDslqId());
    dslqhtDao.saveDslqDate(transverterDslqList(dslqDate));
    
  }

  @Override
  public List<DslqDate> queryDslqDateById(int contract_id){
    return this.dslqhtDao.queryDslqDateById(contract_id);
  }

  @Override
  public List<DslqDate> transverterDslqList(DslqDate dslqDate) {
    List<DslqDate> list = new ArrayList<DslqDate>();
    int dslqknId = dslqhtDao.getDslqId();
    if(dslqDate == null){
      return null;
    }else{
      String[] yearStr = dslqDate.getYear_str().split(",");
      String[] monthStr = dslqDate.getMonth_str().split(",");
      String[] dayStr = dslqDate.getDay_str().split(",");
      String[] yearEnd = dslqDate.getYear_ed().split(",");
      String[] monthEnd = dslqDate.getMonth_ed().split(",");
      String[] dayEnd = dslqDate.getDay_ed().split(",");
      String[] price = dslqDate.getPrice().split(",");
      String[] total = dslqDate.getTotal().split(",");
      String[] upper1 = dslqDate.getUpper1().split(",");
      for (int i = 0; i < yearStr.length; i++) {
        DslqDate dslq = new DslqDate();
        dslq.setContract_id(Integer.toString(dslqknId));
        dslq.setYear_str(yearStr[i]);
        dslq.setMonth_str(monthStr[i]);
        dslq.setDay_str(dayStr[i]);
        dslq.setYear_ed(yearEnd[i]);
        dslq.setMonth_ed(monthEnd[i]);
        dslq.setDay_ed(dayEnd[i]);
        dslq.setPrice(price[i]);
        dslq.setTotal(total[i]);
        dslq.setUpper1(upper1[i]);
        list.add(dslq);
      }
    }
    return list;
  }

  @Override
  public boolean updateDslqht(Dslqht dslqht) {
    // TODO Auto-generated method stub  
    return this.dslqhtDao.updateDslqht(dslqht);
  }

  @Override
  public boolean updateDslqDate(DslqDate dslqDate) {
    boolean flag = false;
    if(dslqDate == null){
      return flag;
    }else{
      String[] date_id = dslqDate.getDate_id().split(",");
      String[] yearStr = dslqDate.getYear_str().split(",");
      String[] monthStr = dslqDate.getMonth_str().split(",");
      String[] dayStr = dslqDate.getDay_str().split(",");
      String[] yearEnd = dslqDate.getYear_ed().split(",");
      String[] monthEnd = dslqDate.getMonth_ed().split(",");
      String[] dayEnd = dslqDate.getDay_ed().split(",");
      String[] price = dslqDate.getPrice().split(",");
      String[] total = dslqDate.getTotal().split(",");
      String[] upper1 = dslqDate.getUpper1().split(",");
      for (int i = 0; i < yearStr.length; i++) {
        DslqDate dslq = new DslqDate();
        dslq.setDate_id((date_id[i]));
        dslq.setYear_str(yearStr[i]);
        dslq.setMonth_str(monthStr[i]);
        dslq.setDay_str(dayStr[i]);
        dslq.setYear_ed(yearEnd[i]);
        dslq.setMonth_ed(monthEnd[i]);
        dslq.setDay_ed(dayEnd[i]);
        dslq.setPrice(price[i]);
        dslq.setTotal(total[i]);
        dslq.setUpper1(upper1[i]);
        flag = dslqhtDao.updateDslqDate(dslq);
      }
    }
    return flag;
  }

  @Override
  public List<String> getDateId(int updateDslqDateContractId) {
    return this.dslqhtDao.getDateId(updateDslqDateContractId);
  }

  @Override
  public List<DslqDate> transvertDslqList(DslqDate dslqDate) {
    List<DslqDate> list = new ArrayList<DslqDate>();
    if(dslqDate == null){
      return null;
    }else{
      String[] date_id = dslqDate.getDate_id().split(",");
      String[] yearStr = dslqDate.getYear_str().split(",");
      String[] monthStr = dslqDate.getMonth_str().split(",");
      String[] dayStr = dslqDate.getDay_str().split(",");
      String[] yearEnd = dslqDate.getYear_ed().split(",");
      String[] monthEnd = dslqDate.getMonth_ed().split(",");
      String[] dayEnd = dslqDate.getDay_ed().split(",");
      String[] price = dslqDate.getPrice().split(",");
      String[] total = dslqDate.getTotal().split(",");
      String[] upper1 = dslqDate.getUpper1().split(",");
      for (int i = 0; i < yearStr.length; i++) {
        DslqDate dslq = new DslqDate();
        dslq.setDate_id((date_id[i]));
        dslq.setYear_str(yearStr[i]);
        dslq.setMonth_str(monthStr[i]);
        dslq.setDay_str(dayStr[i]);
        dslq.setYear_ed(yearEnd[i]);
        dslq.setMonth_ed(monthEnd[i]);
        dslq.setDay_ed(dayEnd[i]);
        dslq.setPrice(price[i]);
        dslq.setTotal(total[i]);
        dslq.setUpper1(upper1[i]);
        list.add(dslq);
      }
    }
    return list;
  }
}
