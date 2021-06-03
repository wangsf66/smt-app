package com.smt.app.config.util;

public enum ProcedureSqlType {
	CALL("call"),
	CREATE("create");
	
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	private ProcedureSqlType(String name) {
		this.name = name;
	}
}
