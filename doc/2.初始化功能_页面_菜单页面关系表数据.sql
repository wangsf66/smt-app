-- ��ʼ�����ܱ�����
    DECLARE @FUNC_ID VARCHAR(36)
	DECLARE @CREATE_USER_ID VARCHAR(36)
	DECLARE @CREATE_DATE DATETIME
	DECLARE @PROJECT_CODE VARCHAR(36)
	DECLARE @TENANT_ID VARCHAR(36)
	DECLARE @REMARK VARCHAR(200)
	DECLARE @CODE VARCHAR(50)
	DECLARE @NAME VARCHAR(50)
	DECLARE @SORT SMALLINT
	DECLARE @STATE SMALLINT
	DECLARE @PID VARCHAR(36)

	SET @CREATE_USER_ID = '200ceb26807d6bf99fd6f4f0d1ca54d40001'
	SET @CREATE_DATE = GETDATE()
	SET @PROJECT_CODE = 'SMT_VC'
	SET @TENANT_ID = '200ceb26807d6bf99fd6f4f0d1ca54d40002'
	SET @REMARK = NULL
    SET @STATE = NULL
    SET @PID = NULL

BEGIN
	SET @FUNC_ID = NEWID()
    SET @CODE = 'FUNC_PAGE'
    SET @NAME = 'ҳ��'
    SET @SORT = 1
	INSERT INTO dbo.SMT_SETTING_FUNC
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          REMARK ,
          CODE ,
          NAME ,
          SORT ,
          STATE ,
          PID
        )
VALUES  ( @FUNC_ID , -- ID - varchar(36)
          @CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @CREATE_DATE , -- CREATE_DATE - datetime
          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @TENANT_ID , -- TENANT_ID - varchar(36)
          @REMARK , -- REMARK - varchar(200)
          @CODE , -- CODE - varchar(50)
          @NAME , -- NAME - varchar(50)
          @SORT , -- SORT - smallint
          @STATE , -- STATE - smallint
          @PID  -- PID - varchar(36)
        )
END

BEGIN
	SET @FUNC_ID = NEWID()
    SET @CODE = 'FUNC_MODELING'
    SET @NAME = '��ģ'
    SET @SORT = 2
	INSERT INTO dbo.SMT_SETTING_FUNC
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          REMARK ,
          CODE ,
          NAME ,
          SORT ,
          STATE ,
          PID
        )
VALUES  ( @FUNC_ID , -- ID - varchar(36)
          @CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @CREATE_DATE , -- CREATE_DATE - datetime
          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @TENANT_ID , -- TENANT_ID - varchar(36)
          @REMARK , -- REMARK - varchar(200)
          @CODE , -- CODE - varchar(50)
          @NAME , -- NAME - varchar(50)
          @SORT , -- SORT - smallint
          @STATE , -- STATE - smallint
          @PID  -- PID - varchar(36)
        )
END

BEGIN
	SET @FUNC_ID = NEWID()
    SET @CODE = 'FUNC_SYSTEM_MANEGER'
    SET @NAME = 'ϵͳ����'
    SET @SORT = 3
	INSERT INTO dbo.SMT_SETTING_FUNC
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          REMARK ,
          CODE ,
          NAME ,
          SORT ,
          STATE ,
          PID
        )
VALUES  ( @FUNC_ID , -- ID - varchar(36)
          @CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @CREATE_DATE , -- CREATE_DATE - datetime
          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @TENANT_ID , -- TENANT_ID - varchar(36)
          @REMARK , -- REMARK - varchar(200)
          @CODE , -- CODE - varchar(50)
          @NAME , -- NAME - varchar(50)
          @SORT , -- SORT - smallint
          @STATE , -- STATE - smallint
          @PID  -- PID - varchar(36)
        )
END

BEGIN
	SET @FUNC_ID = NEWID()
    SET @CODE = 'FUNC_AUTHORITY_MANEGER'
    SET @NAME = 'Ȩ�޹���'
    SET @SORT = 4
	INSERT INTO dbo.SMT_SETTING_FUNC
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          REMARK ,
          CODE ,
          NAME ,
          SORT ,
          STATE ,
          PID
        )
VALUES  ( @FUNC_ID , -- ID - varchar(36)
          @CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @CREATE_DATE , -- CREATE_DATE - datetime
          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @TENANT_ID , -- TENANT_ID - varchar(36)
          @REMARK , -- REMARK - varchar(200)
          @CODE , -- CODE - varchar(50)
          @NAME , -- NAME - varchar(50)
          @SORT , -- SORT - smallint
          @STATE , -- STATE - smallint
          @PID  -- PID - varchar(36)
        )
END

BEGIN
	SET @FUNC_ID = NEWID()
    SET @CODE = 'FUNC_SYSTEM_LOG'
    SET @NAME = 'ϵͳ��־'
    SET @SORT = 5
	INSERT INTO dbo.SMT_SETTING_FUNC
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          REMARK ,
          CODE ,
          NAME ,
          SORT ,
          STATE ,
          PID
        )
VALUES  ( @FUNC_ID , -- ID - varchar(36)
          @CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @CREATE_DATE , -- CREATE_DATE - datetime
          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @TENANT_ID , -- TENANT_ID - varchar(36)
          @REMARK , -- REMARK - varchar(200)
          @CODE , -- CODE - varchar(50)
          @NAME , -- NAME - varchar(50)
          @SORT , -- SORT - smallint
          @STATE , -- STATE - smallint
          @PID  -- PID - varchar(36)
        )
END

BEGIN
	SET @FUNC_ID = NEWID()
    SET @CODE = 'FUNC_SYSTEM_PUBLIC_PAGE'
    SET @NAME = '����ҳ��'
    SET @SORT = 6
	INSERT INTO dbo.SMT_SETTING_FUNC
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          REMARK ,
          CODE ,
          NAME ,
          SORT ,
          STATE ,
          PID
        )
VALUES  ( @FUNC_ID , -- ID - varchar(36)
          @CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @CREATE_DATE , -- CREATE_DATE - datetime
          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @TENANT_ID , -- TENANT_ID - varchar(36)
          @REMARK , -- REMARK - varchar(200)
          @CODE , -- CODE - varchar(50)
          @NAME , -- NAME - varchar(50)
          @SORT , -- SORT - smallint
          @STATE , -- STATE - smallint
          @PID  -- PID - varchar(36)
        )
END

-- ��ʼ��PAGE������
    DECLARE @PAGE_ID VARCHAR(36)
	DECLARE @PAGE_CREATE_USER_ID VARCHAR(36)
	DECLARE @PAGE_CREATE_DATE DATETIME
	DECLARE @PAGE_PROJECT_CODE VARCHAR(36)
	DECLARE @PAGE_TENANT_ID VARCHAR(36)
	DECLARE @ACCESS_PERMISSION VARCHAR(30)
	DECLARE @PAGE_NAME VARCHAR(50)
	DECLARE @PAGE_PID VARCHAR(36)
	DECLARE @PAGE_SORT SMALLINT
	DECLARE @PAGE_STATE SMALLINT
	DECLARE @PAGE_CODE VARCHAR(50)
	DECLARE @PAGE_FUNC_ID VARCHAR(36)
	DECLARE @PAGE_TYPE SMALLINT
	DECLARE @IS_PUBLISH SMALLINT
	DECLARE @IS_REF_PAGE SMALLINT
	DECLARE @REF_PAGE_CODE VARCHAR(50)

	
	SET @PAGE_CREATE_USER_ID = '200ceb26807d6bf99fd6f4f0d1ca54d40001'
	SET @PAGE_CREATE_DATE = GETDATE()
	SET @PAGE_PROJECT_CODE = 'SMT_VC'
	SET @PAGE_TENANT_ID = '200ceb26807d6bf99fd6f4f0d1ca54d40002'
	SET @ACCESS_PERMISSION = 'public'
	SET @PAGE_STATE = 1
	SET @IS_PUBLISH = 2
	SET @IS_REF_PAGE = 0
	SET @REF_PAGE_CODE = NULL 

