SET SQLBLANKLINES ON
SET DEFINE OFF

-- Plugin: Time-Based Login Access
CREATE TABLE AD_TimeBasedLogin
(
	AD_TimeBasedLogin_ID	NUMERIC(10,0) NOT NULL,
	AD_TimeBasedLogin_UU	VARCHAR (36) NULL DEFAULT NULL,
	AD_Client_ID			NUMERIC(10,0) NOT NULL,
	AD_Org_ID				NUMERIC(10,0) NOT NULL,
	IsActive				CHARACTER(1) NOT NULL DEFAULT 'Y'::BPCHAR,
	Created					TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW(),
	CreatedBy				NUMERIC(10,0) NOT NULL,
	Updated					TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW(),
	UpdatedBy				NUMERIC(10,0) NOT NULL,
	Name					CHARACTER VARYING(40) NOT NULL,
	Description				CHARACTER VARYING(255),
	AD_Role_ID				NUMERIC(10,0) DEFAULT NULL,
	AD_User_ID				NUMERIC(10,0) DEFAULT NULL,
	DateStart				TIMESTAMP WITHOUT TIME ZONE,
	DateFinish				TIMESTAMP WITHOUT TIME ZONE,
	TimeSlotStart			TIMESTAMP WITHOUT TIME ZONE,
	TimeSlotEnd				TIMESTAMP WITHOUT TIME ZONE,
	IsTimeSlot				CHARACTER(1) NOT NULL DEFAULT 'N'::BPCHAR,
	IsDateSlot				CHARACTER(1) NOT NULL DEFAULT 'N'::BPCHAR,
	OnSunday				CHARACTER(1) NOT NULL DEFAULT 'N'::BPCHAR,
	OnMonday				CHARACTER(1) NOT NULL DEFAULT 'Y'::BPCHAR,
	OnTuesday				CHARACTER(1) NOT NULL DEFAULT 'Y'::BPCHAR,
	OnWednesday				CHARACTER(1) NOT NULL DEFAULT 'Y'::BPCHAR,
	OnThursday				CHARACTER(1) NOT NULL DEFAULT 'Y'::BPCHAR,
	OnFriday				CHARACTER(1) NOT NULL DEFAULT 'Y'::BPCHAR,
	OnSaturday				CHARACTER(1) NOT NULL DEFAULT 'N'::BPCHAR,
	CONSTRAINT				AD_User_LoginAllowed_PKey PRIMARY KEY (AD_TimeBasedLogin_ID)
)
;

-- Dec 13, 2019, 12:00:14 PM BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView) VALUES (200262,'Time-based Login','AD_User_LoginTime',0,'3',0,0,'Y',TO_DATE('2019-12-13 12:00:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:00:13','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','EXT','N','Y','L','N','Y','7227ed32-d7ea-4802-91f9-8470a8667478','N','N','N')
;

-- Dec 13, 2019, 12:00:14 PM BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('AD_User_LoginTime',1000000,'N','N','Table AD_User_LoginTime','Y','Y',0,0,TO_DATE('2019-12-13 12:00:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:00:14','YYYY-MM-DD HH24:MI:SS'),100,200325,'Y',1000000,1,200000,'336f26b5-5a07-4493-b5d3-bf2523081704')
;

-- Dec 13, 2019, 12:01:00 PM BRT
UPDATE AD_Table SET TableName='AD_TimeBasedLogin',Updated=TO_DATE('2019-12-13 12:01:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=200262
;

-- Dec 13, 2019, 12:01:01 PM BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('AD_TimeBasedLogin',1000000,'N','N','Table AD_TimeBasedLogin','Y','Y',0,0,TO_DATE('2019-12-13 12:01:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:01:00','YYYY-MM-DD HH24:MI:SS'),100,200326,'Y',1000000,1,200000,'52313217-9873-4d2a-9d98-f0c32ccada76')
;

-- Dec 13, 2019, 12:01:20 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (203392,0,0,'Y',TO_DATE('2019-12-13 12:01:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:01:19','YYYY-MM-DD HH24:MI:SS'),100,'AD_TimeBasedLogin_ID','Time-based Login','Time-based Login','EXT','6ddba11b-5e63-49b3-8b7c-14bdc4222589')
;

-- Dec 13, 2019, 12:01:20 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214129,0.0,'Time-based Login',200262,'AD_TimeBasedLogin_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_DATE('2019-12-13 12:01:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:01:19','YYYY-MM-DD HH24:MI:SS'),100,203392,'N','N','EXT','N','c0661f2c-c5bc-41c6-9299-70055599af1e','N')
;

-- Dec 13, 2019, 12:01:21 PM BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (203393,0,0,'Y',TO_DATE('2019-12-13 12:01:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:01:20','YYYY-MM-DD HH24:MI:SS'),100,'AD_TimeBasedLogin_UU','AD_TimeBasedLogin_UU','AD_TimeBasedLogin_UU','EXT','ef2df330-ce11-4e51-9d6a-f2075281f283')
;

-- Dec 13, 2019, 12:01:21 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214130,0.0,'AD_TimeBasedLogin_UU',200262,'AD_TimeBasedLogin_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2019-12-13 12:01:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:01:20','YYYY-MM-DD HH24:MI:SS'),100,203393,'N','N','EXT','N','cf2109cd-dc43-4328-886f-81f903833909','N')
;

