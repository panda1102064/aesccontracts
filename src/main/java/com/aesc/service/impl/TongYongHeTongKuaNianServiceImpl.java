package com.aesc.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.aesc.dao.TongYongHeTongKuaNianDao;
import com.aesc.pojo.TongYongHeTongKuaNian;
import com.aesc.pojo.TongYongHeTongKuaNianDate;
import com.aesc.service.TongYongHeTongKuaNianService;

@Transactional
@Service("TongYongHeTongKuaNianService")
public class TongYongHeTongKuaNianServiceImpl implements TongYongHeTongKuaNianService {

  @Resource
  private TongYongHeTongKuaNianDao tongYongHeTongKuaNianDao;

  @Override
  public void saveTongYongHeTongKuaNian(TongYongHeTongKuaNian tongYongHeTongKuaNian) {
    tongYongHeTongKuaNianDao.saveTongYongHeTongKuaNian(tongYongHeTongKuaNian);
  }

  @Override
  public void saveTongYongHeTongKuaNianDate(TongYongHeTongKuaNianDate tongYongHeTongKuaNianDate) {
    List<TongYongHeTongKuaNianDate> tongYongHeTongKuaNianDateList = transverterTongYongHeTongKuaNianDateList(tongYongHeTongKuaNianDate);
    tongYongHeTongKuaNianDao.saveTongYongHeTongKuaNianDate(tongYongHeTongKuaNianDateList);
  }

  @Override
  public List<TongYongHeTongKuaNianDate> transverterTongYongHeTongKuaNianDateList(
      TongYongHeTongKuaNianDate tongYongHeTongKuaNianDate) {
    List<TongYongHeTongKuaNianDate> list = new ArrayList<TongYongHeTongKuaNianDate>();
    //设置主合同的id，用来作关联。一对多
    int tyhtknId = tongYongHeTongKuaNianDao.getTyhtknId();
    if(tongYongHeTongKuaNianDate == null){
      return null;
    }else{
      String[] yearStr = tongYongHeTongKuaNianDate.getYear_str().split(",");
      String[] monthStr = tongYongHeTongKuaNianDate.getMonth_str().split(",");
      String[] dayStr = tongYongHeTongKuaNianDate.getDay_str().split(",");
      String[] yearEnd = tongYongHeTongKuaNianDate.getYear_ed().split(",");
      String[] monthEnd = tongYongHeTongKuaNianDate.getMonth_ed().split(",");
      String[] dayEnd = tongYongHeTongKuaNianDate.getDay_ed().split(",");
      String[] rent = tongYongHeTongKuaNianDate.getRent().split(",");
      String[] price = tongYongHeTongKuaNianDate.getPrice().split(",");
      String[] upper = tongYongHeTongKuaNianDate.getUpper().split(",");
      for (int i = 0; i < yearStr.length; i++) {
        TongYongHeTongKuaNianDate tyhtkn = new TongYongHeTongKuaNianDate();
        tyhtkn.setContract_id(tyhtknId);
        tyhtkn.setYear_str(yearStr[i]);
        tyhtkn.setMonth_str(monthStr[i]);
        tyhtkn.setDay_str(dayStr[i]);
        tyhtkn.setYear_ed(yearEnd[i]);
        tyhtkn.setMonth_ed(monthEnd[i]);
        tyhtkn.setDay_ed(dayEnd[i]);
        tyhtkn.setRent(rent[i]);
        tyhtkn.setPrice(price[i]);
        tyhtkn.setUpper(upper[i]);
        list.add(tyhtkn);
      }
    }
    return list;
  }

  @Override
  public List<TongYongHeTongKuaNian> queryTongYongHeTongKuaNian() {
    return this.tongYongHeTongKuaNianDao.queryTongYongHeTongKuaNian();
  }

  @Override
  public TongYongHeTongKuaNian querytongYongHeTongKuaNianById(Integer contract_id) {
    return this.tongYongHeTongKuaNianDao.querytongYongHeTongKuaNianById(contract_id);
  }

  @Override
  public List<TongYongHeTongKuaNianDate> querytongYongHeTongKuaNianDateById(Integer contract_id) {
    return this.tongYongHeTongKuaNianDao.querytongYongHeTongKuaNianDateById(contract_id);
  }

  @Override
  public boolean updateTongYongHeTongKuaNian(TongYongHeTongKuaNian tongYongHeTongKuaNian) {
    return this.tongYongHeTongKuaNianDao.updateTongYongHeTongKuaNian(tongYongHeTongKuaNian);
  }

