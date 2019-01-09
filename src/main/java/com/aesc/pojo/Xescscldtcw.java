/**  
 * Project Name:aescContract  
 * File Name:Xescscldtcw.java  
 * Package Name:com.aesc.pojo  
 * Date:2017年8月17日下午1:18:35  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/

package com.aesc.pojo;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * ClassName:Xescscldtcw <br/>
 * Function:  ADD FUNCTION. <br/>
 * Reason:  ADD REASON. <br/>
 * Date: 2017年8月17日 下午1:18:35 <br/>
 * 
 * @author Dawn Chen
 * @version
 * @since JDK 1.8
 * @see
 */
public class Xescscldtcw {

  private Integer contract_id;
  private String contract_serial;
  private String merchant_name;
  private String place;
  private String popours;
  private String year_start;
  private String month_start;
  private String day_start;
  private String year_end;
  private String month_end;
  private String day_end;
  private String price;
  private String rent;
  private String upper1;
  private String cash_deposit;
  private String upper2;
  private String payment1;
  private String payment2;
  private String payment3;
  private String first_agent;
  @DateTimeFormat(pattern = "yyyy-MM-dd")
  private String first_date;
  private String second_sign;
  private String second_agent;
  private String second_phone;
  @DateTimeFormat(pattern = "yyyy-MM-dd")
  private String second_date;
  private String status;
  private String username;
  
  public String getUsername() {
    return username;
  }
  public void setUsername(String username) {
    this.username = username;
  }
  
  public Integer getContract_id() {
    return contract_id;
  }
  public void setContract_id(Integer contract_id) {
    this.contract_id = contract_id;
  }
  public String getContract_serial() {
    return contract_serial;
  }

  public void setContract_serial(String contract_serial) {
    this.contract_serial = contract_serial;
  }

  public String getMerchant_name() {
    return merchant_name;
  }

  public void setMerchant_name(String merchant_name) {
    this.merchant_name = merchant_name;
  }

  public String getPlace() {
    return place;
  }

  public void setPlace(String place) {
    this.place = place;
  }

  public String getPopours() {
    return popours;
  }

  public void setPopours(String popours) {
    this.popours = popours;
  }

  public String getYear_start() {
    return year_start;
  }

  public void setYear_start(String year_start) {
    this.year_start = year_start;
  }

  public String getMonth_start() {
    return month_start;
  }

  public void setMonth_start(String month_start) {
    this.month_start = month_start;
  }

  public String getDay_start() {
    return day_start;
  }

  public void setDay_start(String day_start) {
    this.day_start = day_start;
  }

  public String getYear_end() {
    return year_end;
  }

  public void setYear_end(String year_end) {
    this.year_end = year_end;
  }

  public String getMonth_end() {
    return month_end;
  }

  public void setMonth_end(String month_end) {
    this.month_end = month_end;
  }

  public String getDay_end() {
    return day_end;
  }

  public void setDay_end(String day_end) {
    this.day_end = day_end;
  }

  public String getPrice() {
    return price;
  }

  public void setPrice(String price) {
    this.price = price;
  }

  public String getRent() {
    return rent;
  }

  public void setRent(String rent) {
    this.rent = rent;
  }

  public String getUpper1() {
    return upper1;
  }

  public void setUpper1(String upper1) {
    this.upper1 = upper1;
  }

  public String getCash_deposit() {
    return cash_deposit;
  }

  public void setCash_deposit(String cash_deposit) {
    this.cash_deposit = cash_deposit;
  }

  public String getUpper2() {
    return upper2;
  }

  public void setUpper2(String upper2) {
    this.upper2 = upper2;
  }

  public String getPayment1() {
    return payment1;
  }

  public void setPayment1(String payment1) {
    this.payment1 = payment1;
  }

  public String getPayment2() {
    return payment2;
  }

  public void setPayment2(String payment2) {
    this.payment2 = payment2;
  }

  public String getPayment3() {
    return payment3;
  }

  public void setPayment3(String payment3) {
    this.payment3 = payment3;
  }

  public String getFirst_agent() {
    return first_agent;
  }

  public void setFirst_agent(String first_agent) {
    this.first_agent = first_agent;
  }

  public String getFirst_date() {
    return first_date;
  }

  public void setFirst_date(String first_date) {
    this.first_date = first_date;
  }

  public String getSecond_sign() {
    return second_sign;
  }

  public void setSecond_sign(String second_sign) {
    this.second_sign = second_sign;
  }

  public String getSecond_agent() {
    return second_agent;
  }

  public void setSecond_agent(String second_agent) {
    this.second_agent = second_agent;
  }

  public String getSecond_phone() {
    return second_phone;
  }

  public void setSecond_phone(String second_phone) {
    this.second_phone = second_phone;
  }

  public String getSecond_date() {
    return second_date;
  }

  public void setSecond_date(String second_date) {
    this.second_date = second_date;
  }

  public String getStatus() {
    return status;
  }

  public void setStatus(String status) {
    this.status = status;
  }

}
