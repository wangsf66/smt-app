package com.smt.app.util;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.boot.context.event.ApplicationStartedEvent;
import org.springframework.context.ApplicationListener;

import com.douglei.orm.context.SessionFactoryContainer;
import com.douglei.orm.mapping.MappingTypeNameConstants;
import com.douglei.orm.mapping.handler.entity.AddOrCoverMappingEntity;
import com.douglei.orm.mapping.handler.entity.MappingEntity;
import com.douglei.tools.file.scanner.impl.ResourceScanner;
import com.smt.app.config.resource.business.parse.ExMappingTypeConstants;

/**
 * 
 * @author wangShuFang
 */

public class MappingContextRegisterListener implements ApplicationListener<ApplicationStartedEvent>{
	
	@SuppressWarnings("unchecked")
	@Override
	public void onApplicationEvent(ApplicationStartedEvent event) {
		List<MappingEntity> sqllist = new ArrayList<MappingEntity>();
        ResourceScanner pmpScanner = new ResourceScanner("pmp.xml");
        ResourceScanner smpScanner = new ResourceScanner("smp.xml");
        ResourceScanner tmpScanner = new ResourceScanner("tmp.xml");
        for(String file : pmpScanner.scan(true,"webSqlMappingPmp")) 
        	sqllist.add(new AddOrCoverMappingEntity(file).enableProperty());
        for(String file : smpScanner.scan(true,"webSqlMappingSmp")) 
        	sqllist.add(new AddOrCoverMappingEntity(file).enableProperty());
        for(String file : tmpScanner.scan(true,"webMappings")) 
        	sqllist.add(new AddOrCoverMappingEntity(file).enableProperty());
        SessionFactoryContainer.getSingleton().get().getMappingHandler().execute(sqllist);
        List<MappingEntity> list = new ArrayList<MappingEntity>();
        List<Map<String, Object>> objectList = InjectServiceUtil.getInstance().getDmResourceMappingService().query();
		if(objectList.size()>0) {
			for (Map<String, Object> map : objectList) {
				if (Integer.parseInt(map.get("RESOURCE_TYPE").toString()) == 10) {
					list.add(new AddOrCoverMappingEntity(map.get("MAPPING_CONTENT").toString(), MappingTypeNameConstants.TABLE).enableProperty());
				} else if(Integer.parseInt(map.get("RESOURCE_TYPE").toString()) == 15){
					list.add(new AddOrCoverMappingEntity(map.get("MAPPING_CONTENT").toString(), MappingTypeNameConstants.PROCEDURE).enableProperty());
				} else if(Integer.parseInt(map.get("RESOURCE_TYPE").toString()) == 20){
					list.add(new AddOrCoverMappingEntity(map.get("MAPPING_CONTENT").toString(), MappingTypeNameConstants.SQL).enableProperty());
				} else if(Integer.parseInt(map.get("RESOURCE_TYPE").toString()) == 30){
					list.add(new AddOrCoverMappingEntity(map.get("MAPPING_CONTENT").toString(), ExMappingTypeConstants.BUSIMODEL).enableProperty());
				} 
			}
			SessionFactoryContainer.getSingleton().get().getMappingHandler().execute(list);
		}
	}
}
