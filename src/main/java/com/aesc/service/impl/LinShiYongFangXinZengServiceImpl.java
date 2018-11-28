/**  
 * Project Name:aescContract  
 * File Name:LinShiYongFangXinZengServiceImpl.java  
 * Package Name:com.aesc.service.impl  
 * Date:2018年10月22日下午2:42:36  
 * Copyright (c) 2018, dawn@acdiost.com All Rights Reserved.  
 * description：
*/  
  
package com.aesc.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.aesc.dao.LinShiYongFangXinZengDao;
import com.aesc.pojo.LinShiYongFangXinZengDate;
import com.aesc.pojo.LinShiYongFangXinZeng;
import com.aesc.service.LinShiYongFangXinZengService;

/**  
 * description：
 * ClassName:LinShiYongFangXinZengServiceImpl <br/>  
 * Function: 
 * Reason:  
 * Date:     2018年10月22日 下午2:42:36 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */

@Transactional
@Service("LinShiYongFangXinZengService")
public class LinShiYongFangXinZengServiceImpl implements LinShiYongFangXinZengService {

  @Resource
  private LinShiYongFangXinZengDao linShiYongFangXinZengDao;
  
  @Override
  public void saveLsyf_xz(LinShiYongFangXinZeng lsyf_xz) {
    linShiYongFangXinZengDao.saveLsyf_xz(lsyf_xz);
    
  }

  @Override
  public void saveLsyf_xzDate(LinShiYongFangXinZengDate lsyf_xzDate) {
    List<LinShiYongFangXinZengDate> lsyfDateList = transverterLsyfxzList(lsyf_xzDate);
    linShiYongFangXinZengDao.saveLsyf_xzDate(lsyfDateList);
  }
  
  @Override
  public List<LinShiYongFangXinZengDate> transverterLsyfxzList(LinShiYongFangXinZengDate lsyf_xzDate) {
    List<LinShiYongFangXinZengDate> list = new ArrayList<LinShiYongFangXinZengDate>();
    //设置主合同的id，用来作关联。一对多
    int lsyfId = linShiYongFangXinZengDao.getLsyf_xz_Id();
    if(lsyf_xzDate == null){
      return null;
    }else{
      String[] yearStr = lsyf_xzDate.getYear_str().split(",");
      String[] monthStr = lsyf_xzDate.getMonth_str().split(",");
      String[] dayStr = lsyf_xzDate.getDay_str().split(",");
      String[] yearEnd = lsyf_xzDate.getYear_ed().split(",");
      String[] monthEnd = lsyf_xzDate.getMonth_ed().split(",");
      String[] dayEnd = lsyf_xzDate.getDay_ed().split(",");
      String[] price = lsyf_xzDate.getPrice().split(",");
      String[] upper = lsyf_xzDate.getUpper().split(",");
      for (int i = 0; i < yearStr.length; i++) {
        LinShiYongFangXinZengDate lsyfxz = new LinShiYongFangXinZengDate();
        lsyfxz.setContract_id(lsyfId);
        lsyfxz.setYear_str(yearStr[i]);
        lsyfxz.setMonth_str(monthStr[i]);
        lsyfxz.setDay_str(dayStr[i]);
        lsyfxz.setYear_ed(yearEnd[i]);
        lsyfxz.setMonth_ed(monthEnd[i]);
        lsyfxz.setDay_ed(dayEnd[i]);
        lsyfxz.setPrice(price[i]);
        lsyfxz.setUpper(upper[i]);
        list.add(lsyfxz);
      }
    }
    return list;
  }
  
  @Override
  public List<LinShiYongFangXinZeng> queryLinShiYongFangXinZeng() {
      
    return this.linShiYongFangXinZengDao.queryLinShiYongFangXinZeng();
  }

  @Override
  public LinShiYongFangXinZeng queryLinShiYongFangXinZengById(int contract_id) {
      
    return this.linShiYongFangXinZengDao.queryLinShiYongFangXinZengById(contract_id);
  }

  @Override
  public List<LinShiYongFangXinZengDate> queryLsyfDateById(int contract_id) {
      
    return this.linShiYongFangXinZengDao.queryLsyfDateById(contract_id);
  }

  @Override
  public LinShiYongFangXinZeng queryLsyf_xzById(int contract_id) {
      
    return this.linShiYongFangXinZengDao.queryLsyf_xzById(contract_id);
  }

  @Override
  public boolean updateLsyf_xz(LinShiYongFangXinZeng lsyf_xz) {
      
    return this.linShiYongFangXinZengDao.updateLsyf_xz(lsyf_xz);
  }

  @Override
  public boolean updateLsyf_xz_Date(LinShiYongFangXinZengDate lsyf_xzDate) {
    if(lsyf_xzDate == null){
      return false;
    }else{
      String[] date_id = lsyf_xzDate.getDate_id().split(",");
      String[] yearStr = lsyf_xzDate.getYear_str().split(",");
      String[] monthStr = lsyf_xzDate.getMonth_str().split(",");
      String[] dayStr = lsyf_xzDate.getDay_str().split(",");
      String[] yearEnd = lsyf_xzDate.getYear_ed().split(",");
      String[] monthEnd = lsyf_xzDate.getMonth_ed().split(",");
      String[] dayEnd = lsyf_xzDate.getDay_ed().split(",");
      String[] price = lsyf_xzDate.getPrice().split(",");
      String[] upper = lsyf_xzDate.getUpper().split(",");
      for (int i = 0; i < date_id.length; i++) {
        LinShiYongFangXinZengDate lsyfxz = new LinShiYongFangXinZengDate();
        lsyfxz.setDate_id(date_id[i]);
        lsyfxz.setYear_str(yearStr[i]);
        lsyfxz.setMonth_str(monthStr[i]);
        lsyfxz.setDay_str(dayStr[i]);
        lsyfxz.setYear_ed(yearEnd[i]);
        lsyfxz.setMonth_ed(monthEnd[i]);
        lsyfxz.setDay_ed(dayEnd[i]);
        lsyfxz.setPrice(price[i]);
        lsyfxz.setUpper(upper[i]);
        linShiYongFangXinZengDao.updateLsyf_xz_Date(lsyfxz);
      }
    }
    return true;
  }


}
  
