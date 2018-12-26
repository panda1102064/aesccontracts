package com.aesc.service;

import java.util.List;

import com.aesc.pojo.Dscwswtcw;

public interface DscwswtcwService {

  /**
   * 方法名称: saveDscwswtcw ；
   * 方法描述:  :   ；
   * 返回类型: void ；
   * 作者：Dawn Chen  ；
   * 时间：2017年11月8日 下午8:46:52；
   * @throws
   */
	void saveDscwswtcw(Dscwswtcw dscwswtcw);

	/**
	 * 方法名称: queryDscwswtcw ；
	 * 方法描述:  :   ；
	 * 返回类型: List<Dscwswtcw> ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月8日 下午8:46:58；
	 * @throws
	 */
	List<Dscwswtcw> queryDscwswtcw();

	/**
	 * 方法名称: queryDscwswtcwById ；
	 * 方法描述:  :   ；
	 * 返回类型: Dscwswtcw ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月8日 下午8:47:03；
	 * @throws
	 */
	Dscwswtcw queryDscwswtcwById(int contract_id);

	/**
	 * 方法名称: updateDscwswtcw ；
	 * 方法描述:  :   ；
	 * 返回类型: boolean ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月8日 下午8:47:12；
	 * @throws
	 */
  boolean updateDscwswtcw(Dscwswtcw dscwswtcw);

}
