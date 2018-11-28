package com.aesc.dao;

import java.util.List;

import com.aesc.pojo.Mcgcbgsht;

public interface McgcbgshtDao {

	void SaveMcgcbgsht(Mcgcbgsht mcgcbgsht);

	List<Mcgcbgsht> queryMcgcbgsht();

	Mcgcbgsht querymcgcbgshtListById(int contract_id);

  boolean updateMcgcbgsht(Mcgcbgsht mcgcbgsht);

}
