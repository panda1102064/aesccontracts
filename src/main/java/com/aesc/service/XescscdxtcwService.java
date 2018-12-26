package com.aesc.service;

import java.util.ArrayList;

import com.aesc.pojo.Xescscdxtcw;

public interface XescscdxtcwService {
	/**
	 * 
	 * 方法名称: add ；
	 * 方法描述:  : 添加合同信息  ；
	 * 返回类型: boolean ；
	 * 创建人：Dawn Chen  ；
	 * 创建时间：2017年7月7日 上午9:35:11；
	 * @throws
	 */
	void add(Xescscdxtcw xescscdxtcw);
	/**
	 * 
	 * 方法名称: queryAll ；
	 * 方法描述:  : 查询合同信息生成列表，后期修改sql语句  ；
	 * 返回类型: List<Xescscdxtcw> ；
	 * 创建人：Dawn Chen  ；
	 * 创建时间：2017年7月14日 上午11:04:31；
	 * @throws
	 */
	ArrayList<Xescscdxtcw> queryAll();
	
	/**
	 * 
	 * 方法名称: queryById ；
	 * 方法描述:  :   ；
	 * 返回类型: List<Xescscdxtcw> ；
	 * 创建人：Dawn Chen  ；
	 * 创建时间：2017年7月17日 上午10:52:56；
	 * @throws
	 */
	Xescscdxtcw queryById(int contract_id);
	
	/**
	 * 方法名称: updateXescscdxtcw ；
	 * 方法描述:  :   ；
	 * 返回类型: boolean ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月9日 下午7:56:46；
	 * @throws
	 */
  boolean updateXescscdxtcw(Xescscdxtcw xescscdxtcw);
}
