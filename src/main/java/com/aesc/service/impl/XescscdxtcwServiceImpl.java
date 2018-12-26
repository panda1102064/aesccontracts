package com.aesc.service.impl;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.aesc.dao.XescscdxtcwDao;
import com.aesc.pojo.Xescscdxtcw;
import com.aesc.service.XescscdxtcwService;

@Transactional
@Service("XescscdxtcwService")
public class XescscdxtcwServiceImpl implements XescscdxtcwService {
	@Resource
	private XescscdxtcwDao xescscdxtcwDao;

	@Override
	public void add(Xescscdxtcw xescscdxtcw) {
		xescscdxtcwDao.add(xescscdxtcw);
	}

	@Override
	public ArrayList<Xescscdxtcw> queryAll() {
		return (ArrayList<Xescscdxtcw>) this.xescscdxtcwDao.queryAll();
	}

	@Override
	public Xescscdxtcw queryById(int contract_id) {
		return this.xescscdxtcwDao.queryById(contract_id);
	}

  @Override
  public boolean updateXescscdxtcw(Xescscdxtcw xescscdxtcw) {
    return this.xescscdxtcwDao.updateXescscdxtcw(xescscdxtcw);
  }
}
