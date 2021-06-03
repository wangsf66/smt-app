-- ��ʼ��menu���ݽű�
    DECLARE @MENU_ID VARCHAR(36)
	DECLARE @CREATE_USER_ID VARCHAR(36)
	DECLARE @CREATE_DATE DATETIME
	DECLARE @PROJECT_CODE VARCHAR(36)
	DECLARE @TENANT_ID VARCHAR(36)
	DECLARE @MENU_I18N VARCHAR(100)
	DECLARE @MENU_ICON VARCHAR(100)
	DECLARE @MENU_SORT SMALLINT
	DECLARE @MENU_PARENT_ID VARCHAR(36)
	DECLARE @MENU_LEVEL SMALLINT
	DECLARE @MENU_TYPE SMALLINT
	DECLARE @MENU_STATUS SMALLINT
	DECLARE @MENU_NAME VARCHAR(100)
	DECLARE @MENU_REMARK VARCHAR(200)
	DECLARE @MENU_CODE VARCHAR(50)

	SET @CREATE_USER_ID = '200ceb26807d6bf99fd6f4f0d1ca54d40001'
	SET @CREATE_DATE = GETDATE()
	SET @PROJECT_CODE = 'SMT_VC'
	SET @TENANT_ID = '200ceb26807d6bf99fd6f4f0d1ca54d40002'
	SET @MENU_I18N = NULL
	SET @MENU_ICON = 'setting'
	SET @MENU_TYPE = 999
	SET @MENU_STATUS = 2
	SET @MENU_REMARK = NULL
BEGIN
	SET @MENU_ID = NEWID()
	SET @MENU_SORT = 4
	SET @MENU_PARENT_ID = NULL
	SET @MENU_LEVEL = 1
	SET @MENU_NAME = 'ҳ�����'
	SET @MENU_CODE = 'MENU_PAGE'
	INSERT INTO dbo.SMT_MENU
	        ( ID ,
	          CREATE_USER_ID ,
	          CREATE_DATE ,
	          PROJECT_CODE ,
	          TENANT_ID ,
	          MENU_I18N ,
	          MENU_ICON ,
	          MENU_SORT ,
	          MENU_PARENT_ID ,
	          MENU_LEVEL ,
	          MENU_TYPE ,
	          MENU_STATUS ,
	          MENU_NAME ,
	          MENU_REMARK ,
	          MENU_CODE
	        )
	VALUES  ( @MENU_ID , -- ID - varchar(36)
	          @CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
	          @CREATE_DATE , -- CREATE_DATE - datetime
	          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
	          @TENANT_ID , -- TENANT_ID - varchar(36)
	          @MENU_I18N , -- MENU_I18N - varchar(100)
	          @MENU_ICON , -- MENU_ICON - varchar(100)
	          @MENU_SORT , -- MENU_SORT - smallint
	          @MENU_PARENT_ID , -- MENU_PARENT_ID - varchar(36)
	          @MENU_LEVEL , -- MENU_LEVEL - smallint
	          @MENU_TYPE , -- MENU_TYPE - smallint
	          @MENU_STATUS , -- MENU_STATUS - smallint
	          @MENU_NAME , -- MENU_NAME - varchar(100)
	          @MENU_REMARK , -- MENU_REMARK - varchar(200)
	          @MENU_CODE  -- MENU_CODE - varchar(50)
	        )
END

BEGIN
	SET @MENU_ID = NEWID()
    SET @MENU_SORT = 1
	SET @MENU_PARENT_ID = (SELECT ID FROM dbo.SMT_MENU WHERE MENU_CODE = 'MENU_PAGE')
	SET @MENU_LEVEL = 2
	SET @MENU_NAME = 'ҳ�����'
	SET @MENU_CODE = 'MENU_PAGE_DESIGN'
	INSERT INTO dbo.SMT_MENU
	        ( ID ,
	          CREATE_USER_ID ,
	          CREATE_DATE ,
	          PROJECT_CODE ,
	          TENANT_ID ,
	          MENU_I18N ,
	          MENU_ICON ,
	          MENU_SORT ,
	          MENU_PARENT_ID ,
	          MENU_LEVEL ,
	          MENU_TYPE ,
	          MENU_STATUS ,
	          MENU_NAME ,
	          MENU_REMARK ,
	          MENU_CODE
	        )
	VALUES  ( @MENU_ID , -- ID - varchar(36)
	          @CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
	          @CREATE_DATE , -- CREATE_DATE - datetime
	          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
	          @TENANT_ID , -- TENANT_ID - varchar(36)
	          @MENU_I18N , -- MENU_I18N - varchar(100)
	          @MENU_ICON , -- MENU_ICON - varchar(100)
	          @MENU_SORT , -- MENU_SORT - smallint
	          @MENU_PARENT_ID , -- MENU_PARENT_ID - varchar(36)
	          @MENU_LEVEL , -- MENU_LEVEL - smallint
	          @MENU_TYPE , -- MENU_TYPE - smallint
	          @MENU_STATUS , -- MENU_STATUS - smallint
	          @MENU_NAME , -- MENU_NAME - varchar(100)
	          @MENU_REMARK , -- MENU_REMARK - varchar(200)
	          @MENU_CODE  -- MENU_CODE - varchar(50)
	        )
