package com.aesc.service.impl;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.aesc.dao.UsersDao;
import com.aesc.pojo.Users;
import com.aesc.service.UsersService;
import com.aesc.utils.EncoderMD5;

import static java.lang.System.out;

@Transactional
@Service("UsersService")
public class UsersServiceImpl implements UsersService{
  
	/**
	 *  因为没有在spring的文件中显式的声明userService实现类，直接通过getBean得到 usersService 会找不到
	 *  需要显式配置 @Service ("usersService")，指定bean的名称
	 *  相当与<bean id="usersService" class="com.aesc.service.impl.UsersServiceImpl"></bean>
	 */
  
	@Resource
	private UsersDao usersDao;
	
  @Override
  public Users getUsers(String username) {
      
    return this.usersDao.getUsers(username);
  }


  @Override
    public void addUsers(Users user) {
      usersDao.addUsers(user);
      out.println("success");
  }


  @Override
  public Users queryUserInfo(String username) {
    Users userInfo = usersDao.queryUserInfo(username);
    return userInfo;
  }


  @Override
  public boolean updateUserInfo(String username, String password, String telephone) {
    
    boolean trueORfalse = usersDao.updateUserInfo(username,EncoderMD5.getMD5(password),telephone);
    // TODO Auto-generated method stub  
    return trueORfalse;
  }

}