-- Dec 13, 2019, 12:01:21 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (214131,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',200262,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2019-12-13 12:01:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:01:21','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','EXT','N','9d52e8d8-8622-40e9-b69e-f93d698b5414','N','D')
;

-- Dec 13, 2019, 12:01:22 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (214132,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',200262,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2019-12-13 12:01:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:01:21','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','EXT','N','a2f976ff-81b8-40f9-b305-e0a0f534ac3b','N','D')
;

-- Dec 13, 2019, 12:01:22 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214133,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',200262,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2019-12-13 12:01:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:01:22','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','EXT','N','e5686628-64be-4cd7-86b0-c15d5687b2d8','N')
;

-- Dec 13, 2019, 12:01:23 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214134,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',200262,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2019-12-13 12:01:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:01:22','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','EXT','N','35fa3040-8865-4f18-ab27-76f65f8a8a63','N')
;

-- Dec 13, 2019, 12:01:23 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (214135,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',200262,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2019-12-13 12:01:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:01:23','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','EXT','N','075d3d42-eefe-4d00-b0d0-ba9a38037a4d','N','D')
;

-- Dec 13, 2019, 12:01:24 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214136,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',200262,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2019-12-13 12:01:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:01:23','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','EXT','N','ac024122-b5b0-44e0-95c3-b2744cd2e46c','N')
;

-- Dec 13, 2019, 12:01:24 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (214137,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',200262,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2019-12-13 12:01:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:01:24','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','EXT','N','90b4e98b-1be8-49e8-af1e-9ff6d507834e','N','D')
;

-- Dec 13, 2019, 12:01:24 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (214138,0.0,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',200262,'Name',40,'N','N','Y','N','Y','N',10,0,0,'Y',TO_DATE('2019-12-13 12:01:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:01:24','YYYY-MM-DD HH24:MI:SS'),100,469,'Y','Y','EXT','N','4a9f54b1-3790-43ae-a512-e230d5fa3201',10,'N')
;

-- Dec 13, 2019, 12:01:25 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (214139,0.0,'Description','Optional short description of the record','A description is limited to 255 characters.',200262,'Description',255,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2019-12-13 12:01:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:01:24','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','Y','EXT','N','e0664210-1966-4d0b-8df8-030d22cb9d83',20,'N')
;

-- Dec 13, 2019, 12:01:25 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (214140,0.0,'Role','Responsibility Role','The Role determines security and access a user who has this Role will have in the System.',200262,'AD_Role_ID',10,'N','Y','N','N','N','N',19,0,0,'Y',TO_DATE('2019-12-13 12:01:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:01:25','YYYY-MM-DD HH24:MI:SS'),100,123,'N','N','EXT','N','afbe6783-d98a-4c5f-b388-a630b6d70baf','N','C')
;

-- Dec 13, 2019, 12:01:26 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214141,0.0,'User/Contact','User within the system - Internal or Business Partner Contact','The User identifies a unique user in the system. This could be an internal user or a business partner contact',200262,'AD_User_ID',10,'N','Y','N','N','N','N',30,0,0,'Y',TO_DATE('2019-12-13 12:01:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:01:25','YYYY-MM-DD HH24:MI:SS'),100,138,'N','N','EXT','N','f7d4a2b8-c2ff-4598-ae99-45c5b9480291','N')
;

-- Dec 13, 2019, 12:01:26 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214142,0.0,'DateStart',200262,'DateStart',29,'N','N','N','N','N','N',16,0,0,'Y',TO_DATE('2019-12-13 12:01:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:01:26','YYYY-MM-DD HH24:MI:SS'),100,53280,'Y','N','EXT','N','fd19869a-ff9f-465e-b774-4269e94d77ef','N')
;

-- Dec 13, 2019, 12:01:27 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214143,0.0,'Finish Date','Finish or (planned) completion date','The finish date is used to indicate when the project is expected to be completed or has been completed.',200262,'DateFinish',29,'N','N','N','N','N','N',16,0,0,'Y',TO_DATE('2019-12-13 12:01:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:01:26','YYYY-MM-DD HH24:MI:SS'),100,1557,'N','N','EXT','N','0b5a64e7-290b-4168-8195-99309407c371','N')
;

