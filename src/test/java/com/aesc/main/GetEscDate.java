/**  
 * Project Name:aescContract  
 * File Name:GetEscDate.java  
 * Package Name:com.aesc.main  
 * Date:2017年8月25日下午2:50:06  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/  
  
package com.aesc.main;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.aesc.dao.EscDao;
import com.aesc.pojo.EscDate;

/**  
 * ClassName:GetEscDate <br/>  
 * Function:  ADD FUNCTION. <br/>  
 * Reason:    ADD REASON. <br/>  
 * Date:     2017年8月25日 下午2:50:06 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring-mybatis.xml" })

public class GetEscDate {

  @Resource
  private EscDao escService;

  
  @Test
  public void getList(){
   List<EscDate> esclist = new ArrayList<EscDate>();
   EscDate esc = new EscDate();
   //esc.setDate_id(1);
   esc.setContract_id(1);
   esc.setYear_str("3");
   esc.setMonth_str("2");
   esc.setDay_str("2");
   esc.setYear_ed("2");
   esc.setMonth_ed("2");
   esc.setDay_ed("2");
   esc.setPrice("2");
   esc.setTotal("2");
   esclist.add(esc);
  // System.out.println( escService.updateEscDate(esclist));
  }
  
}
