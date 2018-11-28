/**  
 * Project Name:aescContract  
 * File Name:TestList.java  
 * Package Name:com.aesc.utils  
 * Date:2017年8月29日上午10:38:35  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/  
  
package com.aesc.utils;

import java.util.ArrayList;
import java.util.List;

/**  
 * ClassName:TestList <br/>  
 * Function: TODO ADD FUNCTION. <br/>  
 * Reason:   TODO ADD REASON. <br/>  
 * Date:     2017年8月29日 上午10:38:35 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */
public class TestList {

  public static void main(String[] args) {
    String tr = "1,2,3,4,5";
    List<Pojo> list = loadPojo(tr);
    System.out.println(list);
    // TODO Auto-generated method stub  

  }

  private static List<Pojo> loadPojo(String str) {
    List<Pojo> list = new ArrayList<Pojo>();
    String[] array = str.split(",");
    for (String val : array) {
      Pojo pojo = new Pojo();
      pojo.setA(val);
      list.add(pojo);
      
    }
    return list;
  }
  
 
}
  
class Pojo{
  private String a;

  public String getA() {
    return a;
  }

  public void setA(String a) {
    this.a = a;
  }
  
}