package com.aesc.dao;

import java.util.List;

import com.aesc.pojo.Mcgcnccdht;

public interface McgcnccdhtDao {

	void saveMcgcnccdht(Mcgcnccdht mcgcnccdht);

	List<Mcgcnccdht> queryMcgcbgsht();

	Mcgcnccdht queryMcgcbgshtById(int contract_id);

  boolean updateMcgcnccdht(Mcgcnccdht mcgcnccdht);

}
