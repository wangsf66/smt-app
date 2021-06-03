package com.smt.app.config.resource.business.parse.busimodel;

import com.douglei.orm.mapping.Mapping;
import com.douglei.orm.mapping.metadata.AbstractMetadata;
import com.smt.app.config.resource.business.parse.ExMappingTypeConstants;

/**
 * busimode 映射
 * @author DougLei
 */
public class BusiModelMapping extends Mapping {

	public BusiModelMapping(AbstractMetadata metadata) {
		super(ExMappingTypeConstants.BUSIMODEL,metadata);
	}
}
