/**  
 * Project Name:aescContract  
 * File Name:ShiChangBuGuangGaoHeTongMedia.java  
 * Package Name:com.aesc.pojo  
 * Date:2017年10月10日下午1:29:34  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/

package com.aesc.pojo;

/**
 * ClassName:ShiChangBuGuangGaoHeTongMedia <br/>
 * Function: TODO ADD FUNCTION. <br/>
 * Reason: TODO ADD REASON. <br/>
 * Date: 2017年10月10日 下午1:29:34 <br/>
 * 
 * @author Dawn Chen
 * @version
 * @since JDK 1.8
 * @see
 */
public class ShiChangBuGuangGaoHeTongMedia {

  private int media_id;
  private String media_serial;
  private String location;
  private String media_type;
  private String media_specification;
  private String media_number;
  private String release_time;
  private String release_fee;
  private String production_cost;
  private int contract_id;


  public int getMedia_id() {
    return media_id;
  }

  public void setMedia_id(int media_id) {
    this.media_id = media_id;
  }

  public int getContract_id() {
    return contract_id;
  }

  public void setContract_id(int contract_id) {
    this.contract_id = contract_id;
  }

  public String getMedia_serial() {
    return media_serial;
  }

  public void setMedia_serial(String media_serial) {
    this.media_serial = media_serial;
  }

  public String getLocation() {
    return location;
  }

  public void setLocation(String location) {
    this.location = location;
  }

  public String getMedia_type() {
    return media_type;
  }

  public void setMedia_type(String media_type) {
    this.media_type = media_type;
  }

  public String getMedia_specification() {
    return media_specification;
  }

  public void setMedia_specification(String media_specification) {
    this.media_specification = media_specification;
  }

  public String getMedia_number() {
    return media_number;
  }

  public void setMedia_number(String media_number) {
    this.media_number = media_number;
  }

  public String getRelease_time() {
    return release_time;
  }

  public void setRelease_time(String release_time) {
    this.release_time = release_time;
  }

  public String getRelease_fee() {
    return release_fee;
  }

  public void setRelease_fee(String release_fee) {
    this.release_fee = release_fee;
  }

  public String getProduction_cost() {
    return production_cost;
  }

  public void setProduction_cost(String production_cost) {
    this.production_cost = production_cost;
  }

}