BEGIN
    SET @PAGE_ID = NEWID()
    SET @PAGE_NAME = 'ҳ�����'
    SET @PAGE_PID = (SELECT ID FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_PAGE')
	SET @PAGE_SORT = 1
	SET @PAGE_CODE = 'PAGE_PAGE'
	SET @PAGE_FUNC_ID = (SELECT CODE FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_PAGE')
	SET @PAGE_TYPE = 1
INSERT INTO dbo.SMT_SETTING_PAGE
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          ACCESS_PERMISSION ,
          NAME ,
          PID ,
          SORT ,
          STATE ,
          CODE ,
          FUNC_CODE ,
          PAGE_TYPE ,
          IS_PUBLISH ,
		  IS_REF_PAGE,
		  REF_PAGE_CODE
        )
VALUES  ( @PAGE_ID , -- ID - varchar(36)
          @PAGE_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @PAGE_CREATE_DATE, -- CREATE_DATE - datetime
          @PAGE_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @PAGE_TENANT_ID , -- TENANT_ID - varchar(36)
          @ACCESS_PERMISSION , -- ACCESS_PERMISSION - varchar(30)
          @PAGE_NAME , -- NAME - varchar(50)
          @PAGE_PID , -- PID - varchar(36)
          @PAGE_SORT , -- SORT - smallint
          @PAGE_STATE , -- STATE - smallint
          @PAGE_CODE , -- CODE - varchar(50)
          @PAGE_FUNC_ID , -- FUNC_ID - varchar(36)
          @PAGE_TYPE , -- PAGE_TYPE - smallint
          @IS_PUBLISH , -- IS_PUBLISH - smallint
		  @IS_REF_PAGE ,
		  @REF_PAGE_CODE
        )
END

BEGIN
    SET @PAGE_ID = NEWID()
    SET @PAGE_NAME = 'ҳ�洴��'
    SET @PAGE_PID = (SELECT ID FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_PAGE')
	SET @PAGE_SORT = 2
	SET @PAGE_CODE = 'PAGE_CREATE'
	SET @PAGE_FUNC_ID = (SELECT CODE FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_PAGE')
	SET @PAGE_TYPE = 1
INSERT INTO dbo.SMT_SETTING_PAGE
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          ACCESS_PERMISSION ,
          NAME ,
          PID ,
          SORT ,
          STATE ,
          CODE ,
          FUNC_CODE ,
          PAGE_TYPE ,
          IS_PUBLISH ,
		  IS_REF_PAGE,
		  REF_PAGE_CODE
        )
VALUES  ( @PAGE_ID , -- ID - varchar(36)
          @PAGE_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @PAGE_CREATE_DATE, -- CREATE_DATE - datetime
          @PAGE_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @PAGE_TENANT_ID , -- TENANT_ID - varchar(36)
          @ACCESS_PERMISSION , -- ACCESS_PERMISSION - varchar(30)
          @PAGE_NAME , -- NAME - varchar(50)
          @PAGE_PID , -- PID - varchar(36)
          @PAGE_SORT , -- SORT - smallint
          @PAGE_STATE , -- STATE - smallint
          @PAGE_CODE , -- CODE - varchar(50)
          @PAGE_FUNC_ID , -- FUNC_ID - varchar(36)
          @PAGE_TYPE , -- PAGE_TYPE - smallint
          @IS_PUBLISH , -- IS_PUBLISH - smallint
		  @IS_REF_PAGE ,
		  @REF_PAGE_CODE
        )
END

BEGIN
    SET @PAGE_ID = NEWID()
    SET @PAGE_NAME = '���ݽ�ģ'
    SET @PAGE_PID = (SELECT ID FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_MODELING')
	SET @PAGE_SORT = 3
	SET @PAGE_CODE = 'PAGE_MODELING_DATA'
	SET @PAGE_FUNC_ID = (SELECT CODE FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_MODELING')
	SET @PAGE_TYPE = 1
INSERT INTO dbo.SMT_SETTING_PAGE
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          ACCESS_PERMISSION ,
          NAME ,
          PID ,
          SORT ,
          STATE ,
          CODE ,
          FUNC_CODE ,
          PAGE_TYPE ,
          IS_PUBLISH ,
		  IS_REF_PAGE,
		  REF_PAGE_CODE
        )
VALUES  ( @PAGE_ID , -- ID - varchar(36)
          @PAGE_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @PAGE_CREATE_DATE, -- CREATE_DATE - datetime
          @PAGE_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @PAGE_TENANT_ID , -- TENANT_ID - varchar(36)
          @ACCESS_PERMISSION , -- ACCESS_PERMISSION - varchar(30)
          @PAGE_NAME , -- NAME - varchar(50)
          @PAGE_PID , -- PID - varchar(36)
          @PAGE_SORT , -- SORT - smallint
          @PAGE_STATE , -- STATE - smallint
          @PAGE_CODE , -- CODE - varchar(50)
          @PAGE_FUNC_ID , -- FUNC_ID - varchar(36)
          @PAGE_TYPE , -- PAGE_TYPE - smallint
          @IS_PUBLISH  ,-- IS_PUBLISH - smallint
		  @IS_REF_PAGE ,
		  @REF_PAGE_CODE
        )
END

BEGIN
    SET @PAGE_ID = NEWID()
    SET @PAGE_NAME = 'SQL��ģ'
    SET @PAGE_PID = (SELECT ID FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_MODELING')
	SET @PAGE_SORT = 4
	SET @PAGE_CODE = 'PAGE_MODELING_SQL'
	SET @PAGE_FUNC_ID = (SELECT CODE FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_MODELING')
	SET @PAGE_TYPE = 1
INSERT INTO dbo.SMT_SETTING_PAGE
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          ACCESS_PERMISSION ,
          NAME ,
          PID ,
          SORT ,
          STATE ,
          CODE ,
          FUNC_CODE ,
          PAGE_TYPE ,
          IS_PUBLISH ,
		  IS_REF_PAGE,
		  REF_PAGE_CODE
        )
VALUES  ( @PAGE_ID , -- ID - varchar(36)
          @PAGE_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @PAGE_CREATE_DATE, -- CREATE_DATE - datetime
          @PAGE_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @PAGE_TENANT_ID , -- TENANT_ID - varchar(36)
          @ACCESS_PERMISSION , -- ACCESS_PERMISSION - varchar(30)
          @PAGE_NAME , -- NAME - varchar(50)
          @PAGE_PID , -- PID - varchar(36)
          @PAGE_SORT , -- SORT - smallint
          @PAGE_STATE , -- STATE - smallint
          @PAGE_CODE , -- CODE - varchar(50)
          @PAGE_FUNC_ID , -- FUNC_ID - varchar(36)
          @PAGE_TYPE , -- PAGE_TYPE - smallint
          @IS_PUBLISH , -- IS_PUBLISH - smallint
		  @IS_REF_PAGE ,
		  @REF_PAGE_CODE
        )
END

BEGIN
    SET @PAGE_ID = NEWID()
    SET @PAGE_NAME = 'ҵ��ģ'
    SET @PAGE_PID = (SELECT ID FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_MODELING')
	SET @PAGE_SORT = 5
	SET @PAGE_CODE = 'PAGE_MODELING_BUSINESS'
	SET @PAGE_FUNC_ID = (SELECT CODE FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_MODELING')
	SET @PAGE_TYPE = 1
INSERT INTO dbo.SMT_SETTING_PAGE
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          ACCESS_PERMISSION ,
          NAME ,
          PID ,
          SORT ,
          STATE ,
          CODE ,
          FUNC_CODE ,
          PAGE_TYPE ,
          IS_PUBLISH ,
		  IS_REF_PAGE,
		  REF_PAGE_CODE
        )
VALUES  ( @PAGE_ID , -- ID - varchar(36)
          @PAGE_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @PAGE_CREATE_DATE, -- CREATE_DATE - datetime
          @PAGE_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @PAGE_TENANT_ID , -- TENANT_ID - varchar(36)
          @ACCESS_PERMISSION , -- ACCESS_PERMISSION - varchar(30)
          @PAGE_NAME , -- NAME - varchar(50)
          @PAGE_PID , -- PID - varchar(36)
          @PAGE_SORT , -- SORT - smallint
          @PAGE_STATE , -- STATE - smallint
          @PAGE_CODE , -- CODE - varchar(50)
          @PAGE_FUNC_ID , -- FUNC_ID - varchar(36)
          @PAGE_TYPE , -- PAGE_TYPE - smallint
          @IS_PUBLISH  ,-- IS_PUBLISH - smallint
		  @IS_REF_PAGE ,
		  @REF_PAGE_CODE
        )
END

BEGIN
    SET @PAGE_ID = NEWID()
    SET @PAGE_NAME = 'SQL��Դ�б�'
    SET @PAGE_PID = (SELECT ID FROM dbo.SMT_SETTING_PAGE WHERE CODE = 'PAGE_MODELING_BUSINESS')
	SET @PAGE_SORT = 6
	SET @PAGE_CODE = 'PAGE_MODELING_BUSINESS_RES_SQL'
	SET @PAGE_FUNC_ID = (SELECT CODE FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_MODELING')
	SET @PAGE_TYPE = 2
INSERT INTO dbo.SMT_SETTING_PAGE
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          ACCESS_PERMISSION ,
          NAME ,
          PID ,
          SORT ,
          STATE ,
          CODE ,
          FUNC_CODE ,
          PAGE_TYPE ,
          IS_PUBLISH ,
		  IS_REF_PAGE,
		  REF_PAGE_CODE
        )
VALUES  ( @PAGE_ID , -- ID - varchar(36)
          @PAGE_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @PAGE_CREATE_DATE, -- CREATE_DATE - datetime
          @PAGE_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @PAGE_TENANT_ID , -- TENANT_ID - varchar(36)
          @ACCESS_PERMISSION , -- ACCESS_PERMISSION - varchar(30)
          @PAGE_NAME , -- NAME - varchar(50)
          @PAGE_PID , -- PID - varchar(36)
          @PAGE_SORT , -- SORT - smallint
          @PAGE_STATE , -- STATE - smallint
          @PAGE_CODE , -- CODE - varchar(50)
          @PAGE_FUNC_ID , -- FUNC_ID - varchar(36)
          @PAGE_TYPE , -- PAGE_TYPE - smallint
          @IS_PUBLISH  ,-- IS_PUBLISH - smallint
		  @IS_REF_PAGE ,
		  @REF_PAGE_CODE
        )
END

BEGIN
    SET @PAGE_ID = NEWID()
    SET @PAGE_NAME = '��������Դ'
    SET @PAGE_PID = (SELECT ID FROM dbo.SMT_SETTING_PAGE WHERE CODE = 'PAGE_MODELING_BUSINESS')
	SET @PAGE_SORT = 7
	SET @PAGE_CODE = 'PAGE_MODELING_BUSINESS_RES_TABLE'
	SET @PAGE_FUNC_ID = (SELECT CODE FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_MODELING')
	SET @PAGE_TYPE = 2
INSERT INTO dbo.SMT_SETTING_PAGE
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          ACCESS_PERMISSION ,
          NAME ,
          PID ,
          SORT ,
          STATE ,
          CODE ,
          FUNC_CODE ,
          PAGE_TYPE ,
          IS_PUBLISH ,
		  IS_REF_PAGE,
		  REF_PAGE_CODE
        )
VALUES  ( @PAGE_ID , -- ID - varchar(36)
          @PAGE_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @PAGE_CREATE_DATE, -- CREATE_DATE - datetime
          @PAGE_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @PAGE_TENANT_ID , -- TENANT_ID - varchar(36)
          @ACCESS_PERMISSION , -- ACCESS_PERMISSION - varchar(30)
          @PAGE_NAME , -- NAME - varchar(50)
          @PAGE_PID , -- PID - varchar(36)
          @PAGE_SORT , -- SORT - smallint
          @PAGE_STATE , -- STATE - smallint
          @PAGE_CODE , -- CODE - varchar(50)
          @PAGE_FUNC_ID , -- FUNC_ID - varchar(36)
          @PAGE_TYPE , -- PAGE_TYPE - smallint
          @IS_PUBLISH  ,-- IS_PUBLISH - smallint
		  @IS_REF_PAGE ,
		  @REF_PAGE_CODE
        )
END

BEGIN
    SET @PAGE_ID = NEWID()
    SET @PAGE_NAME = '��������'
    SET @PAGE_PID = (SELECT ID FROM dbo.SMT_SETTING_PAGE WHERE CODE = 'PAGE_MODELING_BUSINESS')
	SET @PAGE_SORT = 8
	SET @PAGE_CODE = 'PAGE_MODELING_BUSINESS_RES_COLUMN'
	SET @PAGE_FUNC_ID = (SELECT CODE FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_MODELING')
	SET @PAGE_TYPE = 2
INSERT INTO dbo.SMT_SETTING_PAGE
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          ACCESS_PERMISSION ,
          NAME ,
          PID ,
          SORT ,
          STATE ,
          CODE ,
          FUNC_CODE ,
          PAGE_TYPE ,
          IS_PUBLISH ,
		  IS_REF_PAGE,
		  REF_PAGE_CODE
        )
VALUES  ( @PAGE_ID , -- ID - varchar(36)
          @PAGE_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @PAGE_CREATE_DATE, -- CREATE_DATE - datetime
          @PAGE_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @PAGE_TENANT_ID , -- TENANT_ID - varchar(36)
          @ACCESS_PERMISSION , -- ACCESS_PERMISSION - varchar(30)
          @PAGE_NAME , -- NAME - varchar(50)
          @PAGE_PID , -- PID - varchar(36)
          @PAGE_SORT , -- SORT - smallint
          @PAGE_STATE , -- STATE - smallint
          @PAGE_CODE , -- CODE - varchar(50)
          @PAGE_FUNC_ID , -- FUNC_ID - varchar(36)
          @PAGE_TYPE , -- PAGE_TYPE - smallint
          @IS_PUBLISH  ,-- IS_PUBLISH - smallint
		  @IS_REF_PAGE ,
		  @REF_PAGE_CODE
        )
END

BEGIN
    SET @PAGE_ID = NEWID()
    SET @PAGE_NAME = '����sql��Դ'
    SET @PAGE_PID = (SELECT ID FROM dbo.SMT_SETTING_PAGE WHERE CODE = 'PAGE_MODELING_BUSINESS')
	SET @PAGE_SORT = 9
	SET @PAGE_CODE = 'PAGE_MODELING_BUSINESS_RES_SQL_LINK'
	SET @PAGE_FUNC_ID = (SELECT CODE FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_MODELING')
	SET @PAGE_TYPE = 2
INSERT INTO dbo.SMT_SETTING_PAGE
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          ACCESS_PERMISSION ,
          NAME ,
          PID ,
          SORT ,
          STATE ,
          CODE ,
          FUNC_CODE ,
          PAGE_TYPE ,
          IS_PUBLISH ,
		  IS_REF_PAGE,
		  REF_PAGE_CODE
        )
VALUES  ( @PAGE_ID , -- ID - varchar(36)
          @PAGE_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @PAGE_CREATE_DATE, -- CREATE_DATE - datetime
          @PAGE_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @PAGE_TENANT_ID , -- TENANT_ID - varchar(36)
          @ACCESS_PERMISSION , -- ACCESS_PERMISSION - varchar(30)
          @PAGE_NAME , -- NAME - varchar(50)
          @PAGE_PID , -- PID - varchar(36)
          @PAGE_SORT , -- SORT - smallint
          @PAGE_STATE , -- STATE - smallint
          @PAGE_CODE , -- CODE - varchar(50)
          @PAGE_FUNC_ID , -- FUNC_ID - varchar(36)
          @PAGE_TYPE , -- PAGE_TYPE - smallint
          @IS_PUBLISH  ,-- IS_PUBLISH - smallint
		  @IS_REF_PAGE ,
		  @REF_PAGE_CODE
        )
END

BEGIN
    SET @PAGE_ID = NEWID()
    SET @PAGE_NAME = '��Ա����'
    SET @PAGE_PID = (SELECT ID FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_SYSTEM_MANEGER')
	SET @PAGE_SORT = 10
	SET @PAGE_CODE = 'PAGE_SYSTEM_MANEGER_USER'
	SET @PAGE_FUNC_ID = (SELECT CODE FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_SYSTEM_MANEGER')
	SET @PAGE_TYPE = 1
INSERT INTO dbo.SMT_SETTING_PAGE
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          ACCESS_PERMISSION ,
          NAME ,
          PID ,
          SORT ,
          STATE ,
          CODE ,
          FUNC_CODE ,
          PAGE_TYPE ,
          IS_PUBLISH ,
		  IS_REF_PAGE,
		  REF_PAGE_CODE
        )
VALUES  ( @PAGE_ID , -- ID - varchar(36)
          @PAGE_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @PAGE_CREATE_DATE, -- CREATE_DATE - datetime
          @PAGE_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @PAGE_TENANT_ID , -- TENANT_ID - varchar(36)
          @ACCESS_PERMISSION , -- ACCESS_PERMISSION - varchar(30)
          @PAGE_NAME , -- NAME - varchar(50)
          @PAGE_PID , -- PID - varchar(36)
          @PAGE_SORT , -- SORT - smallint
          @PAGE_STATE , -- STATE - smallint
          @PAGE_CODE , -- CODE - varchar(50)
          @PAGE_FUNC_ID , -- FUNC_ID - varchar(36)
          @PAGE_TYPE , -- PAGE_TYPE - smallint
          @IS_PUBLISH  ,-- IS_PUBLISH - smallint
		  @IS_REF_PAGE ,
		  @REF_PAGE_CODE
        )
END

BEGIN
    SET @PAGE_ID = NEWID()
    SET @PAGE_NAME = '��ɫ����'
    SET @PAGE_PID = (SELECT ID FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_SYSTEM_MANEGER')
	SET @PAGE_SORT = 11
	SET @PAGE_CODE = 'PAGE_SYSTEM_MANEGER_ROLE'
	SET @PAGE_FUNC_ID = (SELECT CODE FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_SYSTEM_MANEGER')
	SET @PAGE_TYPE = 1
INSERT INTO dbo.SMT_SETTING_PAGE
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          ACCESS_PERMISSION ,
          NAME ,
          PID ,
          SORT ,
          STATE ,
          CODE ,
          FUNC_CODE ,
          PAGE_TYPE ,
          IS_PUBLISH ,
		  IS_REF_PAGE,
		  REF_PAGE_CODE
        )
VALUES  ( @PAGE_ID , -- ID - varchar(36)
          @PAGE_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @PAGE_CREATE_DATE, -- CREATE_DATE - datetime
          @PAGE_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @PAGE_TENANT_ID , -- TENANT_ID - varchar(36)
          @ACCESS_PERMISSION , -- ACCESS_PERMISSION - varchar(30)
          @PAGE_NAME , -- NAME - varchar(50)
          @PAGE_PID , -- PID - varchar(36)
          @PAGE_SORT , -- SORT - smallint
          @PAGE_STATE , -- STATE - smallint
          @PAGE_CODE , -- CODE - varchar(50)
          @PAGE_FUNC_ID , -- FUNC_ID - varchar(36)
          @PAGE_TYPE , -- PAGE_TYPE - smallint
          @IS_PUBLISH  ,-- IS_PUBLISH - smallint
		  @IS_REF_PAGE ,
		  @REF_PAGE_CODE
        )
END

BEGIN
    SET @PAGE_ID = NEWID()
    SET @PAGE_NAME = '��֯��������'
    SET @PAGE_PID = (SELECT ID FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_SYSTEM_MANEGER')
	SET @PAGE_SORT = 12
	SET @PAGE_CODE = 'PAGE_SYSTEM_MANEGER_DEPT'
	SET @PAGE_FUNC_ID = (SELECT CODE FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_SYSTEM_MANEGER')
	SET @PAGE_TYPE = 1
INSERT INTO dbo.SMT_SETTING_PAGE
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          ACCESS_PERMISSION ,
          NAME ,
          PID ,
          SORT ,
          STATE ,
          CODE ,
          FUNC_CODE ,
          PAGE_TYPE ,
          IS_PUBLISH ,
		  IS_REF_PAGE,
		  REF_PAGE_CODE
        )
VALUES  ( @PAGE_ID , -- ID - varchar(36)
          @PAGE_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @PAGE_CREATE_DATE, -- CREATE_DATE - datetime
          @PAGE_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @PAGE_TENANT_ID , -- TENANT_ID - varchar(36)
          @ACCESS_PERMISSION , -- ACCESS_PERMISSION - varchar(30)
          @PAGE_NAME , -- NAME - varchar(50)
          @PAGE_PID , -- PID - varchar(36)
          @PAGE_SORT , -- SORT - smallint
          @PAGE_STATE , -- STATE - smallint
          @PAGE_CODE , -- CODE - varchar(50)
          @PAGE_FUNC_ID , -- FUNC_ID - varchar(36)
          @PAGE_TYPE , -- PAGE_TYPE - smallint
          @IS_PUBLISH  ,-- IS_PUBLISH - smallint
		  @IS_REF_PAGE ,
		  @REF_PAGE_CODE
        )
END

BEGIN
    SET @PAGE_ID = NEWID()
    SET @PAGE_NAME = '�����뻹ԭ'
    SET @PAGE_PID = (SELECT ID FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_SYSTEM_MANEGER')
	SET @PAGE_SORT = 13
	SET @PAGE_CODE = 'PAGE_SYSTEM_MANEGER_BACKUP_RESTORE'
	SET @PAGE_FUNC_ID = (SELECT CODE FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_SYSTEM_MANEGER')
	SET @PAGE_TYPE = 1
INSERT INTO dbo.SMT_SETTING_PAGE
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          ACCESS_PERMISSION ,
          NAME ,
          PID ,
          SORT ,
          STATE ,
          CODE ,
          FUNC_CODE ,
          PAGE_TYPE ,
          IS_PUBLISH ,
		  IS_REF_PAGE,
		  REF_PAGE_CODE
        )
VALUES  ( @PAGE_ID , -- ID - varchar(36)
          @PAGE_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @PAGE_CREATE_DATE, -- CREATE_DATE - datetime
          @PAGE_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @PAGE_TENANT_ID , -- TENANT_ID - varchar(36)
          @ACCESS_PERMISSION , -- ACCESS_PERMISSION - varchar(30)
          @PAGE_NAME , -- NAME - varchar(50)
          @PAGE_PID , -- PID - varchar(36)
          @PAGE_SORT , -- SORT - smallint
          @PAGE_STATE , -- STATE - smallint
          @PAGE_CODE , -- CODE - varchar(50)
          @PAGE_FUNC_ID , -- FUNC_ID - varchar(36)
          @PAGE_TYPE , -- PAGE_TYPE - smallint
          @IS_PUBLISH  ,-- IS_PUBLISH - smallint
		  @IS_REF_PAGE ,
		  @REF_PAGE_CODE
        )
END

BEGIN
    SET @PAGE_ID = NEWID()
    SET @PAGE_NAME = '��ӽ�ɫ'
    SET @PAGE_PID = (SELECT ID FROM dbo.SMT_SETTING_PAGE WHERE CODE = 'PAGE_SYSTEM_MANEGER_USER')
	SET @PAGE_SORT = 14
	SET @PAGE_CODE = 'PAGE_SYSTEM_MANEGER_USER_ADD'
	SET @PAGE_FUNC_ID = (SELECT CODE FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_SYSTEM_MANEGER')
	SET @PAGE_TYPE = 2
INSERT INTO dbo.SMT_SETTING_PAGE
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          ACCESS_PERMISSION ,
          NAME ,
          PID ,
          SORT ,
          STATE ,
          CODE ,
          FUNC_CODE ,
          PAGE_TYPE ,
          IS_PUBLISH ,
		  IS_REF_PAGE,
		  REF_PAGE_CODE
        )
VALUES  ( @PAGE_ID , -- ID - varchar(36)
          @PAGE_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @PAGE_CREATE_DATE, -- CREATE_DATE - datetime
          @PAGE_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @PAGE_TENANT_ID , -- TENANT_ID - varchar(36)
          @ACCESS_PERMISSION , -- ACCESS_PERMISSION - varchar(30)
          @PAGE_NAME , -- NAME - varchar(50)
          @PAGE_PID , -- PID - varchar(36)
          @PAGE_SORT , -- SORT - smallint
          @PAGE_STATE , -- STATE - smallint
          @PAGE_CODE , -- CODE - varchar(50)
          @PAGE_FUNC_ID , -- FUNC_ID - varchar(36)
          @PAGE_TYPE , -- PAGE_TYPE - smallint
          @IS_PUBLISH  ,-- IS_PUBLISH - smallint
		  @IS_REF_PAGE ,
		  @REF_PAGE_CODE
        )
END

BEGIN
    SET @PAGE_ID = NEWID()
    SET @PAGE_NAME = '�����Ա'
    SET @PAGE_PID = (SELECT ID FROM dbo.SMT_SETTING_PAGE WHERE CODE = 'PAGE_SYSTEM_MANEGER_ROLE')
	SET @PAGE_SORT = 15
	SET @PAGE_CODE = 'PAGE_SYSTEM_MANEGER_ROLE_ADD'
	SET @PAGE_FUNC_ID = (SELECT CODE FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_SYSTEM_MANEGER')
	SET @PAGE_TYPE = 2
INSERT INTO dbo.SMT_SETTING_PAGE
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          ACCESS_PERMISSION ,
          NAME ,
          PID ,
          SORT ,
          STATE ,
          CODE ,
          FUNC_CODE ,
          PAGE_TYPE ,
          IS_PUBLISH ,
		  IS_REF_PAGE,
		  REF_PAGE_CODE
        )
VALUES  ( @PAGE_ID , -- ID - varchar(36)
          @PAGE_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @PAGE_CREATE_DATE, -- CREATE_DATE - datetime
          @PAGE_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @PAGE_TENANT_ID , -- TENANT_ID - varchar(36)
          @ACCESS_PERMISSION , -- ACCESS_PERMISSION - varchar(30)
          @PAGE_NAME , -- NAME - varchar(50)
          @PAGE_PID , -- PID - varchar(36)
          @PAGE_SORT , -- SORT - smallint
          @PAGE_STATE , -- STATE - smallint
          @PAGE_CODE , -- CODE - varchar(50)
          @PAGE_FUNC_ID , -- FUNC_ID - varchar(36)
          @PAGE_TYPE , -- PAGE_TYPE - smallint
          @IS_PUBLISH  ,-- IS_PUBLISH - smallint
		  @IS_REF_PAGE ,
		  @REF_PAGE_CODE
        )
END

BEGIN
    SET @PAGE_ID = NEWID()
    SET @PAGE_NAME = 'Ȩ������'
    SET @PAGE_PID = (SELECT ID FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_AUTHORITY_MANEGER')
	SET @PAGE_SORT = 16
	SET @PAGE_CODE = 'PAGE_AUTHORITY_MANEGER_SETTING'
	SET @PAGE_FUNC_ID = (SELECT CODE FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_AUTHORITY_MANEGER')
	SET @PAGE_TYPE = 1
INSERT INTO dbo.SMT_SETTING_PAGE
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          ACCESS_PERMISSION ,
          NAME ,
          PID ,
          SORT ,
          STATE ,
          CODE ,
          FUNC_CODE ,
          PAGE_TYPE ,
          IS_PUBLISH ,
		  IS_REF_PAGE,
		  REF_PAGE_CODE
        )
VALUES  ( @PAGE_ID , -- ID - varchar(36)
          @PAGE_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @PAGE_CREATE_DATE, -- CREATE_DATE - datetime
          @PAGE_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @PAGE_TENANT_ID , -- TENANT_ID - varchar(36)
          @ACCESS_PERMISSION , -- ACCESS_PERMISSION - varchar(30)
          @PAGE_NAME , -- NAME - varchar(50)
          @PAGE_PID , -- PID - varchar(36)
          @PAGE_SORT , -- SORT - smallint
          @PAGE_STATE , -- STATE - smallint
          @PAGE_CODE , -- CODE - varchar(50)
          @PAGE_FUNC_ID , -- FUNC_ID - varchar(36)
          @PAGE_TYPE , -- PAGE_TYPE - smallint
          @IS_PUBLISH  ,-- IS_PUBLISH - smallint
		  @IS_REF_PAGE ,
		  @REF_PAGE_CODE
        )
END

BEGIN
    SET @PAGE_ID = NEWID()
    SET @PAGE_NAME = 'Ȩ�޲鿴'
    SET @PAGE_PID = (SELECT ID FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_AUTHORITY_MANEGER')
	SET @PAGE_SORT = 17
	SET @PAGE_CODE = 'PAGE_AUTHORITY_MANEGER_READ'
	SET @PAGE_FUNC_ID = (SELECT CODE FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_AUTHORITY_MANEGER')
	SET @PAGE_TYPE = 1
INSERT INTO dbo.SMT_SETTING_PAGE
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          ACCESS_PERMISSION ,
          NAME ,
          PID ,
          SORT ,
          STATE ,
          CODE ,
          FUNC_CODE ,
          PAGE_TYPE ,
          IS_PUBLISH ,
		  IS_REF_PAGE,
		  REF_PAGE_CODE
        )
VALUES  ( @PAGE_ID , -- ID - varchar(36)
          @PAGE_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @PAGE_CREATE_DATE, -- CREATE_DATE - datetime
          @PAGE_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @PAGE_TENANT_ID , -- TENANT_ID - varchar(36)
          @ACCESS_PERMISSION , -- ACCESS_PERMISSION - varchar(30)
          @PAGE_NAME , -- NAME - varchar(50)
          @PAGE_PID , -- PID - varchar(36)
          @PAGE_SORT , -- SORT - smallint
          @PAGE_STATE , -- STATE - smallint
          @PAGE_CODE , -- CODE - varchar(50)
          @PAGE_FUNC_ID , -- FUNC_ID - varchar(36)
          @PAGE_TYPE , -- PAGE_TYPE - smallint
          @IS_PUBLISH  ,-- IS_PUBLISH - smallint
		  @IS_REF_PAGE ,
		  @REF_PAGE_CODE
        )
END

BEGIN
    SET @PAGE_ID = NEWID()
    SET @PAGE_NAME = '�˵�Ȩ������'
    SET @PAGE_PID = (SELECT ID FROM dbo.SMT_SETTING_PAGE WHERE CODE = 'PAGE_AUTHORITY_MANEGER_SETTING')
	SET @PAGE_SORT = 18
	SET @PAGE_CODE = 'PAGE_AUTHORITY_MANEGER_SETTING_MENU'
	SET @PAGE_FUNC_ID = (SELECT CODE FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_AUTHORITY_MANEGER')
	SET @PAGE_TYPE = 1
INSERT INTO dbo.SMT_SETTING_PAGE
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          ACCESS_PERMISSION ,
          NAME ,
          PID ,
          SORT ,
          STATE ,
          CODE ,
          FUNC_CODE ,
          PAGE_TYPE ,
          IS_PUBLISH ,
		  IS_REF_PAGE,
		  REF_PAGE_CODE
        )
VALUES  ( @PAGE_ID , -- ID - varchar(36)
          @PAGE_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @PAGE_CREATE_DATE, -- CREATE_DATE - datetime
          @PAGE_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @PAGE_TENANT_ID , -- TENANT_ID - varchar(36)
          @ACCESS_PERMISSION , -- ACCESS_PERMISSION - varchar(30)
          @PAGE_NAME , -- NAME - varchar(50)
          @PAGE_PID , -- PID - varchar(36)
          @PAGE_SORT , -- SORT - smallint
          @PAGE_STATE , -- STATE - smallint
          @PAGE_CODE , -- CODE - varchar(50)
          @PAGE_FUNC_ID , -- FUNC_ID - varchar(36)
          @PAGE_TYPE , -- PAGE_TYPE - smallint
          @IS_PUBLISH  ,-- IS_PUBLISH - smallint
		  @IS_REF_PAGE ,
		  @REF_PAGE_CODE
        )
END

BEGIN
    SET @PAGE_ID = NEWID()
    SET @PAGE_NAME = '����Ȩ������'
    SET @PAGE_PID = (SELECT ID FROM dbo.SMT_SETTING_PAGE WHERE CODE = 'PAGE_AUTHORITY_MANEGER_SETTING')
	SET @PAGE_SORT = 19
	SET @PAGE_CODE = 'PAGE_AUTHORITY_MANEGER_SETTING_OPERATE'
	SET @PAGE_FUNC_ID = (SELECT CODE FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_AUTHORITY_MANEGER')
	SET @PAGE_TYPE = 1
INSERT INTO dbo.SMT_SETTING_PAGE
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          ACCESS_PERMISSION ,
          NAME ,
          PID ,
          SORT ,
          STATE ,
          CODE ,
          FUNC_CODE ,
          PAGE_TYPE ,
          IS_PUBLISH ,
		  IS_REF_PAGE,
		  REF_PAGE_CODE
        )
VALUES  ( @PAGE_ID , -- ID - varchar(36)
          @PAGE_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @PAGE_CREATE_DATE, -- CREATE_DATE - datetime
          @PAGE_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @PAGE_TENANT_ID , -- TENANT_ID - varchar(36)
          @ACCESS_PERMISSION , -- ACCESS_PERMISSION - varchar(30)
          @PAGE_NAME , -- NAME - varchar(50)
          @PAGE_PID , -- PID - varchar(36)
          @PAGE_SORT , -- SORT - smallint
          @PAGE_STATE , -- STATE - smallint
          @PAGE_CODE , -- CODE - varchar(50)
          @PAGE_FUNC_ID , -- FUNC_ID - varchar(36)
          @PAGE_TYPE , -- PAGE_TYPE - smallint
          @IS_PUBLISH  ,-- IS_PUBLISH - smallint
		  @IS_REF_PAGE ,
		  @REF_PAGE_CODE
        )
END

BEGIN
    SET @PAGE_ID = NEWID()
    SET @PAGE_NAME = '�˵�Ȩ�޲鿴'
    SET @PAGE_PID = (SELECT ID FROM dbo.SMT_SETTING_PAGE WHERE CODE = 'PAGE_AUTHORITY_MANEGER_READ')
	SET @PAGE_SORT = 20
	SET @PAGE_CODE = 'PAGE_AUTHORITY_MANEGER_READ_MENU'
	SET @PAGE_FUNC_ID = (SELECT CODE FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_AUTHORITY_MANEGER')
	SET @PAGE_TYPE = 1
INSERT INTO dbo.SMT_SETTING_PAGE
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          ACCESS_PERMISSION ,
          NAME ,
          PID ,
          SORT ,
          STATE ,
          CODE ,
          FUNC_CODE ,
          PAGE_TYPE ,
          IS_PUBLISH ,
		  IS_REF_PAGE,
		  REF_PAGE_CODE
        )
VALUES  ( @PAGE_ID , -- ID - varchar(36)
          @PAGE_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @PAGE_CREATE_DATE, -- CREATE_DATE - datetime
          @PAGE_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @PAGE_TENANT_ID , -- TENANT_ID - varchar(36)
          @ACCESS_PERMISSION , -- ACCESS_PERMISSION - varchar(30)
          @PAGE_NAME , -- NAME - varchar(50)
          @PAGE_PID , -- PID - varchar(36)
          @PAGE_SORT , -- SORT - smallint
          @PAGE_STATE , -- STATE - smallint
          @PAGE_CODE , -- CODE - varchar(50)
          @PAGE_FUNC_ID , -- FUNC_ID - varchar(36)
          @PAGE_TYPE , -- PAGE_TYPE - smallint
          @IS_PUBLISH  ,-- IS_PUBLISH - smallint
		  @IS_REF_PAGE ,
		  @REF_PAGE_CODE
        )
END

BEGIN
    SET @PAGE_ID = NEWID()
    SET @PAGE_NAME = '����Ȩ�޲鿴'
    SET @PAGE_PID = (SELECT ID FROM dbo.SMT_SETTING_PAGE WHERE CODE = 'PAGE_AUTHORITY_MANEGER_READ')
	SET @PAGE_SORT = 21
	SET @PAGE_CODE = 'PAGE_AUTHORITY_MANEGER_READ_OPERATE'
	SET @PAGE_FUNC_ID = (SELECT CODE FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_AUTHORITY_MANEGER')
	SET @PAGE_TYPE = 1
INSERT INTO dbo.SMT_SETTING_PAGE
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          ACCESS_PERMISSION ,
          NAME ,
          PID ,
          SORT ,
          STATE ,
          CODE ,
          FUNC_CODE ,
          PAGE_TYPE ,
          IS_PUBLISH ,
		  IS_REF_PAGE,
		  REF_PAGE_CODE
        )
VALUES  ( @PAGE_ID , -- ID - varchar(36)
          @PAGE_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @PAGE_CREATE_DATE, -- CREATE_DATE - datetime
          @PAGE_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @PAGE_TENANT_ID , -- TENANT_ID - varchar(36)
          @ACCESS_PERMISSION , -- ACCESS_PERMISSION - varchar(30)
          @PAGE_NAME , -- NAME - varchar(50)
          @PAGE_PID , -- PID - varchar(36)
          @PAGE_SORT , -- SORT - smallint
          @PAGE_STATE , -- STATE - smallint
          @PAGE_CODE , -- CODE - varchar(50)
          @PAGE_FUNC_ID , -- FUNC_ID - varchar(36)
          @PAGE_TYPE , -- PAGE_TYPE - smallint
          @IS_PUBLISH  ,-- IS_PUBLISH - smallint
		  @IS_REF_PAGE ,
		  @REF_PAGE_CODE
        )
END

BEGIN
    SET @PAGE_ID = NEWID()
    SET @PAGE_NAME = '������־'
    SET @PAGE_PID = (SELECT ID FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_SYSTEM_LOG')
	SET @PAGE_SORT = 22
	SET @PAGE_CODE = 'PAGE_SYSTEM_LOG_OPERATE'
	SET @PAGE_FUNC_ID = (SELECT CODE FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_SYSTEM_LOG')
	SET @PAGE_TYPE = 1
INSERT INTO dbo.SMT_SETTING_PAGE
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          ACCESS_PERMISSION ,
          NAME ,
          PID ,
          SORT ,
          STATE ,
          CODE ,
          FUNC_CODE ,
          PAGE_TYPE ,
          IS_PUBLISH ,
		  IS_REF_PAGE,
		  REF_PAGE_CODE
        )
VALUES  ( @PAGE_ID , -- ID - varchar(36)
          @PAGE_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @PAGE_CREATE_DATE, -- CREATE_DATE - datetime
          @PAGE_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @PAGE_TENANT_ID , -- TENANT_ID - varchar(36)
          @ACCESS_PERMISSION , -- ACCESS_PERMISSION - varchar(30)
          @PAGE_NAME , -- NAME - varchar(50)
          @PAGE_PID , -- PID - varchar(36)
          @PAGE_SORT , -- SORT - smallint
          @PAGE_STATE , -- STATE - smallint
          @PAGE_CODE , -- CODE - varchar(50)
          @PAGE_FUNC_ID , -- FUNC_ID - varchar(36)
          @PAGE_TYPE , -- PAGE_TYPE - smallint
          @IS_PUBLISH  ,-- IS_PUBLISH - smallint
		  @IS_REF_PAGE ,
		  @REF_PAGE_CODE
        )
END

BEGIN
    SET @PAGE_ID = NEWID()
    SET @PAGE_NAME = 'ϵͳ�˵�'
    SET @PAGE_PID = (SELECT ID FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_SYSTEM_MANEGER')
	SET @PAGE_SORT = 23
	SET @PAGE_CODE = 'PAGE_SYSTEM_MANEGER_MENU'
	SET @PAGE_FUNC_ID = (SELECT CODE FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_SYSTEM_MANEGER')
	SET @PAGE_TYPE = 1
INSERT INTO dbo.SMT_SETTING_PAGE
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          ACCESS_PERMISSION ,
          NAME ,
          PID ,
          SORT ,
          STATE ,
          CODE ,
          FUNC_CODE ,
          PAGE_TYPE ,
          IS_PUBLISH ,
		  IS_REF_PAGE,
		  REF_PAGE_CODE
        )
VALUES  ( @PAGE_ID , -- ID - varchar(36)
          @PAGE_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @PAGE_CREATE_DATE, -- CREATE_DATE - datetime
          @PAGE_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @PAGE_TENANT_ID , -- TENANT_ID - varchar(36)
          @ACCESS_PERMISSION , -- ACCESS_PERMISSION - varchar(30)
          @PAGE_NAME , -- NAME - varchar(50)
          @PAGE_PID , -- PID - varchar(36)
          @PAGE_SORT , -- SORT - smallint
          @PAGE_STATE , -- STATE - smallint
          @PAGE_CODE , -- CODE - varchar(50)
          @PAGE_FUNC_ID , -- FUNC_ID - varchar(36)
          @PAGE_TYPE , -- PAGE_TYPE - smallint
          @IS_PUBLISH  ,-- IS_PUBLISH - smallint
		  @IS_REF_PAGE ,
		  @REF_PAGE_CODE
        )
END

BEGIN
    SET @PAGE_ID = NEWID()
    SET @PAGE_NAME = '������Ȩ'
    SET @PAGE_PID = (SELECT ID FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_SYSTEM_PUBLIC_PAGE')
	SET @PAGE_SORT = 24
	SET @PAGE_CODE = 'PAGE_SYSTEM_PUBLIC_PAGE_AUTH_DATA'
	SET @PAGE_FUNC_ID = (SELECT CODE FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_SYSTEM_PUBLIC_PAGE')
	SET @PAGE_TYPE = 1
INSERT INTO dbo.SMT_SETTING_PAGE
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          ACCESS_PERMISSION ,
          NAME ,
          PID ,
          SORT ,
          STATE ,
          CODE ,
          FUNC_CODE ,
          PAGE_TYPE ,
          IS_PUBLISH ,
		  IS_REF_PAGE,
		  REF_PAGE_CODE
        )
VALUES  ( @PAGE_ID , -- ID - varchar(36)
          @PAGE_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @PAGE_CREATE_DATE, -- CREATE_DATE - datetime
          @PAGE_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @PAGE_TENANT_ID , -- TENANT_ID - varchar(36)
          @ACCESS_PERMISSION , -- ACCESS_PERMISSION - varchar(30)
          @PAGE_NAME , -- NAME - varchar(50)
          @PAGE_PID , -- PID - varchar(36)
          @PAGE_SORT , -- SORT - smallint
          @PAGE_STATE , -- STATE - smallint
          @PAGE_CODE , -- CODE - varchar(50)
          @PAGE_FUNC_ID , -- FUNC_ID - varchar(36)
          @PAGE_TYPE , -- PAGE_TYPE - smallint
          @IS_PUBLISH  ,-- IS_PUBLISH - smallint
		  @IS_REF_PAGE ,
		  @REF_PAGE_CODE
        )
END

BEGIN
    SET @PAGE_ID = NEWID()
    SET @PAGE_NAME = '�˵���Ȩ'
    SET @PAGE_PID = (SELECT ID FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_SYSTEM_PUBLIC_PAGE')
	SET @PAGE_SORT = 25
	SET @PAGE_CODE = 'PAGE_SYSTEM_PUBLIC_PAGE_AUTH_MENU'
	SET @PAGE_FUNC_ID = (SELECT CODE FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_SYSTEM_PUBLIC_PAGE')
	SET @PAGE_TYPE = 1
INSERT INTO dbo.SMT_SETTING_PAGE
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          ACCESS_PERMISSION ,
          NAME ,
          PID ,
          SORT ,
          STATE ,
          CODE ,
          FUNC_CODE ,
          PAGE_TYPE ,
          IS_PUBLISH ,
		  IS_REF_PAGE,
		  REF_PAGE_CODE
        )
VALUES  ( @PAGE_ID , -- ID - varchar(36)
          @PAGE_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @PAGE_CREATE_DATE, -- CREATE_DATE - datetime
          @PAGE_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @PAGE_TENANT_ID , -- TENANT_ID - varchar(36)
          @ACCESS_PERMISSION , -- ACCESS_PERMISSION - varchar(30)
          @PAGE_NAME , -- NAME - varchar(50)
          @PAGE_PID , -- PID - varchar(36)
          @PAGE_SORT , -- SORT - smallint
          @PAGE_STATE , -- STATE - smallint
          @PAGE_CODE , -- CODE - varchar(50)
          @PAGE_FUNC_ID , -- FUNC_ID - varchar(36)
          @PAGE_TYPE , -- PAGE_TYPE - smallint
          @IS_PUBLISH  ,-- IS_PUBLISH - smallint
		  @IS_REF_PAGE ,
		  @REF_PAGE_CODE
        )
END

BEGIN
    SET @PAGE_ID = NEWID()
    SET @PAGE_NAME = '�鿴��Ȩ'
    SET @PAGE_PID = (SELECT ID FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_SYSTEM_PUBLIC_PAGE')
	SET @PAGE_SORT = 26
	SET @PAGE_CODE = 'PAGE_SYSTEM_PUBLIC_PAGE_AUTH_READ'
	SET @PAGE_FUNC_ID = (SELECT CODE FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_SYSTEM_PUBLIC_PAGE')
	SET @PAGE_TYPE = 1
INSERT INTO dbo.SMT_SETTING_PAGE
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          ACCESS_PERMISSION ,
          NAME ,
          PID ,
          SORT ,
          STATE ,
          CODE ,
          FUNC_CODE ,
          PAGE_TYPE ,
          IS_PUBLISH ,
		  IS_REF_PAGE,
		  REF_PAGE_CODE
        )
VALUES  ( @PAGE_ID , -- ID - varchar(36)
          @PAGE_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @PAGE_CREATE_DATE, -- CREATE_DATE - datetime
          @PAGE_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @PAGE_TENANT_ID , -- TENANT_ID - varchar(36)
          @ACCESS_PERMISSION , -- ACCESS_PERMISSION - varchar(30)
          @PAGE_NAME , -- NAME - varchar(50)
          @PAGE_PID , -- PID - varchar(36)
          @PAGE_SORT , -- SORT - smallint
          @PAGE_STATE , -- STATE - smallint
          @PAGE_CODE , -- CODE - varchar(50)
          @PAGE_FUNC_ID , -- FUNC_ID - varchar(36)
          @PAGE_TYPE , -- PAGE_TYPE - smallint
          @IS_PUBLISH  ,-- IS_PUBLISH - smallint
		  @IS_REF_PAGE ,
		  @REF_PAGE_CODE
        )
END

BEGIN
    SET @PAGE_ID = NEWID()
    SET @PAGE_NAME = '������Ȩ'
    SET @PAGE_PID = (SELECT ID FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_SYSTEM_PUBLIC_PAGE')
	SET @PAGE_SORT = 27
	SET @PAGE_CODE = 'PAGE_SYSTEM_PUBLIC_PAGE_AUTH_OPERATE'
	SET @PAGE_FUNC_ID = (SELECT CODE FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_SYSTEM_PUBLIC_PAGE')
	SET @PAGE_TYPE = 1
INSERT INTO dbo.SMT_SETTING_PAGE
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          ACCESS_PERMISSION ,
          NAME ,
          PID ,
          SORT ,
          STATE ,
          CODE ,
          FUNC_CODE ,
          PAGE_TYPE ,
          IS_PUBLISH ,
		  IS_REF_PAGE,
		  REF_PAGE_CODE
        )
VALUES  ( @PAGE_ID , -- ID - varchar(36)
          @PAGE_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @PAGE_CREATE_DATE, -- CREATE_DATE - datetime
          @PAGE_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @PAGE_TENANT_ID , -- TENANT_ID - varchar(36)
          @ACCESS_PERMISSION , -- ACCESS_PERMISSION - varchar(30)
          @PAGE_NAME , -- NAME - varchar(50)
          @PAGE_PID , -- PID - varchar(36)
          @PAGE_SORT , -- SORT - smallint
          @PAGE_STATE , -- STATE - smallint
          @PAGE_CODE , -- CODE - varchar(50)
          @PAGE_FUNC_ID , -- FUNC_ID - varchar(36)
          @PAGE_TYPE , -- PAGE_TYPE - smallint
          @IS_PUBLISH  ,-- IS_PUBLISH - smallint
		  @IS_REF_PAGE ,
		  @REF_PAGE_CODE
        )
END

BEGIN
    SET @PAGE_ID = NEWID()
    SET @PAGE_NAME = '����DESIGN'
    SET @PAGE_PID = (SELECT ID FROM dbo.SMT_SETTING_PAGE WHERE CODE = 'PAGE_PAGE')
	SET @PAGE_SORT = 28
	SET @PAGE_CODE = 'PAGE_PAGE_DESIGN'
	SET @PAGE_FUNC_ID = (SELECT CODE FROM dbo.SMT_SETTING_FUNC WHERE CODE = 'FUNC_PAGE')
	SET @PAGE_TYPE = 2
INSERT INTO dbo.SMT_SETTING_PAGE
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          ACCESS_PERMISSION ,
          NAME ,
          PID ,
          SORT ,
          STATE ,
          CODE ,
          FUNC_CODE ,
          PAGE_TYPE ,
          IS_PUBLISH ,
		  IS_REF_PAGE,
		  REF_PAGE_CODE
        )
VALUES  ( @PAGE_ID , -- ID - varchar(36)
          @PAGE_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @PAGE_CREATE_DATE, -- CREATE_DATE - datetime
          @PAGE_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @PAGE_TENANT_ID , -- TENANT_ID - varchar(36)
          @ACCESS_PERMISSION , -- ACCESS_PERMISSION - varchar(30)
          @PAGE_NAME , -- NAME - varchar(50)
          @PAGE_PID , -- PID - varchar(36)
          @PAGE_SORT , -- SORT - smallint
          @PAGE_STATE , -- STATE - smallint
          @PAGE_CODE , -- CODE - varchar(50)
          @PAGE_FUNC_ID , -- FUNC_ID - varchar(36)
          @PAGE_TYPE , -- PAGE_TYPE - smallint
          @IS_PUBLISH  ,-- IS_PUBLISH - smallint
		  @IS_REF_PAGE ,
		  @REF_PAGE_CODE
        )
END


-- ��ʼ��MENU��PAGE�Ĺ�ϵ��
    DECLARE @MEPA_ID VARCHAR(36)
	DECLARE @MEPA_CREATE_USER_ID VARCHAR(36)
	DECLARE @MEPA_CREATE_DATE DATETIME
	DECLARE @MEPA_PROJECT_CODE VARCHAR(36)
	DECLARE @MEPA_TENANT_ID VARCHAR(36)
	DECLARE @MENU_PAGE_ENABLED SMALLINT
	DECLARE @PARENT_ID VARCHAR(36)
	DECLARE @MENU_CODE VARCHAR(50)
	DECLARE @MEPA_PAGE_CODE VARCHAR(36)
	DECLARE @MENU_PAGE_ORDER SMALLINT

	
	SET @MEPA_CREATE_USER_ID = '200ceb26807d6bf99fd6f4f0d1ca54d40001'
	SET @MEPA_CREATE_DATE = GETDATE()
	SET @MEPA_PROJECT_CODE = 'SMT_VC'
	SET @MEPA_TENANT_ID = '200ceb26807d6bf99fd6f4f0d1ca54d40002'
	SET @MENU_PAGE_ENABLED = 1
	SET @PARENT_ID = NULL

BEGIN
	SET @MENU_CODE = 'MENU_PAGE_DESIGN'
	SET @MEPA_ID = NEWID()
	SET @MEPA_PAGE_CODE = 'PAGE_PAGE'
	SET @MENU_PAGE_ORDER = (SELECT SORT FROM dbo.SMT_SETTING_PAGE WHERE CODE = 'PAGE_PAGE')
    INSERT INTO dbo.SMT_MENU_PAGE_REL
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          PAGE_CODE ,
          MENU_PAGE_ENABLED ,
          PARENT_ID ,
          MENU_CODE ,
          MENU_PAGE_ORDER 
        )
VALUES  ( @MEPA_ID , -- ID - varchar(36)
          @MEPA_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @MEPA_CREATE_DATE , -- CREATE_DATE - datetime
          @MEPA_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @MEPA_TENANT_ID , -- TENANT_ID - varchar(36)
          @MEPA_PAGE_CODE , -- MENU_PAGE_CODE - varchar(50)
          @MENU_PAGE_ENABLED , -- MENU_PAGE_ENABLED - smallint
          @PARENT_ID , -- PARENT_ID - varchar(36)
          @MENU_CODE , -- MENU_ID - varchar(36)
          @MENU_PAGE_ORDER  -- MENU_PAGE_ORDER - smallint
        )
END

BEGIN
	SET @MENU_CODE = 'MENU_PAGE_CREATE'
	SET @MEPA_ID = NEWID()
	SET @MEPA_PAGE_CODE = 'PAGE_CREATE'
	SET @MENU_PAGE_ORDER = (SELECT SORT FROM dbo.SMT_SETTING_PAGE WHERE CODE = 'PAGE_CREATE')
    INSERT INTO dbo.SMT_MENU_PAGE_REL
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          PAGE_CODE ,
          MENU_PAGE_ENABLED ,
          PARENT_ID ,
          MENU_CODE ,
          MENU_PAGE_ORDER 
        )
VALUES  ( @MEPA_ID , -- ID - varchar(36)
          @MEPA_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @MEPA_CREATE_DATE , -- CREATE_DATE - datetime
          @MEPA_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @MEPA_TENANT_ID , -- TENANT_ID - varchar(36)
          @MEPA_PAGE_CODE , -- MENU_PAGE_CODE - varchar(50)
          @MENU_PAGE_ENABLED , -- MENU_PAGE_ENABLED - smallint
          @PARENT_ID , -- PARENT_ID - varchar(36)
          @MENU_CODE , -- MENU_ID - varchar(36)
          @MENU_PAGE_ORDER  -- MENU_PAGE_ORDER - smallint
        )
END

BEGIN
	SET @MENU_CODE = 'MENU_MODELING_DATA'
	SET @MEPA_ID = NEWID()
	SET @MEPA_PAGE_CODE = 'PAGE_MODELING_DATA'
	SET @MENU_PAGE_ORDER = (SELECT SORT FROM dbo.SMT_SETTING_PAGE WHERE CODE = 'PAGE_MODELING_DATA')
    INSERT INTO dbo.SMT_MENU_PAGE_REL
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          PAGE_CODE ,
          MENU_PAGE_ENABLED ,
          PARENT_ID ,
          MENU_CODE ,
          MENU_PAGE_ORDER 
        )
VALUES  ( @MEPA_ID , -- ID - varchar(36)
          @MEPA_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @MEPA_CREATE_DATE , -- CREATE_DATE - datetime
          @MEPA_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @MEPA_TENANT_ID , -- TENANT_ID - varchar(36)
          @MEPA_PAGE_CODE , -- MENU_PAGE_CODE - varchar(50)
          @MENU_PAGE_ENABLED , -- MENU_PAGE_ENABLED - smallint
          @PARENT_ID , -- PARENT_ID - varchar(36)
          @MENU_CODE , -- MENU_ID - varchar(36)
          @MENU_PAGE_ORDER  -- MENU_PAGE_ORDER - smallint
        )
END

BEGIN
	SET @MENU_CODE = 'MENU_MODELING_SQL'
	SET @MEPA_ID = NEWID()
	SET @MEPA_PAGE_CODE = 'PAGE_MODELING_SQL'
	SET @MENU_PAGE_ORDER = (SELECT SORT FROM dbo.SMT_SETTING_PAGE WHERE CODE = 'PAGE_MODELING_SQL')
    INSERT INTO dbo.SMT_MENU_PAGE_REL
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          PAGE_CODE ,
          MENU_PAGE_ENABLED ,
          PARENT_ID ,
          MENU_CODE ,
          MENU_PAGE_ORDER 
        )
VALUES  ( @MEPA_ID , -- ID - varchar(36)
          @MEPA_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @MEPA_CREATE_DATE , -- CREATE_DATE - datetime
          @MEPA_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @MEPA_TENANT_ID , -- TENANT_ID - varchar(36)
          @MEPA_PAGE_CODE , -- MENU_PAGE_CODE - varchar(50)
          @MENU_PAGE_ENABLED , -- MENU_PAGE_ENABLED - smallint
          @PARENT_ID , -- PARENT_ID - varchar(36)
          @MENU_CODE , -- MENU_ID - varchar(36)
          @MENU_PAGE_ORDER  -- MENU_PAGE_ORDER - smallint
        )
END

BEGIN
	SET @MENU_CODE = 'MENU_MODELING_BUSINESS'
	SET @MEPA_ID = NEWID()
	SET @MEPA_PAGE_CODE = 'PAGE_MODELING_BUSINESS'
	SET @MENU_PAGE_ORDER = (SELECT SORT FROM dbo.SMT_SETTING_PAGE WHERE CODE = 'PAGE_MODELING_BUSINESS')
    INSERT INTO dbo.SMT_MENU_PAGE_REL
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          PAGE_CODE ,
          MENU_PAGE_ENABLED ,
          PARENT_ID ,
          MENU_CODE ,
          MENU_PAGE_ORDER 
        )
VALUES  ( @MEPA_ID , -- ID - varchar(36)
          @MEPA_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @MEPA_CREATE_DATE , -- CREATE_DATE - datetime
          @MEPA_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @MEPA_TENANT_ID , -- TENANT_ID - varchar(36)
          @MEPA_PAGE_CODE , -- MENU_PAGE_CODE - varchar(50)
          @MENU_PAGE_ENABLED , -- MENU_PAGE_ENABLED - smallint
          @PARENT_ID , -- PARENT_ID - varchar(36)
          @MENU_CODE , -- MENU_ID - varchar(36)
          @MENU_PAGE_ORDER  -- MENU_PAGE_ORDER - smallint
        )
END

BEGIN
	SET @MENU_CODE = 'SYSTEM_MANEGER_USER'
	SET @MEPA_ID = NEWID()
	SET @MEPA_PAGE_CODE = 'PAGE_SYSTEM_MANEGER_USER'
	SET @MENU_PAGE_ORDER = (SELECT SORT FROM dbo.SMT_SETTING_PAGE WHERE CODE = 'PAGE_SYSTEM_MANEGER_USER')
    INSERT INTO dbo.SMT_MENU_PAGE_REL
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          PAGE_CODE ,
          MENU_PAGE_ENABLED ,
          PARENT_ID ,
          MENU_CODE ,
          MENU_PAGE_ORDER 
        )
VALUES  ( @MEPA_ID , -- ID - varchar(36)
          @MEPA_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @MEPA_CREATE_DATE , -- CREATE_DATE - datetime
          @MEPA_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @MEPA_TENANT_ID , -- TENANT_ID - varchar(36)
          @MEPA_PAGE_CODE , -- MENU_PAGE_CODE - varchar(50)
          @MENU_PAGE_ENABLED , -- MENU_PAGE_ENABLED - smallint
          @PARENT_ID , -- PARENT_ID - varchar(36)
          @MENU_CODE , -- MENU_ID - varchar(36)
          @MENU_PAGE_ORDER  -- MENU_PAGE_ORDER - smallint
        )
END

BEGIN
	SET @MENU_CODE = 'SYSTEM_MANEGER_ROLE'
	SET @MEPA_ID = NEWID()
	SET @MEPA_PAGE_CODE = 'PAGE_SYSTEM_MANEGER_ROLE'
	SET @MENU_PAGE_ORDER = (SELECT SORT FROM dbo.SMT_SETTING_PAGE WHERE CODE = 'PAGE_SYSTEM_MANEGER_ROLE')
    INSERT INTO dbo.SMT_MENU_PAGE_REL
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          PAGE_CODE ,
          MENU_PAGE_ENABLED ,
          PARENT_ID ,
          MENU_CODE ,
          MENU_PAGE_ORDER 
        )
VALUES  ( @MEPA_ID , -- ID - varchar(36)
          @MEPA_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @MEPA_CREATE_DATE , -- CREATE_DATE - datetime
          @MEPA_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @MEPA_TENANT_ID , -- TENANT_ID - varchar(36)
          @MEPA_PAGE_CODE , -- MENU_PAGE_CODE - varchar(50)
          @MENU_PAGE_ENABLED , -- MENU_PAGE_ENABLED - smallint
          @PARENT_ID , -- PARENT_ID - varchar(36)
          @MENU_CODE , -- MENU_ID - varchar(36)
          @MENU_PAGE_ORDER  -- MENU_PAGE_ORDER - smallint
        )
END

BEGIN
	SET @MENU_CODE = 'SYSTEM_MANEGER_DEPT'
	SET @MEPA_ID = NEWID()
	SET @MEPA_PAGE_CODE = 'PAGE_SYSTEM_MANEGER_DEPT'
	SET @MENU_PAGE_ORDER = (SELECT SORT FROM dbo.SMT_SETTING_PAGE WHERE CODE = 'PAGE_SYSTEM_MANEGER_DEPT')
    INSERT INTO dbo.SMT_MENU_PAGE_REL
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          PAGE_CODE ,
          MENU_PAGE_ENABLED ,
          PARENT_ID ,
          MENU_CODE ,
          MENU_PAGE_ORDER 
        )
VALUES  ( @MEPA_ID , -- ID - varchar(36)
          @MEPA_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @MEPA_CREATE_DATE , -- CREATE_DATE - datetime
          @MEPA_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @MEPA_TENANT_ID , -- TENANT_ID - varchar(36)
          @MEPA_PAGE_CODE , -- MENU_PAGE_CODE - varchar(50)
          @MENU_PAGE_ENABLED , -- MENU_PAGE_ENABLED - smallint
          @PARENT_ID , -- PARENT_ID - varchar(36)
          @MENU_CODE , -- MENU_ID - varchar(36)
          @MENU_PAGE_ORDER  -- MENU_PAGE_ORDER - smallint
        )
END

BEGIN
	SET @MENU_CODE = 'SYSTEM_MANEGER_MENU'
	SET @MEPA_ID = NEWID()
	SET @MEPA_PAGE_CODE = 'PAGE_SYSTEM_MANEGER_MENU'
	SET @MENU_PAGE_ORDER = (SELECT SORT FROM dbo.SMT_SETTING_PAGE WHERE CODE = 'PAGE_SYSTEM_MANEGER_MENU')
    INSERT INTO dbo.SMT_MENU_PAGE_REL
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          PAGE_CODE ,
          MENU_PAGE_ENABLED ,
          PARENT_ID ,
          MENU_CODE ,
          MENU_PAGE_ORDER 
        )
VALUES  ( @MEPA_ID , -- ID - varchar(36)
          @MEPA_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @MEPA_CREATE_DATE , -- CREATE_DATE - datetime
          @MEPA_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @MEPA_TENANT_ID , -- TENANT_ID - varchar(36)
          @MEPA_PAGE_CODE , -- MENU_PAGE_CODE - varchar(50)
          @MENU_PAGE_ENABLED , -- MENU_PAGE_ENABLED - smallint
          @PARENT_ID , -- PARENT_ID - varchar(36)
          @MENU_CODE , -- MENU_ID - varchar(36)
          @MENU_PAGE_ORDER  -- MENU_PAGE_ORDER - smallint
        )
END

BEGIN
	SET @MENU_CODE = 'SYSTEM_MANEGER_BACKUP_RESTORE'
	SET @MEPA_ID = NEWID()
	SET @MEPA_PAGE_CODE = 'PAGE_SYSTEM_MANEGER_BACKUP_RESTORE'
	SET @MENU_PAGE_ORDER = (SELECT SORT FROM dbo.SMT_SETTING_PAGE WHERE CODE = 'PAGE_SYSTEM_MANEGER_BACKUP_RESTORE')
    INSERT INTO dbo.SMT_MENU_PAGE_REL
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          PAGE_CODE ,
          MENU_PAGE_ENABLED ,
          PARENT_ID ,
          MENU_CODE ,
          MENU_PAGE_ORDER 
        )
VALUES  ( @MEPA_ID , -- ID - varchar(36)
          @MEPA_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @MEPA_CREATE_DATE , -- CREATE_DATE - datetime
          @MEPA_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @MEPA_TENANT_ID , -- TENANT_ID - varchar(36)
          @MEPA_PAGE_CODE , -- MENU_PAGE_CODE - varchar(50)
          @MENU_PAGE_ENABLED , -- MENU_PAGE_ENABLED - smallint
          @PARENT_ID , -- PARENT_ID - varchar(36)
          @MENU_CODE , -- MENU_ID - varchar(36)
          @MENU_PAGE_ORDER  -- MENU_PAGE_ORDER - smallint
        )
END

BEGIN
	SET @MENU_CODE = 'AUTHORITY_MANEGER_SETTING_MENU'
	SET @MEPA_ID = NEWID()
	SET @MEPA_PAGE_CODE = 'PAGE_AUTHORITY_MANEGER_SETTING_MENU'
	SET @MENU_PAGE_ORDER = (SELECT SORT FROM dbo.SMT_SETTING_PAGE WHERE CODE = 'PAGE_AUTHORITY_MANEGER_SETTING_MENU')
    INSERT INTO dbo.SMT_MENU_PAGE_REL
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          PAGE_CODE ,
          MENU_PAGE_ENABLED ,
          PARENT_ID ,
          MENU_CODE ,
          MENU_PAGE_ORDER 
        )
VALUES  ( @MEPA_ID , -- ID - varchar(36)
          @MEPA_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @MEPA_CREATE_DATE , -- CREATE_DATE - datetime
          @MEPA_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @MEPA_TENANT_ID , -- TENANT_ID - varchar(36)
          @MEPA_PAGE_CODE , -- MENU_PAGE_CODE - varchar(50)
          @MENU_PAGE_ENABLED , -- MENU_PAGE_ENABLED - smallint
          @PARENT_ID , -- PARENT_ID - varchar(36)
          @MENU_CODE , -- MENU_ID - varchar(36)
          @MENU_PAGE_ORDER  -- MENU_PAGE_ORDER - smallint
        )
END

BEGIN
	SET @MENU_CODE = 'AUTHORITY_MANEGER_SETTING_OPEERATE'
	SET @MEPA_ID = NEWID()
	SET @MEPA_PAGE_CODE = 'PAGE_AUTHORITY_MANEGER_SETTING_OPERATE'
	SET @MENU_PAGE_ORDER = (SELECT SORT FROM dbo.SMT_SETTING_PAGE WHERE CODE = 'PAGE_AUTHORITY_MANEGER_SETTING_OPERATE')
    INSERT INTO dbo.SMT_MENU_PAGE_REL
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          PAGE_CODE ,
          MENU_PAGE_ENABLED ,
          PARENT_ID ,
          MENU_CODE ,
          MENU_PAGE_ORDER 
        )
VALUES  ( @MEPA_ID , -- ID - varchar(36)
          @MEPA_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @MEPA_CREATE_DATE , -- CREATE_DATE - datetime
          @MEPA_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @MEPA_TENANT_ID , -- TENANT_ID - varchar(36)
          @MEPA_PAGE_CODE , -- MENU_PAGE_CODE - varchar(50)
          @MENU_PAGE_ENABLED , -- MENU_PAGE_ENABLED - smallint
          @PARENT_ID , -- PARENT_ID - varchar(36)
          @MENU_CODE , -- MENU_ID - varchar(36)
          @MENU_PAGE_ORDER  -- MENU_PAGE_ORDER - smallint
        )
END

BEGIN
	SET @MENU_CODE = 'AUTHORITY_MANEGER_READ_MENU'
	SET @MEPA_ID = NEWID()
	SET @MEPA_PAGE_CODE = 'PAGE_AUTHORITY_MANEGER_READ_MENU'
	SET @MENU_PAGE_ORDER = (SELECT SORT FROM dbo.SMT_SETTING_PAGE WHERE CODE = 'PAGE_AUTHORITY_MANEGER_READ_MENU')
    INSERT INTO dbo.SMT_MENU_PAGE_REL
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          PAGE_CODE ,
          MENU_PAGE_ENABLED ,
          PARENT_ID ,
          MENU_CODE ,
          MENU_PAGE_ORDER 
        )
VALUES  ( @MEPA_ID , -- ID - varchar(36)
          @MEPA_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @MEPA_CREATE_DATE , -- CREATE_DATE - datetime
          @MEPA_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @MEPA_TENANT_ID , -- TENANT_ID - varchar(36)
          @MEPA_PAGE_CODE , -- MENU_PAGE_CODE - varchar(50)
          @MENU_PAGE_ENABLED , -- MENU_PAGE_ENABLED - smallint
          @PARENT_ID , -- PARENT_ID - varchar(36)
          @MENU_CODE , -- MENU_ID - varchar(36)
          @MENU_PAGE_ORDER  -- MENU_PAGE_ORDER - smallint
        )
END

BEGIN
	SET @MENU_CODE = 'AUTHORITY_MANEGER_READ_OPEERATE'
	SET @MEPA_ID = NEWID()
	SET @MEPA_PAGE_CODE = 'PAGE_AUTHORITY_MANEGER_READ_OPERATE'
	SET @MENU_PAGE_ORDER = (SELECT SORT FROM dbo.SMT_SETTING_PAGE WHERE CODE = 'PAGE_AUTHORITY_MANEGER_READ_OPERATE')
    INSERT INTO dbo.SMT_MENU_PAGE_REL
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          PAGE_CODE ,
          MENU_PAGE_ENABLED ,
          PARENT_ID ,
          MENU_CODE ,
          MENU_PAGE_ORDER 
        )
VALUES  ( @MEPA_ID , -- ID - varchar(36)
          @MEPA_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @MEPA_CREATE_DATE , -- CREATE_DATE - datetime
          @MEPA_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @MEPA_TENANT_ID , -- TENANT_ID - varchar(36)
          @MEPA_PAGE_CODE , -- MENU_PAGE_CODE - varchar(50)
          @MENU_PAGE_ENABLED , -- MENU_PAGE_ENABLED - smallint
          @PARENT_ID , -- PARENT_ID - varchar(36)
          @MENU_CODE , -- MENU_ID - varchar(36)
          @MENU_PAGE_ORDER  -- MENU_PAGE_ORDER - smallint
        )
END

BEGIN
	SET @MENU_CODE = 'SYSTEM_LOG_OPERATE'
	SET @MEPA_ID = NEWID()
	SET @MEPA_PAGE_CODE = 'PAGE_SYSTEM_LOG_OPERATE'
	SET @MENU_PAGE_ORDER = (SELECT SORT FROM dbo.SMT_SETTING_PAGE WHERE CODE = 'PAGE_SYSTEM_LOG_OPERATE')
    INSERT INTO dbo.SMT_MENU_PAGE_REL
        ( ID ,
          CREATE_USER_ID ,
          CREATE_DATE ,
          PROJECT_CODE ,
          TENANT_ID ,
          PAGE_CODE ,
          MENU_PAGE_ENABLED ,
          PARENT_ID ,
          MENU_CODE ,
          MENU_PAGE_ORDER 
        )
VALUES  ( @MEPA_ID , -- ID - varchar(36)
          @MEPA_CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
          @MEPA_CREATE_DATE , -- CREATE_DATE - datetime
          @MEPA_PROJECT_CODE , -- PROJECT_CODE - varchar(36)
          @MEPA_TENANT_ID , -- TENANT_ID - varchar(36)
          @MEPA_PAGE_CODE , -- MENU_PAGE_CODE - varchar(50)
          @MENU_PAGE_ENABLED , -- MENU_PAGE_ENABLED - smallint
          @PARENT_ID , -- PARENT_ID - varchar(36)
          @MENU_CODE , -- MENU_ID - varchar(36)
          @MENU_PAGE_ORDER  -- MENU_PAGE_ORDER - smallint
        )
END