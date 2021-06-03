package com.smt.app.resource.business.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.smt.app.base.argument.CommonParams;
import com.smt.app.base.argument.CommonParamsModel;
import com.smt.app.base.code.controller.BasicController;
import com.smt.app.resource.business.service.BusinessResourceDynamicOperateService;
import com.smt.parent.code.response.Response;
import com.smt.parent.code.response.ResponseContext;

/**
 * 
 * @author wangShuFang
 */
@RestController
@RequestMapping({"/busimodel"})
public class BusinessResourceDynamicOperateController extends BasicController{
	
	@Autowired
	private BusinessResourceDynamicOperateService businessResourceDynamicOperateService;
	
	@RequestMapping({"/{nameSpace}/operate","/{nameSpace}/batchOperate"})
	public Response businessOperate(@PathVariable(name="nameSpace") String nameSpace,@CommonParams(cls=Map.class)CommonParamsModel<Map<String,Object>> commonParamsModel) {
		if(commonParamsModel.getList()!=null) {
			businessResourceDynamicOperateService.batchBusinessOperate(nameSpace,commonParamsModel.getList(),commonParamsModel.getIsBatch());
        }
		return ResponseContext.getAndRemove(commonParamsModel.getIsBatch(), true);
	}
	
	@RequestMapping("/{resourceName}/query")
	public Response queryCondition(HttpServletRequest request,@RequestBody  Map<String,Object> map,@PathVariable(name = "resourceName") String resourceName){
		String isRecursive = request.getParameter("isRecursive");
		businessResourceDynamicOperateService.query(map,resourceName,isRecursive);
		return ResponseContext.getAndRemove();
	}
}
