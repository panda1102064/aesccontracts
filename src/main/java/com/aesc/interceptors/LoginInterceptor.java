/**  
 * Project Name:aescContract  
 * File Name:Dispatchs.java  
 * Package Name:com.aesc.controller  
 * Date:2017年9月18日上午10:55:51  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/

package com.aesc.interceptors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
 * ClassName:Dispatchs <br/>
 * Function:  ADD FUNCTION. <br/>
 * Reason:  ADD REASON. <br/>
 * Date: 2017年9月18日 上午10:55:51 <br/>
 * 
 * @author Dawn Chen
 * @version
 * @since JDK 1.8
 * @see
 */
public class LoginInterceptor implements HandlerInterceptor {

  /**
   * 执行Handler方法之前执行
   * 用于身份认证、身份授权
   * 比如身份认证，如果认证通过表示当前用户没有登陆，需要此方法拦截不再向下执行
   *实现类
   * @param request
   * @param response
   * @param handler
   * @return
   * @throws Exception
   * @see org.springframework.web.servlet.HandlerInterceptor#preHandle(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse, java.lang.Object)
   * 时间：2017年9月18日 下午5:16:35；
   */
  @Override
  public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
      throws Exception {
    // 获取请求的url
    String url = request.getRequestURI();
    // 判断url是否是公开地址(实际使用时将公开地址配置到配置文件中)
    
    //url 返回指定子字符串在此字符串中第一次出现处的索引大于0则放行。如果它不作为一个子字符串出现，则返回 -1。
    if (url.indexOf("login") >= 0) {
      // 如果要进行登录提交，放行
      return true;
    }
    // 判断session
    HttpSession session = request.getSession();
    // 从session中取出用户份信息
    if (session.getAttribute("user") != null) {
      // 身份存在，放行
      return true;
    }
    // 执行这里表示用户身份需要验证，跳转到登录界面
    request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
    // return false表示拦截，不向下执行
    // return true表示放行
    return false;
  }

  
  /**
   *  进入Handler方法之后，返回modelAndView之前执行
   *  应用场景从modelAndView出发：将公用的模型数据(比如菜单导航)在这里
   *  传到视图，也可以在这里统一指定视图
   *实现类
   * @param request
   * @param response
   * @param handler
   * @param modelAndView
   * @throws Exception
   * @see org.springframework.web.servlet.HandlerInterceptor#postHandle(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse, java.lang.Object, org.springframework.web.servlet.ModelAndView)
   * 时间：2017年9月18日 下午5:15:36；
   */
  @Override
  public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
      ModelAndView modelAndView) throws Exception {
  }

  /**
   *  执行Handler完成执行此方法
   *  应用场景：统一异常处理，统一日志处理
   *实现类
   * @param request
   * @param response
   * @param handler
   * @param ex
   * @throws Exception
   * @see org.springframework.web.servlet.HandlerInterceptor#afterCompletion(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse, java.lang.Object, java.lang.Exception)
   * 时间：2017年9月18日 下午5:16:18；
   */
  @Override
  public void afterCompletion(HttpServletRequest request, HttpServletResponse response,
      Object handler, Exception ex) throws Exception {
  }

}