END

BEGIN
	SET @MENU_ID = NEWID()
    SET @MENU_SORT = 2
	SET @MENU_PARENT_ID = (SELECT ID FROM dbo.SMT_MENU WHERE MENU_CODE = 'MENU_PAGE')
	SET @MENU_LEVEL = 2
	SET @MENU_NAME = 'ҳ�洴��'
	SET @MENU_CODE = 'MENU_PAGE_CREATE'
	INSERT INTO dbo.SMT_MENU
	        ( ID ,
	          CREATE_USER_ID ,
	          CREATE_DATE ,
	          PROJECT_CODE ,
	          TENANT_ID ,
	          MENU_I18N ,
	          MENU_ICON ,
	          MENU_SORT ,
	          MENU_PARENT_ID ,
	          MENU_LEVEL ,
	          MENU_TYPE ,
	          MENU_STATUS ,
	          MENU_NAME ,
	          MENU_REMARK ,
	          MENU_CODE
	        )
	VALUES  ( @MENU_ID , -- ID - varchar(36)
	          @CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
	          @CREATE_DATE , -- CREATE_DATE - datetime
	          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
	          @TENANT_ID , -- TENANT_ID - varchar(36)
	          @MENU_I18N , -- MENU_I18N - varchar(100)
	          @MENU_ICON , -- MENU_ICON - varchar(100)
	          @MENU_SORT , -- MENU_SORT - smallint
	          @MENU_PARENT_ID , -- MENU_PARENT_ID - varchar(36)
	          @MENU_LEVEL , -- MENU_LEVEL - smallint
	          @MENU_TYPE , -- MENU_TYPE - smallint
	          @MENU_STATUS , -- MENU_STATUS - smallint
	          @MENU_NAME , -- MENU_NAME - varchar(100)
	          @MENU_REMARK , -- MENU_REMARK - varchar(200)
	          @MENU_CODE  -- MENU_CODE - varchar(50)
	        )
END

BEGIN
	SET @MENU_ID = NEWID()
    SET @MENU_SORT = 3
	SET @MENU_PARENT_ID = NULL
	SET @MENU_LEVEL = 1
	SET @MENU_NAME = '��ģ'
	SET @MENU_CODE = 'MENU_MODELING'
	INSERT INTO dbo.SMT_MENU
	        ( ID ,
	          CREATE_USER_ID ,
	          CREATE_DATE ,
	          PROJECT_CODE ,
	          TENANT_ID ,
	          MENU_I18N ,
	          MENU_ICON ,
	          MENU_SORT ,
	          MENU_PARENT_ID ,
	          MENU_LEVEL ,
	          MENU_TYPE ,
	          MENU_STATUS ,
	          MENU_NAME ,
	          MENU_REMARK ,
	          MENU_CODE
	        )
	VALUES  ( @MENU_ID , -- ID - varchar(36)
	          @CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
	          @CREATE_DATE , -- CREATE_DATE - datetime
	          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
	          @TENANT_ID , -- TENANT_ID - varchar(36)
	          @MENU_I18N , -- MENU_I18N - varchar(100)
	          @MENU_ICON , -- MENU_ICON - varchar(100)
	          @MENU_SORT , -- MENU_SORT - smallint
	          @MENU_PARENT_ID , -- MENU_PARENT_ID - varchar(36)
	          @MENU_LEVEL , -- MENU_LEVEL - smallint
	          @MENU_TYPE , -- MENU_TYPE - smallint
	          @MENU_STATUS , -- MENU_STATUS - smallint
	          @MENU_NAME , -- MENU_NAME - varchar(100)
	          @MENU_REMARK , -- MENU_REMARK - varchar(200)
	          @MENU_CODE  -- MENU_CODE - varchar(50)
	        )
END

BEGIN
	SET @MENU_ID = NEWID()
    SET @MENU_SORT = 1
	SET @MENU_PARENT_ID = (SELECT ID FROM dbo.SMT_MENU WHERE MENU_CODE = 'MENU_MODELING')
	SET @MENU_LEVEL = 2
	SET @MENU_NAME = '���ݽ�ģ'
	SET @MENU_CODE = 'MENU_MODELING_DATA'
	INSERT INTO dbo.SMT_MENU
	        ( ID ,
	          CREATE_USER_ID ,
	          CREATE_DATE ,
	          PROJECT_CODE ,
	          TENANT_ID ,
	          MENU_I18N ,
	          MENU_ICON ,
	          MENU_SORT ,
	          MENU_PARENT_ID ,
	          MENU_LEVEL ,
	          MENU_TYPE ,
	          MENU_STATUS ,
	          MENU_NAME ,
	          MENU_REMARK ,
	          MENU_CODE
	        )
	VALUES  ( @MENU_ID , -- ID - varchar(36)
	          @CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
	          @CREATE_DATE , -- CREATE_DATE - datetime
	          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
	          @TENANT_ID , -- TENANT_ID - varchar(36)
	          @MENU_I18N , -- MENU_I18N - varchar(100)
	          @MENU_ICON , -- MENU_ICON - varchar(100)
	          @MENU_SORT , -- MENU_SORT - smallint
	          @MENU_PARENT_ID , -- MENU_PARENT_ID - varchar(36)
	          @MENU_LEVEL , -- MENU_LEVEL - smallint
	          @MENU_TYPE , -- MENU_TYPE - smallint
	          @MENU_STATUS , -- MENU_STATUS - smallint
	          @MENU_NAME , -- MENU_NAME - varchar(100)
	          @MENU_REMARK , -- MENU_REMARK - varchar(200)
	          @MENU_CODE  -- MENU_CODE - varchar(50)
	        )
