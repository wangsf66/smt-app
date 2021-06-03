package com.smt.app.config.resource.business.parse.busimodel;

import java.io.InputStream;

import com.douglei.orm.mapping.MappingSubject;
import com.douglei.orm.mapping.MappingType;
import com.douglei.orm.mapping.handler.entity.AddOrCoverMappingEntity;
import com.smt.app.config.resource.business.parse.ExMappingTypeConstants;

/**
 * 
 * @author DougLei
 */
public class BusiModelMappingType extends MappingType{
	
	public BusiModelMappingType() {
		super(ExMappingTypeConstants.BUSIMODEL, ".bmmp.xml", 70, false);
	}


	@Override
	public MappingSubject parse(AddOrCoverMappingEntity entity, InputStream input) throws Exception {
		return new BusiModelMappingParser().parse(entity,input);
	}
}
