package com.aesc.service;

import java.util.List;

import com.aesc.pojo.TongYongHeTongKuaNian;
import com.aesc.pojo.TongYongHeTongKuaNianDate;

public interface TongYongHeTongKuaNianService {

  void saveTongYongHeTongKuaNian(TongYongHeTongKuaNian tongYongHeTongKuaNian);

  void saveTongYongHeTongKuaNianDate(TongYongHeTongKuaNianDate tongYongHeTongKuaNianDate);

  List<TongYongHeTongKuaNian> queryTongYongHeTongKuaNian();

  TongYongHeTongKuaNian querytongYongHeTongKuaNianById(Integer contract_id);

  List<TongYongHeTongKuaNianDate> querytongYongHeTongKuaNianDateById(Integer contract_id);

  List<TongYongHeTongKuaNianDate> transverterTongYongHeTongKuaNianDateList(
      TongYongHeTongKuaNianDate tongYongHeTongKuaNianDate);

  boolean updateTongYongHeTongKuaNian(TongYongHeTongKuaNian tongYongHeTongKuaNian);

  boolean updateTongYongHeTongKuaNianDate(TongYongHeTongKuaNianDate tongYongHeTongKuaNianDate);

  List<TongYongHeTongKuaNianDate> transvertTongYongHeTongKuaNianDateList(
      TongYongHeTongKuaNianDate tongYongHeTongKuaNianDate);

}