-- Dec 13, 2019, 12:01:27 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214144,0.0,'Slot Start','Time when timeslot starts','Starting time for time slots',200262,'TimeSlotStart',29,'N','N','N','N','N','N',24,0,0,'Y',TO_DATE('2019-12-13 12:01:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:01:27','YYYY-MM-DD HH24:MI:SS'),100,1760,'Y','N','EXT','N','47157847-1477-4a9f-81dc-d8ca814f5f11','N')
;

-- Dec 13, 2019, 12:02:42 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214145,0.0,'Slot End','Time when timeslot ends','Ending time for time slots',200262,'TimeSlotEnd',29,'N','N','N','N','N','N',24,0,0,'Y',TO_DATE('2019-12-13 12:01:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:01:27','YYYY-MM-DD HH24:MI:SS'),100,1759,'Y','N','EXT','N','03ccc638-63e5-481b-9b63-c9d7cb5ff796','N')
;

-- Dec 13, 2019, 12:02:42 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214146,0.0,'Time Slot','Resource has time slot availability','Resource is only available at certain times',200262,'IsTimeSlot',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2019-12-13 12:02:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:02:42','YYYY-MM-DD HH24:MI:SS'),100,1768,'Y','N','EXT','N','dab3a832-35d5-4fef-8272-202bd0a3274b','N')
;

-- Dec 13, 2019, 12:02:43 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214147,0.0,'Day Slot','Resource has day slot availability','Resource is only available on certain days',200262,'IsDateSlot',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2019-12-13 12:02:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:02:42','YYYY-MM-DD HH24:MI:SS'),100,1764,'Y','N','EXT','N','3a5e15d5-dce5-4230-a76e-5ff69a23dde3','N')
;

-- Dec 13, 2019, 12:02:43 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214148,0.0,'Sunday','Available on Sundays',200262,'OnSunday',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2019-12-13 12:02:43','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:02:43','YYYY-MM-DD HH24:MI:SS'),100,1772,'Y','N','EXT','N','87c002f3-0e8b-4780-a1ca-9086c41c7717','N')
;

-- Dec 13, 2019, 12:02:43 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214149,0.0,'Monday','Available on Mondays',200262,'OnMonday','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2019-12-13 12:02:43','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:02:43','YYYY-MM-DD HH24:MI:SS'),100,1770,'Y','N','EXT','N','e72455f7-0c05-4b1a-a5ae-c80d832c9316','N')
;

-- Dec 13, 2019, 12:02:44 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214150,0.0,'Tuesday','Available on Tuesdays',200262,'OnTuesday','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2019-12-13 12:02:43','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:02:43','YYYY-MM-DD HH24:MI:SS'),100,1774,'Y','N','EXT','N','2fa524a5-59ec-40f4-94f3-9d0920d303fd','N')
;

-- Dec 13, 2019, 12:02:44 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214151,0.0,'Wednesday','Available on Wednesdays',200262,'OnWednesday','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2019-12-13 12:02:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:02:44','YYYY-MM-DD HH24:MI:SS'),100,1775,'Y','N','EXT','N','98eea492-1630-46f8-ac1d-19301cdf5729','N')
;

-- Dec 13, 2019, 12:02:45 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214152,0.0,'Thursday','Available on Thursdays',200262,'OnThursday','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2019-12-13 12:02:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:02:44','YYYY-MM-DD HH24:MI:SS'),100,1773,'Y','N','EXT','N','a58b228b-60a0-4321-bb04-6a2173264940','N')
;

-- Dec 13, 2019, 12:02:45 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214153,0.0,'Friday','Available on Fridays',200262,'OnFriday','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2019-12-13 12:02:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:02:45','YYYY-MM-DD HH24:MI:SS'),100,1769,'Y','N','EXT','N','dc065c92-7f78-4a91-83e4-9f26b91a3f76','N')
;

