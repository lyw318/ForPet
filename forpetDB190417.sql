--------------------------------------------------------
--  ������ ������ - ������-4��-17-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ATTACHMENT
--------------------------------------------------------

  CREATE TABLE "FORPET"."ATTACHMENT" 
   (	"ATTACHMENTNO" NUMBER, 
	"BOARDNO" NUMBER, 
	"ORIGINALFILENAME" VARCHAR2(255 BYTE), 
	"RENAMEDFILENAME" VARCHAR2(255 BYTE), 
	"UPLOADDATE" DATE DEFAULT SYSDATE, 
	"DOWNLOADCOUNT" NUMBER DEFAULT 0, 
	"STATUS" VARCHAR2(1 BYTE) DEFAULT 'Y'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "FORPET"."ATTACHMENT"."ATTACHMENTNO" IS '÷�����Ϲ�ȣ(PK)';
   COMMENT ON COLUMN "FORPET"."ATTACHMENT"."BOARDNO" IS '�Խ��Ǳ۹�ȣ(FK)';
   COMMENT ON COLUMN "FORPET"."ATTACHMENT"."ORIGINALFILENAME" IS '���ε��� ÷�����ϸ�';
   COMMENT ON COLUMN "FORPET"."ATTACHMENT"."RENAMEDFILENAME" IS '������ ����� ÷�����ϸ�';
   COMMENT ON COLUMN "FORPET"."ATTACHMENT"."UPLOADDATE" IS '���ε�����';
   COMMENT ON COLUMN "FORPET"."ATTACHMENT"."DOWNLOADCOUNT" IS '�ٿ�ε� Ƚ��';
   COMMENT ON COLUMN "FORPET"."ATTACHMENT"."STATUS" IS '��뿩��';
--------------------------------------------------------
--  DDL for Table BOARD
--------------------------------------------------------

  CREATE TABLE "FORPET"."BOARD" 
   (	"BOARDSEQ" NUMBER, 
	"MEMBERSEQ" NUMBER, 
	"BOARDTITLE" VARCHAR2(300 BYTE), 
	"BOARDCONTENT" VARCHAR2(4000 BYTE), 
	"BOARDREADCOUNT" NUMBER DEFAULT 0, 
	"BOARDDATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table BOARDIMAGE
--------------------------------------------------------

  CREATE TABLE "FORPET"."BOARDIMAGE" 
   (	"FILENAME" VARCHAR2(100 BYTE), 
	"BOARDSEQ" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table BOARDREPLY
--------------------------------------------------------

  CREATE TABLE "FORPET"."BOARDREPLY" 
   (	"COMMENTSEQ" NUMBER, 
	"MEMBERSEQ" NUMBER, 
	"BOARDSEQ" NUMBER, 
	"COMMENTREF" NUMBER, 
	"COMMENTDATE" DATE, 
	"COMMENTTEXT" VARCHAR2(1500 BYTE), 
	"COMMENTLEVEL" NUMBER DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CONTACT
--------------------------------------------------------

  CREATE TABLE "FORPET"."CONTACT" 
   (	"BOARDSEQ" NUMBER, 
	"MEMBERSEQ" NUMBER, 
	"CONTACTTITLE" VARCHAR2(300 BYTE), 
	"CONTACTCONTENT" VARCHAR2(4000 BYTE), 
	"CONTACTREADCOUNT" NUMBER DEFAULT 0, 
	"CONTACTDATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table EVENT
--------------------------------------------------------

  CREATE TABLE "FORPET"."EVENT" 
   (	"EVENTSEQ" NUMBER, 
	"MEMBERSEQ" NUMBER, 
	"EVENTTITLE" VARCHAR2(300 BYTE), 
	"EVENTCONTENT" VARCHAR2(4000 BYTE), 
	"READCOUNT" NUMBER, 
	"EVENTSTART" DATE, 
	"EVENTFINISH" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table EVENTIMAGE
--------------------------------------------------------

  CREATE TABLE "FORPET"."EVENTIMAGE" 
   (	"FILENAME" VARCHAR2(100 BYTE), 
	"EVENTSEQ" NUMBER, 
	"PRIORITY" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table HEALTHINFO
--------------------------------------------------------

  CREATE TABLE "FORPET"."HEALTHINFO" 
   (	"INFOSEQ" NUMBER, 
	"PETTYPE" VARCHAR2(100 BYTE), 
	"INFOTITLE" VARCHAR2(100 BYTE), 
	"INFOCONTENT" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table INFOIMAGE
--------------------------------------------------------

  CREATE TABLE "FORPET"."INFOIMAGE" 
   (	"FILENAME" VARCHAR2(100 BYTE), 
	"INFOSEQ" NUMBER, 
	"PRIORITY" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table KAKAOMEMBER
--------------------------------------------------------

  CREATE TABLE "FORPET"."KAKAOMEMBER" 
   (	"KAKAOID" VARCHAR2(100 BYTE), 
	"MEMBERSEQ" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "FORPET"."MEMBER" 
   (	"MEMBERSEQ" NUMBER, 
	"MEMBEREMAIL" VARCHAR2(40 BYTE), 
	"MEMBERPASSWORD" VARCHAR2(100 BYTE), 
	"MEMBERNICKNAME" VARCHAR2(20 BYTE), 
	"MEMBERNAME" VARCHAR2(20 BYTE), 
	"MEMBERPHONE" NUMBER, 
	"MEMBERADDRESS" VARCHAR2(1000 BYTE), 
	"MEMBERTYPE" VARCHAR2(20 BYTE), 
	"MEMBERENROLLDATE" DATE, 
	"MEMBERQUITDATE" DATE DEFAULT NULL
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MEMBERFRIEND
--------------------------------------------------------

  CREATE TABLE "FORPET"."MEMBERFRIEND" 
   (	"MFRIENDSEQ" NUMBER, 
	"MEMBERSEQ" NUMBER, 
	"MFRIENDMATENO" NUMBER, 
	"MFRIENDNICKNAME" VARCHAR2(100 BYTE), 
	"MFRIENDFAVO" VARCHAR2(100 BYTE) DEFAULT 'N', 
	"MFRIENDTYPE" VARCHAR2(100 BYTE) DEFAULT '�Ϲ�'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MEMBERMSG
--------------------------------------------------------

  CREATE TABLE "FORPET"."MEMBERMSG" 
   (	"MMSGSEQ" NUMBER, 
	"MEMBERNICKNAME" VARCHAR2(100 BYTE), 
	"MMSGCATE" VARCHAR2(100 BYTE) DEFAULT '�Ϲ�', 
	"MMSGRCVNICKNAME" VARCHAR2(100 BYTE), 
	"MMSGCONTENT" VARCHAR2(4000 BYTE), 
	"MMSGDATE" DATE DEFAULT sysdate, 
	"MMSGREAD" VARCHAR2(10 BYTE) DEFAULT 'N', 
	"MMSGTYPE" VARCHAR2(100 BYTE) DEFAULT '�Ϲ�'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "FORPET"."NOTICE" 
   (	"NOTICESEQ" NUMBER, 
	"MEMBERSEQ" NUMBER, 
	"NOTICETITLE" VARCHAR2(300 BYTE), 
	"NOTICECONTENT" VARCHAR2(4000 BYTE), 
	"READCOUNT" NUMBER DEFAULT 0, 
	"NOTICEDATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table NOTICEIMAGE
--------------------------------------------------------

  CREATE TABLE "FORPET"."NOTICEIMAGE" 
   (	"FILENAME" VARCHAR2(100 BYTE), 
	"NOTICESEQ" NUMBER, 
	"PRIORITY" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PET
--------------------------------------------------------

  CREATE TABLE "FORPET"."PET" 
   (	"PETSEQ" NUMBER, 
	"MEMBERSEQ" NUMBER, 
	"PETNAME" VARCHAR2(100 BYTE), 
	"PETBIRTH" DATE, 
	"PETTYPE" VARCHAR2(100 BYTE), 
	"PETTYPE2" VARCHAR2(100 BYTE), 
	"PETRENAMEDIMAGE" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PETDETAIL
--------------------------------------------------------

  CREATE TABLE "FORPET"."PETDETAIL" 
   (	"FIELD4" VARCHAR2(255 BYTE), 
	"FIELD3" VARCHAR2(255 BYTE), 
	"FIELD" VARCHAR2(255 BYTE), 
	"FIELD2" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table QNAREPLY
--------------------------------------------------------

  CREATE TABLE "FORPET"."QNAREPLY" 
   (	"COMMENTSEQ" NUMBER, 
	"MEMBERSEQ" NUMBER, 
	"BOARDSEQ" NUMBER, 
	"COMMENTREF" NUMBER, 
	"COMMENTDATE" TIMESTAMP (6), 
	"COMMENTTEXT" VARCHAR2(1500 BYTE), 
	"COMMENTLEVEL" NUMBER DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SMALLBOARD
--------------------------------------------------------

  CREATE TABLE "FORPET"."SMALLBOARD" 
   (	"SMALLBOARDSEQ" NUMBER, 
	"MEMBERSEQ" NUMBER, 
	"SMALLBOARDKATEGORIE" VARCHAR2(200 BYTE), 
	"SMALLBOARDTITLE" VARCHAR2(300 BYTE), 
	"SMALLBOARDCONTENT" VARCHAR2(4000 BYTE), 
	"SMALLBOARDREADCOUNT" NUMBER DEFAULT 0, 
	"SMALLBOARDDATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SMALLBOARDREPLY
--------------------------------------------------------

  CREATE TABLE "FORPET"."SMALLBOARDREPLY" 
   (	"SBCOMMENTSEQ" NUMBER, 
	"MEMBERSEQ" NUMBER, 
	"SMALLBOARDSEQ" NUMBER, 
	"SBCOMMENTREF" NUMBER, 
	"SBCOMMENTDATE" DATE, 
	"SBCOMMENTTEXT" VARCHAR2(1500 BYTE), 
	"SBCOMMENTLEVEL" NUMBER DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USERAUTH
--------------------------------------------------------

  CREATE TABLE "FORPET"."USERAUTH" 
   (	"MEMBEREMAIL" VARCHAR2(40 BYTE), 
	"AUTHKEY" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table VET
--------------------------------------------------------

  CREATE TABLE "FORPET"."VET" 
   (	"VETSEQ" NUMBER, 
	"VETNAME" VARCHAR2(100 BYTE), 
	"VETADDRESS" VARCHAR2(1000 BYTE), 
	"VETPHONE" VARCHAR2(20 BYTE), 
	"VETDAYSTIME" NUMBER, 
	"VETDAYETIME" NUMBER, 
	"VETSATSTIME" NUMBER, 
	"VETSATETIME" NUMBER, 
	"VETSUNSTIME" NUMBER, 
	"VETSUNETIME" NUMBER, 
	"VETCOMMENT" VARCHAR2(100 BYTE) DEFAULT '�ΰ������� �����ϴ�'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table VETCATEGORY
--------------------------------------------------------

  CREATE TABLE "FORPET"."VETCATEGORY" 
   (	"VETCATEGORYSEQ" NUMBER, 
	"VETSEQ" NUMBER, 
	"ANIMALTYPE" VARCHAR2(15 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table VETSCRAP
--------------------------------------------------------

  CREATE TABLE "FORPET"."VETSCRAP" 
   (	"MEMBERSEQ" NUMBER, 
	"VETSEQ" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "FORPET"."VETSCRAP"."MEMBERSEQ" IS '����ڹ�ȣ';
   COMMENT ON COLUMN "FORPET"."VETSCRAP"."VETSEQ" IS '������ȣ';
--------------------------------------------------------
--  DDL for Table VETSERVICE
--------------------------------------------------------

  CREATE TABLE "FORPET"."VETSERVICE" 
   (	"VETSERVICESEQ" NUMBER, 
	"VETSEQ" NUMBER, 
	"VETITEM" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Sequence BOARDSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "FORPET"."BOARDSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 15 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence COMMENTSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "FORPET"."COMMENTSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EVENTSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "FORPET"."EVENTSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 9 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence INFOSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "FORPET"."INFOSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 44 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MEMBERSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "FORPET"."MEMBERSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 19 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MFRIENDSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "FORPET"."MFRIENDSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 30 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MMSGSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "FORPET"."MMSGSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 48 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence NOTICESEQ
--------------------------------------------------------

   CREATE SEQUENCE  "FORPET"."NOTICESEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 8 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PETSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "FORPET"."PETSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 15 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SBCOMMENTSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "FORPET"."SBCOMMENTSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_ATTACHMENTNO
--------------------------------------------------------

   CREATE SEQUENCE  "FORPET"."SEQ_ATTACHMENTNO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 5 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SMALLBOARDSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "FORPET"."SMALLBOARDSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence VETCATEGORYSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "FORPET"."VETCATEGORYSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence VETSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "FORPET"."VETSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 3 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence VETSERVICESEQ
--------------------------------------------------------

   CREATE SEQUENCE  "FORPET"."VETSERVICESEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
REM INSERTING into FORPET.ATTACHMENT
SET DEFINE OFF;
REM INSERTING into FORPET.BOARD
SET DEFINE OFF;
Insert into FORPET.BOARD (BOARDSEQ,MEMBERSEQ,BOARDTITLE,BOARDCONTENT,BOARDREADCOUNT,BOARDDATE) values (10,11,'�� ���� ����Ʈ�׿�..����','�����Ӱ� ���� �� ���ƿ�~',4,to_date('19/04/17','RR/MM/DD'));
Insert into FORPET.BOARD (BOARDSEQ,MEMBERSEQ,BOARDTITLE,BOARDCONTENT,BOARDREADCOUNT,BOARDDATE) values (3,3,'���￡ ������ ���� �ֳ���??','���� �ǻ� ������ �ִ� ������ �������� ���� �;�� ���� ��ó�� ���� ���� ������ �˷��ּ���~~',23,to_date('19/04/16','RR/MM/DD'));
Insert into FORPET.BOARD (BOARDSEQ,MEMBERSEQ,BOARDTITLE,BOARDCONTENT,BOARDREADCOUNT,BOARDDATE) values (4,9,'���￪�� ��ø�Ѿ�ݴϺ��� �ֳ���~??','��ø�� ��ݴ� ������ ���Ѵٰ� �ؼ� ���� �;�� ������ ��Ź�����!!',17,to_date('19/04/16','RR/MM/DD'));
Insert into FORPET.BOARD (BOARDSEQ,MEMBERSEQ,BOARDTITLE,BOARDCONTENT,BOARDREADCOUNT,BOARDDATE) values (12,5,'�������� �����־��','���������� �ֱ������� �ö������? ',2,to_date('19/04/17','RR/MM/DD'));
Insert into FORPET.BOARD (BOARDSEQ,MEMBERSEQ,BOARDTITLE,BOARDCONTENT,BOARDREADCOUNT,BOARDDATE) values (11,9,'�䳢 �θ��� �����̿�','�䳢 �θ��� �����־��~
���� Ű��� ���� �ο쳪��?
',3,to_date('19/04/17','RR/MM/DD'));
Insert into FORPET.BOARD (BOARDSEQ,MEMBERSEQ,BOARDTITLE,BOARDCONTENT,BOARDREADCOUNT,BOARDDATE) values (13,4,'���̳� ��մ�~~','12321',5,to_date('19/04/17','RR/MM/DD'));
REM INSERTING into FORPET.BOARDIMAGE
SET DEFINE OFF;
REM INSERTING into FORPET.BOARDREPLY
SET DEFINE OFF;
Insert into FORPET.BOARDREPLY (COMMENTSEQ,MEMBERSEQ,BOARDSEQ,COMMENTREF,COMMENTDATE,COMMENTTEXT,COMMENTLEVEL) values (43,5,11,null,to_date('19/04/17','RR/MM/DD'),'�䳢�� ���� ��ƸԾ ���� Ű��� �ȵȴ�ϴ�!!!!!!!',1);
Insert into FORPET.BOARDREPLY (COMMENTSEQ,MEMBERSEQ,BOARDSEQ,COMMENTREF,COMMENTDATE,COMMENTTEXT,COMMENTLEVEL) values (44,11,12,null,to_date('19/04/17','RR/MM/DD'),'�Ƹ�����..���� �ʿ��ϸ� �����ڰ� �ø��� �������?
',1);
Insert into FORPET.BOARDREPLY (COMMENTSEQ,MEMBERSEQ,BOARDSEQ,COMMENTREF,COMMENTDATE,COMMENTTEXT,COMMENTLEVEL) values (3,4,3,null,to_date('19/04/16','RR/MM/DD'),'kh���� ������ �Ⱑ ������~~',1);
Insert into FORPET.BOARDREPLY (COMMENTSEQ,MEMBERSEQ,BOARDSEQ,COMMENTREF,COMMENTDATE,COMMENTTEXT,COMMENTLEVEL) values (4,5,3,null,to_date('19/04/16','RR/MM/DD'),'�¾ƿ� �� ���� ���ƿ�!!',1);
Insert into FORPET.BOARDREPLY (COMMENTSEQ,MEMBERSEQ,BOARDSEQ,COMMENTREF,COMMENTDATE,COMMENTTEXT,COMMENTLEVEL) values (5,6,3,null,to_date('19/04/16','RR/MM/DD'),'�ǻ� ������ ���Ͻð� �������� �������ؿ�',1);
Insert into FORPET.BOARDREPLY (COMMENTSEQ,MEMBERSEQ,BOARDSEQ,COMMENTREF,COMMENTDATE,COMMENTTEXT,COMMENTLEVEL) values (6,3,3,5,to_date('19/04/16','RR/MM/DD'),'�� �����մϴ�!!',2);
Insert into FORPET.BOARDREPLY (COMMENTSEQ,MEMBERSEQ,BOARDSEQ,COMMENTREF,COMMENTDATE,COMMENTTEXT,COMMENTLEVEL) values (7,3,3,4,to_date('19/04/16','RR/MM/DD'),'�����մϴ�~~',2);
Insert into FORPET.BOARDREPLY (COMMENTSEQ,MEMBERSEQ,BOARDSEQ,COMMENTREF,COMMENTDATE,COMMENTTEXT,COMMENTLEVEL) values (8,3,3,3,to_date('19/04/16','RR/MM/DD'),'�Ⱑ ������ ������',2);
Insert into FORPET.BOARDREPLY (COMMENTSEQ,MEMBERSEQ,BOARDSEQ,COMMENTREF,COMMENTDATE,COMMENTTEXT,COMMENTLEVEL) values (9,3,4,null,to_date('19/04/16','RR/MM/DD'),'���￡�� ��Ŭ���� ������ ���ϴµ� ��ø�� ��ݴϴ� ��������...',1);
Insert into FORPET.BOARDREPLY (COMMENTSEQ,MEMBERSEQ,BOARDSEQ,COMMENTREF,COMMENTDATE,COMMENTTEXT,COMMENTLEVEL) values (10,4,4,null,to_date('19/04/16','RR/MM/DD'),'�ű� �����ٰ� �߾�� ���������� ��ݴϸ� �ߺ��ٴ� �Ҹ��� �־��',1);
Insert into FORPET.BOARDREPLY (COMMENTSEQ,MEMBERSEQ,BOARDSEQ,COMMENTREF,COMMENTDATE,COMMENTTEXT,COMMENTLEVEL) values (11,9,4,10,to_date('19/04/16','RR/MM/DD'),'�� ��ø�Ѿ�ݴϹ����ϳĤѤ�',2);
Insert into FORPET.BOARDREPLY (COMMENTSEQ,MEMBERSEQ,BOARDSEQ,COMMENTREF,COMMENTDATE,COMMENTTEXT,COMMENTLEVEL) values (12,9,4,9,to_date('19/04/16','RR/MM/DD'),'��ø�� ��ݴ� ���� �Ѥ�',2);
Insert into FORPET.BOARDREPLY (COMMENTSEQ,MEMBERSEQ,BOARDSEQ,COMMENTREF,COMMENTDATE,COMMENTTEXT,COMMENTLEVEL) values (47,8,4,null,to_date('19/04/17','RR/MM/DD'),'��ø�� ��ݴ� ����� ���⼭ �̷��ø� �ȵ˴ϴ�. �Ѥ̤�;',1);
Insert into FORPET.BOARDREPLY (COMMENTSEQ,MEMBERSEQ,BOARDSEQ,COMMENTREF,COMMENTDATE,COMMENTTEXT,COMMENTLEVEL) values (42,9,10,null,to_date('19/04/17','RR/MM/DD'),'Ȥ�� �Ҹ��� �Խ��ǵ� �ֳ���~?',1);
REM INSERTING into FORPET.CONTACT
SET DEFINE OFF;
REM INSERTING into FORPET.EVENT
SET DEFINE OFF;
Insert into FORPET.EVENT (EVENTSEQ,MEMBERSEQ,EVENTTITLE,EVENTCONTENT,READCOUNT,EVENTSTART,EVENTFINISH) values (1,8,'K-pop��Ÿ�� �Բ��ϴ� ''�ݷ����� ����ݴ� ķ����''','K-pop��Ÿ�� �Բ��ϴ� ''�ݷ����� ����ݴ� ķ����''

�����е� �����ϼ���
',4,to_date('19/04/10','RR/MM/DD'),to_date('19/04/18','RR/MM/DD'));
Insert into FORPET.EVENT (EVENTSEQ,MEMBERSEQ,EVENTTITLE,EVENTCONTENT,READCOUNT,EVENTSTART,EVENTFINISH) values (2,8,'�����ո����ǰ����а� �������� ü��!','"����̿� Ư�߼� �汤�� ������ ���迡 ���� �������縦 ����
���� �ո� ���ǰ� ����(RVC)�� ���������� ü���Ͽ����ϴ�.

�������ո����ǰ������� (Royal Veterinary College, University of London) ���� ������
��ġ�ϰ� ������, 1791�⿡ ������ ���� ������ ���Ǵ��Դϴ�.
1949�⿡ �������б��� �����Ͽ� �ٽ� ���� ������ �������ǰ� ���� �� 1��,
UC Davis, Cornell ���б��� �̾� ���� 3���� ��ũ�� ������ �� ���Ǵ����Դϴ�. 
���� ���������� �����ϰ� �̱� ���ǰ� ��ȸ�� ������ �޾ҽ��ϴ�.

�������� ���ǰ����а� �Բ� ���� ��Ȯ�� ����� ȿ������
ġ�Ḧ ���� ���� ����ϰڽ��ϴ�.
',3,to_date('19/01/01','RR/MM/DD'),to_date('19/01/31','RR/MM/DD'));
Insert into FORPET.EVENT (EVENTSEQ,MEMBERSEQ,EVENTTITLE,EVENTCONTENT,READCOUNT,EVENTSTART,EVENTFINISH) values (7,8,'1321231','�����Ǿ����ϴ�.',4,to_date('19/04/01','RR/MM/DD'),to_date('19/04/17','RR/MM/DD'));
Insert into FORPET.EVENT (EVENTSEQ,MEMBERSEQ,EVENTTITLE,EVENTCONTENT,READCOUNT,EVENTSTART,EVENTFINISH) values (4,8,'CGV, ����� ��ȭ���� �ݷ��� Ŭ���� ����','<pre>
CGV�� ����� ���� ��ȭ�� �����ϰ� ���ǻ� ��û �ݷ��� Ŭ������ �����ϴ� ���̺�Ʈ�� ���ٰ� 8�� ������.

CGV�� ������ ����(��)�� ����Ǳ� ������Ʈ�� ���̺�Ʈ�� ���� 8�� 16�� CGV�б������� ����� �����̴�.

 

���� ���� 7�ú��� ��ȭ ������ ����̷μ��̴�(6/8 ������)���� ���� �� �� 50�а� �ݷ��� Ŭ������ �̾�����.

����̸� �����ϴ� ��굿�������� ���ö ������ ��û�� ��ȭ�� ���õ� ������ ����, ����� ��ȭ�� �˾ƺ��� �ݷ��� ������ ���� ���������� �����Ѵ�...... [���]

 

���ٷΰ���> http://www.dailyvet.co.kr/news/etc/81943
</pre>',5,to_date('19/01/01','RR/MM/DD'),to_date('19/09/30','RR/MM/DD'));
Insert into FORPET.EVENT (EVENTSEQ,MEMBERSEQ,EVENTTITLE,EVENTCONTENT,READCOUNT,EVENTSTART,EVENTFINISH) values (8,8,'�������� Ŭ���ϸ� ��ǰ�� ����!','<style>
ul>li {
width:950px;
}
</style>
<ul>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
<li></li>
</ul>
<script>
var soManyLi = document.getElementsByTagName("li");
for(var i=0; i<soManyLi.length; i++)
{// soManyLi[i].innerHTML = (i*3+true+false) + "" + (i*3+true+true) + "" + (i*3+true+true+true);
soManyLi[i].style.backgroundColor = "hsl(" + (29*i) + ",75%,75%)";
soManyLi[i].style.transitionProperty = "all";
soManyLi[i].style.transitionDuration = "1000ms";
$(soManyLi[i]).click(function (i){$("li").click(null);if(i!=33){alert("��! ������ȸ��")}else{"�̺�Ʈ ��÷! �����մϴ�"} })
}
function open123() {
var soManyLi = document.getElementsByTagName("li");
for(var i=0; i<soManyLi.length; i++)
{soManyLi[i].style.transform = "rotate("+(-1*i) + "deg) perspective(1000px) rotateX(30deg) rotateY(-15deg) translate(0px, 0px)";}setTimeout( next123,1000);} function next123() {var soManyLi = document.getElementsByTagName("li");
            for(var i=0; i<soManyLi.length; i++)
            {
                soManyLi[i].style.transform = "rotate("+(-1*i)*2 + "deg) perspective(1000px) rotateX(0deg) rotateY(0deg) translate(0px, 100px)";
            }
            setTimeout( next456,1000);
        }

        function next456() {
            var soManyLi = document.getElementsByTagName("li");
            for(var i=0; i<soManyLi.length; i++)
            {
                soManyLi[i].style.transform = "rotate("+(-1*i)*3 + "deg) perspective(2000px) rotateX(0deg) rotateY(0deg) translate(0px, 200px)";
            }
            setTimeout( next789,1000);
        }
        function next789() {
            var soManyLi = document.getElementsByTagName("li");
            for(var i=0; i<soManyLi.length; i++)
            {
                soManyLi[i].style.transform = "rotate("+(-1*i)*6 + "deg) perspective(2000px) rotateX(0deg) rotateY(0deg) translate(0px, 1000px)";
            }
            setTimeout( next10,1000);
        }
        function next10() {
            var soManyLi = document.getElementsByTagName("li");
            for(var i=0; i<soManyLi.length; i++)
            {
                soManyLi[i].style.transform = "rotate("+(-1*i)*(-1) + "deg) perspective(2000px) rotateX(15deg) rotateY(-45deg) translate(-300px, 0px)";
                soManyLi[i].style.backgroundColor = "hsl(" + (29*i+180) + ","+(100-i) +"%,"+(100-i)+"%)";
            }
            setTimeout( close123,2000);
        }

        function close123() {
            var soManyLi = document.getElementsByTagName("li");
            for(var i=0; i<soManyLi.length; i++)
            {
                soManyLi[i].style.transform = "rotate(0deg) perspective(0px) rotateX(0deg) rotateY(0deg) translate(0px, 0px)";
            }
            setTimeout( open123,2000);
        }

        setTimeout( open123,2000);
    </script>',4,to_date('19/04/10','RR/MM/DD'),to_date('19/04/20','RR/MM/DD'));
REM INSERTING into FORPET.EVENTIMAGE
SET DEFINE OFF;
Insert into FORPET.EVENTIMAGE (FILENAME,EVENTSEQ,PRIORITY) values ('190416125837592_8_0.jpg',1,1);
Insert into FORPET.EVENTIMAGE (FILENAME,EVENTSEQ,PRIORITY) values ('190417114502532_8_0.jpg',8,1);
Insert into FORPET.EVENTIMAGE (FILENAME,EVENTSEQ,PRIORITY) values ('190416130153752_8_0.jpg',2,1);
Insert into FORPET.EVENTIMAGE (FILENAME,EVENTSEQ,PRIORITY) values ('190417133042362_8_0.jpg',7,1);
Insert into FORPET.EVENTIMAGE (FILENAME,EVENTSEQ,PRIORITY) values ('190416131644659_8_0.jpg',4,1);
Insert into FORPET.EVENTIMAGE (FILENAME,EVENTSEQ,PRIORITY) values ('190417133042362_8_1.jpg',7,2);
Insert into FORPET.EVENTIMAGE (FILENAME,EVENTSEQ,PRIORITY) values ('190416212941383_8_3.png',1,4);
Insert into FORPET.EVENTIMAGE (FILENAME,EVENTSEQ,PRIORITY) values ('190417133042362_8_2.jpg',7,3);
REM INSERTING into FORPET.HEALTHINFO
SET DEFINE OFF;
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (3,'Cat',' ''����� �ֿ�����'' �ȳ�','<pre>
����� ��ȣ�� �ʼ� ��������

''����� �ֿ�����'' �ȳ�

�� ����� �Բ� �ڼ��� ���÷��� Ŭ���ϼ���! > http://www.thecatclinic.co.kr/mycat/content/center_02.php
</pre>');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (5,'GuineaPig','����Ǳ׸� ���� ȯ�� �����ϴ� ��','�������� ����ϴ�. ����Ǳ� �� ������ �ּ� 40cm�� �̻��� �Ǵ� �������� �ʿ��մϴ�. �� ������ Ű�� ��� �ּ� 80cm�� �̻��� �������� �غ��ϵ��� �մϴ�.[1] �������� Ŭ ���� �����ϴ�. ū �������� �� ��Ұ� �ִٸ� ū �������� �����ϵ��� �մϴ�. ����Ǳװ� �ų� �پ�ٴϴ� ������ �� �� �ֽ��ϴ�.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (6,'GuineaPig','����Ǳ׸� ���� ������ ���Ź��','�ܴ��� �ٴ��� �ִ� �������� �����մϴ�. ���̾� �ٴ����� �� �������� ���̾ ����Ǳ��� ���� �߿� �������� �����Ƿ� �������� �ʽ��ϴ�. ���̾� ������ ����Ǳ��� �߿� Ȥ�� ���� �� �ֽ��ϴ�.[2]');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (7,'GuineaPig','����Ǳ׸� ���� ������ Ư¡','
������ ���� �ּ� 30- 40cm �̻��̶�� �Ѳ��� ��ġ�� �ʿ䰡 �����ϴ�. �潺�� ���� �������ٸ� �Ѳ����� �ʿ������� �ʽ��ϴ�. ������ �Ѳ��� �ִٸ� �������� ���� �������ų� �Ǽ��� ���� �ʵ��� ���� ������ ���� �� �ֽ��ϴ�.
�������� �߿ܿ� �����ؾ� �ϴ� ��Ȳ�̶��, ��̵��� �Ժη� ���� ���ų� �ͼ��� ������ ������ ���� �ʵ��� �Ѳ��� �ݵ�� �ʿ��մϴ�.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (8,'GuineaPig','���� �ִ� �������� ��� �� ����','���� �ִ� �������� ��� �� �����ϵ��� �մϴ�. 15cm �̻��� ���̿��� ����Ǳװ� �߶��ϸ� ����Ǳ��� ���̳� �ٸ��� ��ĥ �� ������ ���̰� �� ����Ǳ��� ��� ���� �������� �������ִ� ���� ���� �̻����Դϴ�. ����Ǳװ� ���θ� ������ ���� ���� �ִٴ� ���� �����ϵ��� �մϴ�. [3]');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (9,'GuineaPig','����Ǳ׿��� ħ�븦 ����','�߰� �ڸ� ���̸� �� ��Ƽ ���� ��� ����Ǳ׿��� ħ�븦 �������ݴϴ�. ���̰� ������ ���Ƶ��̹Ƿ� ������ ���� ���� ��� ��� �ּ� �����Ͽ� �� �� �̻� ��ü�� �ֵ��� �մϴ�. �ﳪ���� �ҳ��� ������� ���� ħ�븦 �̿��� ��� ȣ�� ��ȯ�� ����ų �� �����Ƿ� �̸� ������� �ʵ��� �մϴ�. ��ó����� ���� ����ϱ� �����ϳ� ������ ���ϰ� �� ��� �̸� ����� ������ ����ϵ��� �մϴ�. ���̸� ����ϴ� ���� ���� �����մϴ�.[4] ħ�� �ؿ� �ε巯�� �ø��� ������ ��䳪 ���Ͽ� (UHaul) �е峪 �ٸ� �������� ��� ħ�븦 �ٲ��� �� �� ���� �ٲ��ָ� ���� û�Ҹ� �����ϰ� ������ �� �ֽ��ϴ�. ��並 �̿��ϴ� ��� ���� �ٲ��ֵ��� �մϴ�.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (10,'GuineaPig','�������� �� ���� ��Ҹ� Ž��','�������� �� ���� ��Ҹ� Ž���մϴ�. �Ϸ翡 �������� ���� ���� �ð��� ������ ���� �������� ��ġ�ϴ� ���� �����ϴ�. �Ž��̳� ħ��, �������� �������� ������ �ð��� �����Ƿ� ���⿡ �������� ��ġ�ϴ� ���� ����غ��ϴ�. ������� ���� ���� �� ���� ����Ǳװ� ������� �����ϴ� �Ⱓ�� �ٿ��� �� �ֽ��ϴ�.[5]
�������� �аų�, ���ų�, ġ�� �ʵ��� �����մϴ�. ����Ǳװ� ū ��ó�� ���� �� �ֽ��ϴ�.
�������� �����忡 ��ġ���� �ʵ��� �մϴ�. ������ ������ �ſ��� ����Ǳװ� �ǰ��� ��ġ�ų� ���� ��� ����� ���� �� �ֽ��ϴ�. ���� �������� ��� ���� ���� �µ����� ���ϹǷ� ����Ǳװ� �����⿡ ���� �ʽ��ϴ�.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (11,'GuineaPig','����Ǳ״� �µ��� �ΰ��� ����','
����Ǳ״� �µ��� �ΰ��� �������� �����մϴ�. ���ǻ���� ��κ� ����� �� ������ ���� �ְԲ� ����Ǳ׸� �ǳ����� �⸣�� ���� ��õ�մϴ�. �޺��� ��Ģ������ �ؾ��ִ� ���� ���ٴ� �ǰߵ� �ֽ��ϴ�.
�����̰� �ִٸ� ����Ǳ׸� �߿ܷ� �������� �ʵ��� �մϴ�! �ǳ��� �ǿ� Ȱ�� �ð� ������ ��� ������ ���� �� ���� ���� ���ο� ���� �ٸ��� ���ؾ� �մϴ�. ���� ���ǻ翡�� �ش� �������� �⸣�� ����Ǳ׿��� ������ �ǳ�/�ǿ� Ȱ�� �ð��� ���� ��� �޵��� �մϴ�.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (12,'GuineaPig','�� ���� �� �� �̻��� �Ծ�','�ܷο��� Ÿ�� �ʵ��� �� ���� �� �� �̻��� �Ծ��մϴ�. ����Ǳ״� ���� �����̹Ƿ� ���ᰡ �ʿ��մϴ�. ������ �ڸ�, Ȥ�� ���Ÿ� �Ծ����� ������ �Ծ��� ����Ǳ׳��� �ο��� ����ų �� �����Ƿ� �Ծ� �� �����ϵ��� �մϴ�. ���� ����Ǳ׿� ���� ����Ǳ׸� �Ծ��ϸ� ¦���⸦ �� ���ɼ��� �ֽ��ϴ�. ���� ����Ǳ׿� �Բ� �ð��� �������� �մϴ�. ��ȸ���� ������ ȥ�� �������θ� ������� ���� ������ �ֽ��ϴ�. ���� ����Ǳ� �� ����, Ȥ�� �߼�ȭ�Ǿ��ų� �Բ� �ڶ� ���� ����Ǳ׸� �� ������ �Ծ��ϴ� ���� �����ϴ�.
���� ����Ǳ׸� ��� �Ծ��ص� ������ ¦���⸦ �� �� ������ �����մϴ�. ������ �ӽ��� �� �� ���ٸ� ���ư� ��� �и��ϰ� ������ �ޱ� ���� ���ǻ翡�� �������ϴ�.
����Ǳ״� �߼�ȭ�� �ϼ��� ���� ���� ������ ��ü�� �淯�� �����ϴ�. �߻� ����Ǳ״� ������ ���� ��Ȱ�մϴ�. ����Ǳ׸� ���� ���� �Բ� �⸣�� ����Ǳװ� ���� ��� Ȱ���ϰ� �ູ���ϴ� ���� ������ �� �ֽ��ϴ�. ������ ����Ǳ׸� ���� ���� �⸣�� �ȴٸ�, �׸�ŭ ���� ������ Ȯ���� �־�� �ϴ� ���� ���� ���ô�!
����Ǳװ� �ο��� �ʵ��� ó�� �Ұ� ��Ű�� �� ����� �ð��� �Ⱓ�� ���̵��� �մϴ�.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (13,'GuineaPig','����Ǳ׸� �������','����Ǳ׸� ����̵��� �մϴ�. ������ ���� �ɾ� ����Ǳ׿��� ���� �̴ϴ�. �̷��� �ð��� ������ ����Ǳװ� �� ��Ҹ��� ������ �ͼ����� �� �ֽ��ϴ�. ����Ǳװ� �� ���翡 �ͼ����� ���� ���δٸ� �������� ���� ���� �־� ���ϴ�. ����Ǳװ� �� ������ ���� ���ٵ�� �ݴϴ�. ������ ������ ���� �ʴ� ����Ǳ׸� ���� �̸����� ���� �ʵ��� �մϴ�
������ ����� �Ʒ��� ���ѵ� �����ϴ�. ������ ������ �����ϵ��� �մϴ�. ����Ǳװ� ���ΰ� ������ ������Ű�� ������ ������ �ֵ��� �մϴ�.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (14,'GuineaPig','�ż��� ���� ����� �����մϴ�','�ż��� ���� ����� �����մϴ�. �ֿϵ����� �⸥�ٸ� �ż��ϰ� ������ ���� �׽� �����ϴ� ���� ���� �߿��ϴٰ� �ص� ������ �ƴմϴ�. ������ �ȿ� ���׸��̳� ������ ��ġ���ݴϴ�.[6]
������ ��ġ���ָ� �� �� ����� ���� �� ������ �� ���ɼ��� �ֽ��ϴ�. ���׸��� �̷� ���ɼ��� ������ ����Ǳװ� �� �� ���� ����� �� �ֽ��ϴ�. ������ ���� ħ�븦 ����Ѵٸ� ���׸��� ����� �� �� �ִ� ���� �����մϴ�.
���� ���� ������ ����Ǳ� �� Ȥ�� �䳢 ������ ���� �ֵ��̿� ���� �޸� �����Դϴ�.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (17,'GuineaPig','���� Ȥ�� �� �׸��� �׻� �����ϰ� ����','����Ǳ��� ���� Ȥ�� �� �׸��� �׻� �����ϰ� �����ϰ� ���� ���� �ٲ��ݴϴ�. ������ ���� ���Ұ� ���� �ణ �ְ� ���� �����ָ� û���� �� �ֽ��ϴ�. ������ ������ ���� �� �ִ� ���� ���� �������ݴϴ�.
������� ����Ǳװ� ���� �Ǵ� ���� ���븦 û�����ݴϴ�. �� �帧�� ���� �� �ְų� ������ ������ �� �ִ� ���� ���س� ������ ���������� ������ Ȯ���ϸ� ������ �۾��ݴϴ�.
�� ���� �������� �޺��� ��ٸ� �� �޺����� ���� ���� �ȿ� ���� ���� ���� �� �ֽ��ϴ�. ������ �������� õ�� ������ Ȥ�� �Ͼ �� �ִ� �һ�縦 �����ϵ��� �մϴ�.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (18,'GuineaPig','���� �����ϰ� ����','���� ��Ÿ�� �˾��̳� ������ ������ �ʵ��� �մϴ�. ��Ÿ�� ���� ȿ���� �̹��� �Ӵ��� ����Ǳװ� ���� �� ���ð� �� ���� �𸨴ϴ�.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (19,'GuineaPig','���ʴ� �׽� �����մϴ�.','���ʴ� �׽� �����մϴ�. ����Ǳ״� ��� �����̹Ƿ� ū������� ����Ǯó�� �׻� ��� ���� �� �ִ� ���ʰ� �ʿ��մϴ�. �׷��� ������ ��ȭ���� ������ ������ �ֽ��ϴ�. �ٸ� ���ʿ� ���� �� ������ �����Ƿ� ���ʸ� ������ �� �ļ� Ǯ�� �װ� ����� Ǯ�� ��ī�ο� ���� ���� ������ �ʵ��� �մϴ�.
���ְ��ڸ�(������) Ǯ�� 6���� ������ ���� ����Ǳ׳� �ӽ��� ����Ǳ� Ȥ�� �ǰ� ���°� �� ���� ����Ǳ׿��Ը� ���̵��� �մϴ�. ���ְ��ڸ� Ǯ���� Į���� ���� �ǰ��� ����Ǳ׿��Դ� �ʿ����� �ʽ��ϴ�.
ū������� ����Ǯ, ���׷����� 6���� �̻��� ����Ǳ׿��� ���̵��� �մϴ�. �������� �������� ���� �ΰ� �����޽��� �ϵ��� �մϴ�.
���ʰ� �����ϸ� ���� ������ ������ ������ �޾ƾ� �� ���� �ְ� ��ȭ���� �������� GI ��ü�� �Ͼ ������α��� �̾��� �� �ֽ��ϴ�.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (20,'GuineaPig','���� �ż��� ��ä�� �����մϴ�. ','<pre>
���� �ż��� ��ä�� �����մϴ�. �ʷϻ� ���ĸ� ä�Ұ� ����Ǳװ� ���� �Դ� ������ 20% ������ �����ϵ��� �Ű澹�ϴ�. ���λ��̳� Į��, ��Ÿ�� A�� ���� ������ ä�Ҹ� ���� ���̸� ����Ǳװ� ��Ż�� ���� �ǰ��� ġ������ ���縦 �� �� �����Ƿ� �����մϴ�. �������� ����Ǳ� ���� Ȩ�������� ���� ���ǻ翡�Լ� ����Ǳ׿��� �Կ��� ������ ���ϰ� ä�� ������ Ȯ���ϴ� ���� �����ϴ�.[7]
����Ǳ׿��� ä�Ҹ� �� ���� ��Ÿ�� C �������� ���� ä�Ҹ� �ֵ��� �մϴ�. ��Ÿ�� C�� ����Ǳ� ü������ ������ �Ұ����� ��Ÿ���̰� ��Ÿ�� C�� �ʹ� ���� ��� ������ ���� ������ �Ÿ� �� �ֽ��ϴ�.
����Ǳ׿��� ���� ä�Ҵ� ��� ä��, ������, ���, �ٱ⳪ ������ ������ �丶�� ����, ����, �Ľ���, ����, �� ����ݸ� �ҷ�, �ҷ��� �ñ�ġ�� �ϵ����� �ֽ��ϴ�. ����Ǳ��� ��ȭ���� ������ ���� �ʵ��� Ư�� ä���� ��� �������� �޿��ϵ��� �մϴ�. �����̳� ��� ������ ��� ����Ǳ׿��� �������� �޿��ص� ������ ������ �굵�� ����Ǳ� �ǰ��� �ظ� ��ĥ ���� �����Ƿ� �ҷ��� ���� �޿��ϵ��� �մϴ�.
����Ǳװ� ä�Ҹ� ���� �ʴ´ٸ� ���� �������� ��� �޿��ϵ��� �մϴ�. ����Ǳ״� ��ü���� ��ȣ�� ��ȣ�� �޶� ä�Ҹ� ���� �� �ֽ��ϴ�.
����Ǳ׿��� ����߳� ������, ��ǳ��, �ݸ��ö��, �ٴ�, ���ڳ� ���� ���� �ʽ��ϴ�.
����Ǳ� �� ������ ä�� �� �� ������ �޿��մϴ�. �Ϸ� �з��� ä�Ҹ� �� ���� ������ �޿��ϴ� ���� �����ϴ�. ��� ������ Ư�� �� ����Ǳ״� �� ���� ū �Ļ縦 �ϴ� �ͺ��� �Ϸ� ���� ���ݾ� �Դ� ���� ��ȣ�մϴ�.
</pre>');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (21,'GuineaPig','�縴�� �ʹ� ���� ���� �ʵ��� �մϴ�. ','
����Ǳ� �Ĵ����� �縴�� �ʹ� ���� ���� �ʵ��� �մϴ�. �ǰ��� ����Ǳ׿��� ���� ��ȭ�� �縴�� �޿��� �ʿ�� �����ϴ�. ����Ǳװ� �̹� �縴�� �ͼ������ٸ� ������ �� �ǰ��� �Ĵ����� �ٲ㰡���� �մϴ�. �ٲٴ� �Ⱓ�� �ܰ�� ���� ���ǻ翡�� ����մϴ�.
�縴�� �޿��Ѵٸ� ���� ǰ���� �縴�� �����ϵ��� �մϴ�. ���ְ��ڸ��� ������ �� �縴�� �ӽ��� �� ����Ǳ׳� ���� �ɸ� ����Ǳ�, Ȥ�� 6���� ������ ���� ����Ǳ׿��Ը� ���̵��� �մϴ�. 6���� �̻��� ����Ǳ׿��Դ� ū������� ������ �� �縴�� �޿��մϴ�. ��������(Oxbow)�� Ŭ������(Kleenmama) ȸ�翡�� ���� �縴�� �����ϴ�.
����Ǳ׿��� �䳢���̳� �ٸ� �ҵ��� �� �縴�� ������ �ʵ��� �մϴ�. ���� ���� ���� �ʿ��� ����ҳ� ��Ÿ���� �ٸ��� ������ �ٸ� �ҵ��� �� �縴�� ����Ǳ׿��� �طο� �� �ֽ��ϴ�.
�縴�� �޿��Ѵٸ� ���� ������ �ʵ��� ���� ������ ���� �縴�� �޿��ϵ��� �մϴ�. �÷��� �縴�� �����ϵ��� �ϰ�, �縴 �ӿ� ���� �����̳� ������, ���� �ִ� ����� ��������� ������ Ȯ���ϵ��� �մϴ�. �縴�� �޿��� ���� �縴�� �޿��ϵ��� �մϴ�.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (22,'GuineaPig','�ٸ� ������ ������ �ʵ��� �մϴ�.','����Ǳ׿��� �ٸ� ������ ������ �ʵ��� �մϴ�. ����Ǳװ� �ʿ��� ������ �縴, ����, ȭ�� ��ǰ ó���� ���� ���� �ż��� ������ Ǯ�� �ż��� ä�� �����Դϴ�. �̿��� �ٸ� ������ �ִ� ���� ����Ǳ��� �ǰ��� �ǿ����� ��ĥ �� �ֽ��ϴ�.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (23,'GuineaPig','���������� ���� �ٴڿ��� �� �ð��� ������ �ݴϴ�','���������� ���� �ٴڿ��� �� �ð��� ������ �ݴϴ�. ���� ������ ����Ǳ׸� Ǯ���ְ� ����Ǳ׸� ���� �ʵ��� �����մϴ�. �ٴ��� �����ϰ� û���� �� �ȿ� �츮�� ���ְų� ���� �ʹ� ���ų� ���� �ʴٸ� �߿ܿ� �츮�� ġ�� ����Ǳ׸� Ǯ���ݴϴ�.
����Ǳװ� �پ� �� �� �ֵ��� ����� ������ �������ݴϴ�. ����Ǳ��� �ູ���� �־� �̷��� �ٳ� �� �ִ� �ð��� �ſ� �߿��մϴ�.
������ �� ���� ������ �峭���̳� �ͳε� ��ġ�� �ݴϴ�.
����Ǳ׸� �߿ܿ��� ��� ���شٸ� Ư���� �� �Ű��� ������ �մϴ�. �߿ܿ��� ����Ǳ׸� Ǯ���� ��� ����Ǳ׸� �׻� ���Ѻ��� ���� �����ϴ�. ���� ��ģ ���� ƴ ���̷� �������� ������ ���� ���쳪 �� ���� �����ڰ� �ƹ��� �𸣰� ���� ����Ǳ׸� ������ �� �ֽ��ϴ�.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (24,'GuineaPig','�峭���̳� ������ �׼������� ����� ����','����Ǳ׿��� �峭���̳� ������ �׼������� ����� �����մϴ�. �ڽ��� ���̹�, ��Ʈ�� ��, ���� ������ ���� �峭���� ���� �� �ֽ��ϴ�. â�������� �����ϸ� ������ ���� ã�ƺ� �� �ִ� ���� �峭���� ����� ���ϴ�.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (25,'GuineaPig','�Ϸ翡 �� ���� ����Ǳ׿� ����ֵ��� �մϴ�.','�Ϸ翡 �� ���� ����Ǳ׿� ����ֵ��� �մϴ�. ����Ǳ״� ��ȸ���� ������ �߻������� ������ ���� ��Ȱ�մϴ�. ���� �ڵ鸵�� �ϸ� ����Ǳ��� �ູ���� ��������մϴ�. ����Ǳ׿��� �ð��� �� ������ ���� �ɰ�, �Ⱦ��ְ�, �Ȱ� ���ƴٴϰ� ���ٵ�� �ֵ��� �մϴ�. ����Ǳ׿��� ���� �ð��� ���� ���� �����ϴ�.[8]
� ���󿡼��� ����Ǳ׸� �� ������ �Ծ��ϴ� ���� ������ �����Ǿ� �ֽ��ϴ�. ����Ǳ״� ������ �Ծ��ϵ��� �����Ǿ� �ֽ��ϴ�. ����Ǳ״� �ٸ� ����Ǳ׿� �Բ� ���� �� �� �ູ���մϴ�.
����Ǳװ� ȥ�ڼ� �ܷӰ� �ڶ� ��� �Ŀ� �����̳� ������� �� ����� ������ ���� ���� �ֽ��ϴ�.
����Ǳ״� �ȶ��� �����Դϴ�. �޴ٸ��� ���⳪ ����, ���� �� ���� ���� Ʈ���� ����ĥ �� �ֽ��ϴ�.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (26,'GuineaPig','�������� �κ������� û���ϴ¹�','�������� �κ������� û���մϴ�. ����Ǳ״� ���� ������ �����̶� �����Ͽ� 2��, �輳���̳� ���� ���� ���� ä��, ������ û�����ְ� ���ʸ� �����ָ� �˴ϴ�. �����Ͽ� û���ϴ� �� ��Ʋ�� ���صθ� �����ϴ�.[9]');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (27,'GuineaPig','�����Ͽ� �� �� �������� �Ϻ��ϰ� û��','�����Ͽ� �� �� �������� �Ϻ��ϰ� û���մϴ�. ħ�� ������ Ű��� ����Ǳ��� ���� ���� ��ü������ �� ���� ���� û���� �� ���� �޶����� �˴ϴ�.
�����⳪ �Ȱ�, ħ��, ���İ� �峭���� ��� ���������� ���� ���� ���� ������ û���� ���� û���ϰ� ���� ���� �������� �մϴ�. �ٽ� �������� ���� ���� ���ǿ��� ����Ǳ׿� �ױ� �������̸� �ѷ��ְ�, �ױ� �������̰� ������ �ʰ� �����ϰ� ���� �ִٸ� �̸� �۰� �������� �ֵ��� �մϴ�. ����� ���� û�ҿ�ǰ�� ������� �ʵ��� �����մϴ�.
������ ������ ����Ǳ� �� �ױ� �������̸� ���� Ÿ���� �۾��ִ� �͵� ������ ���� �޺��� �̿��� û���ص� ������ �ڿ������� ���� �� �ֽ��ϴ�. �� �������� �߿ܿ� �ΰ� ��� ȯ�⸦ ���ѵ� �����ϴ�.
ħ�븦 ��ü�մϴ�. �Ź����� ħ�� �ؿ� ��� ������ ����ϰ� �ϴ� �͵� �����ϴ�. ������ �Ź��� ��ü�� ����Ǳװ� ���� �طο� ��ũ�� ������ ������ �־� ħ�� ���� �������� �ʽ��ϴ�.
����Ǳ׿��� ���� ������ ħ�� ���� �ɾ� ������(CareFresh)�� ������ ������ ���� �ø����� ���� ���� ��ó��� ��� ���� ����ָ� �����ϴ�.
���������̳� ����� ħ�� ���� ������� �ʽ��ϴ�. �ﳪ���� �ҳ��� ����� �طο� ����� �����ϰ� �����Ƿ� �� ���� ���ϵ��� �մϴ�.
�������� �°� ����� ���� �ڸ� ������ �ø��� �ؿ� ��� ������ �Ȱ����� �̿��� �� �ֽ��ϴ�. �� �Ȱ��� ���� ���� �����⸸ �о� ������ ���� ������ �� �ֽ��ϴ�. ������ ���� ���� �ǿ� ����Ǳ��� ���� �ɷ� ��ĥ ������ �����Ƿ� ����� ������ Ȯ���ϵ��� �մϴ�.
����Ǳװ� �� ���� �ݵ�� �������ֵ��� �մϴ�. �꼥���� �̱۷縦 �����ϰų� ���ʸ� �β��� ��� ����Ǳװ� �İ�� �� �ְ� ���ݴϴ�. ���ʸ� �̿��� ��� ����Ǳװ� �İ�� �� ������ Ǯ ���� ����Ǳ��� ���� �� �� �ִٴ� ���� �����ϵ��� �մϴ�.
');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (28,'GuineaPig','3, 4�ֿ� �� ���� ������ �߶��ݴϴ�','
3, 4�ֿ� �� ���� ������ �߶��ݴϴ�. 

���� ������ �˰� ���ߴٸ� ���������� ���� �ڸ� ���� �ӻ��� Ȯ���� ���ϴ�. �ʹ� ���� ������ ������ �߶��ٸ� ���鿡�� �ǰ� �� ���� �ֽ��ϴ�. 

���� �Ŀ���� ������ �������� �������ݴϴ�.[10]
���� �ڸ��⿡ �ڽ��� ���ٸ� �������� ������ �ڸ��鼭 ���ǻ翡�Լ� �ùٸ��� ������ �ڸ��� ���� ��쵵�� �մϴ�. 

���ǻ糪 ����ȣ�簡 ������ �ڸ��� ����� �����ϸ鼭 ���ǻ����� ���� �� �ֽ��ϴ�.
');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (29,'GuineaPig','����� ���� ��Ű�� �ʽ��ϴ�.','����� ���� ��Ű�� �ʽ��ϴ�. ����Ǳ׸� ��� ��Ű�� ���� ������ �� ���� ������ ����� �ϸ鼭 ������ �Ͼ�� �ڿ������� ������ ������ �� �����Ƿ� ����� �� �⿡ ���� �� ������ ��Ű���� �մϴ�.[11]');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (30,'GuineaPig','���� ������ ������ Ȯ���մϴ�.','
���� ������ ������ Ȯ���մϴ�. ���� ����Ǳװ� ���̴� ������ ������ �ִ��� Ȯ���մϴ�.[12] ���� ������ ���δٸ� ����Ǳ� ���� ���� ������ ������ ������ ġ�Ḧ �޵��� �մϴ�. ����Ǳ״� ������ �ſ� �� ����Ƿ� �׻� ���̴� �����̳� �Ŀ忡 �̼��ϰԳ��� �޶��� ���� ������ �׻� Ȯ���ϵ��� �մϴ�.
�� ���������� Ű��� ����Ǳ׵� ���̿��� ���� ������ �� �����Ƿ� ����Ǳ׵��� �׻� ��� ���� ���� �ް� ġ�� �޵��� �մϴ�.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (32,'GuineaPig','����Ǳ׿� �䳢�� �Բ� �⸣�� �ʽ��ϴ�','����Ǳ׿� �䳢�� �Բ� �⸣�� �ʽ��ϴ�. �䳢���Դ� ����Ǳ׿��� �طο� ���׸��ư� �־� ����Ǳ� �ǰ��� ���ϰ� �� ������ �ֽ��ϴ�. �䳢�� ����Ǳ׺��� �ξ� ũ�� ���� �� �����Դϴ�. �䳢�� �峭������ ������ �� ���� ����Ǳװ� ����� �̸� �� �ֽ��ϴ�.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (33,'GuineaPig','����Ǳ��� �����Ը� ���� �����մϴ�.','����Ǳ��� �����Ը� ���� �����մϴ�. �����԰� 50g ���� ���� ���� ���� �ڿ������� ���̳� �� �̻����� ������ �Ͼ�ٸ� ġ�� ������ �ٸ� �ǰ� ������ �ִ� ���� �ƴ��� ���ǻ翡�� ������ ������ �޵��� �մϴ�. ������ �������� ���� ������ �̿��ϴ� ���� ���� �����ϴ�.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (34,'Rabbit','�䳢�� �Ϲ����� �������','
�䳢 �߼�ȭ��Ű��. ���� ������ ã�� �䳢 �߼�ȭ ������ �޵��� ����. ������ ������� �߼�ȭ ������ ���� ������ ����.[26]
�߼�ȭ ������ ���� �䳢�� �ڽ��� ���� ǥ�ø� �ؾ��ϴ� �屸�� �� ������ �ʱ� ������ ���� ���� ������ �輳�ϴ� ������ ������ �ʴ´�.
�䳢�� ���ݼ��� �����ϰ� �����Ѵ�.
�䳢�� ���� ���̰� ��鼭 ���� ����� ���� �߻����� �������µ�, �߼�ȭ ������ �� ������� �����ش�.
���� �䳢�� �����ϰ��� �Ѵٸ� �߼�ȭ ���� �ܰ踦 �ǳ� �ڴ�. ���� �䳢�� ��Ȱ�� �� �ִ� ����� ������ �ְ� ������ ���Ĺ��� ���� �� �˰� �ִٸ� �߼�ȭ ������ ���� �ʾƵ� ������.[27] �䳢�� �ǰ��ϰ� ������ ���� �� �ִ��� Ȯ���ϱ� ���� �ֱ������� ���� ������ �湮�ϵ��� �Ѵ�.


�䳢���� ����� �峭�� �����ϱ�. õ�������� �䳢�� �ô� Ȱ���� �����ϱ� ������, ���� ���� �������� �ʵ��� ���� �� �ִ� �峭���� �����غ���. ���� ��� �峭���� �������� �ʾƵ� ������, ���̻��� �����̳� ������, ȭ�м����� ���� ó������ ���� ���� ���� � ����� ���� �峭���� �� �� �ִ�.[28]
�� ������ �峭���� ���Ѵ�. �䳢�� �� ������ ��Ű�� ������� ���� ������ �ִ�.[29]

�䳢�� ����ֱ�. �䳢�� Ȱ������ �����̸� ���̸� �ſ� �����Ѵ�. �䳢�� �Բ� �� �� �ִ� ������ ���� �䳢�� ����ְ�, �䳢�� �ǰ��� ���Ѻ���.[30]
���� �峭�� ���� ���� �����ΰ� �䳢�� ���� ���� �Ѿ�߸� �� �ֵ��� �غ���. Ȱ������ �䳢�� �̿� ���� ������ �����Ѵ�.
�Ϻ� �䳢�� �ڽ��� �Ѿ�߸� �峭���� ����� �־���� ���� �����ϱ⵵ �Ѵ�.
�䳢�� ���� ��ֹ� �ڽ��� ������. �䳢�� Ž���ϴ� ���� �����ϱ� ������ ��ֹ� �ڽ��� �䳢�� ȣ����� �ڱ��� �� �ִ�. �Ź����� ����ó�� �䳢���� �ذ����� �ʴ� ��Ḧ ����غ���.[31]
�䳢�� ���� ��� �޽��� ���� �� �ֵ��� �Ѵ�. �䳢�� ���ӿ� ��̸� ������ �����ϵ��� �������� �ʴ´�.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (35,'Hedgehog','�Ϲ����� ����ġ Ű��� ���','����ġ�� �������� �ִ� ����� ������� ������� �˸´� �ֿϵ����Դϴ�. ������ī�� �߻� ���� �� ���� ȥ���Ǿ� ������� ������ĭ �Ǳ׹� ����ġ�� ������� ������� ������ �ȶ��ϰ� ģ���ϰ� �찡�� �ֿϵ����Դϴ�. ��� �ֿϵ����� �׷��ϵ� �Ծ��ϱ� ���� �ڽ��� ��Ȱ ����� ����ġ ���� ����� ���� �� ����ġ�� ���� �˾ƺ��� ���� �����ϴ�. ����ġ�� �������� ����ġ�� �Ծ�� �ϴ� ����� �������� ����� ������ ����ġ�� �Ծ��� �� �ִ��� �� ������ �� �ֵ��� �սô�.


�ڽ��� ��� �������� ����ġ�� Ű��� ���� �չ����� Ȯ���մϴ�. ����ġ�� �̻� ������ ���ֵǾ� ��� �ִ� ���� �ֿ� ���� ����ġ ������ ������ ���ɼ��� �ֽ��ϴ�. ��� ���������� ����ġ������ ���� ������ ���� �ְ� ��� ���������� Ư�� �㰡�� ������ ������ ������ �� �ֽ��ϴ�. ��� �ִ� �������� �̻� ������ �ֿϵ����� �����ص� �������� ���� ���� ��ü�� ��ġ ��ü�� ������ Ȯ���غ����� �մϴ�.
���� ���� ���� ������ �˾ƺ��µ� ������ �ʿ��ϰų� �̻� ���� �Ծ��� ������ �������� ����ġ���� ������ ������ ã����� �Ѵٸ� ���� ���� ��ü�� ����ġ ���� ��ü�� ������ ������ ���մϴ�.[1]

');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (36,'Turtle','���κ��� ������� �ֿϵ��� �ź���','�ź��̴� ���� �ֿϵ����� �� �� �ִ�. ������ ������ �Ϳ��� �ð��� ����� ���� �ȴ�. �ź��̴� ���ϰ� ä��, ����� ����, ������ ���������� �Դ´�. �ź��̸� ����� ������ �ʹٸ� ���� � ������ �Կ��� �ϴ���, �׸��� �󸶳� ���� �Ļ縦 ��� �ϴ����� �˾ƾ� �� ���̴�. ��� ���̷��� �ź����� ������ ���� �޶��� �� ������ �Ϲ����� ��ħ�� ������ �̸� ������ ���� �ִ�. �ٸ� �ź��̰� Ż�� ���� ���� �ȴٸ� ���� ���ǻ翡�� ��Ȯ�� ���̿� ������ ������ ����� ���� �����ϴ�.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (37,'Bird','�޹����� �ϼ� ������','
����޹��� ������ Ȯ���Ѵ�. ������ �θ� �ٷ� ������ ���� �ִ� �Ǻ��̴�.[1] ����޹��� �౸���� ������ ��ġ���ֱ� ������(�� ���� ���� ���۰��� �����) ã�Ⱑ ����. ��κ� ����޹��� �θ��� ������� ������, ������ ���� �ϼ��� ���� Ư���� ���� ���.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (38,'etc','���� �ö�Ÿ�� ����','���� �ö�ź��. �¸��� ù������ �� � �ö�Ÿ�� ���̴�. ���� ������� �� � �ö�ź�ٴ� �� ��ü�� �η����ϴµ� ħ���ϰԸ� �ϸ� �ƹ� ������ ���� ����ֱ���� �ϴ�.
�¸� �ʺ����, �¸��븦 ���� �͵� ������. �¸���� ���� ������ε� ���� �ö�Ż �� ��� �ö� �� �ִ�. ó������ �Ƕ����� ���ϰ� ���� �ö�Ÿ�� ����� ���� �ʴ�. [1]
���ڿ� �� ���� �÷����� ���� ���� ���� �ø���. �ٸ� �� �ٸ��� ��ü ���� ������ �Ѱ�, �ٸ��� ���� ���ȴ� �ڼ��� ���� ��, �� �ߵ� ���ڿ� �����.
�ʽ��ڴ� �� �Ʒõ� ���� �����Ѵ�. ���� ��ģ ���� �ö�Ÿ���� �ϸ� ���� ���ų� �̵��ϰų� �ؼ� ���� ����� �ص� ���� ���� �ִ�. ���̰� �� �� �߿��� �����ϰ� �� �� ��� ���� ����.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (39,'Dog','�� �Ʒ� �غ��ϱ�','
������ ��Ȱ ��Ŀ� ������ �� �����ϱ�. �� ���� ������ ���踦 ����, ���� ������ �����ϴ� ���� �� ���� �� ������ ���� �پ��� ���� �� �ϳ��̴�. ���� ��� ��Ȱ��Ŀ� �´� ���� �ִ� �ݸ� ��� ���� ������ �䱸�ϴ� �Ϳ� ������ �ʴ´�. ���� ���, ����� �����ϰ� �޽��� ���� ����̸�, ���Ӿ��� ¢���� �������� ���ĳ��� �� ���� �׸�� Ű��� �ȵȴ�. .[2] ��� �Ϸ� ���� ���� ���� ��ũ���� �ɾ� �ֱ� �����ϴ� �ҵ��� ����. [3] �پ��� ���� ���� ���ݰ� ���� ������ �����Ѵ�. �ֺ��� ���� Ű��� ����鿡�� Ű��� �ִ� �� ���� ������ �����.
��κ� ���� ������ 10-15���̹Ƿ�, ���� Ű��� ���� ���� �ð��� ���� �̷������ �����̴�. �� ���� ������ ������ ��Ȱ��İ� �� �¾ƾ� �Ѵ�.
���� ������ �ٸ��� �ʾҴٸ�, ���� 10�� �̳��� ���̸� ���� ������ ����Ѵ�. ��� ������ ���� ���ȿ��� ���̿� �Բ� Ű��� ���� �������� �ʴ´�.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (40,'etc','���� �ܽ��͸� ġ���ϴ� ���','�ֿϵ����� ������ ������ �����̴�. Ư���� �ܽ��ʹ� �ſ� �۰� �����������, �ǰ��� ���� ������ �����Ǳ� �����̴�. ������ �ܽ��Ͱ� �۴ٰ� �ؼ� �����ų� �����Ǿ��� �� Ư���� ȸ������ ���� ���� �ƴϴ�. ������ �� ������ �����ϰ�, ���� �ܽ��͸� ���� �ϱ� ���ؼ� ���� ������� �������� ����.


�����Ѵ�. �ܽ��Ͱ� ������ �� ��Ȳ���� ���� ���̴�. �ǰ��� ��ã���� ���� �� �Ϲ������� �� �� �ִ� �� ���� �ϵ��� �ִ�. �ݵ�� �ܽ��͸� �����ؾ� �Ѵ�. ���� �ܽ��ʹ� ���� ��ü�� �±⸦ �Ҿ ������ ������. �츮�� ������ ���� ���� ������ �ٴ��� �����ϰ� ���� �� �ִ�. ���� �߰ſ� ������ ���ǿ� ���Ƽ� �ܽ��Ͱ� �� ������ ���� ������. �����ڽ� �ȿ��� �̰��� �� �� �ܽ��Ͱ� ����ġ�� �ʵ��� �ſ� �����ؾ� �Ѵ�.


�ܽ��͸� ���� �Ŀ��� �׻� ���� �ľ�� �Ѵ�.
����� ���� ����� ���Ѽ��� �� �ȴ�. �ܽ��Ͱ� ���� ������ ���� ���� �� �ִ�. ��ſ� ģĥ�� ��� �� �ȿ��� �ܽ��Ͱ� �߱��� ���ش�.
���� �ܽ��Ͱ� �Ҹ��� �����ų� �̻��� �Ҹ��� ���ٸ�, �������� ���� �ʰų� �ǰ��ϴٴ� ���̴�. ���߿� �ܽ��Ͱ� �� ������� �� ġ���ϵ��� ����.
�ڱ� ������ ���̰� ���� ���� �ܽ��Ϳ��� ���ϰ� ��Ÿ���� ������. ������ ���߰� �ſ� ������ ����, ���ı⿡�� ȭ�� ���� ���ͼ� ���ڸ��� ����� ���� ���̴�. �ڱ��� ������ �����̹Ƿ�, ���ǻ�κ��� �׻����� ó�� �޾ƾ� �Ѵ�. �װ͵� ������ ������, ����� �ǰ������� ���ؼ��� ���Ҹ� �����ϴ� ���� ���� ����. �ڱ� ������ ġ����� ������ ġ������ �� �ִ�. ������, ������ ���� �δ��� �����Ƿ�, �־��� ��Ȳ�� ����ϵ��� ����.[9]
������ �ϴ��� �ܽ��Ͱ� ���� �� �ִ�. ������ ���� ������. �ּ��� ���ߴٸ�, ����� �߸��� �ƴϴ�.
');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (41,'Dog','������ ����Ÿ�, ������ �����?','<pre>
�ȳ��ϼ���.
Ư���� ����ö���� ��������
����Ÿ��� ���� ���Ⱑ �����.
��Ȥ �����ϴٰ� �����Ǽż� 
������ ���Ǹ� �Ͻñ⵵ �ϴ�����.
������ ������ ����Ÿ��� �����鿡
���ؼ� �˾ƺ����� �ϰڽ��ϴ�.
</pre>

<h1>����</h1>

<hr>

<img src="http://192.168.20.229:9090/forpet/resources/upload/infoImage/dog1.jpg" width="100%"/>

<pre>
�������� ���� �긮�� �����
���� �� �����Ű���?
�������� ������� �޸� 
������ ���� ������ �߹ٴڰ� 
���� ���� ���⸦ ������ ���ϴ�.
���� ü���� �����ϴ� �ڿ�������
�������� �������� ������ ���� ��
����Ÿ��� ������ ���� �� �ִ�ϴ�.
�ÿ��� ������ ���� ���ֽð�
������ �����ϰ� ���ֽô� ����
������ �� �� �־�� :)
</pre>


<h1>����� ǥ��</h1>

<hr>

<img src="http://192.168.20.229:9090/forpet/resources/upload/infoImage/dog2.jpg" width="100%"/>

<pre>

�������� ��� ���� ��� �� ��
���� ������ ����Ÿ��⵵ �ؿ�.
���� ���� �� �������� ����Ÿ��ٸ�,
��ȣ�ڿ� ���� �ݰ����� ǥ�ð���?
���� ������ ���� ����� ���� 
� ����Ÿ����� ������ �� �ִ�ϴ�.

</pre>

<h1>��Ʈ���� ����</h1>

<hr>

<img src="http://192.168.20.229:9090/forpet/resources/upload/infoImage/dog3.jpg" width="100%"/>

<pre>
�������� �����ϰ� ��Ʈ������ �޾Ƶ�
�̷� ������ ���� �� �ֽ��ϴ�.
����Ÿ��� �Բ� ����, ����, ��� ����
������ ���δٸ� ������ 
���������� �������ּž� �ؿ�.
</pre>

<h1>����</h1>

<hr>

<img src="http://192.168.20.229:9090/forpet/resources/upload/infoImage/dog4.jpg" width="100%"/>

<pre>
ȣ��� ��ȯ, ���庴, ���к� ��ȯ ��
�پ��� ��ȯ���� ���� �����ϰ�
�涱�Ÿ��ų� ����Ÿ��� ����
������ ���� �� �ֽ��ϴ�.
�������� �ƹ��� ���� ���� �ڲ�
�̷� ������ ���δٸ�,
�� ���������� �������ּ���!
</pre>

<br>
<br>

<img src="http://192.168.20.229:9090/forpet/resources/upload/infoImage/dog5.jpg" width="100%"/>


<pre>
�������� ���� �� �� ���� ������
��ȣ�ڴԲ��� ���� ���̶� ��ҿ�
�ൿ�� �� �������ֽô� ���� �߿��ؿ�.
�ƹ� ���� ���� �ൿ�̶� �����ϴ�.
�ǰ� ���� ���������� �������� 
�����̳� �������� �ൿ���� ǥ���Ѵ�ϴ�.

��ҿ� �������� �ൿ�� �����,
ü���̳� �Ļ緮, ��Һ����� �����
�̸� üũ�صνø� ���� �� ������
���¸� �ľ��Ͻ� �� �ֽ��ϴ�.
�츮 ���̿��� ��� ����� ���ɸ�ŭ
���̵��� �ǰ����� �Ű���ּ���!
</pre>


<a href="http://192.168.20.229:9090/forpet/vetDetail.do?vetSeq=1"><div style="font-size:30px; color:blue">����ã��</div></a>');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (42,'Cat','��������� Ű��� ���ǻ���, �̷� ���� �������ּ���~','<pre>
�ȳ��ϼ���.
���� � ��������̴� ��������
�� ���� �� �������� �ִµ���.
��������� Ű��� ���ǻ���,
� �͵��� �������?
�Բ� �˾ƺ��ڽ��ϴ�!
</pre>

<h1>���� 1���� ������ �ڹ����?</h1>

<hr>

<img src="http://192.168.20.229:9090/forpet/resources/upload/infoImage/cat1.jpg" width="100%"/>

<pre>
�¾ �� 1�� �̸��� �ڹ��� 
�ձ��� ���� ���� �ʿ��� �ñ��Դϴ�.
ȥ�ڼ� ü�� ������ ������ϰ� 
���� ȥ�� �Ļ縦 �� �� ��� 
����������� ���� Ȥ�� �ΰ� ������ �ʿ��ؿ�.
���࿡ ��������̰� ���� ���,
�ð��� ���� ������ ��������� �̷����� �ϸ�
�� 25~30�� ������ �ǳ� �µ��� �������ּ���.

��Ȥ ����� ���ѵ� �ǳİ� �����ô�
��ȣ�ڴԵ� ��ôµ���.
Ư���� ������ ���� �ʴ� ��� 
��忡�� �������ּž� �մϴ�.
Ȥ�ó� ����� ���Ѿ� �ϴ� ���
ª�� �ð� ���� �����ֽð� 
ü���� �������� �ʵ��� �Ű� ���ּ���.
</pre>

<h1>���������� �ʿ��ؿ�.</h1>

<hr>

<img src="http://192.168.20.229:9090/forpet/resources/upload/infoImage/cat2.jpg" width="100%"/>

<pre>
� �� ���������� ���Ѿ� �Ѵٴ� ����
�̹� ������ �ٵ���.
���� 500~600g �̻�, 
�� ���� 45�� �̻��� �Ǿ��� ��
1�� ���������� �����մϴ�.
����� ���������� �� 3���� �̷������
2~4���� �������� ������ �ϰ� �˴ϴ�.

�̶� ���������� �ǽ��ϴ� ������
�����κ��� ���� ��ü ��ü�� 
���� �������� �ñ��̱� �����̿���.
���� � ������ �����κ��� ���� ��ü��
��������̸� ������ �� ������,
Ŀ���鼭 �� ��ü���� �������� ������
������ ���� �鿪�� �������ִ� ���̶��ϴ�.
Ư���� ġ������ ���� �������κ���
��������̸� ��ȣ�� �� �ִ� ������ ��ŭ
�� ���������� �Ű� ���ּ���!
</pre>

<h1>����� ���� ������ �̷����� �ؿ�.</h1>

<hr>

<img src="http://192.168.20.229:9090/forpet/resources/upload/infoImage/cat3.jpg" width="100%"/>

<pre>
���� ���� 1�� ���ϸ� �ڹ���� �մϴ�.
�� �� ����̰� �����ϴ� �ñ�� 
�ٸ� �ñ⺸�� ���� ����Ҹ� �ʿ�� �ؿ�.
�����ɿ� Ȥ�� �ڹ��� ��Ḧ �޿��Ͽ�
������ �������� �ʵ��� �Ű� ���ּ���.
�̶� ���̵��� Ȱ���� Ȥ�� �߼�ȭ ���ο� ����
 �޿����� �޶��� �� �ִ�ϴ�.
��Ȯ�� ������ �ñ��Ͻôٸ� 
����̳� ��ȭ�� ��¦ �������ּ��� :)
</pre>

<h1>����̵� ��ȸȭ�� �ʿ��ؿ�.</h1>

<hr>

<img src="http://192.168.20.229:9090/forpet/resources/upload/infoImage/cat4.jpg" width="100%"/>

<pre>
���忡 ���� ���̴� ������,
����̴� �밳 8~10����
��ȸȭ�ñⰡ �����ٰ� �˷��� �ֽ��ϴ�.
�� �ñ� �� �پ��� ���İ� �繰�� ���ϰ�
���ֽð� �ٸ� �����, ��� �
�ͼ��ϰ� ���ֽô� ���� ���ƿ�.
���� ��������̿� �ٸ� ��������̿���
������� ���� ��ȸȭ�� ������ �Ǵ�
�ּ��� 8�ֱ����� ��������̿� �Բ�
��Ȱ�ϰ� ���ֽô� ���� �����ϴ�.
</pre>');
REM INSERTING into FORPET.INFOIMAGE
SET DEFINE OFF;
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416133042150_8_0.webp',6,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416133148000_8_0.webp',7,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416131339278_8_0.jpg',3,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416132930531_8_0.webp',5,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416133235532_8_0.webp',8,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416133358137_8_0.webp',9,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416133744116_8_0.webp',10,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416134648399_8_0.webp',11,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416134744049_8_0.webp',12,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416134841248_8_0.webp',13,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416134944426_8_0.webp',14,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416135146604_8_0.webp',17,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416135324299_8_0.webp',18,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416140008795_8_0.webp',19,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416140123689_8_0.webp',20,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416140212867_8_0.webp',21,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416140254755_8_0.webp',22,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416140346788_8_0.webp',23,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416140451646_8_0.webp',24,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416140548595_8_0.webp',25,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416140749425_8_0.webp',26,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416140853156_8_0.webp',27,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416141136297_8_0.webp',28,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416141326453_8_0.webp',29,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416141442812_8_0.webp',30,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416142209597_8_0.webp',34,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416141753887_8_0.webp',32,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416141902498_8_0.webp',33,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416142337004_8_0.webp',35,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416142542323_8_0.webp',36,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416142657057_8_0.webp',37,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416142929059_8_0.webp',38,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416150817197_8_0.webp',39,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416151540521_8_0.webp',40,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416153517270_8_0.jpg',41,1);
Insert into FORPET.INFOIMAGE (FILENAME,INFOSEQ,PRIORITY) values ('190416165104156_8_0.jpg',42,1);
REM INSERTING into FORPET.KAKAOMEMBER
SET DEFINE OFF;
Insert into FORPET.KAKAOMEMBER (KAKAOID,MEMBERSEQ) values ('1056224196',17);
Insert into FORPET.KAKAOMEMBER (KAKAOID,MEMBERSEQ) values ('1055787329',13);
Insert into FORPET.KAKAOMEMBER (KAKAOID,MEMBERSEQ) values ('1055660925',15);
REM INSERTING into FORPET.MEMBER
SET DEFINE OFF;
Insert into FORPET.MEMBER (MEMBERSEQ,MEMBEREMAIL,MEMBERPASSWORD,MEMBERNICKNAME,MEMBERNAME,MEMBERPHONE,MEMBERADDRESS,MEMBERTYPE,MEMBERENROLLDATE,MEMBERQUITDATE) values (9,'asdf','$2a$10$SRVlahjjYm1J0MLl2w5bRepfqb3qdgUdd3fpMNiKHK.jwo1Y7lcKa','��ø�Ѿ�ݴ�','�ǹξ�',1025404993,'�Ȼ�� ��ϱ� ����1�� 958',null,to_date('19/03/29','RR/MM/DD'),null);
Insert into FORPET.MEMBER (MEMBERSEQ,MEMBEREMAIL,MEMBERPASSWORD,MEMBERNICKNAME,MEMBERNAME,MEMBERPHONE,MEMBERADDRESS,MEMBERTYPE,MEMBERENROLLDATE,MEMBERQUITDATE) values (3,'user02','$2a$10$eicTdMfR17vjTUJjcsAuSelaB2mRgKliZBF2ZrVDKItZ5DNv6u1zC','��Ŭ����!!','�̿���',1022222222,'����� ������ ���ﵿ �������84�� 16','deleted',to_date('19/03/28','RR/MM/DD'),to_date('19/04/17','RR/MM/DD'));
Insert into FORPET.MEMBER (MEMBERSEQ,MEMBEREMAIL,MEMBERPASSWORD,MEMBERNICKNAME,MEMBERNAME,MEMBERPHONE,MEMBERADDRESS,MEMBERTYPE,MEMBERENROLLDATE,MEMBERQUITDATE) values (4,'user03','$2a$10$aXqAgmBjy8DkDiiSe.7WI.H8ZOO8FyXPRfXWUAn/w0ymqFs7Aa6HK','����ٿ�����','������',1033333333,'��⵵ �����ֽ� ����� 1037',null,to_date('19/03/28','RR/MM/DD'),null);
Insert into FORPET.MEMBER (MEMBERSEQ,MEMBEREMAIL,MEMBERPASSWORD,MEMBERNICKNAME,MEMBERNAME,MEMBERPHONE,MEMBERADDRESS,MEMBERTYPE,MEMBERENROLLDATE,MEMBERQUITDATE) values (5,'user04','$2a$10$xtl6HWLeiSXX8xPOSQt8/ec9XQc6A01QvmJDnn0grQe2ZwwYHHn8W','������','������',1044444444,'����� ������ ������� 3��',null,to_date('19/03/28','RR/MM/DD'),null);
Insert into FORPET.MEMBER (MEMBERSEQ,MEMBEREMAIL,MEMBERPASSWORD,MEMBERNICKNAME,MEMBERNAME,MEMBERPHONE,MEMBERADDRESS,MEMBERTYPE,MEMBERENROLLDATE,MEMBERQUITDATE) values (6,'user05','$2a$10$S7BkgznIcWbddrEOUKhcs.D0d4fSj5U5HqPAJjkZE6OlWdHJtuvKC','�ȳ�������','�ڼ���',1055555555,'������ �Ǽ��� ȣ�Žǵ� 1346����','deleted',to_date('19/03/28','RR/MM/DD'),to_date('19/04/17','RR/MM/DD'));
Insert into FORPET.MEMBER (MEMBERSEQ,MEMBEREMAIL,MEMBERPASSWORD,MEMBERNICKNAME,MEMBERNAME,MEMBERPHONE,MEMBERADDRESS,MEMBERTYPE,MEMBERENROLLDATE,MEMBERQUITDATE) values (8,'admin','$2a$10$rvgZWbeorgtMd0aYMuHFoeX0wFSNZUd1PbKipEyFGzFfhFYX8XXT2','������','�ǿ���',1012341234,'���� ������ �������14�� 6',null,to_date('19/03/29','RR/MM/DD'),null);
Insert into FORPET.MEMBER (MEMBERSEQ,MEMBEREMAIL,MEMBERPASSWORD,MEMBERNICKNAME,MEMBERNAME,MEMBERPHONE,MEMBERADDRESS,MEMBERTYPE,MEMBERENROLLDATE,MEMBERQUITDATE) values (11,'psoonkyu@gmail.com','$2a$10$ONZ4.RuZa63BENfYPchh9uM6WsZygIgnhw64mpoyIKx5UA3KpNVgG','�ڼ���','�ڼ���',1086020654,'���� ������ ���μ�ȯ�� 2806 13��',null,to_date('19/04/17','RR/MM/DD'),null);
Insert into FORPET.MEMBER (MEMBERSEQ,MEMBEREMAIL,MEMBERPASSWORD,MEMBERNICKNAME,MEMBERNAME,MEMBERPHONE,MEMBERADDRESS,MEMBERTYPE,MEMBERENROLLDATE,MEMBERQUITDATE) values (2,'hanpotato85@naver.com','$2a$10$TOjU6/q4kyL9Qb65zJWo3.lkL28hZDU4gZFDu3gaSsS0TjhPPbeIO','�Ѷ�','������',1091045393,'���� ������ ������ 374',null,to_date('19/04/17','RR/MM/DD'),null);
Insert into FORPET.MEMBER (MEMBERSEQ,MEMBEREMAIL,MEMBERPASSWORD,MEMBERNICKNAME,MEMBERNAME,MEMBERPHONE,MEMBERADDRESS,MEMBERTYPE,MEMBERENROLLDATE,MEMBERQUITDATE) values (15,'1055660925','kakao','�̳���','�ֹξ�',1054653455,'���� ������ �б����� 102',null,to_date('19/04/17','RR/MM/DD'),null);
Insert into FORPET.MEMBER (MEMBERSEQ,MEMBEREMAIL,MEMBERPASSWORD,MEMBERNICKNAME,MEMBERNAME,MEMBERPHONE,MEMBERADDRESS,MEMBERTYPE,MEMBERENROLLDATE,MEMBERQUITDATE) values (13,'1055787329','kakao','īī������','���Թ�',1086020654,'���� ������ ������ 202',null,to_date('19/04/17','RR/MM/DD'),null);
Insert into FORPET.MEMBER (MEMBERSEQ,MEMBEREMAIL,MEMBERPASSWORD,MEMBERNICKNAME,MEMBERNAME,MEMBERPHONE,MEMBERADDRESS,MEMBERTYPE,MEMBERENROLLDATE,MEMBERQUITDATE) values (16,'alsdk9583@naver.com','$2a$10$GsTba7JxX2imwVhLaC0V2e9IAQ8C/viqobGVeeU5MBRfEpHS95OKm','tretrettr','���ξ�',1054653455,'���� ������ �е��� ���� 102',null,to_date('19/04/17','RR/MM/DD'),null);
Insert into FORPET.MEMBER (MEMBERSEQ,MEMBEREMAIL,MEMBERPASSWORD,MEMBERNICKNAME,MEMBERNAME,MEMBERPHONE,MEMBERADDRESS,MEMBERTYPE,MEMBERENROLLDATE,MEMBERQUITDATE) values (17,'1056224196','kakao','�ű�ȸ��','�쿵��',1050201834,'���� ������ �������14�� 6',null,to_date('19/04/17','RR/MM/DD'),null);
Insert into FORPET.MEMBER (MEMBERSEQ,MEMBEREMAIL,MEMBERPASSWORD,MEMBERNICKNAME,MEMBERNAME,MEMBERPHONE,MEMBERADDRESS,MEMBERTYPE,MEMBERENROLLDATE,MEMBERQUITDATE) values (18,'lyw318@naver.com','$2a$10$Zu7foVuMGmkfMoJPlhlmoeEpPlztFgRFKd/2uWa0oIM7ycMlPi686','����ȸ��','�̿���',1012345678,'���� ������ �������14�� 6',null,to_date('19/04/17','RR/MM/DD'),null);
REM INSERTING into FORPET.MEMBERFRIEND
SET DEFINE OFF;
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (1,9,3,'����','N','�Ϲ�');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (2,8,9,'��ø�Ѿ�ݴ�','N','�Ϲ�');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (3,8,3,'��Ŭ����!!','N','����');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (4,3,9,'��ø�Ѿ�ݴ�','N','�Ϲ�');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (5,3,8,'������','N','����');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (6,8,4,'����ٿ�����','N','����');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (7,8,5,'css����','N','�Ϲ�');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (8,8,6,'����¯�̾�','N','����');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (9,2,10,'�̳���','N','�Ϲ�');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (10,11,9,'��ø�Ѿ�ݴ�','N','�Ϲ�');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (11,11,8,'������','N','�Ϲ�');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (12,11,3,'��Ŭ����!!','N','�Ϲ�');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (13,11,4,'����ٿ�����','N','����');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (14,11,5,'css����','N','�Ϲ�');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (15,11,6,'����¯�̾�','N','�Ϲ�');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (16,11,2,'�Ѷ�','N','�Ϲ�');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (17,11,10,'�̳���','N','�Ϲ�');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (25,2,4,'����ٿ�����','N','����');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (27,8,18,'�̸���ȸ��','N','�Ϲ�');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (22,2,11,'�ڼ���','N','�Ϲ�');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (21,4,2,'�Ѷ�','N','�Ϲ�');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (26,8,17,'�ű�ȸ��','N','�Ϲ�');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (28,9,11,'�ڼ���','N','�Ϲ�');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (29,9,17,'�ű�ȸ��','N','�Ϲ�');
REM INSERTING into FORPET.MEMBERMSG
SET DEFINE OFF;
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (1,'����01','�Ϲ�','����','gkgkgkgkgk',to_date('19/04/11','RR/MM/DD'),'N','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (2,'����','�Ϲ�','����01','������������������
',to_date('19/04/11','RR/MM/DD'),'N','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (3,'����01','�Ϲ�','����','ù��
��°��
��°��
',to_date('19/04/11','RR/MM/DD'),'N','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (4,'������','�Ϲ�','��Ŭ����!!','�ȳ� �����ڶ�� ��~',to_date('19/04/16','RR/MM/DD'),'N','����');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (5,'������','�Ϲ�','��ø�Ѿ�ݴ�','�ȳ� �� �����ڶ�� ��~',to_date('19/04/16','RR/MM/DD'),'N','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (6,'��Ŭ����!!','�Ϲ�','������','�ȳ��ϼ���',to_date('19/04/16','RR/MM/DD'),'N','����');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (9,'������','�Ϲ�','��Ŭ����!!','���� �׽�Ʈ�Դϴ�.<br/><br/>�� �ǰ� �ֳ���?',to_date('19/04/17','RR/MM/DD'),'N','����');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (8,'������','�Ϲ�','����¯�̾�','�ȳ��ϼ���<br/>�������Դϴ�.<br/>���� ���� �׽�Ʈ ���Դϴ�.<br/>���� ��Ź�帳�ϴ�.',to_date('19/04/17','RR/MM/DD'),'Y','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (10,'������','�Ϲ�','��Ŭ����!!','���� ������ �ߵǰ� �ֳ���?<br/><br/>�ߵǳ���?<br/><br/>��¥��???',to_date('19/04/17','RR/MM/DD'),'N','����');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (11,'�Ѷ�','�Ϲ�','�̳���','���� �׽�Ʈ�Դϴ�.<br/><br/>�߰�����?',to_date('19/04/17','RR/MM/DD'),'N','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (12,'�Ѷ�','�Ϲ�','�̳���','�ξƾ� �޼��� �߳�?',to_date('19/04/17','RR/MM/DD'),'Y','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (13,'�Ѷ�','�Ϲ�','�̳���','�߰���??<br/>����',to_date('19/04/17','RR/MM/DD'),'N','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (14,'�̳���','�Ϲ�','�Ѷ�','�߶��� ������������',to_date('19/04/17','RR/MM/DD'),'N','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (15,'�ڼ���','�Ϲ�','��ø�Ѿ�ݴ�','���߳�',to_date('19/04/17','RR/MM/DD'),'N','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (16,'�ڼ���','�Ϲ�','������','����<br/>',to_date('19/04/17','RR/MM/DD'),'N','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (17,'�ڼ���','�Ϲ�','��Ŭ����!!','����',to_date('19/04/17','RR/MM/DD'),'N','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (18,'�ڼ���','�Ϲ�','����ٿ�����','�׽�Ʈ<br/>',to_date('19/04/17','RR/MM/DD'),'Y','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (19,'�ڼ���','�Ϲ�','����ٿ�����','������',to_date('19/04/17','RR/MM/DD'),'Y','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (20,'�ڼ���','�Ϲ�','css����','�������Ѥ�',to_date('19/04/17','RR/MM/DD'),'N','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (21,'�ڼ���','�Ϲ�','����¯�̾�','����<br/>',to_date('19/04/17','RR/MM/DD'),'N','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (22,'�ڼ���','�Ϲ�','�Ѷ�','���߳�',to_date('19/04/17','RR/MM/DD'),'N','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (23,'�ڼ���','�Ϲ�','�̳���','���϶�~!������<br/>',to_date('19/04/17','RR/MM/DD'),'N','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (24,'�Ѷ�','�Ϲ�','�ڼ���','�߰��ϱ�?<br/>����',to_date('19/04/17','RR/MM/DD'),'Y','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (25,'�ڼ���','�Ϲ�','�Ѷ�','�ƴ�..������',to_date('19/04/17','RR/MM/DD'),'Y','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (26,'�ڼ���','�Ϲ�','�Ѷ�','������<br/>',to_date('19/04/17','RR/MM/DD'),'N','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (27,'�Ѷ�','�Ϲ�','������','������ �� ������???',to_date('19/04/17','RR/MM/DD'),'N','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (28,'�ڼ���','�Ϲ�','����ٿ�����','�̳���~!~~~<br/>',to_date('19/04/17','RR/MM/DD'),'Y','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (29,'�Ѷ�','�Ϲ�','����ٿ�����','���� �׽�Ʈ<br/><br/><br/>���� �׽�Ʈ<br/>���� �׽�Ʈ<br/>���� �׽�Ʈ<br/>',to_date('19/04/17','RR/MM/DD'),'Y','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (30,'�ڼ���','�Ϲ�','����ٿ�����','���� ���� ���¾�~~',to_date('19/04/17','RR/MM/DD'),'Y','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (31,'�ڼ���','�Ϲ�','������','�����ھ�~',to_date('19/04/17','RR/MM/DD'),'N','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (41,'�ڼ���','�Ϲ�','������','�ּ� �ٲ����� ������<br/>',to_date('19/04/17','RR/MM/DD'),'N','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (42,'������','�Ϲ�','�̸���ȸ��','�ȳ��ϼ���?<br/><br/>ȸ�������� �����մϴ�.',to_date('19/04/17','RR/MM/DD'),'N','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (43,'�ڼ���','�Ϲ�','��ø�Ѿ�ݴ�','�ȳ��ϼ���?',to_date('19/04/17','RR/MM/DD'),'N','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (44,'��ø�Ѿ�ݴ�','�Ϲ�','�ڼ���','�ȳ��ϼ��� ���� ����',to_date('19/04/17','RR/MM/DD'),'N','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (45,'�ڼ���','�Ϲ�','��ø�Ѿ�ݴ�','�ȳ��ϼ���?<br/><br/>������ �޾ҽ��ϴ�.<br/>',to_date('19/04/17','RR/MM/DD'),'Y','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (37,'����ٿ�����','�Ϲ�','�Ѷ�','123123',to_date('19/04/17','RR/MM/DD'),'N','����');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (46,'�ڼ���','�Ϲ�','��ø�Ѿ�ݴ�','��� �ߵǳ׿�~!!',to_date('19/04/17','RR/MM/DD'),'Y','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (39,'�ڼ���','�Ϲ�','����ٿ�����','����////',to_date('19/04/17','RR/MM/DD'),'N','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (40,'�ڼ���','�Ϲ�','����ٿ�����','�� �϶�!!!',to_date('19/04/17','RR/MM/DD'),'N','�Ϲ�');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (47,'�ڼ���','�Ϲ�','��ø�Ѿ�ݴ�','�� ���� �����Ǿ���!!',to_date('19/04/17','RR/MM/DD'),'N','�Ϲ�');
REM INSERTING into FORPET.NOTICE
SET DEFINE OFF;
Insert into FORPET.NOTICE (NOTICESEQ,MEMBERSEQ,NOTICETITLE,NOTICECONTENT,READCOUNT,NOTICEDATE) values (1,8,'[ȸ�����ǿ���] forPet �Դϴ�. ����Ʈ ������� ���ؼ� �˷��帳�ϴ�. ','<pre>
1. ȸ���� ���� ����ϰ� ���Ǹ� ��ŵ�ϴ�.
(1) �� ������ �ٸ� �ǰߵ� ��Ģ������ �ƴ� �� �����մϴ�. �ٸ� �ǰ߿� ���� ������ ���� �־ ������ ���ؼ��� �ȵ˴ϴ�.

(2) �ٸ� �̿��ڿ� ���� ������ �ǹ̷� ������ ����ϰ�, �г��� �ڿ� ���ԡ��� �ٿ� �θ��ϴ�.

(3) �弳, ��Ӿ��� ����� �����մϴ�. (�弳���� �� �� �ִ� ����, ��ȣ �� ����)

(4) �ٸ� ȸ���� ���� ���к��� ���̳� �νŰ����� ���� �ʽ��ϴ�. (�Ű���� ���� ����)

(5) ������ �����̳� �Ϲ�ȭ�� �ٸ� ȸ���� ������ �ʽ��ϴ�. (�Ű���� ���� ����)

(6) �ٸ� �ǰ߿� ���Ͽ� ���������� ���ϸ� �Ͽ����� �ȵ˴ϴ�. (�Ű���� ���� ����)

(7) ��� �Ǵ� �ж��� �����ϴ� ��������̳� �ٰž��� ������ �����ؼ��� �ȵ˴ϴ�.



2. �ٸ� ȸ���� ���̰ų�, ���� �Ǵ� ��ü�� ������ �������� �����ϰ� Ȱ���� �� �����ϴ�.
(1) �ݺ������� �ٸ� �̿��ڸ� ���� �������� �Խù��� �ۼ��� �� �����ϴ�.

(2) �Ϲ����� ȸ������ �����Ͽ� ȫ���� �Խù��� �ۼ��Ͽ����� �ȵ˴ϴ�.

(3) ���̷��������̳� �������� �Ǹ�, ȫ��(��α�, ������, �� ��)�� ���� Ȱ���� �����˴ϴ�.

(4) �̹��� ��ũ�뵵, ��õ���ڵ�, ����ȹ�� ������ �Խù� �ݺ� �ۼ� �� ������ �̵��� ���� Ȱ���� �Ͻ� �� �����ϴ�.

(5) Ư�� ��ü�� ���� ������ �Ǵ� ������ ���������� ���� �δ��ϰ� Ȱ���� �� �����ϴ�.

</pre>',5,to_date('19/04/16','RR/MM/DD'));
Insert into FORPET.NOTICE (NOTICESEQ,MEMBERSEQ,NOTICETITLE,NOTICECONTENT,READCOUNT,NOTICEDATE) values (2,8,'[������ ����] forPet �Դϴ�. ����Ʈ ������� ���ؼ� �˷��帳�ϴ�. ','<pre>
3. ������ ������ ȸ�������� �ϰ� Ȱ���ؾ� �մϴ�.
(1) 1�� 1���̵� ����ϸ�, Ÿ���� ������ ���� �� Ȱ���� �� �����ϴ�.

(2) �δ��ϰ� 2�� �̻��� ���̵� ����ϰų� �ϳ��� ���̵� 2�� �̻��� ����ϴ� ��� �ش� ���̵�� �̿��� ���ѵ˴ϴ�.

(3) ¡��ȸ�� ������ Ż�� �� �簡��, Ÿ�� ���Ǹ� ����Ͽ� Ȱ���ϴ� ��� ���� Ȯ�εǸ� �ش� ���̵�� �̿��� ���ѵ˴ϴ�.



4. ���� ��Ÿ ���� �� ��������, ��ǳ��ӿ� ���ϴ� ������ �Խù��� �ۼ��� �� �����ϴ�.
(1) û�ҳ⿡�� ������ �� �ִ� �ܼ��� ǥ����(��, ����, ����, ��ũ ��)�� �Խ����� �ʽ��ϴ�.

(2) �ҹ����� ��� �Ұ�, �ǿ� ���� �� ���������� ����, �����ϴ� ������ �Խù��� �ۼ����� �ʽ��ϴ�.

(3) ���ɿ� ���� �����Ǵ� �Խù��� �ø� �� �����ϴ�.

(4) ��������� ��û�̳� ����� �ִ� ��� �׿� ���� ��ġ�� ����� �� �ֽ��ϴ�.



5. Ÿ���� �Ǹ��� ħ���ϴ� ������ �����մϴ�.
(1) ���۱��� ħ���ϴ� �Խù��� �ۼ����� �ʽ��ϴ�. (��� ��������, ���� ���� ��)

      ���� :

      
http://notice.tistory.com/1221

      
http://www.bloter.net/archives/270183

(2) �ĺ������� Ÿ���� �ʻ��� �������� �Խ��Ͽ����� �ȵ˴ϴ�. (���� ��� ����)

      ���� :

      
http://terms.naver.com/entry.nhn?docId=3350972&cid=58190&categoryId=5819

(3) Ÿ���� ������ ħ���ϴ� �����̰ų� ������ ��Ƿ� ������ ������ ������ �Խù��� �ۼ����� �ʽ��ϴ�.

(4) Ÿ���� �Ǹ��� ħ���ϴ� �Խù��� ħ�� ������� ��û�� ���� ������ �� �ֽ��ϴ�. (������û �� ó������ �ȳ�)


</pre>',2,to_date('19/04/16','RR/MM/DD'));
Insert into FORPET.NOTICE (NOTICESEQ,MEMBERSEQ,NOTICETITLE,NOTICECONTENT,READCOUNT,NOTICEDATE) values (3,8,'[��ȣ���ǿ���] forPet �Դϴ�. ����Ʈ ������� ���ؼ� �˷��帳�ϴ�. ','<pre>
6. ���� ��, ����/���� Ȱ���� �����մϴ�.
(1) Ư�� ������ ���� ������ �� �� �̸� ������ �� �ж����� ������ ���� �ʽ��ϴ�.

(2) �ڽ��� ������ �ų��� �����ϰų� ������ �������� �� Ȱ���� ���ѵ˴ϴ�.



7. Ư�� ���ܿ� ���� ���� �� �������� ���� �Ͽ����� �ȵ˴ϴ�.
(1) ����, ����, ����, ����, ����, ��� �� ������ ������ ���ܿ� ���Ͽ� �� ���������� ���尨�̳� �������� �� �� �ִ� �Խù��� �ۼ����� �ʽ��ϴ�.

(2) �й�, ���, ����, ��Ȱ���, ����, ����, ��ġ�� ���� ���� ������ ���������� ���� ���� �ʽ��ϴ�.



8. �ٸ� �̿����� �̿뿡 ���ذ� �Ǵ� ������ �� �� �����ϴ�.
(1) Ÿ�ο��� �������� �ְų� �����ϰ� �� �� �ִ� �Խù� �ۼ��� �����մϴ�.

(2) Ư�������� ������ ���, ���輺 �Խù�/��� �� �ٸ� �̿��ڿ��� ������ �ִ� ��� �ش� �Խù��� ������ �� �ֽ��ϴ�.

(3) ��ȭ, �Ҽ��� ���� �� �����Ϸ� ������ ������ �����ϸ�, �Ұ����� ��� ������ ������� ǥ���Ͽ� �ٸ� �̿��ڸ� ����մϴ�.

(4) �̿��ڸ� ���̰ų� �����ϰ� ���� �� ������ �Խù�(�̸��� ���ñ�)�� �����Ͽ� �ֽñ� �ٶ��ϴ�.

(5) ���������� ��Ģ���� �Խù� �ۼ� �� ������ �ݺ��ϴ� ��� �ۼ��ڴ� �̿��� ���ѵ� �� �ֽ��ϴ�.

(6) ���̷��� ���α׷� ����, �������� �� Ÿ�ο��� ���ظ� �ִ� ������  �����մϴ�.

(7) ���к��ϰ� �ݺ����� �� ���, �������� ���� ���� �߼� ���� ����ŷ ������ ���� �ʽ��ϴ�.



9. �Խ����� �뵵�� �°� �Խù��� �ۼ��ϼž� �մϴ�.
(1) �̿����� ���Ǹ� ���� �Խ����� �и��Ǿ� ������, �� �Խ����� ������ �뵵�� �µ��� �Խù��� �ۼ��ϰ� �̿��ϼž� �մϴ�.

(2) ����Ʈ �̿��Ģ �� �� �Խ��� ��Ģ�� �� ��Ű��, ���ݿ� ���� �������� �޴� ���� ������ ���ֽñ� �ٶ��ϴ�.



10. ����Ʈ ��Ģ ���� ��ʸ� �߰��ϸ� �Ű��� �ּ���.
(1) �Ű�� �Խù��� �����ڰ� ���� �� ��ġ�մϴ�.

�߸��� �Խù��� �̿��Ģ�� �����ϸ� �����ϰ� �������� ���ð�, �Ű� ���� �����ڰ� ��ġ�� �� �ֵ��� ���� �ٶ��ϴ�.

(2) �Խù��̳� ��۷� ���Ű��߽��ϴ١� �Ǵ� ���Ű��ϰڽ��ϴ١� ���� �ۼ��ϴ� ��� �Ǵٸ� ���ʿ��� ������ �߱��ŵ�ϴ�.

(3) �Ű� ���� �����ϱ� ����� ��� [admin@clien.net]���� �����ֽø� Ȯ���Ͽ� �亯�帮�ڽ��ϴ�.

</pre>',4,to_date('19/04/16','RR/MM/DD'));
Insert into FORPET.NOTICE (NOTICESEQ,MEMBERSEQ,NOTICETITLE,NOTICECONTENT,READCOUNT,NOTICEDATE) values (4,8,'�������� ó�� ��ħ','<pre>
��������ó����ħ
1. �����ϴ� �������� �׸�
Ŭ������ ȸ������, ���� �̿� ���� ���� �Ʒ��� ���� ���������� �����ϰ� �ֽ��ϴ�.

1) �����׸�
�Ϲ� ȸ�� ���Խ�
�ʼ��׸� : ���̵�, ��й�ȣ, ����, �̸���
�����׸� : SNS����
���ȸ�� ���Խ�
�ʼ��׸� : ��ü��, ����, �Ա��ڸ�, ����ó, �̸���, ȯ�Ұ�������
�����׸� : ����ڵ�Ϲ�ȣ
���� �̿��
�ʼ��׸� : �Ǹ�, �̵���ȭ, �̸���
���������� �Է����� ���� ��쿡�� ���� �̿��� ������ �����ϴ�.
���������������� �Ʒ��� ���� �������� �����˴ϴ�.
����, �������, ����
���� �̿�������� �Ʒ��� ���� �������� �ڵ����� �����Ǿ� ������ �� �ֽ��ϴ�.
IP �ּ�, ��Ű, ���� �̿���, ȸ����ġ�̷�

2) �������� �������
ȸ������, ���� �̿� ��û, ȸ������ ����, ���� �Խù� ���

2. ���������� ���� �� �̿����
Ŭ������ ������ ���������� ������ ������ ���� Ȱ���ϸ� �ٸ� �뵵�δ� ������ �ʽ��ϴ�.

���� �̿������ ����� �ÿ��� ������ ���Ǹ� ���մϴ�.

���̵�, ��й�ȣ, ���� : ���� �̿뿡 ���� ���νĺ�, �ߺ����� Ȯ��, �����̿� ������ ���� ���˴ϴ�.
�̸��� : ��ü���Ϲ߼�, �н����� �нǽ� �ʿ��� �������� �� �ο�ó�� ���� ���� ���˴ϴ�.
����, �������, ���� : ����, ������ �����ϴ� Ư���� ���񽺸� ������ ��� �� ���� ������ �ڷᱸ��, �����̿� ������ ���� ���˴ϴ�.
SNS ���� : ȸ���� �ڽ��� SNS�� �����ϰ��� �� ��� ����մϴ�.
�̿����� IP�ּ�, �湮�Ͻ� : �ҷ�ȸ���� ���� �̿������ ���ΰ� ������, ������� �м��� ���˴ϴ�.
�� �� ���û��� : ���� ���� ���񽺸� �����ϱ� ���� ���˴ϴ�.

3. ���������� ���� �� �̿�Ⱓ
Ŭ������ ȸ�������Ϸκ��� ���񽺸� �����ϴ� �Ⱓ ���ȿ� ���Ͽ� �̿����� ���������� ���� �� �̿��մϴ�.

��, ������ ������ ���ؼ��� ȸ��Ż�� �� �Ʒ��� ������ ����� �Ⱓ ���� �����մϴ�.

�����׸� : ����, �������, ����, �̸���
�����ٰ� : ����� ���԰� Ż�� �ݺ��ϴ� ������ �̿� ����, ���� �̿��� ȥ�� ����
�����Ⱓ : 30��
�����׸� : "���"�̻��� ��ġ�� ���� ȸ���� DI�� (�ߺ�����Ȯ������) �� ȸ����ġ�̷�
�����ٰ� : ȸ���� �ҷ� �̿뿡 ���� ��ġ�̷� �������� ������ �̿��� ��� ����
�����Ⱓ : 5��
�����׸� : ���̵�
�����ٰ� : ���̵� �������� ����Ǿ� �־� Ż�� �� Ÿ���� ������ ���̵�� ������ ��� ���� �̿��� ȥ�� ����
�����Ⱓ : ���� ���� ����ñ���

4. ���������� �ı����� �� ���
��Ģ������ �������� ���� �� �̿������ �޼��� �Ŀ��� �ش� ������ ��ü���� �ı��մϴ�. �ı����� �� ����� ������ �����ϴ�.

1) �ı�����
ȸ���� ȸ������ ���� ���� �Է��Ͻ� ������ ������ �޼��� �� ���� ��ħ �� ��Ÿ ���� ���ɿ� ���� ������ȣ ������ ����(���� �� �̿�Ⱓ ����) ���� �Ⱓ ����� �� �ı�Ǿ����ϴ�.

�����Ⱓ ����� ���������� ���ɿ� ���� ��츦 �����ϰ�� ���� ���� �̿��� �ٸ� �������� �̿���� �ʽ��ϴ�.

2) �ı���
������ �������·� ����� ���������� ����� ����� �� ���� ����� ����� ����Ͽ� �����մϴ�.

</pre>',3,to_date('19/04/16','RR/MM/DD'));
Insert into FORPET.NOTICE (NOTICESEQ,MEMBERSEQ,NOTICETITLE,NOTICECONTENT,READCOUNT,NOTICEDATE) values (5,8,'å���� �Ѱ�� ��������','<pre>
å���� �Ѱ�� ��������
1. ����
Ŭ����(���� ''ȸ��''�� Ī��)�� �����ϴ� ���񽺸� ���� �����Ǵ� ����(���񽺷κ��� ��ũ�� ����� �ٸ� ������Ʈ�� �ؽ�Ʈ, �̹���, ��Ÿ������ ��� ������ ����)�� ���� ������ ���� �������� �� ������ å�Ӱ� �Ѱ踦 �����մϴ�.


2. ���� � å��
ȸ��� ���� �̿��� �� �̿��Ģ, ��Ÿ ���ù��ɿ� ���� Ÿ���� �Ǹ��� �����ϸ� �̿� ���ݵǴ� ������ ������ ����մϴ�. ���� �̿��� �� �̸� �����ϴ� ��� �����Ⱓ ���� �̿��� ���ѹްų� ������ �� �ֽ��ϴ�.

ȸ��� ȸ�簡 ��ϴ� ���񽺸� ���� �����Ǵ� ������ ��Ȯ���̳� �ŷڼ��� ���� �������� ������, ���񽺸� ���� �����Ǵ� ������ �̿��� ����� ���� �Ǵ� ����ϰ� �Ǵ� ��ǰ �� ��Ÿ ������ ���� ���ؼ��� �������� �ʽ��ϴ�. �� ���񽺵Ǵ� ������ ȸ���� ���� �Ǵ� �ߴ��� ���Ƿ� �����Ǵ� ���� ���ܷ� �մϴ�.


3. ���� �̿��� å��
���񽺸� ���� ������ ������ �̿��ϰ��� �� ��쿡�� �̿��ڴ� �ش� ������ ���۱����� ���Ǹ� ���� �ϸ�, �� �������� ȸ��� �������� �ʽ��ϴ�. ���񽺸� ���� ������ �ڷ� �� ������ ���� �ŷ� ������ å���� �ش� ������ �����ڿ��� ������, ȸ��� ������ �ʿ信 ���� ������ ���� �ֽ��ϴ�.

���񽺸� ���� ������ ������ �̿��Ͽ�, Ÿ ����Ʈ�� �����ϰų� �̵��ϴ� ������ ������� �Ǵܿ� ���� ������, �̷��� ���õ� Ÿ ����Ʈ�� ������ ������ ��Ȯ�� �� ������, �������� ���� å������ �ʽ��ϴ�.


4. å���� �Ѱ�� ���������� ����
ȸ��� �� å���� �Ѱ�� ���������� ������ ���ͳݻ���� ����ʿ� ���߾� ������ ������� ���� �������� ���÷� ������ �� �ֽ��ϴ�.


5. å���� �Ѱ�� ���������� ȿ��
�� å���� �Ѱ�� �����������׿��� �ٷ�� �ִ� ���λ��׵��� �������ڵ鰣�� ��ü���� ���ǻ����̸�, ȸ���� �������񽺿��� ���ϰ� �ִ� ������ ���, �������� ��� ����Ǵ� ��쿡�� ������ ��� �Ǵ� ���������� �켱 �����մϴ�.

</pre>',4,to_date('19/04/16','RR/MM/DD'));
REM INSERTING into FORPET.NOTICEIMAGE
SET DEFINE OFF;
Insert into FORPET.NOTICEIMAGE (FILENAME,NOTICESEQ,PRIORITY) values ('190416124704569_8_0.png',3,0);
REM INSERTING into FORPET.PET
SET DEFINE OFF;
Insert into FORPET.PET (PETSEQ,MEMBERSEQ,PETNAME,PETBIRTH,PETTYPE,PETTYPE2,PETRENAMEDIMAGE) values (1,9,'�߿���',to_date('18/03/26','RR/MM/DD'),'Cat','�丣�þ�','2019_04_11_134957146_134.png');
Insert into FORPET.PET (PETSEQ,MEMBERSEQ,PETNAME,PETBIRTH,PETTYPE,PETTYPE2,PETRENAMEDIMAGE) values (2,9,'�۸���',to_date('02/11/26','RR/MM/DD'),'Dog','�ڽ���Ʈ','2019_04_11_135033299_76.png');
Insert into FORPET.PET (PETSEQ,MEMBERSEQ,PETNAME,PETBIRTH,PETTYPE,PETTYPE2,PETRENAMEDIMAGE) values (3,8,'�߿���',to_date('19/04/15','RR/MM/DD'),'Cat','�丣�þ�','2019_04_16_144840893_538.png');
Insert into FORPET.PET (PETSEQ,MEMBERSEQ,PETNAME,PETBIRTH,PETTYPE,PETTYPE2,PETRENAMEDIMAGE) values (4,8,'�۸���',to_date('19/04/15','RR/MM/DD'),'Dog','�ڽ���Ʈ','2019_04_16_144849373_262.png');
Insert into FORPET.PET (PETSEQ,MEMBERSEQ,PETNAME,PETBIRTH,PETTYPE,PETTYPE2,PETRENAMEDIMAGE) values (5,2,'������',to_date('19/04/01','RR/MM/DD'),'Dog','�Ϳ�����','2019_04_17_102023971_503.jpg');
Insert into FORPET.PET (PETSEQ,MEMBERSEQ,PETNAME,PETBIRTH,PETTYPE,PETTYPE2,PETRENAMEDIMAGE) values (9,5,'��帵��',to_date('19/04/02','RR/MM/DD'),'Dog','��Ʈ����','2019_04_17_111158053_842.jpg');
Insert into FORPET.PET (PETSEQ,MEMBERSEQ,PETNAME,PETBIRTH,PETTYPE,PETTYPE2,PETRENAMEDIMAGE) values (7,11,'�߿���',to_date('19/01/01','RR/MM/DD'),'Cat','�丣�þ�','2019_04_17_105725442_41.png');
Insert into FORPET.PET (PETSEQ,MEMBERSEQ,PETNAME,PETBIRTH,PETTYPE,PETTYPE2,PETRENAMEDIMAGE) values (8,11,'�۸���',to_date('19/01/01','RR/MM/DD'),'Dog','�ڽ���Ʈ','2019_04_17_105753371_248.png');
Insert into FORPET.PET (PETSEQ,MEMBERSEQ,PETNAME,PETBIRTH,PETTYPE,PETTYPE2,PETRENAMEDIMAGE) values (10,5,'�Ǵ󱸱�',to_date('19/03/09','RR/MM/DD'),'Dog','�����ڱ�','2019_04_17_111224468_434.jpg');
Insert into FORPET.PET (PETSEQ,MEMBERSEQ,PETNAME,PETBIRTH,PETTYPE,PETTYPE2,PETRENAMEDIMAGE) values (11,5,'�ٹ���',to_date('19/04/03','RR/MM/DD'),'Cat','��Ÿ','2019_04_17_111351941_722.jpg');
Insert into FORPET.PET (PETSEQ,MEMBERSEQ,PETNAME,PETBIRTH,PETTYPE,PETTYPE2,PETRENAMEDIMAGE) values (12,5,'�����',to_date('19/04/16','RR/MM/DD'),'Cat','��Ÿ','2019_04_17_111419447_12.jpg');
Insert into FORPET.PET (PETSEQ,MEMBERSEQ,PETNAME,PETBIRTH,PETTYPE,PETTYPE2,PETRENAMEDIMAGE) values (14,18,'���',to_date('19/04/02','RR/MM/DD'),'Bird','�ھ˶�','2019_04_17_131149766_204.jpg');
REM INSERTING into FORPET.PETDETAIL
SET DEFINE OFF;
REM INSERTING into FORPET.QNAREPLY
SET DEFINE OFF;
REM INSERTING into FORPET.SMALLBOARD
SET DEFINE OFF;
Insert into FORPET.SMALLBOARD (SMALLBOARDSEQ,MEMBERSEQ,SMALLBOARDKATEGORIE,SMALLBOARDTITLE,SMALLBOARDCONTENT,SMALLBOARDREADCOUNT,SMALLBOARDDATE) values (6,3,'������','������ ��Ĩ�ô�~~~!!!','��ġ�ڹ�ġ��!!',0,to_date('19/04/16','RR/MM/DD'));
Insert into FORPET.SMALLBOARD (SMALLBOARDSEQ,MEMBERSEQ,SMALLBOARDKATEGORIE,SMALLBOARDTITLE,SMALLBOARDCONTENT,SMALLBOARDREADCOUNT,SMALLBOARDDATE) values (2,8,'������','�Ҹ��ӰԽ��� �̿�ȳ�','�Ҹ��� �Խ����� �ֿϵ��� ���� �Խ����� �����Ӱ� ���������� �ֽ��ϴ�.

�ֿϵ����� �Ҹ����� �����غ�����
',0,to_date('19/04/16','RR/MM/DD'));
Insert into FORPET.SMALLBOARD (SMALLBOARDSEQ,MEMBERSEQ,SMALLBOARDKATEGORIE,SMALLBOARDTITLE,SMALLBOARDCONTENT,SMALLBOARDREADCOUNT,SMALLBOARDDATE) values (3,3,'����','��ξ޹� Ű������~','��ξ޹��� �󸶳� �Ϳ��Կ�~?

�ٰ��� Ű������',0,to_date('19/04/16','RR/MM/DD'));
Insert into FORPET.SMALLBOARD (SMALLBOARDSEQ,MEMBERSEQ,SMALLBOARDKATEGORIE,SMALLBOARDTITLE,SMALLBOARDCONTENT,SMALLBOARDREADCOUNT,SMALLBOARDDATE) values (8,3,'�����','�Ѱ����� ���~~~','���ô�!!',0,to_date('19/04/16','RR/MM/DD'));
Insert into FORPET.SMALLBOARD (SMALLBOARDSEQ,MEMBERSEQ,SMALLBOARDKATEGORIE,SMALLBOARDTITLE,SMALLBOARDCONTENT,SMALLBOARDREADCOUNT,SMALLBOARDDATE) values (7,3,'������','���� ��ǥ�� �Ѱ��� ����???','������!!',0,to_date('19/04/16','RR/MM/DD'));
Insert into FORPET.SMALLBOARD (SMALLBOARDSEQ,MEMBERSEQ,SMALLBOARDKATEGORIE,SMALLBOARDTITLE,SMALLBOARDCONTENT,SMALLBOARDREADCOUNT,SMALLBOARDDATE) values (9,9,'�����','��ø�Ѿ�ݴϴ� �� ������ �� �־��!!','�� ��ݴϴ� �����ϱ�!!!',0,to_date('19/04/16','RR/MM/DD'));
Insert into FORPET.SMALLBOARD (SMALLBOARDSEQ,MEMBERSEQ,SMALLBOARDKATEGORIE,SMALLBOARDTITLE,SMALLBOARDCONTENT,SMALLBOARDREADCOUNT,SMALLBOARDDATE) values (21,10,'����ġ','����ġ ���� ���Ӱ�����~~','�ȳ��ϼ��� ���� ����ġ �θ����� Ű��� �ֽ��ϴ�. 
���� ������ ����ġ ��ǰ�� ��� ���� ���� �������� ���ھ��~~~~',0,to_date('19/04/17','RR/MM/DD'));
Insert into FORPET.SMALLBOARD (SMALLBOARDSEQ,MEMBERSEQ,SMALLBOARDKATEGORIE,SMALLBOARDTITLE,SMALLBOARDCONTENT,SMALLBOARDREADCOUNT,SMALLBOARDDATE) values (22,10,'����Ǳ�','����Ǳ� �����̿�~','����Ǳ� ������ �������� �մϴ� 
�ð��� ���� ����6�� ���� , �ָ� ���� 10�ú��� 13�ñ����� �ϸ� ���� �� ���ƿ� 
�Բ��Ͻ� ���� �����ּ���~~~~~~~',0,to_date('19/04/17','RR/MM/DD'));
REM INSERTING into FORPET.SMALLBOARDREPLY
SET DEFINE OFF;
Insert into FORPET.SMALLBOARDREPLY (SBCOMMENTSEQ,MEMBERSEQ,SMALLBOARDSEQ,SBCOMMENTREF,SBCOMMENTDATE,SBCOMMENTTEXT,SBCOMMENTLEVEL) values (5,8,2,null,to_date('19/04/16','RR/MM/DD'),'��Ȫ',1);
Insert into FORPET.SMALLBOARDREPLY (SBCOMMENTSEQ,MEMBERSEQ,SMALLBOARDSEQ,SBCOMMENTREF,SBCOMMENTDATE,SBCOMMENTTEXT,SBCOMMENTLEVEL) values (2,8,1,1,to_date('19/04/16','RR/MM/DD'),'123123',2);
Insert into FORPET.SMALLBOARDREPLY (SBCOMMENTSEQ,MEMBERSEQ,SMALLBOARDSEQ,SBCOMMENTREF,SBCOMMENTDATE,SBCOMMENTTEXT,SBCOMMENTLEVEL) values (3,8,1,null,to_date('19/04/16','RR/MM/DD'),'123123',1);
Insert into FORPET.SMALLBOARDREPLY (SBCOMMENTSEQ,MEMBERSEQ,SMALLBOARDSEQ,SBCOMMENTREF,SBCOMMENTDATE,SBCOMMENTTEXT,SBCOMMENTLEVEL) values (4,8,1,3,to_date('19/04/16','RR/MM/DD'),'123123123',2);
Insert into FORPET.SMALLBOARDREPLY (SBCOMMENTSEQ,MEMBERSEQ,SMALLBOARDSEQ,SBCOMMENTREF,SBCOMMENTDATE,SBCOMMENTTEXT,SBCOMMENTLEVEL) values (6,8,2,5,to_date('19/04/16','RR/MM/DD'),'� ��������� ��BOA YO',2);
Insert into FORPET.SMALLBOARDREPLY (SBCOMMENTSEQ,MEMBERSEQ,SMALLBOARDSEQ,SBCOMMENTREF,SBCOMMENTDATE,SBCOMMENTTEXT,SBCOMMENTLEVEL) values (10,3,3,9,to_date('19/04/16','RR/MM/DD'),'rthsrths',2);
Insert into FORPET.SMALLBOARDREPLY (SBCOMMENTSEQ,MEMBERSEQ,SMALLBOARDSEQ,SBCOMMENTREF,SBCOMMENTDATE,SBCOMMENTTEXT,SBCOMMENTLEVEL) values (8,8,2,7,to_date('19/04/16','RR/MM/DD'),'������������',2);
Insert into FORPET.SMALLBOARDREPLY (SBCOMMENTSEQ,MEMBERSEQ,SMALLBOARDSEQ,SBCOMMENTREF,SBCOMMENTDATE,SBCOMMENTTEXT,SBCOMMENTLEVEL) values (45,8,23,44,to_date('19/04/17','RR/MM/DD'),'123123',2);
Insert into FORPET.SMALLBOARDREPLY (SBCOMMENTSEQ,MEMBERSEQ,SMALLBOARDSEQ,SBCOMMENTREF,SBCOMMENTDATE,SBCOMMENTTEXT,SBCOMMENTLEVEL) values (12,8,3,10,to_date('19/04/16','RR/MM/DD'),'123123',2);
Insert into FORPET.SMALLBOARDREPLY (SBCOMMENTSEQ,MEMBERSEQ,SMALLBOARDSEQ,SBCOMMENTREF,SBCOMMENTDATE,SBCOMMENTTEXT,SBCOMMENTLEVEL) values (22,8,2,21,to_date('19/04/16','RR/MM/DD'),'������������',2);
Insert into FORPET.SMALLBOARDREPLY (SBCOMMENTSEQ,MEMBERSEQ,SMALLBOARDSEQ,SBCOMMENTREF,SBCOMMENTDATE,SBCOMMENTTEXT,SBCOMMENTLEVEL) values (14,3,3,13,to_date('19/04/16','RR/MM/DD'),'12312312',2);
Insert into FORPET.SMALLBOARDREPLY (SBCOMMENTSEQ,MEMBERSEQ,SMALLBOARDSEQ,SBCOMMENTREF,SBCOMMENTDATE,SBCOMMENTTEXT,SBCOMMENTLEVEL) values (15,3,3,12,to_date('19/04/16','RR/MM/DD'),'6456',2);
Insert into FORPET.SMALLBOARDREPLY (SBCOMMENTSEQ,MEMBERSEQ,SMALLBOARDSEQ,SBCOMMENTREF,SBCOMMENTDATE,SBCOMMENTTEXT,SBCOMMENTLEVEL) values (17,8,7,null,to_date('19/04/16','RR/MM/DD'),'����',1);
Insert into FORPET.SMALLBOARDREPLY (SBCOMMENTSEQ,MEMBERSEQ,SMALLBOARDSEQ,SBCOMMENTREF,SBCOMMENTDATE,SBCOMMENTTEXT,SBCOMMENTLEVEL) values (42,9,21,null,to_date('19/04/17','RR/MM/DD'),'���ƿ�~���ƿ�~���� ���� �����ڽ��ϴ�~~~~~',1);
Insert into FORPET.SMALLBOARDREPLY (SBCOMMENTSEQ,MEMBERSEQ,SMALLBOARDSEQ,SBCOMMENTREF,SBCOMMENTDATE,SBCOMMENTTEXT,SBCOMMENTLEVEL) values (41,11,22,null,to_date('19/04/17','RR/MM/DD'),'�Ϳ� �Բ��ؿ�... ����Ǳ� ������ ���Ƽ� ���ƿ�~',1);
Insert into FORPET.SMALLBOARDREPLY (SBCOMMENTSEQ,MEMBERSEQ,SMALLBOARDSEQ,SBCOMMENTREF,SBCOMMENTDATE,SBCOMMENTTEXT,SBCOMMENTLEVEL) values (43,11,21,null,to_date('19/04/17','RR/MM/DD'),'��̸��ε�...����',1);
REM INSERTING into FORPET.USERAUTH
SET DEFINE OFF;
Insert into FORPET.USERAUTH (MEMBEREMAIL,AUTHKEY) values ('hanpotato85@navaer.com','TxIZgMFmqNOwKggslf3K');
Insert into FORPET.USERAUTH (MEMBEREMAIL,AUTHKEY) values ('alsdk9583@naver.com','H6TPm0G7c5WbR6Fg6QFw');
Insert into FORPET.USERAUTH (MEMBEREMAIL,AUTHKEY) values ('hanpotato85@naver.com','R7miIlw3jvEpgtwVuEgM');
Insert into FORPET.USERAUTH (MEMBEREMAIL,AUTHKEY) values ('abc9529@naver.com','7TbKQtU3HU0j6xFhXFzM');
Insert into FORPET.USERAUTH (MEMBEREMAIL,AUTHKEY) values ('skskdi12345@naver.com','ph7DehNEmSc8obNExlJJ');
Insert into FORPET.USERAUTH (MEMBEREMAIL,AUTHKEY) values ('psoonkyu@gmail.com','9asBW62fHAQhsicQSKLo');
Insert into FORPET.USERAUTH (MEMBEREMAIL,AUTHKEY) values ('lyw318@naver.com','5sBcB5q2gSR8Hyev2VgX');
REM INSERTING into FORPET.VET
SET DEFINE OFF;
Insert into FORPET.VET (VETSEQ,VETNAME,VETADDRESS,VETPHONE,VETDAYSTIME,VETDAYETIME,VETSATSTIME,VETSATETIME,VETSUNSTIME,VETSUNETIME,VETCOMMENT) values (1,'�帲��������','����� ������ ���ﵿ ����� 234','02-508-7583',9,22,9,22,10,21,'����� ������ ���ﵿ 771���� ��ư������ 101ȣ');
Insert into FORPET.VET (VETSEQ,VETNAME,VETADDRESS,VETPHONE,VETDAYSTIME,VETDAYETIME,VETSATSTIME,VETSATETIME,VETSUNSTIME,VETSUNETIME,VETCOMMENT) values (2,'24�� ���͸۵�������','����� ������ ������ 515','02-554-7505',9,22,9,22,9,22,'�߰�����ð��� ���� 10�ú��� ���� 9��');
Insert into FORPET.VET (VETSEQ,VETNAME,VETADDRESS,VETPHONE,VETDAYSTIME,VETDAYETIME,VETSATSTIME,VETSATETIME,VETSUNSTIME,VETSUNETIME,VETCOMMENT) values (3,'���ﵿ�����庴��','����� ������ ���ַ� 542 ENPŸ��','02-6203-7588',9,22,9,22,10,21,'������ȯ Ưȭ�� ����');
Insert into FORPET.VET (VETSEQ,VETNAME,VETADDRESS,VETPHONE,VETDAYSTIME,VETDAYETIME,VETSATSTIME,VETSATETIME,VETSUNSTIME,VETSUNETIME,VETCOMMENT) values (4,'���ε�������','����� ������ �������8�� 37 �ѵ�����','02-454-8275',9,22,9,22,10,21,'http://hyeminpet.blog.me/');
Insert into FORPET.VET (VETSEQ,VETNAME,VETADDRESS,VETPHONE,VETDAYSTIME,VETDAYETIME,VETSATSTIME,VETSATETIME,VETSUNSTIME,VETSUNETIME,VETCOMMENT) values (5,'����̺��� ��굿������','����� ������ ������86�� 22','02-1644-5653',9,22,9,22,9,22,'24�ð� �');
Insert into FORPET.VET (VETSEQ,VETNAME,VETADDRESS,VETPHONE,VETDAYSTIME,VETDAYETIME,VETSATSTIME,VETSATETIME,VETSUNSTIME,VETSUNETIME,VETCOMMENT) values (6,'������������','����� ������ ���ﵿ ����� 189','02-529-5575',10,21,10,21,10,18,'����� 24�ð�');
Insert into FORPET.VET (VETSEQ,VETNAME,VETADDRESS,VETPHONE,VETDAYSTIME,VETDAYETIME,VETSATSTIME,VETSATETIME,VETSUNSTIME,VETSUNETIME,VETCOMMENT) values (7,'SNC �����޵��ü���','����� ������ ������ 416 ������ 1��','02-562-7582',9,22,9,22,9,22,'http://blog.naver.com/sncamc');
Insert into FORPET.VET (VETSEQ,VETNAME,VETADDRESS,VETPHONE,VETDAYSTIME,VETDAYETIME,VETSATSTIME,VETSATETIME,VETSUNSTIME,VETSUNETIME,VETCOMMENT) values (8,'���򵿹�����','����� ������ ������67�� 56','02-512-0075',9,24,9,24,9,24,'http://blog.naver.com/vetlucy');
Insert into FORPET.VET (VETSEQ,VETNAME,VETADDRESS,VETPHONE,VETDAYSTIME,VETDAYETIME,VETSATSTIME,VETSATETIME,VETSUNSTIME,VETSUNETIME,VETCOMMENT) values (9,'���ʽ���������','����� ������ ����� 406','02-3452-6193',10,20,10,20,0,0,'�Ͽ��ϰ����� �޹�');
Insert into FORPET.VET (VETSEQ,VETNAME,VETADDRESS,VETPHONE,VETDAYSTIME,VETDAYETIME,VETSATSTIME,VETSATETIME,VETSUNSTIME,VETSUNETIME,VETCOMMENT) values (10,'����������','����� ������ ����� 115','1644-9416',9,22,9,22,9,22,'������ �����');
REM INSERTING into FORPET.VETCATEGORY
SET DEFINE OFF;
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (1,1,'��');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (2,2,'��');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (3,3,'��');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (4,4,'��');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (5,5,'�����');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (6,6,'��');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (7,7,'��');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (8,8,'��');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (9,9,'��');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (10,10,'��');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (11,1,'�����');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (12,3,'�����');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (13,4,'�����');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (14,6,'�����');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (15,7,'�����');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (16,8,'�����');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (17,9,'�����');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (18,10,'�����');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (19,1,'��Ÿ');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (20,7,'����Ǳ�');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (21,7,'����');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (22,7,'�䳢');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (23,7,'����ġ');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (24,7,'��Ÿ');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (25,7,'�����');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (26,8,'����');
REM INSERTING into FORPET.VETSCRAP
SET DEFINE OFF;
Insert into FORPET.VETSCRAP (MEMBERSEQ,VETSEQ) values (4,6);
Insert into FORPET.VETSCRAP (MEMBERSEQ,VETSEQ) values (4,9);
Insert into FORPET.VETSCRAP (MEMBERSEQ,VETSEQ) values (8,1);
Insert into FORPET.VETSCRAP (MEMBERSEQ,VETSEQ) values (8,3);
Insert into FORPET.VETSCRAP (MEMBERSEQ,VETSEQ) values (8,4);
Insert into FORPET.VETSCRAP (MEMBERSEQ,VETSEQ) values (8,5);
Insert into FORPET.VETSCRAP (MEMBERSEQ,VETSEQ) values (8,6);
Insert into FORPET.VETSCRAP (MEMBERSEQ,VETSEQ) values (8,10);
Insert into FORPET.VETSCRAP (MEMBERSEQ,VETSEQ) values (9,2);
Insert into FORPET.VETSCRAP (MEMBERSEQ,VETSEQ) values (9,4);
Insert into FORPET.VETSCRAP (MEMBERSEQ,VETSEQ) values (9,5);
Insert into FORPET.VETSCRAP (MEMBERSEQ,VETSEQ) values (9,6);
Insert into FORPET.VETSCRAP (MEMBERSEQ,VETSEQ) values (11,1);
Insert into FORPET.VETSCRAP (MEMBERSEQ,VETSEQ) values (11,2);
Insert into FORPET.VETSCRAP (MEMBERSEQ,VETSEQ) values (11,3);
Insert into FORPET.VETSCRAP (MEMBERSEQ,VETSEQ) values (11,4);
Insert into FORPET.VETSCRAP (MEMBERSEQ,VETSEQ) values (11,5);
Insert into FORPET.VETSCRAP (MEMBERSEQ,VETSEQ) values (11,6);
Insert into FORPET.VETSCRAP (MEMBERSEQ,VETSEQ) values (11,7);
Insert into FORPET.VETSCRAP (MEMBERSEQ,VETSEQ) values (11,8);
Insert into FORPET.VETSCRAP (MEMBERSEQ,VETSEQ) values (11,9);
Insert into FORPET.VETSCRAP (MEMBERSEQ,VETSEQ) values (11,10);
REM INSERTING into FORPET.VETSERVICE
SET DEFINE OFF;
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (1,1,'��ǰ');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (2,2,'�߰�');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (3,2,'ȣ��');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (4,2,'�̿�');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (5,2,'��ǰ');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (6,3,'��ǰ');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (7,4,'��ǰ');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (8,5,'��ǰ');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (9,5,'ȣ��');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (10,5,'�߰�');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (11,6,'�̿�');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (12,7,'�߰�');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (13,7,'�̿�');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (14,8,'��ǰ');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (15,8,'�̿�');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (16,8,'ȣ��');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (17,9,'�߰�');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (18,9,'��ǰ');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (19,9,'�̿�');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (20,10,'��ǰ');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (21,10,'�̿�');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (22,10,'�߰�');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (23,10,'ȣ��');
--------------------------------------------------------
--  DDL for Index PK_VETSERVICE
--------------------------------------------------------

  CREATE UNIQUE INDEX "FORPET"."PK_VETSERVICE" ON "FORPET"."VETSERVICE" ("VETSERVICESEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_KAKAOMEMBER
--------------------------------------------------------

  CREATE UNIQUE INDEX "FORPET"."PK_KAKAOMEMBER" ON "FORPET"."KAKAOMEMBER" ("KAKAOID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_NOTICE
--------------------------------------------------------

  CREATE UNIQUE INDEX "FORPET"."PK_NOTICE" ON "FORPET"."NOTICE" ("NOTICESEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_USERAUTH
--------------------------------------------------------

  CREATE UNIQUE INDEX "FORPET"."PK_USERAUTH" ON "FORPET"."USERAUTH" ("MEMBEREMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_MEMBERFRIEND
--------------------------------------------------------

  CREATE UNIQUE INDEX "FORPET"."PK_MEMBERFRIEND" ON "FORPET"."MEMBERFRIEND" ("MFRIENDSEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_QNAREPLY
--------------------------------------------------------

  CREATE UNIQUE INDEX "FORPET"."PK_QNAREPLY" ON "FORPET"."QNAREPLY" ("COMMENTSEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_BOARDREPLY
--------------------------------------------------------

  CREATE UNIQUE INDEX "FORPET"."PK_BOARDREPLY" ON "FORPET"."BOARDREPLY" ("COMMENTSEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_EVENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "FORPET"."PK_EVENT" ON "FORPET"."EVENT" ("EVENTSEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_MEMBER
--------------------------------------------------------

  CREATE UNIQUE INDEX "FORPET"."PK_MEMBER" ON "FORPET"."MEMBER" ("MEMBERSEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_VETCATEGORY
--------------------------------------------------------

  CREATE UNIQUE INDEX "FORPET"."PK_VETCATEGORY" ON "FORPET"."VETCATEGORY" ("VETCATEGORYSEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_NOTICEIMAGE
--------------------------------------------------------

  CREATE UNIQUE INDEX "FORPET"."PK_NOTICEIMAGE" ON "FORPET"."NOTICEIMAGE" ("FILENAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_BOARDIMAGE
--------------------------------------------------------

  CREATE UNIQUE INDEX "FORPET"."PK_BOARDIMAGE" ON "FORPET"."BOARDIMAGE" ("FILENAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index VETSCRAP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FORPET"."VETSCRAP_PK" ON "FORPET"."VETSCRAP" ("MEMBERSEQ", "VETSEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_CONTACT
--------------------------------------------------------

  CREATE UNIQUE INDEX "FORPET"."PK_CONTACT" ON "FORPET"."CONTACT" ("BOARDSEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_INFOIMAGE
--------------------------------------------------------

  CREATE UNIQUE INDEX "FORPET"."PK_INFOIMAGE" ON "FORPET"."INFOIMAGE" ("FILENAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_MEMBERMSG
--------------------------------------------------------

  CREATE UNIQUE INDEX "FORPET"."PK_MEMBERMSG" ON "FORPET"."MEMBERMSG" ("MMSGSEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_VET
--------------------------------------------------------

  CREATE UNIQUE INDEX "FORPET"."PK_VET" ON "FORPET"."VET" ("VETSEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_BOARD
--------------------------------------------------------

  CREATE UNIQUE INDEX "FORPET"."PK_BOARD" ON "FORPET"."BOARD" ("BOARDSEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_HEALTHINFO
--------------------------------------------------------

  CREATE UNIQUE INDEX "FORPET"."PK_HEALTHINFO" ON "FORPET"."HEALTHINFO" ("INFOSEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_PET
--------------------------------------------------------

  CREATE UNIQUE INDEX "FORPET"."PK_PET" ON "FORPET"."PET" ("PETSEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_EVENTIMAGE
--------------------------------------------------------

  CREATE UNIQUE INDEX "FORPET"."PK_EVENTIMAGE" ON "FORPET"."EVENTIMAGE" ("FILENAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table CONTACT
--------------------------------------------------------

  ALTER TABLE "FORPET"."CONTACT" ADD CONSTRAINT "PK_CONTACT" PRIMARY KEY ("BOARDSEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "FORPET"."CONTACT" MODIFY ("MEMBERSEQ" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."CONTACT" MODIFY ("BOARDSEQ" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOARDIMAGE
--------------------------------------------------------

  ALTER TABLE "FORPET"."BOARDIMAGE" ADD CONSTRAINT "PK_BOARDIMAGE" PRIMARY KEY ("FILENAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "FORPET"."BOARDIMAGE" MODIFY ("BOARDSEQ" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."BOARDIMAGE" MODIFY ("FILENAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table VETSCRAP
--------------------------------------------------------

  ALTER TABLE "FORPET"."VETSCRAP" MODIFY ("MEMBERSEQ" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."VETSCRAP" MODIFY ("VETSEQ" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."VETSCRAP" ADD CONSTRAINT "VETSCRAP_PK" PRIMARY KEY ("MEMBERSEQ", "VETSEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table VET
--------------------------------------------------------

  ALTER TABLE "FORPET"."VET" ADD CONSTRAINT "PK_VET" PRIMARY KEY ("VETSEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "FORPET"."VET" MODIFY ("VETNAME" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."VET" MODIFY ("VETSEQ" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "FORPET"."BOARD" ADD CONSTRAINT "PK_BOARD" PRIMARY KEY ("BOARDSEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "FORPET"."BOARD" MODIFY ("MEMBERSEQ" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."BOARD" MODIFY ("BOARDSEQ" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table INFOIMAGE
--------------------------------------------------------

  ALTER TABLE "FORPET"."INFOIMAGE" ADD CONSTRAINT "PK_INFOIMAGE" PRIMARY KEY ("FILENAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "FORPET"."INFOIMAGE" MODIFY ("INFOSEQ" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."INFOIMAGE" MODIFY ("FILENAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOARDREPLY
--------------------------------------------------------

  ALTER TABLE "FORPET"."BOARDREPLY" ADD CONSTRAINT "PK_BOARDREPLY" PRIMARY KEY ("COMMENTSEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "FORPET"."BOARDREPLY" MODIFY ("COMMENTLEVEL" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."BOARDREPLY" MODIFY ("BOARDSEQ" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."BOARDREPLY" MODIFY ("MEMBERSEQ" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."BOARDREPLY" MODIFY ("COMMENTSEQ" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SMALLBOARDREPLY
--------------------------------------------------------

  ALTER TABLE "FORPET"."SMALLBOARDREPLY" MODIFY ("SBCOMMENTSEQ" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."SMALLBOARDREPLY" MODIFY ("MEMBERSEQ" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."SMALLBOARDREPLY" MODIFY ("SMALLBOARDSEQ" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."SMALLBOARDREPLY" MODIFY ("SBCOMMENTLEVEL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KAKAOMEMBER
--------------------------------------------------------

  ALTER TABLE "FORPET"."KAKAOMEMBER" ADD CONSTRAINT "PK_KAKAOMEMBER" PRIMARY KEY ("KAKAOID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "FORPET"."KAKAOMEMBER" MODIFY ("MEMBERSEQ" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."KAKAOMEMBER" MODIFY ("KAKAOID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table VETSERVICE
--------------------------------------------------------

  ALTER TABLE "FORPET"."VETSERVICE" ADD CONSTRAINT "PK_VETSERVICE" PRIMARY KEY ("VETSERVICESEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "FORPET"."VETSERVICE" MODIFY ("VETSEQ" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."VETSERVICE" MODIFY ("VETSERVICESEQ" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NOTICEIMAGE
--------------------------------------------------------

  ALTER TABLE "FORPET"."NOTICEIMAGE" ADD CONSTRAINT "PK_NOTICEIMAGE" PRIMARY KEY ("FILENAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "FORPET"."NOTICEIMAGE" MODIFY ("NOTICESEQ" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."NOTICEIMAGE" MODIFY ("FILENAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBERFRIEND
--------------------------------------------------------

  ALTER TABLE "FORPET"."MEMBERFRIEND" MODIFY ("MFRIENDSEQ" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."MEMBERFRIEND" MODIFY ("MEMBERSEQ" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."MEMBERFRIEND" MODIFY ("MFRIENDMATENO" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."MEMBERFRIEND" MODIFY ("MFRIENDNICKNAME" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."MEMBERFRIEND" ADD CONSTRAINT "PK_MEMBERFRIEND" PRIMARY KEY ("MFRIENDSEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EVENTIMAGE
--------------------------------------------------------

  ALTER TABLE "FORPET"."EVENTIMAGE" MODIFY ("FILENAME" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."EVENTIMAGE" ADD CONSTRAINT "PK_EVENTIMAGE" PRIMARY KEY ("FILENAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "FORPET"."EVENTIMAGE" MODIFY ("EVENTSEQ" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table QNAREPLY
--------------------------------------------------------

  ALTER TABLE "FORPET"."QNAREPLY" ADD CONSTRAINT "PK_QNAREPLY" PRIMARY KEY ("COMMENTSEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "FORPET"."QNAREPLY" MODIFY ("COMMENTLEVEL" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."QNAREPLY" MODIFY ("COMMENTREF" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."QNAREPLY" MODIFY ("BOARDSEQ" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."QNAREPLY" MODIFY ("MEMBERSEQ" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."QNAREPLY" MODIFY ("COMMENTSEQ" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SMALLBOARD
--------------------------------------------------------

  ALTER TABLE "FORPET"."SMALLBOARD" MODIFY ("SMALLBOARDSEQ" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."SMALLBOARD" MODIFY ("MEMBERSEQ" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HEALTHINFO
--------------------------------------------------------

  ALTER TABLE "FORPET"."HEALTHINFO" ADD CONSTRAINT "PK_HEALTHINFO" PRIMARY KEY ("INFOSEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "FORPET"."HEALTHINFO" MODIFY ("INFOSEQ" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBERMSG
--------------------------------------------------------

  ALTER TABLE "FORPET"."MEMBERMSG" MODIFY ("MMSGSEQ" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."MEMBERMSG" MODIFY ("MEMBERNICKNAME" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."MEMBERMSG" MODIFY ("MMSGCATE" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."MEMBERMSG" MODIFY ("MMSGRCVNICKNAME" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."MEMBERMSG" MODIFY ("MMSGDATE" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."MEMBERMSG" MODIFY ("MMSGREAD" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."MEMBERMSG" ADD CONSTRAINT "PK_MEMBERMSG" PRIMARY KEY ("MMSGSEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USERAUTH
--------------------------------------------------------

  ALTER TABLE "FORPET"."USERAUTH" MODIFY ("MEMBEREMAIL" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."USERAUTH" ADD CONSTRAINT "PK_USERAUTH" PRIMARY KEY ("MEMBEREMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EVENT
--------------------------------------------------------

  ALTER TABLE "FORPET"."EVENT" ADD CONSTRAINT "PK_EVENT" PRIMARY KEY ("EVENTSEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "FORPET"."EVENT" MODIFY ("MEMBERSEQ" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."EVENT" MODIFY ("EVENTSEQ" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PET
--------------------------------------------------------

  ALTER TABLE "FORPET"."PET" ADD CONSTRAINT "PK_PET" PRIMARY KEY ("PETSEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "FORPET"."PET" MODIFY ("MEMBERSEQ" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."PET" MODIFY ("PETSEQ" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table VETCATEGORY
--------------------------------------------------------

  ALTER TABLE "FORPET"."VETCATEGORY" ADD CONSTRAINT "PK_VETCATEGORY" PRIMARY KEY ("VETCATEGORYSEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "FORPET"."VETCATEGORY" MODIFY ("VETSEQ" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."VETCATEGORY" MODIFY ("VETCATEGORYSEQ" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "FORPET"."NOTICE" ADD CONSTRAINT "PK_NOTICE" PRIMARY KEY ("NOTICESEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "FORPET"."NOTICE" MODIFY ("MEMBERSEQ" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."NOTICE" MODIFY ("NOTICESEQ" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "FORPET"."MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY ("MEMBERSEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "FORPET"."MEMBER" MODIFY ("MEMBERNAME" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."MEMBER" MODIFY ("MEMBERNICKNAME" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."MEMBER" MODIFY ("MEMBERPASSWORD" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."MEMBER" MODIFY ("MEMBEREMAIL" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."MEMBER" MODIFY ("MEMBERSEQ" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ATTACHMENT
--------------------------------------------------------

  ALTER TABLE "FORPET"."ATTACHMENT" MODIFY ("BOARDNO" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."ATTACHMENT" MODIFY ("ORIGINALFILENAME" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."ATTACHMENT" MODIFY ("RENAMEDFILENAME" NOT NULL ENABLE);
  ALTER TABLE "FORPET"."ATTACHMENT" ADD PRIMARY KEY ("ATTACHMENTNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ATTACHMENT
--------------------------------------------------------

  ALTER TABLE "FORPET"."ATTACHMENT" ADD CONSTRAINT "FK_BOARDNO" FOREIGN KEY ("BOARDNO")
	  REFERENCES "FORPET"."BOARD" ("BOARDSEQ") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "FORPET"."BOARD" ADD CONSTRAINT "FK_MEMBER_TO_BOARD_1" FOREIGN KEY ("MEMBERSEQ")
	  REFERENCES "FORPET"."MEMBER" ("MEMBERSEQ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BOARDIMAGE
--------------------------------------------------------

  ALTER TABLE "FORPET"."BOARDIMAGE" ADD CONSTRAINT "FK_BOARD_TO_BOARDIMAGE_1" FOREIGN KEY ("BOARDSEQ")
	  REFERENCES "FORPET"."BOARD" ("BOARDSEQ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BOARDREPLY
--------------------------------------------------------

  ALTER TABLE "FORPET"."BOARDREPLY" ADD CONSTRAINT "FK_BOARDREPLY_TO_BOARDREPLY_1" FOREIGN KEY ("COMMENTREF")
	  REFERENCES "FORPET"."BOARDREPLY" ("COMMENTSEQ") ON DELETE CASCADE ENABLE;
  ALTER TABLE "FORPET"."BOARDREPLY" ADD CONSTRAINT "FK_MEMBER_TO_BOARDREPLY_1" FOREIGN KEY ("MEMBERSEQ")
	  REFERENCES "FORPET"."MEMBER" ("MEMBERSEQ") ENABLE;
  ALTER TABLE "FORPET"."BOARDREPLY" ADD CONSTRAINT "FK_REPLY" FOREIGN KEY ("BOARDSEQ")
	  REFERENCES "FORPET"."BOARD" ("BOARDSEQ") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CONTACT
--------------------------------------------------------

  ALTER TABLE "FORPET"."CONTACT" ADD CONSTRAINT "FK_MEMBER_TO_CONTACT_1" FOREIGN KEY ("MEMBERSEQ")
	  REFERENCES "FORPET"."MEMBER" ("MEMBERSEQ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EVENT
--------------------------------------------------------

  ALTER TABLE "FORPET"."EVENT" ADD CONSTRAINT "FK_MEMBER_TO_EVENT_1" FOREIGN KEY ("MEMBERSEQ")
	  REFERENCES "FORPET"."MEMBER" ("MEMBERSEQ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EVENTIMAGE
--------------------------------------------------------

  ALTER TABLE "FORPET"."EVENTIMAGE" ADD CONSTRAINT "FK_EVENT_TO_EVENTIMAGE_1" FOREIGN KEY ("EVENTSEQ")
	  REFERENCES "FORPET"."EVENT" ("EVENTSEQ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table INFOIMAGE
--------------------------------------------------------

  ALTER TABLE "FORPET"."INFOIMAGE" ADD CONSTRAINT "FK_HEALTHINFO_TO_INFOIMAGE_1" FOREIGN KEY ("INFOSEQ")
	  REFERENCES "FORPET"."HEALTHINFO" ("INFOSEQ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table KAKAOMEMBER
--------------------------------------------------------

  ALTER TABLE "FORPET"."KAKAOMEMBER" ADD CONSTRAINT "FK_MEMBER_TO_KAKAOMEMBER_1" FOREIGN KEY ("MEMBERSEQ")
	  REFERENCES "FORPET"."MEMBER" ("MEMBERSEQ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "FORPET"."MEMBER" ADD CONSTRAINT "FK_VETSCRAP" FOREIGN KEY ("MEMBERSEQ")
	  REFERENCES "FORPET"."MEMBER" ("MEMBERSEQ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "FORPET"."NOTICE" ADD CONSTRAINT "FK_MEMBER_TO_NOTICE_1" FOREIGN KEY ("MEMBERSEQ")
	  REFERENCES "FORPET"."MEMBER" ("MEMBERSEQ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NOTICEIMAGE
--------------------------------------------------------

  ALTER TABLE "FORPET"."NOTICEIMAGE" ADD CONSTRAINT "FK_NOTICE_TO_NOTICEIMAGE_1" FOREIGN KEY ("NOTICESEQ")
	  REFERENCES "FORPET"."NOTICE" ("NOTICESEQ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PET
--------------------------------------------------------

  ALTER TABLE "FORPET"."PET" ADD CONSTRAINT "FK_MEMBER_TO_PET_1" FOREIGN KEY ("MEMBERSEQ")
	  REFERENCES "FORPET"."MEMBER" ("MEMBERSEQ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table QNAREPLY
--------------------------------------------------------

  ALTER TABLE "FORPET"."QNAREPLY" ADD CONSTRAINT "FK_CONTACT_TO_QNAREPLY_1" FOREIGN KEY ("BOARDSEQ")
	  REFERENCES "FORPET"."CONTACT" ("BOARDSEQ") ENABLE;
  ALTER TABLE "FORPET"."QNAREPLY" ADD CONSTRAINT "FK_MEMBER_TO_QNAREPLY_1" FOREIGN KEY ("MEMBERSEQ")
	  REFERENCES "FORPET"."MEMBER" ("MEMBERSEQ") ENABLE;
  ALTER TABLE "FORPET"."QNAREPLY" ADD CONSTRAINT "FK_QNAREPLY_TO_QNAREPLY_1" FOREIGN KEY ("COMMENTREF")
	  REFERENCES "FORPET"."QNAREPLY" ("COMMENTSEQ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VET
--------------------------------------------------------

  ALTER TABLE "FORPET"."VET" ADD CONSTRAINT "FK_MEMBERSCRAP" FOREIGN KEY ("VETSEQ")
	  REFERENCES "FORPET"."VET" ("VETSEQ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VETCATEGORY
--------------------------------------------------------

  ALTER TABLE "FORPET"."VETCATEGORY" ADD CONSTRAINT "FK_VET_TO_VETCATEGORY_1" FOREIGN KEY ("VETSEQ")
	  REFERENCES "FORPET"."VET" ("VETSEQ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VETSCRAP
--------------------------------------------------------

  ALTER TABLE "FORPET"."VETSCRAP" ADD CONSTRAINT "FK_VETSCRAP_PK" FOREIGN KEY ("MEMBERSEQ")
	  REFERENCES "FORPET"."MEMBER" ("MEMBERSEQ") ENABLE;
  ALTER TABLE "FORPET"."VETSCRAP" ADD CONSTRAINT "FK_VETSCRAP_PK2" FOREIGN KEY ("VETSEQ")
	  REFERENCES "FORPET"."VET" ("VETSEQ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VETSERVICE
--------------------------------------------------------

  ALTER TABLE "FORPET"."VETSERVICE" ADD CONSTRAINT "FK_VET_TO_VETSERVICE_1" FOREIGN KEY ("VETSEQ")
	  REFERENCES "FORPET"."VET" ("VETSEQ") ENABLE;
