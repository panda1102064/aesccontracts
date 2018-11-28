package com.aesc.service;

import com.aesc.pojo.Users;

public interface UsersService{
  
	/**
	 * 方法名称: getUsers ；
	 * 方法描述:  TODO: 通过用户名及密码核查用户登录 ；
	 * 返回类型: Users ；
	 * 创建人：Dawn Chen  ；
	 * 创建时间：2017年6月26日 下午2:08:51；
	 * @throws
	 */
  Users getUsers(String username);
  
  /**
   * 方法名称: addUsers ；
   * 方法描述:  TODO: 新用户注册  ；
   * 返回类型: void ；
   * 作者：Dawn Chen  ；
   * 时间：2017年9月18日 下午3:28:47；
   * @throws
   */
  void addUsers(Users user);

  /**
   * 方法名称: updateUserInfo ；
   * 方法描述:  TODO: 用户查询自己的信息；
   * 返回类型: Users ；
   * 作者：Dawn Chen  ；
   * 时间：2017年9月18日 下午3:27:59；
   * @throws
   */
  Users queryUserInfo(String username);

  boolean updateUserInfo(String username, String password, String telephone);
}