END

BEGIN
	SET @MENU_ID = NEWID()
    SET @MENU_SORT = 2
	SET @MENU_PARENT_ID = (SELECT ID FROM dbo.SMT_MENU WHERE MENU_CODE = 'MENU_MODELING')
	SET @MENU_LEVEL = 2
	SET @MENU_NAME = 'SQL��ģ'
	SET @MENU_CODE = 'MENU_MODELING_SQL'
	INSERT INTO dbo.SMT_MENU
	        ( ID ,
	          CREATE_USER_ID ,
	          CREATE_DATE ,
	          PROJECT_CODE ,
	          TENANT_ID ,
	          MENU_I18N ,
	          MENU_ICON ,
	          MENU_SORT ,
	          MENU_PARENT_ID ,
	          MENU_LEVEL ,
	          MENU_TYPE ,
	          MENU_STATUS ,
	          MENU_NAME ,
	          MENU_REMARK ,
	          MENU_CODE
	        )
	VALUES  ( @MENU_ID , -- ID - varchar(36)
	          @CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
	          @CREATE_DATE , -- CREATE_DATE - datetime
	          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
	          @TENANT_ID , -- TENANT_ID - varchar(36)
	          @MENU_I18N , -- MENU_I18N - varchar(100)
	          @MENU_ICON , -- MENU_ICON - varchar(100)
	          @MENU_SORT , -- MENU_SORT - smallint
	          @MENU_PARENT_ID , -- MENU_PARENT_ID - varchar(36)
	          @MENU_LEVEL , -- MENU_LEVEL - smallint
	          @MENU_TYPE , -- MENU_TYPE - smallint
	          @MENU_STATUS , -- MENU_STATUS - smallint
	          @MENU_NAME , -- MENU_NAME - varchar(100)
	          @MENU_REMARK , -- MENU_REMARK - varchar(200)
	          @MENU_CODE  -- MENU_CODE - varchar(50)
	        )
END

BEGIN
	SET @MENU_ID = NEWID()
    SET @MENU_SORT = 3
	SET @MENU_PARENT_ID = (SELECT ID FROM dbo.SMT_MENU WHERE MENU_CODE = 'MENU_MODELING')
	SET @MENU_LEVEL = 2
	SET @MENU_NAME = 'ҵ��ģ'
	SET @MENU_CODE = 'MENU_MODELING_BUSINESS'
	INSERT INTO dbo.SMT_MENU
	        ( ID ,
	          CREATE_USER_ID ,
	          CREATE_DATE ,
	          PROJECT_CODE ,
	          TENANT_ID ,
	          MENU_I18N ,
	          MENU_ICON ,
	          MENU_SORT ,
	          MENU_PARENT_ID ,
	          MENU_LEVEL ,
	          MENU_TYPE ,
	          MENU_STATUS ,
	          MENU_NAME ,
	          MENU_REMARK ,
	          MENU_CODE
	        )
	VALUES  ( @MENU_ID , -- ID - varchar(36)
	          @CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
	          @CREATE_DATE , -- CREATE_DATE - datetime
	          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
	          @TENANT_ID , -- TENANT_ID - varchar(36)
	          @MENU_I18N , -- MENU_I18N - varchar(100)
	          @MENU_ICON , -- MENU_ICON - varchar(100)
	          @MENU_SORT , -- MENU_SORT - smallint
	          @MENU_PARENT_ID , -- MENU_PARENT_ID - varchar(36)
	          @MENU_LEVEL , -- MENU_LEVEL - smallint
	          @MENU_TYPE , -- MENU_TYPE - smallint
	          @MENU_STATUS , -- MENU_STATUS - smallint
	          @MENU_NAME , -- MENU_NAME - varchar(100)
	          @MENU_REMARK , -- MENU_REMARK - varchar(200)
	          @MENU_CODE  -- MENU_CODE - varchar(50)
	        )
END

