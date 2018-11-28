package com.aesc.service;

import java.util.List;

import com.aesc.pojo.Qpyqkfmb;

public interface QpyqkfmbService {
/**
 * 
 * 方法名称: saveQpyqkfmb ；
 * 方法描述:  TODO:   ；
 * 返回类型: void ；
 * 创建人：Dawn Chen  ；
 * 创建时间：2017年8月10日 下午1:48:08；
 * @throws
 */
	void saveQpyqkfmb(Qpyqkfmb qpyqkfmb);
/**
 * 
 * 方法名称: queryQpyqkfmb ；
 * 方法描述:  TODO:   ；
 * 返回类型: List<Qpyqkfmb> ；
 * 创建人：Dawn Chen  ；
 * 创建时间：2017年8月10日 下午1:48:11；
 * @throws
 */
	List<Qpyqkfmb> queryQpyqkfmb();
/**
 * 
 * 方法名称: queryQpyqkfmbById ；
 * 方法描述:  TODO:   ；
 * 返回类型: Qpyqkfmb ；
 * 创建人：Dawn Chen  ；
 * 创建时间：2017年8月10日 下午1:48:14；
 * @throws
 */
	Qpyqkfmb queryQpyqkfmbById(int contract_id);
	
	/**
	 * 方法名称: updateQpyqkfmb ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: boolean ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月6日 下午3:09:23；
	 * @throws
	 */
	boolean updateQpyqkfmb(Qpyqkfmb qpyqkfmb);

}
