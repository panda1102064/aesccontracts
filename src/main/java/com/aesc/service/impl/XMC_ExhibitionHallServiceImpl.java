/**  
 * Project Name:aesccontracts  
 * File Name:XMC_ExhibitionHallService.java  
 * Package Name:com.aesc.service.impl  
 * Date:2018年12月19日上午10:27:51  
 * Copyright (c) 2018, dawn@acdiost.com All Rights Reserved.  
 * description：
*/  
  
package com.aesc.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.aesc.dao.XMC_ExhibitionHallDao;
import com.aesc.pojo.XMC_ExhibitionHall;
import com.aesc.pojo.XMC_ExhibitionHallDate;

/**  
 * description：
 * ClassName:XMC_ExhibitionHallService <br/>  
 * Function:  ADD FUNCTION. <br/>  
 * Reason:    ADD REASON. <br/>  
 * Date:     2018年12月19日 上午10:27:51 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */
@Transactional
@Service("XMC_ExhibitionHallService")
public class XMC_ExhibitionHallServiceImpl implements com.aesc.service.XMC_ExhibitionHallService {

  @Resource
  private XMC_ExhibitionHallDao exhibitionHallDao;
  
  @Override
  public void saveExhibitionHall(XMC_ExhibitionHall exhibitionHall) {
    exhibitionHallDao.saveExhibitionHall(exhibitionHall);
  }

  @Override
  public void saveExhibitionHallDate(XMC_ExhibitionHallDate exhibitionHallDate) {
    List<XMC_ExhibitionHallDate> exhibitionHallDateList = transverterExhibitionHallDateList(exhibitionHallDate);
    exhibitionHallDao.saveExhibitionHallDate(exhibitionHallDateList);
  }
  
  @Override
  public List<XMC_ExhibitionHallDate> transverterExhibitionHallDateList(XMC_ExhibitionHallDate exhibitionHallDate) {
    List<XMC_ExhibitionHallDate> list = new ArrayList<XMC_ExhibitionHallDate>();
    //设置主合同的id，用来作关联。一对多
    int exhibitionHallId = exhibitionHallDao.getExhibitionHallId();
    if(exhibitionHallDate == null){
      return null;
    }else{
      String[] yearStr = exhibitionHallDate.getYear_str().split(",");
      String[] monthStr = exhibitionHallDate.getMonth_str().split(",");
      String[] dayStr = exhibitionHallDate.getDay_str().split(",");
      String[] yearEnd = exhibitionHallDate.getYear_ed().split(",");
      String[] monthEnd = exhibitionHallDate.getMonth_ed().split(",");
      String[] dayEnd = exhibitionHallDate.getDay_ed().split(",");
      String[] price = exhibitionHallDate.getPrice().split(",");
      String[] total = exhibitionHallDate.getTotal().split(",");
      String[] upper = exhibitionHallDate.getUpper().split(",");
      for (int i = 0; i < yearStr.length; i++) {
        XMC_ExhibitionHallDate exhibitionHall = new XMC_ExhibitionHallDate();
        exhibitionHall.setContract_id(exhibitionHallId);
        exhibitionHall.setYear_str(yearStr[i]);
        exhibitionHall.setMonth_str(monthStr[i]);
        exhibitionHall.setDay_str(dayStr[i]);
        exhibitionHall.setYear_ed(yearEnd[i]);
        exhibitionHall.setMonth_ed(monthEnd[i]);
        exhibitionHall.setDay_ed(dayEnd[i]);
        exhibitionHall.setPrice(price[i]);
        exhibitionHall.setTotal(total[i]);
        exhibitionHall.setUpper(upper[i]);
        list.add(exhibitionHall);
      }
    }
    return list;
  }

  @Override
  public List<XMC_ExhibitionHall> queryExhibitionHall() {
    return exhibitionHallDao.queryExhibitionHall();
  }

  @Override
  public XMC_ExhibitionHall queryExhibitionHallById(int contract_id) {
    return exhibitionHallDao.queryExhibitionHallById(contract_id);
  }

  @Override
  public List<XMC_ExhibitionHallDate> queryExhibitionHallDateById(Integer contract_id) {
    return exhibitionHallDao.queryExhibitionHallDateById(contract_id);
  }

  @Override
  public boolean updateExhibitionHall(XMC_ExhibitionHall exhibitionHall) {
    return exhibitionHallDao.updateExhibitionHall(exhibitionHall);
  }

  @Override
  public boolean updateExhibitionHallDate(XMC_ExhibitionHallDate exhibitionHallDate) {
    if(exhibitionHallDate == null){
      return false;
    }else{
      String[] date_id = exhibitionHallDate.getDate_id().split(",");
      String[] yearStr = exhibitionHallDate.getYear_str().split(",");
      String[] monthStr = exhibitionHallDate.getMonth_str().split(",");
      String[] dayStr = exhibitionHallDate.getDay_str().split(",");
      String[] yearEnd = exhibitionHallDate.getYear_ed().split(",");
      String[] monthEnd = exhibitionHallDate.getMonth_ed().split(",");
      String[] dayEnd = exhibitionHallDate.getDay_ed().split(",");
      String[] price = exhibitionHallDate.getPrice().split(",");
      String[] total = exhibitionHallDate.getTotal().split(",");
      String[] upper = exhibitionHallDate.getUpper().split(",");
      for (int i = 0; i < yearStr.length; i++) {
        XMC_ExhibitionHallDate exhibitionHall = new XMC_ExhibitionHallDate();
        exhibitionHall.setDate_id(date_id[i]);
        exhibitionHall.setYear_str(yearStr[i]);
        exhibitionHall.setMonth_str(monthStr[i]);
        exhibitionHall.setDay_str(dayStr[i]);
        exhibitionHall.setYear_ed(yearEnd[i]);
        exhibitionHall.setMonth_ed(monthEnd[i]);
        exhibitionHall.setDay_ed(dayEnd[i]);
        exhibitionHall.setPrice(price[i]);
        exhibitionHall.setTotal(total[i]);
        exhibitionHall.setUpper(upper[i]);
        exhibitionHallDao.updateExhibitionHallDate(exhibitionHall);
      }
    }
    return true;
  }

}
