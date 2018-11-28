package com.aesc.service;

import java.util.List;

import com.aesc.pojo.Dscwcktcw;

public interface DscwcktcwService {

  /**
   * 方法名称: saveDscwcktcw ；
   * 方法描述:  TODO:   ；
   * 返回类型: void ；
   * 作者：Dawn Chen  ；
   * 时间：2017年11月8日 下午8:07:47；
   * @throws
   */
	void saveDscwcktcw(Dscwcktcw dscwcktcw);

	/**
	 * 方法名称: queryDscwcktcw ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: List<Dscwcktcw> ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月8日 下午8:07:52；
	 * @throws
	 */
	List<Dscwcktcw> queryDscwcktcw();

	/**
	 * 方法名称: queryDscwcktcwById ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: Dscwcktcw ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月8日 下午8:08:03；
	 * @throws
	 */
	Dscwcktcw queryDscwcktcwById(int contract_id);

	/**
	 * 方法名称: updateDscwcktcw ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: boolean ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月8日 下午8:07:59；
	 * @throws
	 */
  boolean updateDscwcktcw(Dscwcktcw dscwcktcw);

}