  @Override
  public boolean updateTongYongHeTongKuaNianDate(
      TongYongHeTongKuaNianDate tongYongHeTongKuaNianDate) {
    boolean flag = false;
    if(tongYongHeTongKuaNianDate == null){
      return false;
    }else{
      String[] date_id = tongYongHeTongKuaNianDate.getDate_id().split(",");
      String[] yearStr = tongYongHeTongKuaNianDate.getYear_str().split(",");
      String[] monthStr = tongYongHeTongKuaNianDate.getMonth_str().split(",");
      String[] dayStr = tongYongHeTongKuaNianDate.getDay_str().split(",");
      String[] yearEnd = tongYongHeTongKuaNianDate.getYear_ed().split(",");
      String[] monthEnd = tongYongHeTongKuaNianDate.getMonth_ed().split(",");
      String[] dayEnd = tongYongHeTongKuaNianDate.getDay_ed().split(",");
      String[] rent = tongYongHeTongKuaNianDate.getRent().split(",");
      String[] price = tongYongHeTongKuaNianDate.getPrice().split(",");
      String[] upper = tongYongHeTongKuaNianDate.getUpper().split(",");
      for (int i = 0; i < date_id.length; i++) {
        TongYongHeTongKuaNianDate tongYongHeTongKuaNianDates = new TongYongHeTongKuaNianDate();
        tongYongHeTongKuaNianDates.setDate_id(date_id[i]);
        tongYongHeTongKuaNianDates.setYear_str(yearStr[i]);
        tongYongHeTongKuaNianDates.setMonth_str(monthStr[i]);
        tongYongHeTongKuaNianDates.setDay_str(dayStr[i]);
        tongYongHeTongKuaNianDates.setYear_ed(yearEnd[i]);
        tongYongHeTongKuaNianDates.setMonth_ed(monthEnd[i]);
        tongYongHeTongKuaNianDates.setDay_ed(dayEnd[i]);
        tongYongHeTongKuaNianDates.setRent(rent[i]);
        tongYongHeTongKuaNianDates.setPrice(price[i]);
        tongYongHeTongKuaNianDates.setUpper(upper[i]);
        flag = tongYongHeTongKuaNianDao.updatetongYongHeTongKuaNianDate(tongYongHeTongKuaNianDates);
      }
    }
    return flag;
  }

  @Override
  public List<TongYongHeTongKuaNianDate> transvertTongYongHeTongKuaNianDateList(
      TongYongHeTongKuaNianDate tongYongHeTongKuaNianDate) {
    List<TongYongHeTongKuaNianDate> list = new ArrayList<TongYongHeTongKuaNianDate>();
    if(tongYongHeTongKuaNianDate == null){
      return null;
    }else{
      String[] date_id = tongYongHeTongKuaNianDate.getDate_id().split(",");
      String[] yearStr = tongYongHeTongKuaNianDate.getYear_str().split(",");
      String[] monthStr = tongYongHeTongKuaNianDate.getMonth_str().split(",");
      String[] dayStr = tongYongHeTongKuaNianDate.getDay_str().split(",");
      String[] yearEnd = tongYongHeTongKuaNianDate.getYear_ed().split(",");
      String[] monthEnd = tongYongHeTongKuaNianDate.getMonth_ed().split(",");
      String[] dayEnd = tongYongHeTongKuaNianDate.getDay_ed().split(",");
      String[] rent = tongYongHeTongKuaNianDate.getRent().split(",");
      String[] price = tongYongHeTongKuaNianDate.getPrice().split(",");
      String[] upper = tongYongHeTongKuaNianDate.getUpper().split(",");
      for (int i = 0; i < yearStr.length; i++) {
        TongYongHeTongKuaNianDate tyhtkn = new TongYongHeTongKuaNianDate();
        tyhtkn.setDate_id(date_id[i]);
        tyhtkn.setYear_str(yearStr[i]);
        tyhtkn.setMonth_str(monthStr[i]);
        tyhtkn.setDay_str(dayStr[i]);
        tyhtkn.setYear_ed(yearEnd[i]);
        tyhtkn.setMonth_ed(monthEnd[i]);
        tyhtkn.setDay_ed(dayEnd[i]);
        tyhtkn.setRent(rent[i]);
        tyhtkn.setPrice(price[i]);
        tyhtkn.setUpper(upper[i]);
        list.add(tyhtkn);
      }
    }
    return list;
  }
}
