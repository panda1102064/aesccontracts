package com.aesc.dao;

import java.util.List;

import com.aesc.pojo.Dscwswtcw;

public interface DscwswtcwDao {

  /**
   * 方法名称: saveDscwswtcw ；
   * 方法描述:  TODO:   ；
   * 返回类型: void ；
   * 作者：Dawn Chen  ；
   * 时间：2017年11月8日 下午8:48:16；
   * @throws
   */
	void saveDscwswtcw(Dscwswtcw dscwswtcw);

	/**
	 * 方法名称: queryDscwswtcw ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: List<Dscwswtcw> ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月8日 下午8:48:24；
	 * @throws
	 */
	List<Dscwswtcw> queryDscwswtcw();

	/**
	 * 方法名称: queryDscwswtcwById ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: Dscwswtcw ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月8日 下午8:48:28；
	 * @throws
	 */
	Dscwswtcw queryDscwswtcwById(int contract_id);

	/**
	 * 方法名称: updateDscwswtcw ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: boolean ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月8日 下午8:48:35；
	 * @throws
	 */
  boolean updateDscwswtcw(Dscwswtcw dscwswtcw);

}
