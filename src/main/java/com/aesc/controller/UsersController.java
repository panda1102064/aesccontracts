package com.aesc.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.aesc.pojo.Users;
import com.aesc.service.UsersService;
import com.aesc.utils.EncoderMD5;
import com.aesc.utils.StringUtil;
import com.aesc.utils.TransactSQLInjection;

//import static java.lang.System.out;

@Controller
public class UsersController {

  private static final Logger logger = LoggerFactory.getLogger(UsersController.class);
	/**
	 * 使用@Autowired也可以，@Autowired默认按类型装配
	 * 
	 * @Resource 默认按名称装配，当找不到与名称匹配的bean才会按类型装配。
	 */
	@Resource
	private UsersService usersService;

	/**
	 * @throws IOException 
	 * @throws ServletException 
	 * 方法名称: login ；
	 * 方法描述:  TODO:  新增HttpServletRequest让用户在前端获取 ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年9月7日 下午3:59:49；
	 * @throws
	 */
	@RequestMapping("/login")
	public String login(Users user, ModelMap model,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  String msg="";
		Users users = null;
		try {
		  //移除登录时疑似SQL注入的语句
		if(user.getUsername() !=null ) {
		  user.setUsername(TransactSQLInjection.sqlInjection(user.getUsername()));
		  user.setPassword(TransactSQLInjection.sqlInjection(user.getPassword()));
		}else {
		  return "login";
    }
		users = usersService.getUsers(user.getUsername());
		if (users != null && users.getUsername() != null && users.getPassword() != null 
		    && user.getUsername().equals(users.getUsername()) && EncoderMD5.getMD5(user.getPassword()).equals(users.getPassword())) {
		  logger.warn(users.getUsername()+"已经登录！时间是："+StringUtil.getSysTime());
		  // 登录成功,将登录用户信息保存到当前会话中
		  request.getSession().setAttribute("user", users);  
		  //设置session超时时间为90分钟，单位为秒
		  request.getSession().setMaxInactiveInterval(5400);
			//return "manager/main";
			return "manager/ZSBcontractLists";
		}
		msg="您的用户名或者密码错误，请重新输入!";
		model.addAttribute("msg", msg);
		} catch (Exception e) {
		  request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
		  logger.error("登录出错了：", e);
		  //return "login";
		}
		return "login";
	}
	
	/**
	 * 方法名称: logOut ；
	 * 方法描述:  TODO: 用户退出登录，清除session  ；
	 * 返回类型: ModelAndView ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年9月15日 上午9:18:15；
	 * @throws
	 */
	@RequestMapping("/logOut")
	public ModelAndView logOut(HttpServletRequest request, HttpServletResponse response){
	  //防止创建Session 
	  HttpSession session = request.getSession(false); 
    if(session == null){  
        return new ModelAndView("login"); 
    }
    session.removeAttribute("user");
    session.invalidate();  
	  return new ModelAndView("login");
	}
	

  /**
   * 方法名称: redirectMain ；
   * 方法描述:  TODO: 用户注册  ；
   * 返回类型: String ；
   * 作者：Dawn Chen  ；
   * 时间：2017年9月12日 下午1:49:22；
   * @throws
   */
  @RequestMapping("/registerUser")
  public String redirectRegisterUser(){
    return "admin/registerUser";
  }
  
  /**
   * 方法名称: redirectAddUsers ；
   * 方法描述:  TODO:   ；
   * 返回类型: String ；
   * 作者：Dawn Chen  ；
   * 时间：2017年9月15日 上午9:06:29；
   * @throws
   */
	@RequestMapping("/addUser")
  public String redirectAddUsers(Users user,ModelMap model){
	  String msg = "用户注册成功！";
	  //密码转换为MD5进行保存
	  user.setPassword(EncoderMD5.getMD5(user.getPassword()));
	  try {
	    usersService.addUsers(user);
    } catch (Exception e) {
      msg = "添加用户失败，请重试！";
      model.addAttribute("msg",msg);
      e.printStackTrace();
      return "admin/registerUser";
    }
	  model.addAttribute("msg",msg);
	  return "admin/registerUser";
  }
	
	/**
	 * 方法名称: redirectpersonInfo ；
	 * 方法描述:  TODO: 用户查看自己信息资料  ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年9月18日 下午3:00:28；
	 * @throws
	 */
	@RequestMapping("/personInfo")
	public String redirectpersonInfo(String username, ModelMap model){
	  Users userInfo = usersService.queryUserInfo(username);
	  model.addAttribute("userInfo",userInfo);
	  return "admin/personInfo";
	}
	
	/**
	 * 方法名称: redirectupdateUserInfo ；
	 * 方法描述:  TODO: 用户修改自己的信息密码，电话  ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年9月18日 下午5:07:58；
	 * @throws
	 */
	@RequestMapping("/updateUserInfo")
	public String redirectupdateUserInfo(String username,String password,String telephone, ModelMap model){
	  @SuppressWarnings("unused")
    boolean trueORfalse = usersService.updateUserInfo(username,password,telephone);
	  model.addAttribute("msg","修改成功！再次点击简介以查看更新。");
	  return "admin/personInfo";
	}
}
