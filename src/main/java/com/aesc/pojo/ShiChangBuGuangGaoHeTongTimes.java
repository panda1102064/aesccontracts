/**  
 * Project Name:aescContract  
 * File Name:ShiChangBuGuangGaoHeTongTimes.java  
 * Package Name:com.aesc.pojo  
 * Date:2017年10月10日下午1:28:20  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/

package com.aesc.pojo;

/**
 * ClassName:ShiChangBuGuangGaoHeTongTimes <br/>
 * Function: TODO ADD FUNCTION. <br/>
 * Reason: TODO ADD REASON. <br/>
 * Date: 2017年10月10日 下午1:28:20 <br/>
 * 
 * @author Dawn Chen
 * @version
 * @since JDK 1.8
 * @see
 */
public class ShiChangBuGuangGaoHeTongTimes {

  private int time_id;
  private String pay_year;
  private String pay_month;
  private String pay_day;
  private String percents;
  private String amounts;
  private String pay_upper;
  private int contract_id;


  public int getTime_id() {
    return time_id;
  }

  public void setTime_id(int time_id) {
    this.time_id = time_id;
  }

  public int getContract_id() {
    return contract_id;
  }

  public void setContract_id(int contract_id) {
    this.contract_id = contract_id;
  }

  public String getPay_year() {
    return pay_year;
  }

  public void setPay_year(String pay_year) {
    this.pay_year = pay_year;
  }

  public String getPay_month() {
    return pay_month;
  }

  public void setPay_month(String pay_month) {
    this.pay_month = pay_month;
  }

  public String getPay_day() {
    return pay_day;
  }

  public void setPay_day(String pay_day) {
    this.pay_day = pay_day;
  }

  public String getPercents() {
    return percents;
  }

  public void setPercents(String percents) {
    this.percents = percents;
  }

  public String getAmounts() {
    return amounts;
  }

  public void setAmounts(String amounts) {
    this.amounts = amounts;
  }

  public String getPay_upper() {
    return pay_upper;
  }

  public void setPay_upper(String pay_upper) {
    this.pay_upper = pay_upper;
  }

}
