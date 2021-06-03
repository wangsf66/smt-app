package com.smt.app.excelPOI.controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.smt.app.base.code.controller.BasicController;
import com.smt.app.excelPOI.service.ExcelPoiService;
import com.smt.parent.code.response.Response;
import com.smt.parent.code.response.ResponseContext;
/**
 * 
 * @author wangShuFang
 */
@RestController
@RequestMapping("/poi")
public class ExcelPoiController extends BasicController{
	
	  @Autowired
	  private ExcelPoiService excelPoiService;
	
	  @RequestMapping(value="/upload",method={RequestMethod.POST})
	  public Response  uploadExcel(@RequestParam("file") MultipartFile file,HttpServletRequest request,HttpServletResponse response) throws Exception {
		    String resourceName = request.getParameter("resourceName");
		    String excelExportEncryption = request.getParameter("excelExportEncryption");
		    Integer pageSize = null;
		    if(request.getParameter("pageSize")!=null) {
		    	 pageSize =Integer.parseInt(request.getParameter("pageSize"));
		    }
		    excelPoiService.poiExcel(file, resourceName,pageSize,excelExportEncryption); 
		    return ResponseContext.getAndRemove();
	 } 
	  
	  @RequestMapping(value="/export",method={RequestMethod.POST})
	  public Response  exportBigDataExcel(HttpServletRequest request,HttpServletResponse response) throws Exception {
		    String resourceName = request.getParameter("resourceName");
		    Integer pageSize = null;
		    if(request.getParameter("pageSize")!=null) {
		    	 pageSize =Integer.parseInt(request.getParameter("pageSize"));
		    }
		    excelPoiService.exportDataExcel(resourceName,pageSize); 
		    return ResponseContext.getAndRemove();
	 }           
}
