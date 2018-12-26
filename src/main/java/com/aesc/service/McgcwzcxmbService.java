package com.aesc.service;

import java.util.List;

import com.aesc.pojo.Mcgcwzcxmb;

public interface McgcwzcxmbService {

  /**
   * 方法名称: saveMcgcwzcxmb ；
   * 方法描述:  :   ；
   * 返回类型: void ；
   * 作者：Dawn Chen  ；
   * 时间：2017年11月1日 下午1:57:12；
   * @throws
   */
	void saveMcgcwzcxmb(Mcgcwzcxmb mcgcwzcxmb);

	/**
	 * 方法名称: queryMcgcwzcxmb ；
	 * 方法描述:  :   ；
	 * 返回类型: List<Mcgcwzcxmb> ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月1日 下午1:57:16；
	 * @throws
	 */
	List<Mcgcwzcxmb> queryMcgcwzcxmb();

	/**
	 * 方法名称: queryMcgcwzcxmbById ；
	 * 方法描述:  :   ；
	 * 返回类型: Mcgcwzcxmb ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月1日 下午1:57:21；
	 * @throws
	 */
	Mcgcwzcxmb queryMcgcwzcxmbById(int contract_id);

	/**
	 * 方法名称: updateMcgcwzcxmb ；
	 * 方法描述:  :   ；
	 * 返回类型: boolean ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月1日 下午1:57:25；
	 * @throws
	 */
  boolean updateMcgcwzcxmb(Mcgcwzcxmb mcgcwzcxmb);

}
