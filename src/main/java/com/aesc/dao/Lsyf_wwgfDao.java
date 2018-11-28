package com.aesc.dao;

import java.util.List;

import com.aesc.pojo.Lsyf_wwgf;

public interface Lsyf_wwgfDao {

	void saveLsyf_wwgf(Lsyf_wwgf lsyf_wwgf);

	List<Lsyf_wwgf> queryLsyf_wwgf();

	Lsyf_wwgf queryLsyf_wwgfById(int contract_id);

	/**
	 * 方法名称: updateLsyf_wwgf ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: boolean ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月13日 下午9:05:11；
	 * @throws
	 */
  boolean updateLsyf_wwgf(Lsyf_wwgf lsyf_wwgf);


}