BEGIN
	SET @MENU_ID = NEWID()
    SET @MENU_SORT = 1
	SET @MENU_PARENT_ID = NULL
	SET @MENU_LEVEL = 1
	SET @MENU_NAME = 'ϵͳ����'
	SET @MENU_CODE = 'SYSTEM_MANEGER'
	INSERT INTO dbo.SMT_MENU
	        ( ID ,
	          CREATE_USER_ID ,
	          CREATE_DATE ,
	          PROJECT_CODE ,
	          TENANT_ID ,
	          MENU_I18N ,
	          MENU_ICON ,
	          MENU_SORT ,
	          MENU_PARENT_ID ,
	          MENU_LEVEL ,
	          MENU_TYPE ,
	          MENU_STATUS ,
	          MENU_NAME ,
	          MENU_REMARK ,
	          MENU_CODE
	        )
	VALUES  ( @MENU_ID , -- ID - varchar(36)
	          @CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
	          @CREATE_DATE , -- CREATE_DATE - datetime
	          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
	          @TENANT_ID , -- TENANT_ID - varchar(36)
	          @MENU_I18N , -- MENU_I18N - varchar(100)
	          @MENU_ICON , -- MENU_ICON - varchar(100)
	          @MENU_SORT , -- MENU_SORT - smallint
	          @MENU_PARENT_ID , -- MENU_PARENT_ID - varchar(36)
	          @MENU_LEVEL , -- MENU_LEVEL - smallint
	          @MENU_TYPE , -- MENU_TYPE - smallint
	          @MENU_STATUS , -- MENU_STATUS - smallint
	          @MENU_NAME , -- MENU_NAME - varchar(100)
	          @MENU_REMARK , -- MENU_REMARK - varchar(200)
	          @MENU_CODE  -- MENU_CODE - varchar(50)
	        )
END

BEGIN
	SET @MENU_ID = NEWID()
    SET @MENU_SORT = 1
	SET @MENU_PARENT_ID = (SELECT ID FROM dbo.SMT_MENU WHERE MENU_CODE = 'SYSTEM_MANEGER')
	SET @MENU_LEVEL = 2
	SET @MENU_NAME = '��Ա����'
	SET @MENU_CODE = 'SYSTEM_MANEGER_USER'
	INSERT INTO dbo.SMT_MENU
	        ( ID ,
	          CREATE_USER_ID ,
	          CREATE_DATE ,
	          PROJECT_CODE ,
	          TENANT_ID ,
	          MENU_I18N ,
	          MENU_ICON ,
	          MENU_SORT ,
	          MENU_PARENT_ID ,
	          MENU_LEVEL ,
	          MENU_TYPE ,
	          MENU_STATUS ,
	          MENU_NAME ,
	          MENU_REMARK ,
	          MENU_CODE
	        )
	VALUES  ( @MENU_ID , -- ID - varchar(36)
	          @CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
	          @CREATE_DATE , -- CREATE_DATE - datetime
	          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
	          @TENANT_ID , -- TENANT_ID - varchar(36)
	          @MENU_I18N , -- MENU_I18N - varchar(100)
	          @MENU_ICON , -- MENU_ICON - varchar(100)
	          @MENU_SORT , -- MENU_SORT - smallint
	          @MENU_PARENT_ID , -- MENU_PARENT_ID - varchar(36)
	          @MENU_LEVEL , -- MENU_LEVEL - smallint
	          @MENU_TYPE , -- MENU_TYPE - smallint
	          @MENU_STATUS , -- MENU_STATUS - smallint
	          @MENU_NAME , -- MENU_NAME - varchar(100)
	          @MENU_REMARK , -- MENU_REMARK - varchar(200)
	          @MENU_CODE  -- MENU_CODE - varchar(50)
	        )
END

BEGIN
	SET @MENU_ID = NEWID()
    SET @MENU_SORT = 2
	SET @MENU_PARENT_ID = (SELECT ID FROM dbo.SMT_MENU WHERE MENU_CODE = 'SYSTEM_MANEGER')
	SET @MENU_LEVEL = 2
	SET @MENU_NAME = '��ɫ����'
	SET @MENU_CODE = 'SYSTEM_MANEGER_ROLE'
	INSERT INTO dbo.SMT_MENU
	        ( ID ,
	          CREATE_USER_ID ,
	          CREATE_DATE ,
	          PROJECT_CODE ,
	          TENANT_ID ,
	          MENU_I18N ,
	          MENU_ICON ,
	          MENU_SORT ,
	          MENU_PARENT_ID ,
	          MENU_LEVEL ,
	          MENU_TYPE ,
	          MENU_STATUS ,
	          MENU_NAME ,
	          MENU_REMARK ,
	          MENU_CODE
	        )
	VALUES  ( @MENU_ID , -- ID - varchar(36)
	          @CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
	          @CREATE_DATE , -- CREATE_DATE - datetime
	          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
	          @TENANT_ID , -- TENANT_ID - varchar(36)
	          @MENU_I18N , -- MENU_I18N - varchar(100)
	          @MENU_ICON , -- MENU_ICON - varchar(100)
	          @MENU_SORT , -- MENU_SORT - smallint
	          @MENU_PARENT_ID , -- MENU_PARENT_ID - varchar(36)
	          @MENU_LEVEL , -- MENU_LEVEL - smallint
	          @MENU_TYPE , -- MENU_TYPE - smallint
	          @MENU_STATUS , -- MENU_STATUS - smallint
	          @MENU_NAME , -- MENU_NAME - varchar(100)
	          @MENU_REMARK , -- MENU_REMARK - varchar(200)
	          @MENU_CODE  -- MENU_CODE - varchar(50)
	        )
