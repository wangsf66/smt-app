-- 先建立数据库内容

USE master
GO

IF EXISTS (SELECT * FROM master.dbo.sysdatabases WHERE NAME='SmartOne2_VC')
BEGIN
    select '该数据库已存在'
END

ELSE
BEGIN
    CREATE DATABASE SmartOne2_VC
    ON  PRIMARY        --表示属于 primary 文件组
    (
        NAME='SmartOne2_VC',        -- 主数据文件的逻辑名称
        FILENAME='H:\Program Files\Microsoft SQL Server\MSSQL11.SMTMSSQLSERVER\MSSQL\DATA\SmartOne2_VC.mdf',    -- 主数据文件的物理名称
        SIZE=100mb,    
        FILEGROWTH=10%        
    )
    LOG ON 
    (
        NAME='SmartOne2_VC_log',        -- 日志文件的逻辑名称
        FILENAME='H:\Program Files\Microsoft SQL Server\MSSQL11.SMTMSSQLSERVER\MSSQL\DATA\SmartOne2_VC_log.ldf',    -- 日志文件的物理名称
        SIZE=100mb,       
        FILEGROWTH=5mb        
    )
END

--创建读取页面的存储过程
USE SmartOne2_VC
GO

CREATE FUNCTION [dbo].[F_SPLIT]
 (
     @SplitString nvarchar(max),  --源字符串
     @Separator nvarchar(10)=' '  --分隔符号，默认为空格
 )
 RETURNS @SplitStringsTable TABLE  --输出的数据表
 (
     [id] int identity(1,1),
     [value] nvarchar(max)
 )
 AS
 BEGIN
     DECLARE @CurrentIndex int;
     DECLARE @NextIndex int;
     DECLARE @ReturnText nvarchar(max);

     SELECT @CurrentIndex=1;
     WHILE(@CurrentIndex<=len(@SplitString))
         BEGIN
             SELECT @NextIndex=charindex(@Separator,@SplitString,@CurrentIndex);
             IF(@NextIndex=0 OR @NextIndex IS NULL)
                 SELECT @NextIndex=len(@SplitString)+1;
                 SELECT @ReturnText=substring(@SplitString,@CurrentIndex,@NextIndex-@CurrentIndex);
                 INSERT INTO @SplitStringsTable([value]) VALUES(@ReturnText);
                 SELECT @CurrentIndex=@NextIndex+1;
             END
     RETURN;
 END

 GO
CREATE function [dbo].[A_F_LayoutStructureJsonToTable](@pageId nvarchar(100), @Json VARCHAR(MAX))
  --id 唯一标识
  --type 类型
  --title 名称
  --parentId 父节点名称
  --container 【包含下级】

 returns   @tmf   table(
	  KeyId int identity(1,1),  -- 主键
	  RowId nvarchar(100),  --
	  id nvarchar(100),
	  type nvarchar(50),
	  title nvarchar(50),
	  parentId nvarchar(100),
	  container nvarchar(50),
	  componentDataType  nvarchar(50),
	  componentId  nvarchar(100)
	  ) 

AS

BEGIN

SELECT @Json= REPLACE(@Json, CHAR(13) + CHAR(10), '');
SELECT @Json=REPLACE(@Json,'[','')

SELECT @Json=REPLACE(@Json,']','')

SET @Json = @Json+ ','

SELECT @Json=REPLACE(@Json,'{','')

SELECT @Json=REPLACE(@Json,'},',',;')

DECLARE @temp VARCHAR(1000)

DECLARE @temp_str VARCHAR(1000)

DECLARE @objName VARCHAR(300)

DECLARE @objValue VARCHAR(300)

DECLARE @fieldSql VARCHAR(MAX)

DECLARE @temp_ziduan VARCHAR(1000)

DECLARE @NewId VARCHAR(100)
DECLARE @RowId VARCHAR(100)

--SET @fieldSql = ''

--大循环，循环对象数据中的对象

	WHILE LEN(@Json)>0
	BEGIN

		--SET @fieldSql = @fieldSql+ ' select '

		--获取前面的一个对象

		SELECT @temp=SUBSTRING(@Json,0,CHARINDEX(';',@Json,0))

		SET @temp_str=@temp

		--循环获取前面对象的字段
		select @NewId='newid';
		SET @RowId='newid';

		INSERT INTO @tmf(RowId) VALUES (@RowId);

			WHILE LEN(@temp)>0
			BEGIN

				SELECT @temp_ziduan = SUBSTRING(@temp,0,CHARINDEX(',',@temp,0))

				SELECT @temp=RIGHT(@temp,LEN(@temp)-LEN(@temp_ziduan)-1)

				SET @objName =left(@temp_ziduan,CHARINDEX(':',@temp_ziduan,0)-1)

				SET @objValue =right(@temp_ziduan,len(@temp_ziduan)-CHARINDEX(':',@temp_ziduan,0))

				--SET @fieldSql=@fieldSql+REPLACE(@objValue,'"','''')+' as '+REPLACE(@objName,'"','')+','
				

				SET @objName=ltrim(rtrim(replace(cast(@objName as varchar(100)),'"',''))) 
				SET @objValue=ltrim(rtrim(replace(cast(@objValue as varchar(100)),'"',''))) 

				IF(@objValue IS NOT NULL AND @objValue<>'')
				BEGIN			
					IF(@objName='id')
					BEGIN
					  UPDATE @tmf SET id=@objValue WHERE RowId=@RowId;
					END
					ELSE IF(@objName='type')
					BEGIN
					 UPDATE @tmf SET type=@objValue WHERE RowId=@RowId;
					END
					ELSE IF(@objName='title')
					BEGIN
					 UPDATE @tmf SET title=@objValue WHERE RowId=@RowId;
					END
					ELSE IF(@objName='parentId')
					BEGIN
					 UPDATE @tmf SET parentId=@objValue WHERE RowId=@RowId;
					END
					ELSE IF(@objName='container')
					BEGIN
					 UPDATE @tmf SET container=@objValue WHERE RowId=@RowId;
					END
					ELSE IF(@objName='componentDataType')
					BEGIN
					 UPDATE @tmf SET componentDataType=@objValue WHERE RowId=@RowId;
					END
					ELSE IF(@objName='componentId')
					BEGIN
					 UPDATE @tmf SET componentId=@objValue WHERE RowId=@RowId;
					END

				END;
				
				
			END
			 UPDATE @tmf SET RowId='oldid' WHERE RowId=@RowId;
		  --SET @fieldSql = LEFT(@fieldSql,LEN(@fieldSql)-1)+' union all '
          SELECT @Json=RIGHT(@Json,LEN(@Json)-LEN(@temp_str)-1)


	END

 return

END