package com.aesc.service;

import java.util.List;

import com.aesc.pojo.Pjcw;

public interface PjcwService {

	void savePjcw(Pjcw pjcw);

	List<Pjcw> queryPjcw();

	Pjcw queryPjcwListById(int contract_id);

	/**
	 * 方法名称: updatePjcw ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: boolean ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月13日 下午8:48:07；
	 * @throws
	 */
  boolean updatePjcw(Pjcw pjcw);

}