END

BEGIN
	SET @MENU_ID = NEWID()
    SET @MENU_SORT = 3
	SET @MENU_PARENT_ID = (SELECT ID FROM dbo.SMT_MENU WHERE MENU_CODE = 'SYSTEM_MANEGER')
	SET @MENU_LEVEL = 2
	SET @MENU_NAME = '��֯��������'
	SET @MENU_CODE = 'SYSTEM_MANEGER_DEPT'
	INSERT INTO dbo.SMT_MENU
	        ( ID ,
	          CREATE_USER_ID ,
	          CREATE_DATE ,
	          PROJECT_CODE ,
	          TENANT_ID ,
	          MENU_I18N ,
	          MENU_ICON ,
	          MENU_SORT ,
	          MENU_PARENT_ID ,
	          MENU_LEVEL ,
	          MENU_TYPE ,
	          MENU_STATUS ,
	          MENU_NAME ,
	          MENU_REMARK ,
	          MENU_CODE
	        )
	VALUES  ( @MENU_ID , -- ID - varchar(36)
	          @CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
	          @CREATE_DATE , -- CREATE_DATE - datetime
	          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
	          @TENANT_ID , -- TENANT_ID - varchar(36)
	          @MENU_I18N , -- MENU_I18N - varchar(100)
	          @MENU_ICON , -- MENU_ICON - varchar(100)
	          @MENU_SORT , -- MENU_SORT - smallint
	          @MENU_PARENT_ID , -- MENU_PARENT_ID - varchar(36)
	          @MENU_LEVEL , -- MENU_LEVEL - smallint
	          @MENU_TYPE , -- MENU_TYPE - smallint
	          @MENU_STATUS , -- MENU_STATUS - smallint
	          @MENU_NAME , -- MENU_NAME - varchar(100)
	          @MENU_REMARK , -- MENU_REMARK - varchar(200)
	          @MENU_CODE  -- MENU_CODE - varchar(50)
	        )
END

BEGIN
	SET @MENU_ID = NEWID()
    SET @MENU_SORT = 4
	SET @MENU_PARENT_ID = (SELECT ID FROM dbo.SMT_MENU WHERE MENU_CODE = 'SYSTEM_MANEGER')
	SET @MENU_LEVEL = 2
	SET @MENU_NAME = 'ϵͳ�˵�'
	SET @MENU_CODE = 'SYSTEM_MANEGER_MENU'
	INSERT INTO dbo.SMT_MENU
	        ( ID ,
	          CREATE_USER_ID ,
	          CREATE_DATE ,
	          PROJECT_CODE ,
	          TENANT_ID ,
	          MENU_I18N ,
	          MENU_ICON ,
	          MENU_SORT ,
	          MENU_PARENT_ID ,
	          MENU_LEVEL ,
	          MENU_TYPE ,
	          MENU_STATUS ,
	          MENU_NAME ,
	          MENU_REMARK ,
	          MENU_CODE
	        )
	VALUES  ( @MENU_ID , -- ID - varchar(36)
	          @CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
	          @CREATE_DATE , -- CREATE_DATE - datetime
	          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
	          @TENANT_ID , -- TENANT_ID - varchar(36)
	          @MENU_I18N , -- MENU_I18N - varchar(100)
	          @MENU_ICON , -- MENU_ICON - varchar(100)
	          @MENU_SORT , -- MENU_SORT - smallint
	          @MENU_PARENT_ID , -- MENU_PARENT_ID - varchar(36)
	          @MENU_LEVEL , -- MENU_LEVEL - smallint
	          @MENU_TYPE , -- MENU_TYPE - smallint
	          @MENU_STATUS , -- MENU_STATUS - smallint
	          @MENU_NAME , -- MENU_NAME - varchar(100)
	          @MENU_REMARK , -- MENU_REMARK - varchar(200)
	          @MENU_CODE  -- MENU_CODE - varchar(50)
	        )
END

