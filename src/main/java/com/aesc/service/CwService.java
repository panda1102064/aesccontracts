package com.aesc.service;

import java.util.ArrayList;

import com.aesc.pojo.Cw;

public interface CwService {

	/**
	 * 
	 * 方法名称: queryAll ；
	 * 方法描述:  :   ；
	 * 返回类型: ArrayList<Cw> ；
	 * 创建人：Dawn Chen  ；
	 * 创建时间：2017年7月19日 下午2:37:12；
	 * @throws
	 */
	ArrayList<Cw> queryAll();

	/**
	 * 
	 * 方法名称: save ；
	 * 方法描述:  :   ；
	 * 返回类型: void ；
	 * 创建人：Dawn Chen  ；
	 * 创建时间：2017年7月19日 下午2:38:05；
	 * @throws
	 */
	void save(Cw cw);

	/**
	 * 
	 * 方法名称: queryById ；
	 * 方法描述:  :   ；
	 * 返回类型: Cw ；
	 * 创建人：Dawn Chen  ；
	 * 创建时间：2017年7月19日 下午2:41:59；
	 * @throws
	 */
	Cw queryById(int contract_id);

  boolean updateCw(Cw cw);

}
