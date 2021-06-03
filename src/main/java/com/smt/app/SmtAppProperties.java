package com.smt.app;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * 
 * @author DougLei
 */
@Component
@ConfigurationProperties(prefix="smt.app")
public class SmtAppProperties {
	private String fileUploudKeySeparator;
	
	private int sizes;
	
	private String fileUploudServerAddress;
	
	private boolean excelExportEncryption;

	public String getFileUploudKeySeparator() {
		return fileUploudKeySeparator;
	}

	public void setFileUploudKeySeparator(String fileUploudKeySeparator) {
		this.fileUploudKeySeparator = fileUploudKeySeparator;
	}

	public int getSizes() {
		return sizes;
	}

	public void setSizes(int sizes) {
		this.sizes = sizes;
	}

	public String getFileUploudServerAddress() {
		return fileUploudServerAddress;
	}

	public void setFileUploudServerAddress(String fileUploudServerAddress) {
		this.fileUploudServerAddress = fileUploudServerAddress;
	}

	public boolean isExcelExportEncryption() {
		return excelExportEncryption;
	}

	public void setExcelExportEncryption(boolean excelExportEncryption) {
		this.excelExportEncryption = excelExportEncryption;
	}
}
