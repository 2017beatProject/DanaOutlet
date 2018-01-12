package com.bit.daNaOutlet.model;

import java.util.List;

import com.bit.daNaOutlet.model.entity.ClipVo;

public interface ClipDao {

	List<ClipVo> list() throws Exception;
	
}
