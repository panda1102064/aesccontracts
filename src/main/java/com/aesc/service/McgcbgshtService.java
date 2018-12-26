package com.aesc.service;

import java.util.List;

import com.aesc.pojo.Mcgcbgsht;

public interface McgcbgshtService {

	void SaveMcgcbgsht(Mcgcbgsht mcgcbgsht);

	List<Mcgcbgsht> queryMcgcbgsht();
/**
 * 
 * 方法名称: querymcgcbgshtListById ；
 * 方法描述:  :   ；
 * 返回类型: Mcgcbgsht ；
 * 创建人：Dawn Chen  ；
 * 创建时间：2017年8月2日 上午10:34:53；
 * @throws
 */
	Mcgcbgsht querymcgcbgshtListById(int contract_id);

	/**
	 * 方法名称: updateMcgcbgsht ；
	 * 方法描述:  :   ；
	 * 返回类型: boolean ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月1日 下午8:36:16；
	 * @throws
	 */
boolean updateMcgcbgsht(Mcgcbgsht mcgcbgsht);

}
