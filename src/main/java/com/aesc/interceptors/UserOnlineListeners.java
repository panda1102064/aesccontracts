/**  
 * Project Name:aescContract  
 * File Name:UserOnlineListeners.java  
 * Package Name:com.aesc.controller  
 * Date:2017年9月29日下午3:31:08  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/

package com.aesc.interceptors;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;


/**
 * ClassName:UserOnlineListeners <br/>
 * Function:  ADD FUNCTION. <br/>
 * Reason:  ADD REASON. <br/>
 * Date: 2017年9月29日 下午3:31:08 <br/>
 * 
 * @author Dawn Chen
 * @version
 * @since JDK 1.8
 * @see
 */
public class UserOnlineListeners implements HttpSessionListener {

 // private static int activeSessions = 0;

  @Override
  public void sessionCreated(HttpSessionEvent se) {

    ServletContext ctx = se.getSession().getServletContext();
    Integer numSessions = (Integer) ctx.getAttribute("numSessions");
    if (numSessions == null) {
      numSessions = new Integer(1);
    } else {
      int count = numSessions.intValue();
      numSessions = new Integer(count + 1);
    }
    ctx.setAttribute("numSessions", numSessions);
    System.out.println("当前在线:"+numSessions+"人");
  }

  @Override
  public void sessionDestroyed(HttpSessionEvent se) {
    ServletContext ctx = se.getSession().getServletContext();
    Integer numSessions = (Integer) ctx.getAttribute("numSessions");
    if (numSessions == null) {
      numSessions = new Integer(0);
    } else {
      int count = numSessions.intValue();
      numSessions = new Integer(count - 1);
    }
    ctx.setAttribute("numSessions", numSessions);
    //System.out.println("当前在线:"+numSessions+"人");
  }
}
