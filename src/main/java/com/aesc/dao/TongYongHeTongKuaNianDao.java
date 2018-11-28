package com.aesc.dao;

import java.util.List;

import com.aesc.pojo.TongYongHeTongKuaNian;
import com.aesc.pojo.TongYongHeTongKuaNianDate;

public interface TongYongHeTongKuaNianDao {

  void saveTongYongHeTongKuaNian(TongYongHeTongKuaNian tongYongHeTongKuaNian);

  void saveTongYongHeTongKuaNianDate(List<TongYongHeTongKuaNianDate> tongYongHeTongKuaNianDateList);

  int getTyhtknId();

  List<TongYongHeTongKuaNian> queryTongYongHeTongKuaNian();

  TongYongHeTongKuaNian querytongYongHeTongKuaNianById(Integer contract_id);

  List<TongYongHeTongKuaNianDate> querytongYongHeTongKuaNianDateById(Integer contract_id);

  boolean updateTongYongHeTongKuaNian(TongYongHeTongKuaNian tongYongHeTongKuaNian);

  boolean updatetongYongHeTongKuaNianDate(TongYongHeTongKuaNianDate tongYongHeTongKuaNianDates);


}
