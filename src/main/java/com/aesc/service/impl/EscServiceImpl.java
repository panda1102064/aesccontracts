/**  
 * Project Name:aescContract  
 * File Name:EscServiceImpl.java  
 * Package Name:com.aesc.service.impl  
 * Date:2017年8月23日上午9:57:10  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/  
  
package com.aesc.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.aesc.dao.EscDao;
import com.aesc.pojo.Esc;
import com.aesc.pojo.EscDate;
import com.aesc.service.EscService;

/**  
 * ClassName:EscServiceImpl <br/>  
 * Function:  ADD FUNCTION. <br/>  
 * Reason:    ADD REASON. <br/>  
 * Date:     2017年8月23日 上午9:57:10 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */

@Transactional
@Service("EscService")
public class EscServiceImpl implements EscService {
  
  @Resource
  private EscDao escDao;
  
  @Override
  public List<Esc> queryEsc() {
    return this.escDao.queryEsc();
  }

  @Override
  public Esc queryEscById(int contract_id) {
    return this.escDao.queryEscById(contract_id);
  }

  @Override
  public List<EscDate> queryEscDateById(int contract_id) {
    return this.escDao.queryEscDateById(contract_id);
  }

  @Override
  public void saveEsc(Esc esc) {
   escDao.saveEsc(esc);
  }

  @Override
  public void saveEscDate(EscDate escDate) {
    List<EscDate> escDateList = transverterEscList(escDate);
    escDao.saveEscDate(escDateList);
  }


  /**
   * 方法名称: transverterEscList ；
   * 方法描述:  : 将二手车的第七条日期类条例对象转换成List存入数据库，对象多条时，是用“，”作的分隔。  ；
   * 返回类型: List<EscDate> ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月30日 下午5:19:07；
   * @throws
   */
  @Override
  public List<EscDate> transverterEscList(EscDate escDate) {
    List<EscDate> list = new ArrayList<EscDate>();
    //设置主合同的id，用来作关联。一对多
    int escId = escDao.getEscId();
    if(escDate == null){
      return null;
    }else{
      String[] yearStr = escDate.getYear_str().split(",");
      String[] monthStr = escDate.getMonth_str().split(",");
      String[] dayStr = escDate.getDay_str().split(",");
      String[] yearEnd = escDate.getYear_ed().split(",");
      String[] monthEnd = escDate.getMonth_ed().split(",");
      String[] dayEnd = escDate.getDay_ed().split(",");
      String[] price = escDate.getPrice().split(",");
      String[] total = escDate.getTotal().split(",");
      for (int i = 0; i < yearStr.length; i++) {
        EscDate esc = new EscDate();
        esc.setContract_id(escId);
        esc.setYear_str(yearStr[i]);
        esc.setMonth_str(monthStr[i]);
        esc.setDay_str(dayStr[i]);
        esc.setYear_ed(yearEnd[i]);
        esc.setMonth_ed(monthEnd[i]);
        esc.setDay_ed(dayEnd[i]);
        esc.setPrice(price[i]);
        esc.setTotal(total[i]);
        list.add(esc);
      }
    }
    return list;
  }
  
 /**
  * 二手车合同更新
  */
  @Override
  public boolean updateEsc(Esc esc) {
    return this.escDao.updateEsc(esc);
  }

  /**
   * 二手车合同日期类更新
   */
  @Override
  public boolean updateEscDate(EscDate escDate) {
    if(escDate == null){
      return false;
    }else{
      String[] date_id = escDate.getDate_id().split(",");
      String[] yearStr = escDate.getYear_str().split(",");
      String[] monthStr = escDate.getMonth_str().split(",");
      String[] dayStr = escDate.getDay_str().split(",");
      String[] yearEnd = escDate.getYear_ed().split(",");
      String[] monthEnd = escDate.getMonth_ed().split(",");
      String[] dayEnd = escDate.getDay_ed().split(",");
      String[] price = escDate.getPrice().split(",");
      String[] total = escDate.getTotal().split(",");
      for (int i = 0; i < yearStr.length; i++) {
        EscDate esc = new EscDate();
        esc.setDate_id(date_id[i]);
        esc.setYear_str(yearStr[i]);
        esc.setMonth_str(monthStr[i]);
        esc.setDay_str(dayStr[i]);
        esc.setYear_ed(yearEnd[i]);
        esc.setMonth_ed(monthEnd[i]);
        esc.setDay_ed(dayEnd[i]);
        esc.setPrice(price[i]);
        esc.setTotal(total[i]);
        escDao.updateEscDate(esc);
      }
    }
    return true;
  }

  @Override
  public List<EscDate> transvertEscList(EscDate escDate) {
    List<EscDate> list = new ArrayList<EscDate>();
    if(escDate == null){
      return null;
    }else{
      String[] date_id = escDate.getDate_id().split(",");
      String[] yearStr = escDate.getYear_str().split(",");
      String[] monthStr = escDate.getMonth_str().split(",");
      String[] dayStr = escDate.getDay_str().split(",");
      String[] yearEnd = escDate.getYear_ed().split(",");
      String[] monthEnd = escDate.getMonth_ed().split(",");
      String[] dayEnd = escDate.getDay_ed().split(",");
      String[] price = escDate.getPrice().split(",");
      String[] total = escDate.getTotal().split(",");
      for (int i = 0; i < yearStr.length; i++) {
        EscDate esc = new EscDate();
        esc.setDate_id(date_id[i]);
        esc.setYear_str(yearStr[i]);
        esc.setMonth_str(monthStr[i]);
        esc.setDay_str(dayStr[i]);
        esc.setYear_ed(yearEnd[i]);
        esc.setMonth_ed(monthEnd[i]);
        esc.setDay_ed(dayEnd[i]);
        esc.setPrice(price[i]);
        esc.setTotal(total[i]);
        list.add(esc);
      }
    }
    return list;
  }
}