BEGIN
	SET @MENU_ID = NEWID()
    SET @MENU_SORT = 5
	SET @MENU_PARENT_ID = (SELECT ID FROM dbo.SMT_MENU WHERE MENU_CODE = 'SYSTEM_MANEGER')
	SET @MENU_LEVEL = 2
	SET @MENU_NAME = '�����뻹ԭ'
	SET @MENU_CODE = 'SYSTEM_MANEGER_BACKUP_RESTORE'
	INSERT INTO dbo.SMT_MENU
	        ( ID ,
	          CREATE_USER_ID ,
	          CREATE_DATE ,
	          PROJECT_CODE ,
	          TENANT_ID ,
	          MENU_I18N ,
	          MENU_ICON ,
	          MENU_SORT ,
	          MENU_PARENT_ID ,
	          MENU_LEVEL ,
	          MENU_TYPE ,
	          MENU_STATUS ,
	          MENU_NAME ,
	          MENU_REMARK ,
	          MENU_CODE
	        )
	VALUES  ( @MENU_ID , -- ID - varchar(36)
	          @CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
	          @CREATE_DATE , -- CREATE_DATE - datetime
	          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
	          @TENANT_ID , -- TENANT_ID - varchar(36)
	          @MENU_I18N , -- MENU_I18N - varchar(100)
	          @MENU_ICON , -- MENU_ICON - varchar(100)
	          @MENU_SORT , -- MENU_SORT - smallint
	          @MENU_PARENT_ID , -- MENU_PARENT_ID - varchar(36)
	          @MENU_LEVEL , -- MENU_LEVEL - smallint
	          @MENU_TYPE , -- MENU_TYPE - smallint
	          @MENU_STATUS , -- MENU_STATUS - smallint
	          @MENU_NAME , -- MENU_NAME - varchar(100)
	          @MENU_REMARK , -- MENU_REMARK - varchar(200)
	          @MENU_CODE  -- MENU_CODE - varchar(50)
	        )
END

BEGIN
	SET @MENU_ID = NEWID()
    SET @MENU_SORT = 2
	SET @MENU_PARENT_ID = NULL
	SET @MENU_LEVEL = 1
	SET @MENU_NAME = 'Ȩ�޹���'
	SET @MENU_CODE = 'AUTHORITY_MANEGER'
	INSERT INTO dbo.SMT_MENU
	        ( ID ,
	          CREATE_USER_ID ,
	          CREATE_DATE ,
	          PROJECT_CODE ,
	          TENANT_ID ,
	          MENU_I18N ,
	          MENU_ICON ,
	          MENU_SORT ,
	          MENU_PARENT_ID ,
	          MENU_LEVEL ,
	          MENU_TYPE ,
	          MENU_STATUS ,
	          MENU_NAME ,
	          MENU_REMARK ,
	          MENU_CODE
	        )
	VALUES  ( @MENU_ID , -- ID - varchar(36)
	          @CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
	          @CREATE_DATE , -- CREATE_DATE - datetime
	          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
	          @TENANT_ID , -- TENANT_ID - varchar(36)
	          @MENU_I18N , -- MENU_I18N - varchar(100)
	          @MENU_ICON , -- MENU_ICON - varchar(100)
	          @MENU_SORT , -- MENU_SORT - smallint
	          @MENU_PARENT_ID , -- MENU_PARENT_ID - varchar(36)
	          @MENU_LEVEL , -- MENU_LEVEL - smallint
	          @MENU_TYPE , -- MENU_TYPE - smallint
	          @MENU_STATUS , -- MENU_STATUS - smallint
	          @MENU_NAME , -- MENU_NAME - varchar(100)
	          @MENU_REMARK , -- MENU_REMARK - varchar(200)
	          @MENU_CODE  -- MENU_CODE - varchar(50)
	        )
END

BEGIN
	SET @MENU_ID = NEWID()
    SET @MENU_SORT = 1
	SET @MENU_PARENT_ID = (SELECT ID FROM dbo.SMT_MENU WHERE MENU_CODE = 'AUTHORITY_MANEGER')
	SET @MENU_LEVEL = 2
	SET @MENU_NAME = '�˵�Ȩ������'
	SET @MENU_CODE = 'AUTHORITY_MANEGER_SETTING_MENU'
	INSERT INTO dbo.SMT_MENU
	        ( ID ,
	          CREATE_USER_ID ,
	          CREATE_DATE ,
	          PROJECT_CODE ,
	          TENANT_ID ,
	          MENU_I18N ,
	          MENU_ICON ,
	          MENU_SORT ,
	          MENU_PARENT_ID ,
	          MENU_LEVEL ,
	          MENU_TYPE ,
	          MENU_STATUS ,
	          MENU_NAME ,
	          MENU_REMARK ,
	          MENU_CODE
	        )
	VALUES  ( @MENU_ID , -- ID - varchar(36)
	          @CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
	          @CREATE_DATE , -- CREATE_DATE - datetime
	          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
	          @TENANT_ID , -- TENANT_ID - varchar(36)
	          @MENU_I18N , -- MENU_I18N - varchar(100)
	          @MENU_ICON , -- MENU_ICON - varchar(100)
	          @MENU_SORT , -- MENU_SORT - smallint
	          @MENU_PARENT_ID , -- MENU_PARENT_ID - varchar(36)
	          @MENU_LEVEL , -- MENU_LEVEL - smallint
	          @MENU_TYPE , -- MENU_TYPE - smallint
	          @MENU_STATUS , -- MENU_STATUS - smallint
	          @MENU_NAME , -- MENU_NAME - varchar(100)
	          @MENU_REMARK , -- MENU_REMARK - varchar(200)
	          @MENU_CODE  -- MENU_CODE - varchar(50)
	        )