-- Dec 13, 2019, 12:02:45 PM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (214154,0.0,'Saturday','Available on Saturday',200262,'OnSaturday',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2019-12-13 12:02:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:02:45','YYYY-MM-DD HH24:MI:SS'),100,1771,'Y','N','EXT','N','763c1ef2-efa4-4c9e-a1ab-6650ec537932','N')
;

-- Dec 13, 2019, 12:04:04 PM BRT
UPDATE AD_Column SET Name='Date Start', Description='Date Start for this Order', Help=NULL, ColumnName='DateStart', AD_Element_ID=53280, IsUpdateable='N', FKConstraintType=NULL,Updated=TO_DATE('2019-12-13 12:04:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214142
;

-- Dec 13, 2019, 12:12:09 PM BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (200277,'Time-Based Login',111,110,'Y',200262,0,0,'Y',TO_DATE('2019-12-13 12:12:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:12:08','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',1,'N','EXT','Y','N','a9e68db2-d600-4ba3-ac86-4e7d0d4f0262','B')
;

-- Dec 13, 2019, 12:12:19 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (206323,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',200277,214131,'Y',10,10,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:12:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:12:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','fd9f35a3-b17b-48a9-b398-aaf1ef527447','N',2)
;

-- Dec 13, 2019, 12:12:19 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (206324,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',200277,214132,'Y',10,20,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:12:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:12:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','d26c8f2c-97e2-495b-b6e3-5260e535f198','Y','Y',10,4,2)
;

-- Dec 13, 2019, 12:12:20 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (206325,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',200277,214138,'Y',40,30,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:12:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:12:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','efe03845-cbbf-438e-b5d0-aca1756480c1','Y',20,2)
;

-- Dec 13, 2019, 12:12:20 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (206326,'Description','Optional short description of the record','A description is limited to 255 characters.',200277,214139,'Y',255,40,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:12:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:12:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','7faaebf3-1c32-4fc0-8bab-605cb6040a80','Y',30,5)
;

-- Dec 13, 2019, 12:12:20 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (206327,'Time-based Login',200277,214129,'N',10,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:12:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:12:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','f76c95fd-c101-48fa-a02d-b48536511f49','N',2)
;

-- Dec 13, 2019, 12:12:21 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (206328,'AD_TimeBasedLogin_UU',200277,214130,'N',36,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:12:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:12:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','e339ac6c-bbd6-43d4-9400-54da162429ae','N',2)
;

-- Dec 13, 2019, 12:12:21 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (206329,'Role','Responsibility Role','The Role determines security and access a user who has this Role will have in the System.',200277,214140,'Y',10,50,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:12:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:12:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','2f692e84-f47a-4207-a9e3-5ebb161995f7','Y',40,2)
;

-- Dec 13, 2019, 12:12:22 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (206330,'User/Contact','User within the system - Internal or Business Partner Contact','The User identifies a unique user in the system. This could be an internal user or a business partner contact',200277,214141,'Y',10,60,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:12:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:12:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','ab3b16a0-656b-4d05-8b68-2e53f934f7a8','Y',50,2)
;

-- Dec 13, 2019, 12:12:22 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (206331,'Date Start','Date Start for this Order',200277,214142,'Y',29,70,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:12:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:12:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','b3ed7077-cfc1-4f22-94f9-8fadd9e23f8a','Y',60,2)
;

-- Dec 13, 2019, 12:12:23 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (206332,'Finish Date','Finish or (planned) completion date','The finish date is used to indicate when the project is expected to be completed or has been completed.',200277,214143,'Y',29,80,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:12:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:12:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','3626657b-e5f1-4651-9e87-6b32405d0271','Y',70,2)
;

-- Dec 13, 2019, 12:12:23 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (206333,'Slot Start','Time when timeslot starts','Starting time for time slots',200277,214144,'Y',29,90,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:12:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:12:23','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','9f92106a-256c-4133-98b8-cb8d7caa61c8','Y',80,2)
;

-- Dec 13, 2019, 12:12:23 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (206334,'Slot End','Time when timeslot ends','Ending time for time slots',200277,214145,'Y',29,100,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:12:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:12:23','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','45232edf-0ae1-4473-ab6e-4679a17549da','Y',90,2)
;

-- Dec 13, 2019, 12:12:24 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (206335,'Time Slot','Resource has time slot availability','Resource is only available at certain times',200277,214146,'Y',1,110,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:12:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:12:23','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','ec3a5052-ff0f-4ff9-aa78-44dd2281f16f','Y',100,2,2)
;

-- Dec 13, 2019, 12:12:24 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (206336,'Day Slot','Resource has day slot availability','Resource is only available on certain days',200277,214147,'Y',1,120,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:12:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:12:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','9461c8f1-51a3-4b9a-a57f-ffea8bbd570d','Y',110,2,2)
;

-- Dec 13, 2019, 12:12:25 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (206337,'Sunday','Available on Sundays',200277,214148,'Y',1,130,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:12:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:12:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','aaf50494-708d-4127-bd06-a7ad0a61c4b0','Y',120,2,2)
;

-- Dec 13, 2019, 12:12:25 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (206338,'Monday','Available on Mondays',200277,214149,'Y',1,140,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:12:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:12:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','99f75526-fb97-45cf-9465-6154afa7fd9a','Y',130,2,2)
;

-- Dec 13, 2019, 12:12:25 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (206339,'Tuesday','Available on Tuesdays',200277,214150,'Y',1,150,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:12:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:12:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','a9158f59-d89e-4978-985c-1ca9a0429230','Y',140,2,2)
;

-- Dec 13, 2019, 12:12:26 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (206340,'Wednesday','Available on Wednesdays',200277,214151,'Y',1,160,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:12:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:12:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','d9e7c53f-c42a-46af-97a9-fe6bc2e61f98','Y',150,2,2)
;

-- Dec 13, 2019, 12:12:26 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (206341,'Thursday','Available on Thursdays',200277,214152,'Y',1,170,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:12:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:12:26','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','8cf17bbc-de60-4ef6-b1f5-0edb70be0da5','Y',160,2,2)
;

-- Dec 13, 2019, 12:12:27 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (206342,'Friday','Available on Fridays',200277,214153,'Y',1,180,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:12:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:12:26','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','a73b703e-308f-40fd-a5e2-edb527703e71','Y',170,2,2)
;

-- Dec 13, 2019, 12:12:27 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (206343,'Saturday','Available on Saturday',200277,214154,'Y',1,190,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:12:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:12:27','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','85907a86-b804-416f-9e6a-3114b6385494','Y',180,2,2)
;

-- Dec 13, 2019, 12:12:27 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (206344,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',200277,214133,'Y',1,200,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:12:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:12:27','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','fa095632-9df8-4ed9-9ba7-c7948719af1e','Y',190,2,2)
;

-- Dec 13, 2019, 12:16:58 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:16:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206329
;

-- Dec 13, 2019, 12:16:59 PM BRT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, NumLines=3, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:16:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206326
;

-- Dec 13, 2019, 12:16:59 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=2, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:16:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206344
;

-- Dec 13, 2019, 12:16:59 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=3, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:16:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206331
;

-- Dec 13, 2019, 12:16:59 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:16:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206332
;

-- Dec 13, 2019, 12:16:59 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=2, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:16:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206335
;

-- Dec 13, 2019, 12:16:59 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=3, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:16:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206333
;

-- Dec 13, 2019, 12:16:59 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:16:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206334
;

-- Dec 13, 2019, 12:16:59 PM BRT
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:16:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206336
;

-- Dec 13, 2019, 12:16:59 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=3, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:16:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206337
;

-- Dec 13, 2019, 12:16:59 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:16:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206338
;

-- Dec 13, 2019, 12:16:59 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:16:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206339
;

-- Dec 13, 2019, 12:16:59 PM BRT
UPDATE AD_Field SET SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:16:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206340
;

-- Dec 13, 2019, 12:16:59 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=3, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:16:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206341
;

-- Dec 13, 2019, 12:16:59 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:16:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206342
;

-- Dec 13, 2019, 12:16:59 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:16:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206343
;

-- Dec 13, 2019, 12:16:59 PM BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:16:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206328
;

-- Dec 13, 2019, 12:16:59 PM BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:16:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206327
;

-- Dec 13, 2019, 12:16:59 PM BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:16:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206330
;

-- Dec 13, 2019, 12:17:36 PM BRT
UPDATE AD_Field SET IsReadOnly='Y', DefaultValue='0', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:17:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206324
;

-- Dec 13, 2019, 12:18:34 PM BRT
UPDATE AD_Field SET IsMandatory='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:18:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206329
;

-- Dec 13, 2019, 12:19:02 PM BRT
UPDATE AD_Field SET DisplayLogic='@IsTimeSlot@=Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:19:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206333
;

-- Dec 13, 2019, 12:19:06 PM BRT
UPDATE AD_Field SET DisplayLogic='@IsTimeSlot@=Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:19:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206334
;

-- Dec 13, 2019, 12:19:21 PM BRT
UPDATE AD_Field SET DisplayLogic='@IsDateSlot@=Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:19:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206337
;

-- Dec 13, 2019, 12:19:24 PM BRT
UPDATE AD_Field SET DisplayLogic='@IsDateSlot@=Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:19:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206338
;

-- Dec 13, 2019, 12:19:26 PM BRT
UPDATE AD_Field SET DisplayLogic='@IsDateSlot@=Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:19:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206339
;

-- Dec 13, 2019, 12:19:28 PM BRT
UPDATE AD_Field SET DisplayLogic='@IsDateSlot@=Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:19:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206340
;

-- Dec 13, 2019, 12:19:30 PM BRT
UPDATE AD_Field SET DisplayLogic='@IsDateSlot@=Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:19:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206341
;

-- Dec 13, 2019, 12:19:33 PM BRT
UPDATE AD_Field SET DisplayLogic='@IsDateSlot@=Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:19:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206342
;

-- Dec 13, 2019, 12:19:38 PM BRT
UPDATE AD_Field SET DisplayLogic='@IsDateSlot@=Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:19:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206343
;

-- Dec 13, 2019, 12:20:19 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=206330
;

-- Dec 13, 2019, 12:20:19 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=206329
;

-- Dec 13, 2019, 12:20:19 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=206326
;

-- Dec 13, 2019, 12:20:19 PM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=206324
;

-- Dec 13, 2019, 12:20:19 PM BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=206325
;

-- Dec 13, 2019, 12:20:19 PM BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=206331
;

-- Dec 13, 2019, 12:20:19 PM BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=206332
;

-- Dec 13, 2019, 12:20:19 PM BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=206333
;

-- Dec 13, 2019, 12:20:20 PM BRT
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=206334
;

-- Dec 13, 2019, 12:20:20 PM BRT
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=206335
;

-- Dec 13, 2019, 12:20:20 PM BRT
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=206336
;

-- Dec 13, 2019, 12:20:20 PM BRT
UPDATE AD_Field SET SeqNoGrid=80,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=206337
;

-- Dec 13, 2019, 12:20:20 PM BRT
UPDATE AD_Field SET SeqNoGrid=90,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=206338
;

-- Dec 13, 2019, 12:20:20 PM BRT
UPDATE AD_Field SET SeqNoGrid=100,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=206339
;

-- Dec 13, 2019, 12:20:20 PM BRT
UPDATE AD_Field SET SeqNoGrid=110,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=206340
;

-- Dec 13, 2019, 12:20:20 PM BRT
UPDATE AD_Field SET SeqNoGrid=120,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=206341
;

-- Dec 13, 2019, 12:20:20 PM BRT
UPDATE AD_Field SET SeqNoGrid=130,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=206342
;

-- Dec 13, 2019, 12:20:20 PM BRT
UPDATE AD_Field SET SeqNoGrid=140,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=206343
;

-- Dec 13, 2019, 12:20:20 PM BRT
UPDATE AD_Field SET SeqNoGrid=150,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=206344
;

-- Dec 13, 2019, 12:22:15 PM BRT
UPDATE AD_Tab SET SeqNo=111,Updated=TO_DATE('2019-12-13 12:22:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=200277
;

-- Dec 13, 2019, 12:22:27 PM BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (200278,'Time-Based Login',108,91,'Y',200262,0,0,'Y',TO_DATE('2019-12-13 12:22:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:22:26','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',1,'N','EXT','Y','N','bef601d3-8f2b-453a-bb71-b3e7ffd70173','B')
;

-- Dec 13, 2019, 12:22:42 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (206345,'User/Contact','User within the system - Internal or Business Partner Contact','The User identifies a unique user in the system. This could be an internal user or a business partner contact',200278,214141,'N',10,0,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:22:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:22:42','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','31bcdb9c-0905-4c63-8b88-4743ee8c85f5','N',0,1,2,1,'N','N','N')
;

-- Dec 13, 2019, 12:22:43 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (206346,'Time-based Login',200278,214129,'N',10,0,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:22:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:22:42','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','c2c8ae6f-bc5d-4dc6-b1d7-c42904b7429b','N',1,2,1,'N','N','N')
;

-- Dec 13, 2019, 12:22:43 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (206347,'AD_TimeBasedLogin_UU',200278,214130,'N',36,0,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:22:43','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:22:43','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','3b96e042-94da-4fb3-9275-546759e972a6','N',1,2,1,'N','N','N')
;

-- Dec 13, 2019, 12:22:44 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (206348,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',200278,214131,'Y',10,10,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:22:43','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:22:43','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','29ddd549-5330-4430-90c0-2a99b8b0f5cc','N',1,2,1,'N','N','N')
;

-- Dec 13, 2019, 12:22:44 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,DefaultValue,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (206349,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',200278,214132,'Y',10,20,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:22:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:22:44','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','EXT','0','b29887ca-db77-4cb4-bb0c-0e729521d3c0','Y','N',0,4,2,1,'N','N','N')
;

-- Dec 13, 2019, 12:22:44 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (206350,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',200278,214138,'Y',40,30,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:22:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:22:44','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','62cc3117-1d3c-4ce3-a129-d37e12c3d457','Y',10,1,2,1,'N','N','N')
;

-- Dec 13, 2019, 12:22:45 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,IsMandatory,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (206351,'Role','Responsibility Role','The Role determines security and access a user who has this Role will have in the System.',200278,214140,'Y',10,40,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:22:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:22:45','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','Y','ffd78089-b8f3-40bb-8490-7995cefe53b2','N',0,4,2,1,'N','N','N')
;

-- Dec 13, 2019, 12:22:45 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (206352,'Description','Optional short description of the record','A description is limited to 255 characters.',200278,214139,'Y',255,50,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:22:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:22:45','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','01a23fc0-3c62-45c7-ae59-ee6e93ef6806','N',0,1,5,3,'N','N','N')
;

-- Dec 13, 2019, 12:22:46 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (206353,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',200278,214133,'Y',1,60,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:22:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:22:45','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','4e7dd4a3-4efe-462d-946a-cbc7d05e4195','Y',150,2,1,1,'N','N','N')
;

-- Dec 13, 2019, 12:22:46 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (206354,'Date Start','Date Start for this Order',200278,214142,'Y',29,70,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:22:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:22:46','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','11a95cf9-3b07-4b05-bd93-6a2bd2732399','Y',20,3,1,1,'N','N','N')
;

-- Dec 13, 2019, 12:22:47 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (206355,'Finish Date','Finish or (planned) completion date','The finish date is used to indicate when the project is expected to be completed or has been completed.',200278,214143,'Y',29,80,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:22:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:22:46','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','d4cf82ab-0dd9-409b-97f0-70614733599e','Y',30,5,1,1,'N','N','N')
;

-- Dec 13, 2019, 12:22:47 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (206356,'Time Slot','Resource has time slot availability','Resource is only available at certain times',200278,214146,'Y',1,90,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:22:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:22:47','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','ceb737e0-6b6f-4677-aa99-5c7ebacbe906','Y',60,2,1,1,'N','N','N')
;

-- Dec 13, 2019, 12:22:47 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (206357,'Slot Start','Time when timeslot starts','Starting time for time slots',200278,214144,'Y','@IsTimeSlot@=Y',29,100,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:22:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:22:47','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','4412937d-1997-4d0f-8967-0c950c03e9e8','Y',40,3,1,1,'N','N','N')
;

-- Dec 13, 2019, 12:22:48 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (206358,'Slot End','Time when timeslot ends','Ending time for time slots',200278,214145,'Y','@IsTimeSlot@=Y',29,110,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:22:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:22:47','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','2eba11ba-e925-4645-8865-2395da04b2a1','Y',50,5,1,1,'N','N','N')
;

-- Dec 13, 2019, 12:22:48 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (206359,'Day Slot','Resource has day slot availability','Resource is only available on certain days',200278,214147,'Y',1,120,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:22:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:22:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','3c4d49b8-fddd-4f9d-8e8b-273eb7060439','Y',70,2,1,1,'N','N','N')
;

-- Dec 13, 2019, 12:22:49 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (206360,'Sunday','Available on Sundays',200278,214148,'Y','@IsDateSlot@=Y',1,130,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:22:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:22:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','c0049060-1bca-4053-ae96-cb28aeddf899','Y',80,3,1,1,'N','N','N')
;

-- Dec 13, 2019, 12:22:49 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (206361,'Monday','Available on Mondays',200278,214149,'Y','@IsDateSlot@=Y',1,140,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:22:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:22:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','fc224470-7015-4508-a273-5410fbf6ad7c','Y',90,4,1,1,'N','N','N')
;

-- Dec 13, 2019, 12:22:49 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (206362,'Tuesday','Available on Tuesdays',200278,214150,'Y','@IsDateSlot@=Y',1,150,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:22:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:22:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','b3d1247d-fcd5-4473-bc12-46c6cb27c28a','Y',100,5,1,1,'N','N','N')
;

-- Dec 13, 2019, 12:22:50 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (206363,'Wednesday','Available on Wednesdays',200278,214151,'Y','@IsDateSlot@=Y',1,160,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:22:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:22:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','753ff5c1-a1b3-43f8-80dd-36e0f3b703b2','Y',110,2,1,1,'N','N','N')
;

-- Dec 13, 2019, 12:22:50 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (206364,'Thursday','Available on Thursdays',200278,214152,'Y','@IsDateSlot@=Y',1,170,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:22:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:22:50','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','b23c32bb-4d2b-4d07-81a4-46a7291d551a','Y',120,3,1,1,'N','N','N')
;

-- Dec 13, 2019, 12:22:51 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (206365,'Friday','Available on Fridays',200278,214153,'Y','@IsDateSlot@=Y',1,180,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:22:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:22:50','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','f5006f25-b868-4dbf-bf48-3ece295078cd','Y',130,4,1,1,'N','N','N')
;

-- Dec 13, 2019, 12:22:51 PM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (206366,'Saturday','Available on Saturday',200278,214154,'Y','@IsDateSlot@=Y',1,190,'N','N','N','N',0,0,'Y',TO_DATE('2019-12-13 12:22:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-13 12:22:51','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','EXT','1026068f-6be3-44f5-bf06-9227adc13fa9','Y',140,5,1,1,'N','N','N')
;

-- Dec 13, 2019, 12:23:08 PM BRT
UPDATE AD_Field SET IsMandatory=NULL, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:23:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206351
;

-- Dec 13, 2019, 12:23:36 PM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:23:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206345
;

-- Dec 13, 2019, 12:23:36 PM BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:23:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206351
;

-- Dec 13, 2019, 12:23:48 PM BRT
UPDATE AD_Field SET IsMandatory='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2019-12-13 12:23:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=206345
;

-- Plugin: Time-Based Login Access
-- Dec 13, 2019, 3:55:35 PM BRT
UPDATE AD_Column SET AD_Reference_ID=15, IsUpdateable='Y',Updated=TO_DATE('2019-12-13 15:55:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214143
;

-- Dec 13, 2019, 3:55:42 PM BRT
UPDATE AD_Column SET AD_Reference_ID=15, IsUpdateable='Y',Updated=TO_DATE('2019-12-13 15:55:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214142
;

-- Dec 13, 2019, 3:59:07 PM BRT
UPDATE AD_Column SET DefaultValue=NULL,Updated=TO_DATE('2019-12-13 15:59:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=214140
;

-- Dec 16, 2019, 3:59:09 PM BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=206351
;

-- Dec 16, 2019, 3:59:09 PM BRT
DELETE FROM AD_Field WHERE AD_Field_ID=206351
;

-- Dec 16, 2019, 3:59:32 PM BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=206330
;

-- Dec 16, 2019, 3:59:32 PM BRT
DELETE FROM AD_Field WHERE AD_Field_ID=206330
;

-- Plugin: Time-Based Login Access
-- Dec 16, 2019, 4:29:37 PM BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Message_ID,Value,EntityType,AD_Message_UU) VALUES ('I','End Time should be after Start Time',0,0,'Y',TO_DATE('2019-12-16 16:29:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-16 16:29:37','YYYY-MM-DD HH24:MI:SS'),100,200582,'TBL_TimeSlotStart<TimeSlotEnd','EXT','809f1f0c-8f81-41f4-9851-38b765c7f032')
;

-- Dec 16, 2019, 4:30:22 PM BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Message_ID,Value,EntityType,AD_Message_UU) VALUES ('E','Date Finish should be after Date Start',0,0,'Y',TO_DATE('2019-12-16 16:30:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-16 16:30:21','YYYY-MM-DD HH24:MI:SS'),100,200583,'TBL_DateFinish<DateStart','U','8d5ee420-a8d8-42cf-abaa-1554173c062c')
;

-- Dec 16, 2019, 4:30:44 PM BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Message_ID,Value,EntityType,AD_Message_UU) VALUES ('E','Duplicated restriction for the same User/Role/Period',0,0,'Y',TO_DATE('2019-12-16 16:30:43','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-16 16:30:43','YYYY-MM-DD HH24:MI:SS'),100,200584,'TBL_DuplicatedRestric','U','0348159c-a629-4486-990f-04fdd2ffcec2')
;

-- Dec 16, 2019, 4:31:05 PM BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Message_ID,Value,EntityType,AD_Message_UU) VALUES ('E','Time or Date slot is Mandatory',0,0,'Y',TO_DATE('2019-12-16 16:31:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-16 16:31:04','YYYY-MM-DD HH24:MI:SS'),100,200585,'TBL_TimeOrDateSlotMandatory','U','db803428-4bed-4ac4-9ca4-06d6290e7ff6')
;

-- Dec 16, 2019, 4:31:18 PM BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Message_ID,Value,EntityType,AD_Message_UU) VALUES ('E','User allowed to log-in only between {0} and {1}',0,0,'Y',TO_DATE('2019-12-16 16:31:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-16 16:31:18','YYYY-MM-DD HH24:MI:SS'),100,200586,'TBL_TimeNotAllowed','U','39b2c250-52a0-40b9-932c-3b8eb5605f97')
;

-- Dec 16, 2019, 4:31:30 PM BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Message_ID,Value,EntityType,AD_Message_UU) VALUES ('E','User not allowed to login on {0}',0,0,'Y',TO_DATE('2019-12-16 16:31:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-12-16 16:31:30','YYYY-MM-DD HH24:MI:SS'),100,200587,'TBL_DayNotAllowed','U','ca45a363-853a-4804-a60a-def55c964d83')
;

-- Dec 16, 2019, 4:31:30 PM BRT
SELECT Register_Migration_Script ('201912131120_ADUserLoginTime.sql') FROM DUAL
;

