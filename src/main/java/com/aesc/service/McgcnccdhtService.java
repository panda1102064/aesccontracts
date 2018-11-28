package com.aesc.service;

import java.util.List;

import com.aesc.pojo.Mcgcnccdht;

public interface McgcnccdhtService {

	void saveMcgcnccdht(Mcgcnccdht mcgcnccdht);

	List<Mcgcnccdht> queryMcgcnccdht();

	Mcgcnccdht queryMcgcnccdhtById(int contract_id);

  boolean updateMcgcnccdht(Mcgcnccdht mcgcnccdht);

}