END

BEGIN
	SET @MENU_ID = NEWID()
    SET @MENU_SORT = 2
	SET @MENU_PARENT_ID = (SELECT ID FROM dbo.SMT_MENU WHERE MENU_CODE = 'AUTHORITY_MANEGER')
	SET @MENU_LEVEL = 2
	SET @MENU_NAME = '����Ȩ������'
	SET @MENU_CODE = 'AUTHORITY_MANEGER_SETTING_OPEERATE'
	INSERT INTO dbo.SMT_MENU
	        ( ID ,
	          CREATE_USER_ID ,
	          CREATE_DATE ,
	          PROJECT_CODE ,
	          TENANT_ID ,
	          MENU_I18N ,
	          MENU_ICON ,
	          MENU_SORT ,
	          MENU_PARENT_ID ,
	          MENU_LEVEL ,
	          MENU_TYPE ,
	          MENU_STATUS ,
	          MENU_NAME ,
	          MENU_REMARK ,
	          MENU_CODE
	        )
	VALUES  ( @MENU_ID , -- ID - varchar(36)
	          @CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
	          @CREATE_DATE , -- CREATE_DATE - datetime
	          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
	          @TENANT_ID , -- TENANT_ID - varchar(36)
	          @MENU_I18N , -- MENU_I18N - varchar(100)
	          @MENU_ICON , -- MENU_ICON - varchar(100)
	          @MENU_SORT , -- MENU_SORT - smallint
	          @MENU_PARENT_ID , -- MENU_PARENT_ID - varchar(36)
	          @MENU_LEVEL , -- MENU_LEVEL - smallint
	          @MENU_TYPE , -- MENU_TYPE - smallint
	          @MENU_STATUS , -- MENU_STATUS - smallint
	          @MENU_NAME , -- MENU_NAME - varchar(100)
	          @MENU_REMARK , -- MENU_REMARK - varchar(200)
	          @MENU_CODE  -- MENU_CODE - varchar(50)
	        )
END

BEGIN
	SET @MENU_ID = NEWID()
    SET @MENU_SORT = 3
	SET @MENU_PARENT_ID = (SELECT ID FROM dbo.SMT_MENU WHERE MENU_CODE = 'AUTHORITY_MANEGER')
	SET @MENU_LEVEL = 2
	SET @MENU_NAME = '�˵�Ȩ�޲鿴'
	SET @MENU_CODE = 'AUTHORITY_MANEGER_READ_MENU'
	INSERT INTO dbo.SMT_MENU
	        ( ID ,
	          CREATE_USER_ID ,
	          CREATE_DATE ,
	          PROJECT_CODE ,
	          TENANT_ID ,
	          MENU_I18N ,
	          MENU_ICON ,
	          MENU_SORT ,
	          MENU_PARENT_ID ,
	          MENU_LEVEL ,
	          MENU_TYPE ,
	          MENU_STATUS ,
	          MENU_NAME ,
	          MENU_REMARK ,
	          MENU_CODE
	        )
	VALUES  ( @MENU_ID , -- ID - varchar(36)
	          @CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
	          @CREATE_DATE , -- CREATE_DATE - datetime
	          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
	          @TENANT_ID , -- TENANT_ID - varchar(36)
	          @MENU_I18N , -- MENU_I18N - varchar(100)
	          @MENU_ICON , -- MENU_ICON - varchar(100)
	          @MENU_SORT , -- MENU_SORT - smallint
	          @MENU_PARENT_ID , -- MENU_PARENT_ID - varchar(36)
	          @MENU_LEVEL , -- MENU_LEVEL - smallint
	          @MENU_TYPE , -- MENU_TYPE - smallint
	          @MENU_STATUS , -- MENU_STATUS - smallint
	          @MENU_NAME , -- MENU_NAME - varchar(100)
	          @MENU_REMARK , -- MENU_REMARK - varchar(200)
	          @MENU_CODE  -- MENU_CODE - varchar(50)
	        )
END

