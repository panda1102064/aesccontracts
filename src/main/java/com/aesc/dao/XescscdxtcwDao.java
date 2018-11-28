package com.aesc.dao;

import java.util.List;

import com.aesc.pojo.Xescscdxtcw;

public interface XescscdxtcwDao {

	/**
	 * 
	 * 方法名称: add ；
	 * 方法描述:  TODO:  添加合同，true为添加成功，false为失败 ；
	 * 返回类型: boolean ；
	 * 创建人：Dawn Chen  ；
	 * 创建时间：2017年7月7日 上午9:29:03；
	 * @throws
	 */
	boolean add(Xescscdxtcw xescscdxtcw);
	/**
	 * 
	 * 方法名称: queryAll ；
	 * 方法描述:  TODO: 查询所有新二手车市场地下停车位合同信息  ；
	 * 返回类型: Xescscdxtcw ；
	 * 创建人：Dawn Chen  ；
	 * 创建时间：2017年7月7日 上午9:28:49；
	 * @throws
	 */
	List<Xescscdxtcw> queryAll();
	
	/**
	 * 
	 * 方法名称: queryById ；
	 * 方法描述:  TODO:  通过ID查询合同信息 ；
	 * 返回类型: Xescscdxtcw ；
	 * 创建人：Dawn Chen  ；
	 * 创建时间：2017年7月7日 上午9:30:46；
	 * @throws
	 */
	Xescscdxtcw queryById(int contract_id);
	
	/**
	 * 方法名称: updateXescscdxtcw ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: boolean ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月9日 下午7:58:43；
	 * @throws
	 */
  boolean updateXescscdxtcw(Xescscdxtcw xescscdxtcw);
}
