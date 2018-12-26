package com.aesc.dao;

import org.apache.ibatis.annotations.Param;

import com.aesc.pojo.Users;

public interface UsersDao {

  /**
   * 方法名称: getUsers ；
   * 方法描述:  :用户登录 ，传入用户名，查询获取用户名和密码，用户名没有则返回一个null  ；
   * 返回类型: Users ；
   * 作者：Dawn Chen  ；
   * 时间：2017年9月14日 下午3:26:37；
   * @throws
   */
  Users getUsers(String username);

  /**
   * 方法名称: addUsers ；
   * 方法描述:  :添加用户信息   ；
   * 返回类型: void ；
   * 作者：Dawn Chen  ；
   * 时间：2017年9月14日 下午3:26:43；
   * @throws
   */
  void addUsers(Users user);

  /**
   * 方法名称: updateUserInfo ；
   * 方法描述:  : 用户查询自己的信息；
   * 返回类型: void ；
   * 作者：Dawn Chen  ；
   * 时间：2017年9月18日 下午3:30:30；
   * @throws
   */
  Users queryUserInfo(String username);

  /**
   * 方法名称: updateUserInfo ；
   * 方法描述:  : 用户有修改自己的密码或者电话信息  ；
   * 返回类型: boolean ；
   * 作者：Dawn Chen  ；
   * 时间：2017年9月18日 下午4:30:04；
   * @throws
   */
  boolean updateUserInfo(@Param("username") String username, @Param("password")String password, @Param("telephone")String telephone);
}