BEGIN
	SET @MENU_ID = NEWID()
    SET @MENU_SORT = 4
	SET @MENU_PARENT_ID = (SELECT ID FROM dbo.SMT_MENU WHERE MENU_CODE = 'AUTHORITY_MANEGER')
	SET @MENU_LEVEL = 2
	SET @MENU_NAME = '����Ȩ�޲鿴'
	SET @MENU_CODE = 'AUTHORITY_MANEGER_READ_OPEERATE'
	INSERT INTO dbo.SMT_MENU
	        ( ID ,
	          CREATE_USER_ID ,
	          CREATE_DATE ,
	          PROJECT_CODE ,
	          TENANT_ID ,
	          MENU_I18N ,
	          MENU_ICON ,
	          MENU_SORT ,
	          MENU_PARENT_ID ,
	          MENU_LEVEL ,
	          MENU_TYPE ,
	          MENU_STATUS ,
	          MENU_NAME ,
	          MENU_REMARK ,
	          MENU_CODE
	        )
	VALUES  ( @MENU_ID , -- ID - varchar(36)
	          @CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
	          @CREATE_DATE , -- CREATE_DATE - datetime
	          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
	          @TENANT_ID , -- TENANT_ID - varchar(36)
	          @MENU_I18N , -- MENU_I18N - varchar(100)
	          @MENU_ICON , -- MENU_ICON - varchar(100)
	          @MENU_SORT , -- MENU_SORT - smallint
	          @MENU_PARENT_ID , -- MENU_PARENT_ID - varchar(36)
	          @MENU_LEVEL , -- MENU_LEVEL - smallint
	          @MENU_TYPE , -- MENU_TYPE - smallint
	          @MENU_STATUS , -- MENU_STATUS - smallint
	          @MENU_NAME , -- MENU_NAME - varchar(100)
	          @MENU_REMARK , -- MENU_REMARK - varchar(200)
	          @MENU_CODE  -- MENU_CODE - varchar(50)
	        )
END

BEGIN
	SET @MENU_ID = NEWID()
    SET @MENU_SORT = 5
	SET @MENU_PARENT_ID = NULL
	SET @MENU_LEVEL = 1
	SET @MENU_NAME = 'ϵͳ��־'
	SET @MENU_CODE = 'SYSTEM_LOG'
	INSERT INTO dbo.SMT_MENU
	        ( ID ,
	          CREATE_USER_ID ,
	          CREATE_DATE ,
	          PROJECT_CODE ,
	          TENANT_ID ,
	          MENU_I18N ,
	          MENU_ICON ,
	          MENU_SORT ,
	          MENU_PARENT_ID ,
	          MENU_LEVEL ,
	          MENU_TYPE ,
	          MENU_STATUS ,
	          MENU_NAME ,
	          MENU_REMARK ,
	          MENU_CODE
	        )
	VALUES  ( @MENU_ID , -- ID - varchar(36)
	          @CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
	          @CREATE_DATE , -- CREATE_DATE - datetime
	          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
	          @TENANT_ID , -- TENANT_ID - varchar(36)
	          @MENU_I18N , -- MENU_I18N - varchar(100)
	          @MENU_ICON , -- MENU_ICON - varchar(100)
	          @MENU_SORT , -- MENU_SORT - smallint
	          @MENU_PARENT_ID , -- MENU_PARENT_ID - varchar(36)
	          @MENU_LEVEL , -- MENU_LEVEL - smallint
	          @MENU_TYPE , -- MENU_TYPE - smallint
	          @MENU_STATUS , -- MENU_STATUS - smallint
	          @MENU_NAME , -- MENU_NAME - varchar(100)
	          @MENU_REMARK , -- MENU_REMARK - varchar(200)
	          @MENU_CODE  -- MENU_CODE - varchar(50)
	        )
END

BEGIN
	SET @MENU_ID = NEWID()
    SET @MENU_SORT = 1
	SET @MENU_PARENT_ID = (SELECT ID FROM dbo.SMT_MENU WHERE MENU_CODE = 'SYSTEM_LOG')
	SET @MENU_LEVEL = 2
	SET @MENU_NAME = '������־'
	SET @MENU_CODE = 'SYSTEM_LOG_OPERATE'
	INSERT INTO dbo.SMT_MENU
	        ( ID ,
	          CREATE_USER_ID ,
	          CREATE_DATE ,
	          PROJECT_CODE ,
	          TENANT_ID ,
	          MENU_I18N ,
	          MENU_ICON ,
	          MENU_SORT ,
	          MENU_PARENT_ID ,
	          MENU_LEVEL ,
	          MENU_TYPE ,
	          MENU_STATUS ,
	          MENU_NAME ,
	          MENU_REMARK ,
	          MENU_CODE
	        )
	VALUES  ( @MENU_ID , -- ID - varchar(36)
	          @CREATE_USER_ID , -- CREATE_USER_ID - varchar(36)
	          @CREATE_DATE , -- CREATE_DATE - datetime
	          @PROJECT_CODE , -- PROJECT_CODE - varchar(36)
	          @TENANT_ID , -- TENANT_ID - varchar(36)
	          @MENU_I18N , -- MENU_I18N - varchar(100)
	          @MENU_ICON , -- MENU_ICON - varchar(100)
	          @MENU_SORT , -- MENU_SORT - smallint
	          @MENU_PARENT_ID , -- MENU_PARENT_ID - varchar(36)
	          @MENU_LEVEL , -- MENU_LEVEL - smallint
	          @MENU_TYPE , -- MENU_TYPE - smallint
	          @MENU_STATUS , -- MENU_STATUS - smallint
	          @MENU_NAME , -- MENU_NAME - varchar(100)
	          @MENU_REMARK , -- MENU_REMARK - varchar(200)
	          @MENU_CODE  -- MENU_CODE - varchar(50)
	        )
END