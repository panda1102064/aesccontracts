/**  
 * Project Name:aescContract  
 * File Name:DslqDate.java  
 * Package Name:com.aesc.pojo  
 * Date:2017年8月31日上午9:18:11  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/  
  
package com.aesc.pojo;  
/**  
 * ClassName:DslqDate <br/>  
 * Function: TODO ADD FUNCTION. <br/>  
 * Reason:   TODO ADD REASON. <br/>  
 * Date:     2017年8月31日 上午9:18:11 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */
public class DslqDate {

  private String date_id;
  private String year_str;
  private String month_str;
  private String day_str;
  private String year_ed;
  private String month_ed;
  private String day_ed;
  private String price;
  private String total;
  private String upper1;
  private String contract_id;

  public String getYear_str() {
    return year_str;
  }
  public void setYear_str(String year_str) {
    this.year_str = year_str;
  }
  public String getMonth_str() {
    return month_str;
  }
  public void setMonth_str(String month_str) {
    this.month_str = month_str;
  }
  public String getDay_str() {
    return day_str;
  }
  public void setDay_str(String day_str) {
    this.day_str = day_str;
  }
  public String getYear_ed() {
    return year_ed;
  }
  public void setYear_ed(String year_ed) {
    this.year_ed = year_ed;
  }
  public String getMonth_ed() {
    return month_ed;
  }
  public void setMonth_ed(String month_ed) {
    this.month_ed = month_ed;
  }
  public String getDay_ed() {
    return day_ed;
  }
  public void setDay_ed(String day_ed) {
    this.day_ed = day_ed;
  }
  public String getPrice() {
    return price;
  }
  public void setPrice(String price) {
    this.price = price;
  }
  public String getTotal() {
    return total;
  }
  public void setTotal(String total) {
    this.total = total;
  }
  public String getUpper1() {
    return upper1;
  }
  public void setUpper1(String upper1) {
    this.upper1 = upper1;
  }
  public String getDate_id() {
    return date_id;
  }
  public void setDate_id(String date_id) {
    this.date_id = date_id;
  }
  public String getContract_id() {
    return contract_id;
  }
  public void setContract_id(String contract_id) {
    this.contract_id = contract_id;
  }
  
  @Override
  public String toString() {
    return "DslqDate [date_id=" + date_id + ", year_str=" + year_str + ", month_str=" + month_str
        + ", day_str=" + day_str + ", year_ed=" + year_ed + ", month_ed=" + month_ed + ", day_ed="
        + day_ed + ", price=" + price + ", total=" + total + ", upper1=" + upper1 + ", contract_id="
        + contract_id + "]";
  }

  
}
  
