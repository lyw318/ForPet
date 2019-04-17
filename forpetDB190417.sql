--------------------------------------------------------
--  파일이 생성됨 - 수요일-4월-17-2019   
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

   COMMENT ON COLUMN "FORPET"."ATTACHMENT"."ATTACHMENTNO" IS '첨부파일번호(PK)';
   COMMENT ON COLUMN "FORPET"."ATTACHMENT"."BOARDNO" IS '게시판글번호(FK)';
   COMMENT ON COLUMN "FORPET"."ATTACHMENT"."ORIGINALFILENAME" IS '업로드한 첨부파일명';
   COMMENT ON COLUMN "FORPET"."ATTACHMENT"."RENAMEDFILENAME" IS '서버에 저장된 첨부파일명';
   COMMENT ON COLUMN "FORPET"."ATTACHMENT"."UPLOADDATE" IS '업로드일자';
   COMMENT ON COLUMN "FORPET"."ATTACHMENT"."DOWNLOADCOUNT" IS '다운로드 횟수';
   COMMENT ON COLUMN "FORPET"."ATTACHMENT"."STATUS" IS '사용여부';
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
	"MFRIENDTYPE" VARCHAR2(100 BYTE) DEFAULT '일반'
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
	"MMSGCATE" VARCHAR2(100 BYTE) DEFAULT '일반', 
	"MMSGRCVNICKNAME" VARCHAR2(100 BYTE), 
	"MMSGCONTENT" VARCHAR2(4000 BYTE), 
	"MMSGDATE" DATE DEFAULT sysdate, 
	"MMSGREAD" VARCHAR2(10 BYTE) DEFAULT 'N', 
	"MMSGTYPE" VARCHAR2(100 BYTE) DEFAULT '일반'
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
	"VETCOMMENT" VARCHAR2(100 BYTE) DEFAULT '부가정보가 없습니다'
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

   COMMENT ON COLUMN "FORPET"."VETSCRAP"."MEMBERSEQ" IS '사용자번호';
   COMMENT ON COLUMN "FORPET"."VETSCRAP"."VETSEQ" IS '병원번호';
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
Insert into FORPET.BOARD (BOARDSEQ,MEMBERSEQ,BOARDTITLE,BOARDCONTENT,BOARDREADCOUNT,BOARDDATE) values (10,11,'와 좋은 사이트네요..ㅎㅎ','자유롭게 글을 써 보아요~',4,to_date('19/04/17','RR/MM/DD'));
Insert into FORPET.BOARD (BOARDSEQ,MEMBERSEQ,BOARDTITLE,BOARDCONTENT,BOARDREADCOUNT,BOARDDATE) values (3,3,'역삼에 괜찮은 병원 있나요??','착한 의사 선생님 있는 강아지 병원으로 가고 싶어요 역삼 근처에 좋은 병원 있으면 알려주세요~~',23,to_date('19/04/16','RR/MM/DD'));
Insert into FORPET.BOARD (BOARDSEQ,MEMBERSEQ,BOARDTITLE,BOARDCONTENT,BOARDREADCOUNT,BOARDDATE) values (4,9,'역삼역에 민첩한어금니병원 있나요~??','민첩한 어금니 병원이 잘한다고 해서 가고 싶어요 정보좀 부탁드려요!!',17,to_date('19/04/16','RR/MM/DD'));
Insert into FORPET.BOARD (BOARDSEQ,MEMBERSEQ,BOARDTITLE,BOARDCONTENT,BOARDREADCOUNT,BOARDDATE) values (12,5,'공지사항 질문있어요','공지사항은 주기적으로 올라오나요? ',2,to_date('19/04/17','RR/MM/DD'));
Insert into FORPET.BOARD (BOARDSEQ,MEMBERSEQ,BOARDTITLE,BOARDCONTENT,BOARDREADCOUNT,BOARDDATE) values (11,9,'토끼 두마리 질문이요','토끼 두마리 질문있어요~
같이 키우면 서로 싸우나요?
',3,to_date('19/04/17','RR/MM/DD'));
Insert into FORPET.BOARD (BOARDSEQ,MEMBERSEQ,BOARDTITLE,BOARDCONTENT,BOARDREADCOUNT,BOARDDATE) values (13,4,'파이널 재밌다~~','12321',5,to_date('19/04/17','RR/MM/DD'));
REM INSERTING into FORPET.BOARDIMAGE
SET DEFINE OFF;
REM INSERTING into FORPET.BOARDREPLY
SET DEFINE OFF;
Insert into FORPET.BOARDREPLY (COMMENTSEQ,MEMBERSEQ,BOARDSEQ,COMMENTREF,COMMENTDATE,COMMENTTEXT,COMMENTLEVEL) values (43,5,11,null,to_date('19/04/17','RR/MM/DD'),'토끼는 서로 잡아먹어서 같이 키우면 안된답니다!!!!!!!',1);
Insert into FORPET.BOARDREPLY (COMMENTSEQ,MEMBERSEQ,BOARDSEQ,COMMENTREF,COMMENTDATE,COMMENTTEXT,COMMENTLEVEL) values (44,11,12,null,to_date('19/04/17','RR/MM/DD'),'아마도요..ㅎㅎ 필요하면 관리자가 올리지 않을까요?
',1);
Insert into FORPET.BOARDREPLY (COMMENTSEQ,MEMBERSEQ,BOARDSEQ,COMMENTREF,COMMENTDATE,COMMENTTEXT,COMMENTLEVEL) values (3,4,3,null,to_date('19/04/16','RR/MM/DD'),'kh병원 개좋아 기가 맥히지~~',1);
Insert into FORPET.BOARDREPLY (COMMENTSEQ,MEMBERSEQ,BOARDSEQ,COMMENTREF,COMMENTDATE,COMMENTTEXT,COMMENTLEVEL) values (4,5,3,null,to_date('19/04/16','RR/MM/DD'),'맞아요 그 병원 좋아요!!',1);
Insert into FORPET.BOARDREPLY (COMMENTSEQ,MEMBERSEQ,BOARDSEQ,COMMENTREF,COMMENTDATE,COMMENTTEXT,COMMENTLEVEL) values (5,6,3,null,to_date('19/04/16','RR/MM/DD'),'의사 선생님 착하시고 강아지도 개조용해요',1);
Insert into FORPET.BOARDREPLY (COMMENTSEQ,MEMBERSEQ,BOARDSEQ,COMMENTREF,COMMENTDATE,COMMENTTEXT,COMMENTLEVEL) values (6,3,3,5,to_date('19/04/16','RR/MM/DD'),'오 감사합니다!!',2);
Insert into FORPET.BOARDREPLY (COMMENTSEQ,MEMBERSEQ,BOARDSEQ,COMMENTREF,COMMENTDATE,COMMENTTEXT,COMMENTLEVEL) values (7,3,3,4,to_date('19/04/16','RR/MM/DD'),'감사합니다~~',2);
Insert into FORPET.BOARDREPLY (COMMENTSEQ,MEMBERSEQ,BOARDSEQ,COMMENTREF,COMMENTDATE,COMMENTTEXT,COMMENTLEVEL) values (8,3,3,3,to_date('19/04/16','RR/MM/DD'),'기가 맥히면 가야쥐',2);
Insert into FORPET.BOARDREPLY (COMMENTSEQ,MEMBERSEQ,BOARDSEQ,COMMENTREF,COMMENTDATE,COMMENTTEXT,COMMENTLEVEL) values (9,3,4,null,to_date('19/04/16','RR/MM/DD'),'역삼에는 이클립스 병원이 잘하는데 민첩한 어금니는 ㅂㄹ에요...',1);
Insert into FORPET.BOARDREPLY (COMMENTSEQ,MEMBERSEQ,BOARDSEQ,COMMENTREF,COMMENTDATE,COMMENTTEXT,COMMENTLEVEL) values (10,4,4,null,to_date('19/04/16','RR/MM/DD'),'거기 안좋다고 했어요 가지마세요 어금니만 잘본다는 소리가 있어요',1);
Insert into FORPET.BOARDREPLY (COMMENTSEQ,MEMBERSEQ,BOARDSEQ,COMMENTREF,COMMENTDATE,COMMENTTEXT,COMMENTLEVEL) values (11,9,4,10,to_date('19/04/16','RR/MM/DD'),'왜 민첩한어금니무시하냐ㅡㅡ',2);
Insert into FORPET.BOARDREPLY (COMMENTSEQ,MEMBERSEQ,BOARDSEQ,COMMENTREF,COMMENTDATE,COMMENTTEXT,COMMENTLEVEL) values (12,9,4,9,to_date('19/04/16','RR/MM/DD'),'민첩한 어금니 좋아 ㅡㅡ',2);
Insert into FORPET.BOARDREPLY (COMMENTSEQ,MEMBERSEQ,BOARDSEQ,COMMENTREF,COMMENTDATE,COMMENTTEXT,COMMENTLEVEL) values (47,8,4,null,to_date('19/04/17','RR/MM/DD'),'민첩한 어금니 원장님 여기서 이러시면 안됩니다. ㅡㅜㅡ;',1);
Insert into FORPET.BOARDREPLY (COMMENTSEQ,MEMBERSEQ,BOARDSEQ,COMMENTREF,COMMENTDATE,COMMENTTEXT,COMMENTLEVEL) values (42,9,10,null,to_date('19/04/17','RR/MM/DD'),'혹시 소모임 게시판도 있나요~?',1);
REM INSERTING into FORPET.CONTACT
SET DEFINE OFF;
REM INSERTING into FORPET.EVENT
SET DEFINE OFF;
Insert into FORPET.EVENT (EVENTSEQ,MEMBERSEQ,EVENTTITLE,EVENTCONTENT,READCOUNT,EVENTSTART,EVENTFINISH) values (1,8,'K-pop스타와 함께하는 ''반려동물 유기반대 캠페인''','K-pop스타와 함께하는 ''반려동물 유기반대 캠페인''

여러분도 동참하세요
',4,to_date('19/04/10','RR/MM/DD'),to_date('19/04/18','RR/MM/DD'));
Insert into FORPET.EVENT (EVENTSEQ,MEMBERSEQ,EVENTTITLE,EVENTCONTENT,READCOUNT,EVENTSTART,EVENTFINISH) values (2,8,'영국왕립수의과대학과 연구협약 체결!','"고양이와 특발성 방광염 사이의 관계에 대한 역학조사를 위해
영국 왕립 수의과 대학(RVC)과 연구협약을 체결하였습니다.

＊영국왕립수의과대학은 (Royal Veterinary College, University of London) 영국 런던에
위치하고 있으며, 1791년에 설립된 영국 최초의 수의대입니다.
1949년에 런던대학교로 개편하여 다시 문을 열었고 유럽수의과 대학 중 1위,
UC Davis, Cornell 대학교에 이어 세계 3위에 랭크될 정도로 명문 수의대학입니다. 
또한 영국에서는 유일하게 미국 수의과 협회의 인증을 받았습니다.

세계적인 수의과대학과 함께 보다 정확한 진료와 효과적인
치료를 위해 더욱 노력하겠습니다.
',3,to_date('19/01/01','RR/MM/DD'),to_date('19/01/31','RR/MM/DD'));
Insert into FORPET.EVENT (EVENTSEQ,MEMBERSEQ,EVENTTITLE,EVENTCONTENT,READCOUNT,EVENTSTART,EVENTFINISH) values (7,8,'1321231','수정되었습니다.',4,to_date('19/04/01','RR/MM/DD'),to_date('19/04/17','RR/MM/DD'));
Insert into FORPET.EVENT (EVENTSEQ,MEMBERSEQ,EVENTTITLE,EVENTCONTENT,READCOUNT,EVENTSTART,EVENTFINISH) values (4,8,'CGV, 고양이 영화보고 반려묘 클래스 듣자','<pre>
CGV가 고양이 관련 영화를 관람하고 수의사 초청 반려묘 클래스에 참여하는 상영이벤트를 연다고 8일 밝혔다.

CGV가 마련한 ‘묘(猫)한 집사되기 프로젝트’ 상영이벤트는 오는 8월 16일 CGV압구정에서 진행될 예정이다.

 

당일 저녁 7시부터 영화 ‘나는 고양이로소이다(6/8 개봉작)’를 상영한 후 약 50분간 반려묘 클래스가 이어진다.

고양이만 진료하는 백산동물병원의 김명철 원장을 초청해 영화와 관련된 길고양이 구조, 고양이 문화를 알아보고 반려묘 양육에 대한 질의응답을 진행한다...... [계속]

 

기사바로가기> http://www.dailyvet.co.kr/news/etc/81943
</pre>',5,to_date('19/01/01','RR/MM/DD'),to_date('19/09/30','RR/MM/DD'));
Insert into FORPET.EVENT (EVENTSEQ,MEMBERSEQ,EVENTTITLE,EVENTCONTENT,READCOUNT,EVENTSTART,EVENTFINISH) values (8,8,'무지개를 클릭하면 경품이 팍팍!','<style>
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
$(soManyLi[i]).click(function (i){$("li").click(null);if(i!=33){alert("꽝! 다음기회에")}else{"이벤트 당첨! 축하합니다"} })
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
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (3,'Cat',' ''고양이 주요질병'' 안내','<pre>
고양이 보호자 필수 의학지식

''고양이 주요질병'' 안내

상세 설명과 함께 자세히 보시려면 클릭하세요! > http://www.thecatclinic.co.kr/mycat/content/center_02.php
</pre>');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (5,'GuineaPig','기니피그를 위한 환경 조성하는 법','케이지를 만듭니다. 기니피그 한 마리당 최소 40cm² 이상이 되는 케이지가 필요합니다. 두 마리를 키울 경우 최소 80cm² 이상의 케이지를 준비하도록 합니다.[1] 케이지는 클 수록 좋습니다. 큰 케이지를 둘 장소가 있다면 큰 케이지를 구매하도록 합니다. 기니피그가 신나 뛰어다니는 광경을 볼 수 있습니다.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (6,'GuineaPig','기니피그를 위한 케이지 구매방법','단단한 바닥이 있는 케이지를 구매합니다. 와이어 바닥으로 된 케이지는 와이어에 기니피그의 약한 발에 적합하지 않으므로 구매하지 않습니다. 와이어 때문에 기니피그의 발에 혹이 생길 수 있습니다.[2]');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (7,'GuineaPig','기니피그를 위한 케이지 특징','
케이지 벽이 최소 30- 40cm 이상이라면 뚜껑을 설치할 필요가 없습니다. 펜스가 높게 세워졌다면 뚜껑까지 필요하지는 않습니다. 하지만 뚜껑이 있다면 케이지에 뭔가 떨어지거나 실수로 들어가지 않도록 보험 역할을 해줄 수 있습니다.
케이지를 야외에 보관해야 하는 상황이라면, 어린이들이 함부로 손을 뻗거나 맹수가 케이지 안으로 들어가지 않도록 뚜껑이 반드시 필요합니다.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (8,'GuineaPig','층이 있는 케이지는 사용 시 유의','층이 있는 케이지는 사용 시 유의하도록 합니다. 15cm 이상의 높이에서 기니피그가 추락하면 기니피그의 발이나 다리가 다칠 수 있으니 나이가 든 기니피그의 경우 단층 케이지를 마련해주는 것이 가장 이상적입니다. 기니피그가 경사로를 오르지 못할 수도 있다는 점을 유의하도록 합니다. [3]');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (9,'GuineaPig','기니피그에게 침대를 마련','잘게 자른 종이를 몇 센티 정도 깔아 기니피그에게 침대를 마련해줍니다. 종이가 냄새를 빨아들이므로 습도가 높은 곳에 사는 경우 최소 일주일에 두 번 이상 교체해 주도록 합니다. 삼나무나 소나무 톱밥으로 만든 침대를 이용할 경우 호흡 질환을 일으킬 수 있으므로 이를 사용하지 않도록 합니다. 사시나무는 보통 사용하기 무난하나 냄새가 심하게 날 경우 이를 충분히 날리고 사용하도록 합니다. 종이를 사용하는 것이 제일 안전합니다.[4] 침대 밑에 부드러운 플리스 재질의 담요나 유하울 (UHaul) 패드나 다른 흡착제를 깔아 침대를 바꿔줄 때 한 번에 바꿔주면 비교적 청소를 수월하게 진행할 수 있습니다. 담요를 이용하는 경우 매일 바꿔주도록 합니다.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (10,'GuineaPig','케이지를 둘 좋은 장소를 탐색','케이지를 둘 좋은 장소를 탐색합니다. 하루에 가족들이 가장 많은 시간을 보내는 곳에 케이지를 설치하는 것이 좋습니다. 거실이나 침실, 복도에서 가족들이 지내는 시간이 많으므로 여기에 케이지를 설치하는 것을 고려해봅니다. 사람에게 많이 노출 될 수록 기니피그가 사람에게 적응하는 기간을 줄여줄 수 있습니다.[5]
케이지를 밀거나, 엎거나, 치지 않도록 주의합니다. 기니피그가 큰 상처를 입을 수 있습니다.
케이지를 주차장에 설치하지 않도록 합니다. 차에서 나오는 매연에 기니피그가 건강을 해치거나 심할 경우 목숨을 잃을 수 있습니다. 또한 주차장의 경우 낮과 밤의 온도차가 심하므로 기니피그가 지내기에 좋지 않습니다.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (11,'GuineaPig','기니피그는 온도에 민감한 동물','
기니피그는 온도에 민감한 동물임을 유의합니다. 수의사들은 대부분 사람과 더 교류할 수도 있게끔 기니피그를 실내에서 기르는 것을 추천합니다. 햇빛을 규칙적으로 쬐어주는 것이 좋다는 의견도 있습니다.
길고양이가 있다면 기니피그를 야외로 내보내지 않도록 합니다! 실내와 실외 활동 시간 비율은 사는 지역의 기후 등 여러 가지 요인에 따라 다르게 정해야 합니다. 지역 수의사에게 해당 지역에서 기르는 기니피그에게 적합한 실내/실외 활동 시간에 대해 상담 받도록 합니다.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (12,'GuineaPig','한 번에 한 쌍 이상을 입양','외로움을 타지 않도록 한 번에 한 쌍 이상을 입양합니다. 기니피그는 무리 생물이므로 동료가 필요합니다. 형제나 자매, 혹은 남매를 입양하지 않으면 입양한 기니피그끼리 싸움을 일으킬 수 있으므로 입양 시 주의하도록 합니다. 수컷 기니피그와 암컷 기니피그를 입양하면 짝짓기를 할 가능성이 있습니다. 매일 기니피그와 함께 시간을 보내도록 합니다. 사회적인 동물을 혼자 내버려두면 우울증에 빠질 위험이 있습니다. 암컷 기니피그 두 마리, 혹은 중성화되었거나 함께 자란 수컷 기니피그를 두 마리씩 입양하는 것이 좋습니다.
남녀 기니피그를 섞어서 입양해도 좋지만 짝짓기를 할 수 있음에 유의합니다. 암컷이 임신을 한 것 같다면 수컷과 즉시 분리하고 진찰을 받기 위해 수의사에게 데려갑니다.
기니피그는 중성화한 암수를 섞어 여러 마리를 단체로 길러도 좋습니다. 야생 기니피그는 무리를 지어 생활합니다. 기니피그를 여러 마리 함께 기르면 기니피그가 눈에 띄게 활발하고 행복해하는 것을 관찰할 수 있습니다. 하지만 기니피그를 여러 마리 기르게 된다면, 그만큼 넓은 공간을 확보해 주어야 하는 것을 잊지 맙시다!
기니피그가 싸우지 않도록 처음 소개 시키는 데 충분한 시간과 기간을 들이도록 합니다.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (13,'GuineaPig','기니피그를 길들이자','기니피그를 길들이도록 합니다. 케이지 옆에 앉아 기니피그에게 말을 겁니다. 이렇게 시간을 보내면 기니피그가 내 목소리와 냄새에 익숙해질 수 있습니다. 기니피그가 내 존재에 익숙해진 것이 보인다면 케이지에 살며시 손을 넣어 봅니다. 기니피그가 손 가까이 오면 쓰다듬어 줍니다. 하지만 가까이 오지 않는 기니피그를 따라 이리저리 쫓지 않도록 합니다
음식을 사용해 훈련을 시켜도 좋습니다. 음식을 가지고 접근하도록 합니다. 기니피그가 주인과 음식을 연관시키면 손으로 음식을 주도록 합니다.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (14,'GuineaPig','신선한 물을 충분히 공급합니다','신선한 물을 충분히 공급합니다. 애완동물을 기른다면 신선하고 깨끗한 물을 항시 공급하는 것이 제일 중요하다고 해도 과언이 아닙니다. 케이지 안에 물그릇이나 물병을 설치해줍니다.[6]
물병을 설치해주면 좀 더 깔끔해 보일 수 있지만 샐 가능성이 있습니다. 물그릇은 이럴 가능성이 적으며 기니피그가 좀 더 쉽게 사용할 수 있습니다. 하지만 목재 침대를 사용한다면 물그릇에 톱밥이 들어갈 수 있는 것을 감안합니다.
가장 좋은 물병은 기니피그 용 혹은 토끼 용으로 나온 주둥이에 공이 달린 물병입니다.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (17,'GuineaPig','물병 혹은 물 그릇은 항상 깨끗하게 관리','기니피그의 물병 혹은 물 그릇은 항상 깨끗하게 관리하고 물은 매일 바꿔줍니다. 물병은 병에 생쌀과 물을 약간 넣고 세게 흔들어주며 청소할 수 있습니다. 생쌀이 물병에 생길 수 있는 조류 등을 제거해줍니다.
면봉으로 기니피그가 빨게 되는 물병 빨대를 청소해줍니다. 물 흐름을 막을 수 있거나 세균이 번식할 수 있는 음식 잔해나 먼지가 끼어있지는 않은지 확인하며 깨끗이 닦아줍니다.
낮 동안 케이지에 햇볕이 든다면 이 햇볕으로 인해 물병 안에 조류 등이 생길 수 있습니다. 물병에 불투명한 천을 덮어줘 혹시 일어날 수 있는 불상사를 방지하도록 합니다.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (18,'GuineaPig','물은 순수하게 공급','물에 비타민 알약이나 물약을 더하지 않도록 합니다. 비타민 공급 효과도 미미할 뿐더러 기니피그가 물을 안 마시게 될 지도 모릅니다.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (19,'GuineaPig','건초는 항시 공급합니다.','건초는 항시 공급합니다. 기니피그는 방목 가축이므로 큰조아재비나 새발풀처럼 항상 뜯어 먹을 수 있는 건초가 필요합니다. 그렇지 않으면 소화관이 망가질 위험이 있습니다. 다만 건초에 눈이 찔릴 위험이 있으므로 건초를 손으로 좀 쳐서 풀이 죽게 만들어 풀의 날카로운 끝이 위를 향하지 않도록 합니다.
자주개자리(알팔파) 풀은 6개월 이하의 새끼 기니피그나 임신한 기니피그 혹은 건강 상태가 안 좋은 기니피그에게만 먹이도록 합니다. 자주개자리 풀에는 칼슘이 많아 건강한 기니피그에게는 필요하지 않습니다.
큰조아재비나 새발풀, 블루그래스는 6개월 이상의 기니피그에게 먹이도록 합니다. 케이지에 일정량을 놓아 두고 자유급식을 하도록 합니다.
건초가 부족하면 부정 교합을 일으켜 수술을 받아야 할 수도 있고 소화관이 망가지는 GI 정체가 일어나 사망으로까지 이어질 수 있습니다.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (20,'GuineaPig','매일 신선한 야채를 공급합니다. ','<pre>
매일 신선한 야채를 공급합니다. 초록색 이파리 채소가 기니피그가 매일 먹는 음식의 20% 정도를 차지하도록 신경씁니다. 아인산이나 칼슘, 비타민 A를 많이 함유한 채소를 많이 먹이면 기니피그가 배탈이 나고 건강에 치명적인 설사를 할 수 있으므로 주의합니다. 믿을만한 기니피그 전문 홈페이지나 지역 수의사에게서 기니피그에게 먹여도 안전한 과일과 채소 종류를 확인하는 것이 좋습니다.[7]
기니피그에게 채소를 줄 때는 비타민 C 함유량이 높은 채소를 주도록 합니다. 비타민 C는 기니피그 체내에서 생성이 불가능한 비타민이고 비타민 C가 너무 적은 경우 괴혈병 같은 질병에 거릴 수 있습니다.
기니피그에게 좋은 채소는 녹색 채소, 셀러리, 당근, 줄기나 꼭지를 제거한 토마토 열매, 오이, 파슬리, 케일, 생 브로콜리 소량, 소량의 시금치와 완두콩이 있습니다. 기니피그의 소화관에 무리가 가지 않도록 특정 채소의 경우 적정량을 급여하도록 합니다. 과일이나 사과 조각의 경우 기니피그에게 간식으로 급여해도 좋지만 과일의 산도가 기니피그 건강에 해를 끼칠 수도 있으므로 소량씩 가끔 급여하도록 합니다.
기니피그가 채소를 먹지 않는다면 작은 조각으로 썰어 급여하도록 합니다. 기니피그는 개체마다 기호나 선호가 달라 채소를 가릴 수 있습니다.
기니피그에게 양상추나 겨자잎, 단풍잎, 콜리플라워, 근대, 감자나 무를 주지 않습니다.
기니피그 한 마리당 채소 한 컵 정도를 급여합니다. 하루 분량의 채소를 두 번에 나눠서 급여하는 것이 좋습니다. 방목 가축의 특성 상 기니피그는 한 번에 큰 식사를 하는 것보다 하루 종일 조금씩 먹는 것을 선호합니다.
</pre>');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (21,'GuineaPig','펠릿은 너무 많이 주지 않도록 합니다. ','
기니피그 식단으로 펠릿은 너무 많이 주지 않도록 합니다. 건강한 기니피그에게 영양 강화된 펠릿을 급여할 필요는 없습니다. 기니피그가 이미 펠릿에 익숙해졌다면 서서히 더 건강한 식단으로 바꿔가도록 합니다. 바꾸는 기간과 단계는 지역 수의사에게 상담합니다.
펠릿을 급여한다면 좋은 품질의 펠릿을 구매하도록 합니다. 자주개자리를 주재료로 한 펠릿은 임신을 한 기니피그나 병에 걸린 기니피그, 혹은 6개월 이하의 새끼 기니피그에게만 먹이도록 합니다. 6개월 이상의 기니피그에게는 큰조아재비를 주재료로 한 펠릿을 급여합니다. 옥스보우(Oxbow)나 클린마마(Kleenmama) 회사에서 나온 펠릿이 좋습니다.
기니피그에게 토끼용이나 다른 소동물 용 펠릿을 먹이지 않도록 합니다. 동물 종에 따라 필요한 영양소나 비타민이 다르기 때문에 다른 소동물 용 펠릿은 기니피그에게 해로울 수 있습니다.
펠릿을 급여한다면 목이 막히지 않도록 씨가 섞이지 않은 펠릿을 급여하도록 합니다. 플래인 펠릿을 선택하도록 하고, 펠릿 속에 건조 과일이나 옥수수, 색이 있는 덩어리가 들어있지는 않은지 확인하도록 합니다. 펠릿을 급여할 때는 펠릿만 급여하도록 합니다.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (22,'GuineaPig','다른 음식을 먹이지 않도록 합니다.','기니피그에게 다른 음식을 먹이지 않도록 합니다. 기니피그가 필요한 음식은 펠릿, 건초, 화학 약품 처리가 되지 않은 신선한 오가닉 풀과 신선한 채소 정도입니다. 이외의 다른 음식을 주는 것은 기니피그의 건강에 악영향을 미칠 수 있습니다.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (23,'GuineaPig','케이지에서 꺼내 바닥에서 놀 시간을 마련해 줍니다','케이지에서 꺼내 바닥에서 놀 시간을 마련해 줍니다. 닫힌 공간에 기니피그를 풀어주고 기니피그를 밟지 않도록 주의합니다. 바닥을 깨끗하게 청소한 방 안에 우리를 쳐주거나 날이 너무 덥거나 춥지 않다면 야외에 우리를 치고 기니피그를 풀어줍니다.
기니피그가 뛰어 놀 수 있도록 충분한 공간을 마련해줍니다. 기니피그의 행복도에 있어 이렇게 뛰놀 수 있는 시간은 매우 중요합니다.
마련해 준 놀이 공간에 장난감이나 터널도 설치해 줍니다.
기니피그를 야외에서 놀게 해준다면 특히나 더 신경을 쓰도록 합니다. 야외에서 기니피그를 풀어줄 경우 기니피그를 항상 지켜보는 것이 좋습니다. 깜박 놓친 작은 틈 사이로 빠져나갈 위험은 물론 여우나 매 같은 포식자가 아무도 모르게 들어와 기니피그를 위협할 수 있습니다.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (24,'GuineaPig','장난감이나 케이지 액세서리를 충분히 제공','기니피그에게 장난감이나 케이지 액세서리를 충분히 제공합니다. 박스나 종이백, 오트밀 통, 서류 등으로 수제 장난감을 만들 수 있습니다. 창의적으로 생각하며 집에서 쉽게 찾아볼 수 있는 재료로 장난감을 만들어 봅니다.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (25,'GuineaPig','하루에 몇 번씩 기니피그와 놀아주도록 합니다.','하루에 몇 번씩 기니피그와 놀아주도록 합니다. 기니피그는 사회적인 동물로 야생에서는 무리를 지어 생활합니다. 매일 핸들링을 하면 기니피그의 행복도가 수직상승합니다. 기니피그에게 시간이 날 때마다 말을 걸고, 안아주고, 안고 돌아다니고 쓰다듬어 주도록 합니다. 기니피그에게 많은 시간을 들일 수록 좋습니다.[8]
어떤 나라에서는 기니피그를 한 마리만 입양하는 것은 법으로 금지되어 있습니다. 기니피그는 쌍으로 입양하도록 제정되어 있습니다. 기니피그는 다른 기니피그와 함께 있을 때 더 행복해합니다.
기니피그가 혼자서 외롭게 자랄 경우 식욕 부진이나 무기력함 등 우울증 증세를 보일 수도 있습니다.
기니피그는 똑똑한 동물입니다. 뒷다리로 서기나 돌기, 점프 등 여러 가지 트릭을 가르칠 수 있습니다.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (26,'GuineaPig','케이지를 부분적으로 청소하는법','케이지를 부분적으로 청소합니다. 기니피그는 비교적 깨끗한 동물이라 일주일에 2번, 배설물이나 전날 먹지 않은 채소, 물병을 청소해주고 건초를 더해주면 됩니다. 일주일에 청소하는 날 이틀을 정해두면 좋습니다.[9]');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (27,'GuineaPig','일주일에 한 번 케이지를 완벽하게 청소','일주일에 한 번 케이지를 완벽하게 청소합니다. 침대 재질과 키우는 기니피그의 수에 따라 전체적으로 다 갈아 엎는 청소의 빈도 수가 달라지게 됩니다.
쓰레기나 안감, 침대, 음식과 장난감을 모두 케이지에서 꺼내 버릴 것은 버리고 청소할 것은 청소하고 버릴 것은 버리도록 합니다. 다시 케이지에 집어 넣을 물건에는 기니피그용 항균 스프레이를 뿌려주고, 항균 스프레이가 마르지 않고 과도하게 묻어 있다면 이를 닦고 케이지에 넣도록 합니다. 사람이 쓰는 청소용품을 사용하지 않도록 주의합니다.
케이지 안쪽을 기니피그 용 항균 스프레이를 묻힌 타월로 닦아주는 것도 좋지만 물과 햇빛을 이용해 청소해도 세균을 자연적으로 죽일 수 있습니다. 빈 케이지를 야외에 두고 잠시 환기를 시켜도 좋습니다.
침대를 교체합니다. 신문지를 침대 밑에 깔아 오줌을 흡수하게 하는 것도 좋습니다. 하지만 신문지 자체는 기니피그가 몸에 해로운 잉크를 섭취할 위험이 있어 침대 재료로 적합하지 않습니다.
기니피그에게 가장 적합한 침대 재료는 케어 프레쉬(CareFresh)로 수분을 함유한 심지 플리스를 수건 위나 사시나무 톱밥 위에 깔아주면 좋습니다.
나뭇조각이나 톱밥을 침대 재료로 사용하지 않습니다. 삼나무나 소나무 톱밥은 해로운 페놀을 함유하고 있으므로 이 또한 피하도록 합니다.
케이지에 맞게 사이즈를 맞춰 자른 수건을 플리스 밑에 깔면 케이지 안감으로 이용할 수 있습니다. 이 안감은 위에 쌓인 쓰레기만 털어 버리고 빨아 재사용할 수 있습니다. 수건의 삐져 나온 실에 기니피그의 발이 걸려 다칠 위험이 있으므로 사용할 때마다 확인하도록 합니다.
기니피그가 잘 곳은 반드시 마련해주도록 합니다. 펫샵에서 이글루를 구매하거나 건초를 두껍게 깔아 기니피그가 파고들 수 있게 해줍니다. 건초를 이용할 경우 기니피그가 파고들 때 뾰족한 풀 끝에 기니피그의 눈이 찔릴 수 있다는 점만 유의하도록 합니다.
');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (28,'GuineaPig','3, 4주에 한 번씩 발톱을 잘라줍니다','
3, 4주에 한 번씩 발톱을 잘라줍니다. 

발톱 색깔이 검게 변했다면 손전등으로 발톱 뒤를 비쳐 속살을 확인해 봅니다. 너무 혈관 가까이 발톱을 잘랐다면 발톱에서 피가 날 수도 있습니다. 

지혈 파우더나 옥수수 전분으로 지혈해줍니다.[10]
발톱 자르기에 자신이 없다면 병원에서 발톱을 자르면서 수의사에게서 올바르게 발톱을 자르는 법을 배우도록 합니다. 

수의사나 수간호사가 발톱을 자르는 모습을 관찰하면서 주의사항을 들을 수 있습니다.
');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (29,'GuineaPig','목욕을 자주 시키지 않습니다.','목욕을 자주 시키지 않습니다. 기니피그를 목욕 시키고 싶은 마음이 들 수도 있지만 목욕을 하면서 몸에서 일어나는 자연스러운 현상이 억제될 수 있으므로 목욕은 일 년에 세네 번 정도만 시키도록 합니다.[11]');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (30,'GuineaPig','질병 증세는 없는지 확인합니다.','
질병 증세는 없는지 확인합니다. 아픈 기니피그가 보이는 증상은 무엇이 있는지 확인합니다.[12] 아픈 증세를 보인다면 기니피그 전문 동물 병원에 데려가 적절한 치료를 받도록 합니다. 기니피그는 병세를 매우 잘 숨기므로 항상 보이던 버릇이나 식욕에 미세하게나마 달라진 점은 없는지 항상 확인하도록 합니다.
한 케이지에서 키우는 기니피그들 사이에서 병이 전염될 수 있으므로 기니피그들은 항상 모두 같이 검진 받고 치료 받도록 합니다.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (32,'GuineaPig','기니피그와 토끼를 함께 기르지 않습니다','기니피그와 토끼를 함께 기르지 않습니다. 토끼에게는 기니피그에게 해로운 박테리아가 있어 기니피그 건강을 상하게 할 염려가 있습니다. 토끼는 기니피그보다 훨씬 크고 힘이 센 동물입니다. 토끼의 장난스러운 발차기 한 번에 기니피그가 사망에 이를 수 있습니다.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (33,'GuineaPig','기니피그의 몸무게를 매주 측정합니다.','기니피그의 몸무게를 매주 측정합니다. 몸무게가 50g 정도 차이 나는 것은 자연스러운 일이나 그 이상으로 변동이 일어난다면 치아 문제나 다른 건강 문제가 있는 것은 아닌지 수의사에게 데려가 검진을 받도록 합니다. 몸무게 측정에는 전자 저울을 이용하는 것이 가장 좋습니다.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (34,'Rabbit','토끼의 일반적인 관리방법','
토끼 중성화시키기. 동물 병원을 찾아 토끼 중성화 수술을 받도록 하자. 성별에 관계없이 중성화 수술에 따른 장점이 많다.[26]
중성화 수술을 받은 토끼는 자신의 영역 표시를 해야하는 욕구를 잘 느끼지 않기 때문에 비교적 집안 곳곳에 배설하는 습관을 보이지 않는다.
토끼의 공격성이 현저하게 감소한다.
토끼는 점차 나이가 들면서 번식 기관의 암이 발생률이 높아지는데, 중성화 수술은 이 위험률을 낮춰준다.
새끼 토끼를 번식하고자 한다면 중성화 수술 단계를 건너 뛴다. 여러 토끼가 생활할 수 있는 충분한 공간이 있고 안전한 번식법에 대해 잘 알고 있다면 중성화 수술을 받지 않아도 괜찮다.[27] 토끼가 건강하게 새끼를 낳을 수 있는지 확인하기 위해 주기적으로 동물 병원을 방문하도록 한다.


토끼에게 충분한 장난감 제공하기. 천성적으로 토끼는 씹는 활동을 좋아하기 때문에, 가구 등이 망가지지 않도록 씹을 수 있는 장난감을 마련해보자. 값이 비싼 장난감을 구매하지 않아도 좋으며, 종이상자 조각이나 휴지심, 화학성분이 없는 처리되지 않은 나무 조각 등도 충분히 좋은 장난감이 될 수 있다.[28]
고무 재질의 장난감은 피한다. 토끼가 고무 조각을 삼키면 위장관이 막힐 위험이 있다.[29]

토끼와 놀아주기. 토끼는 활동적인 동물이며 놀이를 매우 좋아한다. 토끼와 함께 할 수 있는 게임을 통해 토끼와 놀아주고, 토끼의 건강도 지켜보자.[30]
작은 장난감 볼링 핀을 세워두고 토끼가 볼링 핀을 넘어뜨릴 수 있도록 해보자. 활동적인 토끼는 이와 같은 게임을 좋아한다.
일부 토끼는 자신이 넘어뜨린 장난감을 당신이 주어오는 것을 좋아하기도 한다.
토끼를 위한 장애물 코스를 만들어보자. 토끼는 탐험하는 것을 좋아하기 때문에 장애물 코스가 토끼의 호기심을 자극할 수 있다. 신문지나 상자처럼 토끼에게 해가되지 않는 재료를 사용해보자.[31]
토끼가 원할 경우 휴식을 취할 수 있도록 한다. 토끼가 게임에 흥미를 잃으면 참여하도록 강요하지 않는다.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (35,'Hedgehog','일반적인 고슴도치 키우는 방법','고슴도치는 참을성이 있는 사람과 헌신적인 사람에게 알맞는 애완동물입니다. 아프리카의 야생 동물 두 종이 혼종되어 만들어진 아프리칸 피그미 고슴도치는 헌신적인 사람에게 적합한 똑똑하고 친근하고 살가운 애완동물입니다. 모든 애완동물이 그러하듯 입양하기 전에 자신의 생활 방식이 고슴도치 양육 방법과 맞을 지 고슴도치에 대해 알아보는 것이 좋습니다. 고슴도치의 서식지와 고슴도치가 먹어야 하는 사료의 유의점을 충분히 이해해 고슴도치를 입양할 때 최대한 잘 돌봐줄 수 있도록 합시다.


자신이 사는 지역에서 고슴도치를 키우는 것이 합법인지 확인합니다. 고슴도치는 이색 동물로 간주되어 살고 있는 나라나 주에 따라 고슴도치 양육이 위법일 가능성이 있습니다. 어느 지역에서는 고슴도치가반입 금지 동물일 수도 있고 어느 지역에서는 특별 허가를 받으면 양육이 가능할 수 있습니다. 살고 있는 지역에서 이색 동물을 애완동물로 보육해도 괜찮은지 지역 관련 단체나 자치 단체에 문의해 확인해보도록 합니다.
지역 동물 관련 규정을 알아보는데 도움이 필요하거나 이색 동물 입양이 위법인 지역에서 고슴도치에게 안전한 가정을 찾아줘야 한다면 동물 복지 단체나 고슴도치 관련 단체에 연락해 조언을 구합니다.[1]

');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (36,'Turtle','주인보다 오래사는 애완동물 거북이','거북이는 좋은 애완동물이 될 수 있다. 하지만 돌보는 것에는 시간과 노력이 들어가게 된다. 거북이는 과일과 채소, 곤충과 벌레, 심지어 물고기까지도 먹는다. 거북이를 제대로 돌보고 싶다면 먼저 어떤 음식을 먹여야 하는지, 그리고 얼마나 자주 식사를 줘야 하는지를 알아야 할 것이다. 사실 먹이량은 거북이의 종류에 따라 달라질 수 있으니 일반적인 지침이 있으니 이를 참고할 수는 있다. 다만 거북이가 탈이 나는 것이 싫다면 먼저 수의사에게 정확히 먹이와 관련한 정보를 물어보는 것이 안전하다.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (37,'Bird','앵무새의 암수 구별법','
사랑앵무의 납막을 확인한다. 납막은 부리 바로 위쪽을 덮고 있는 피부이다.[1] 사랑앵무의 콧구멍이 납막에 위치해있기 때문에(두 개의 깊은 구멍같이 생겼다) 찾기가 쉽다. 대부분 사랑앵무의 부리는 노란빛을 띠지만, 납막은 새의 암수에 따라 특정한 색을 띤다.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (38,'etc','말에 올라타기 연습','말에 올라탄다. 승마의 첫걸음은 말 등에 올라타는 것이다. 많은 사람들이 말 등에 올라탄다는 것 자체를 두려워하는데 침착하게만 하면 아무 문제도 없고 재미있기까지 하다.
승마 초보라면, 승마대를 쓰는 것도 괜찮다. 승마대는 목재 디딤판인데 말에 올라탈 때 딛고 올라설 수 있다. 처음부터 맨땅에서 휙하고 말에 올라타는 사람은 많지 않다. [1]
등자에 한 발을 올려놓고 몸을 위로 끌어 올린다. 다른 쪽 다리를 마체 위로 가볍게 넘겨, 다리로 말을 껴안는 자세를 취한 후, 그 발도 등자에 끼운다.
초심자는 잘 훈련된 말을 선택한다. 젊고 거친 말은 올라타려고 하면 몸을 흔들거나 이동하거나 해서 숙련 기수라 해도 힘들 때가 있다. 나이가 든 말 중에서 얌전하고 말 잘 듣는 말로 고른다.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (39,'Dog','개 훈련 준비하기','
본인의 생활 방식에 적합한 개 선택하기. 수 세기 동안의 교배를 거쳐, 현재 지구상에 존재하는 동물 중 개는 그 종류가 가장 다양한 동물 중 하나이다. 가령 모든 생활방식에 맞는 개가 있는 반면 모든 개가 본인이 요구하는 것에 맞지는 않는다. 예를 들면, 당신이 조용하게 휴식을 즐기는 사람이면, 끊임없이 짖어대고 에너지가 넘쳐나는 잭 러셀 테리어를 키우면 안된다. .[2] 대신 하루 종일 소파 위에 웅크리고 앉아 있길 좋아하는 불독이 낫다. [3] 다양한 종에 따른 성격과 관리 사항을 조사한다. 주변에 개를 키우는 사람들에게 키우고 있는 개 종의 성격을 물어본다.
대부분 개의 수명이 10-15년이므로, 개를 키우는 것은 오랜 시간에 걸쳐 이루어지는 관여이다. 개 종의 성질이 본인의 생활방식과 잘 맞아야 한다.
아직 가정을 꾸리지 않았다면, 향후 10년 이내에 아이를 가질 것인지 고려한다. 몇몇 종류의 개는 집안에서 아이와 함께 키우는 것을 권장하지 않는다.');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (40,'etc','아픈 햄스터를 치료하는 방법','애완동물이 아프면 슬프기 마련이다. 특히나 햄스터는 매우 작고 사랑스러워서, 건강이 좋지 않으면 걱정되기 마련이다. 하지만 햄스터가 작다고 해서 아프거나 감염되었을 때 특별히 회복력이 나쁜 것은 아니다. 가능한 한 질병을 예방하고, 아픈 햄스터를 낫게 하기 위해서 다음 방법들을 따르도록 하자.


보온한다. 햄스터가 아프게 된 상황들이 있을 것이다. 건강을 되찾도록 돌볼 때 일반적으로 할 수 있는 몇 가지 일들이 있다. 반드시 햄스터를 보온해야 한다. 아픈 햄스터는 종종 신체의 온기를 잃어서 만지면 차갑다. 우리를 따뜻한 물병 위에 세워서 바닥을 따뜻하게 해줄 수 있다. 또한 뜨거운 물병을 수건에 말아서 햄스터가 그 위에서 쉬게 해주자. 리빙박스 안에서 이것을 할 때 햄스터가 도망치지 않도록 매우 조심해야 한다.


햄스터를 만진 후에는 항상 손을 씻어야 한다.
절대로 물로 목욕을 시켜서는 안 된다. 햄스터가 물에 젖으면 빨리 죽을 수 있다. 대신에 친칠라 목욕 모래 안에서 햄스터가 뒹굴게 해준다.
만일 햄스터가 소리를 지르거나 이상한 소리를 낸다면, 만져지고 싶지 않거나 피곤하다는 뜻이다. 나중에 햄스터가 덜 힘들어할 때 치료하도록 하자.
자궁 농종은 나이가 많은 암컷 햄스터에게 흔하게 나타나는 문제다. 섭식을 멈추고 매우 갈증이 나며, 생식기에서 화농성 고름이 나와서 잠자리에 얼룩이 남을 것이다. 자궁이 감염된 문제이므로, 수의사로부터 항생제를 처방 받아야 한다. 그것도 도움이 되지만, 충분히 건강해지기 위해서는 난소를 제거하는 것이 가장 좋다. 자궁 농종은 치료되지 않으면 치명적일 수 있다. 하지만, 수술은 위험 부담이 높으므로, 최악의 상황에 대비하도록 하자.[9]
예방을 하더라도 햄스터가 아플 수 있다. 마음을 편히 가지자. 최선을 다했다면, 당신의 잘못이 아니다.
');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (41,'Dog','강아지 헥헥거림, 이유가 뭘까요?','<pre>
안녕하세요.
특히나 여름철에는 강아지가
헥헥거리는 일을 보기가 쉬운데요.
간혹 과도하다고 생각되셔서 
병원에 문의를 하시기도 하더라고요.
오늘은 강아지 헥헥거림의 이유들에
대해서 알아보도록 하겠습니다.
</pre>

<h1>더위</h1>

<hr>

<img src="http://192.168.20.229:9090/forpet/resources/upload/infoImage/dog1.jpg" width="100%"/>

<pre>
강아지가 땀을 흘리는 모습을
보신 적 있으신가요?
강아지는 사람과는 달리 
땀샘이 없기 때문에 발바닥과 
혀를 통해 열기를 배출해 냅니다.
몸의 체온을 조절하는 자연스러운
과정으로 강아지가 더위를 느낄 때
헥헥거리는 증상을 보일 수 있답니다.
시원한 곳으로 가게 해주시고
수분을 섭취하게 해주시는 것이
도움이 될 수 있어요 :)
</pre>


<h1>기쁨의 표시</h1>

<hr>

<img src="http://192.168.20.229:9090/forpet/resources/upload/infoImage/dog2.jpg" width="100%"/>

<pre>

강아지는 기쁠 때나 흥분 될 때
입을 벌리고 헥헥거리기도 해요.
집에 갔을 때 강아지가 헥헥거린다면,
보호자에 대한 반가움의 표시겠죠?
또한 꼬리의 흔드는 모습을 보고 
어떤 헥헥거림인지 구분할 수 있답니다.

</pre>

<h1>스트레스 반응</h1>

<hr>

<img src="http://192.168.20.229:9090/forpet/resources/upload/infoImage/dog3.jpg" width="100%"/>

<pre>
강아지가 과도하게 스트레스를 받아도
이런 증상을 보일 수 있습니다.
헥헥거림과 함께 구토, 설사, 경련 등의
증상을 보인다면 빠르게 
동물병원에 내원해주셔야 해요.
</pre>

<h1>질병</h1>

<hr>

<img src="http://192.168.20.229:9090/forpet/resources/upload/infoImage/dog4.jpg" width="100%"/>

<pre>
호흡기 질환, 심장병, 내분비 질환 등
다양한 질환에서 숨을 가빠하고
헐떡거리거나 헥헥거리는 등의
증상을 보일 수 있습니다.
강아지가 아무런 이유 없이 자꾸
이런 증상을 보인다면,
꼭 동물병원에 내원해주세요!
</pre>

<br>
<br>

<img src="http://192.168.20.229:9090/forpet/resources/upload/infoImage/dog5.jpg" width="100%"/>


<pre>
강아지는 말을 할 수 없기 때문에
보호자님께서 작은 것이라도 평소에
행동을 잘 관찰해주시는 것이 중요해요.
아무 이유 없는 행동이란 없습니다.
건강 역시 마찬가지로 강아지는 
통증이나 불편함을 행동으로 표현한답니다.

평소에 강아지의 행동이 어땠는지,
체중이나 식사량, 대소변량은 어땠는지
미리 체크해두시면 아플 때 빠르게
상태를 파악하실 수 있습니다.
우리 아이에게 쏟는 사랑과 관심만큼
아이들의 건강에도 신경써주세요!
</pre>


<a href="http://192.168.20.229:9090/forpet/vetDetail.do?vetSeq=1"><div style="font-size:30px; color:blue">병원찾기</div></a>');
Insert into FORPET.HEALTHINFO (INFOSEQ,PETTYPE,INFOTITLE,INFOCONTENT) values (42,'Cat','새끼고양이 키우기 주의사항, 이런 점을 주의해주세요~','<pre>
안녕하세요.
아직 어린 새끼고양이는 성묘보다
몇 가지 더 주의점이 있는데요.
새끼고양이 키우기 주의사항,
어떤 것들이 있을까요?
함께 알아보겠습니다!
</pre>

<h1>생후 1개월 이하의 자묘라면?</h1>

<hr>

<img src="http://192.168.20.229:9090/forpet/resources/upload/infoImage/cat1.jpg" width="100%"/>

<pre>
태어난 지 1달 미만의 자묘는 
손길이 가장 많이 필요한 시기입니다.
혼자서 체온 조절을 어려워하고 
아직 혼자 식사를 할 수 없어서 
엄마고양이의 모유 혹은 인공 수유가 필요해요.
만약에 엄마고양이가 없는 경우,
시간에 맞춰 적절한 영양공급이 이뤄져야 하며
약 25~30도 정도의 실내 온도를 유지해주세요.

간혹 목욕을 시켜도 되냐고 물으시는
보호자님도 계시는데요.
특별한 이유가 있지 않는 경우 
목욕에는 주의해주셔야 합니다.
혹시나 목욕을 시켜야 하는 경우
짧은 시간 내에 시켜주시고 
체온이 떨어지지 않도록 신경 써주세요.
</pre>

<h1>예방접종이 필요해요.</h1>

<hr>

<img src="http://192.168.20.229:9090/forpet/resources/upload/infoImage/cat2.jpg" width="100%"/>

<pre>
어릴 때 예방접종을 시켜야 한다는 것은
이미 들어보셨을 텐데요.
보통 500~600g 이상, 
약 생후 45일 이상이 되었을 때
1차 예방접종을 시작합니다.
고양이 예방접종은 총 3차로 이루어지며
2~4주의 간격으로 접종을 하게 됩니다.

이때 예방접종을 실시하는 이유는
엄마로부터 받은 모체 항체가 
점점 없어지는 시기이기 때문이에요.
아주 어릴 때에는 엄마로부터 받은 항체가
새끼고양이를 지켜줄 수 있지만,
커가면서 그 항체가가 떨어지기 때문에
접종을 통해 면역을 형성해주는 것이랍니다.
특히나 치사율이 높은 범백으로부터
새끼고양이를 보호할 수 있는 수단인 만큼
꼭 예방접종에 신경 써주세요!
</pre>

<h1>충분한 영양 공급이 이뤄져야 해요.</h1>

<hr>

<img src="http://192.168.20.229:9090/forpet/resources/upload/infoImage/cat3.jpg" width="100%"/>

<pre>
보통 생후 1년 이하를 자묘라고 합니다.
이 땐 고양이가 성장하는 시기로 
다른 시기보다 많은 영양소를 필요로 해요.
전연령용 혹은 자묘용 사료를 급여하여
영양이 부족하지 않도록 신경 써주세요.
이때 아이들의 활동량 혹은 중성화 여부에 따라
 급여량이 달라질 수 있답니다.
정확한 계산법이 궁금하시다면 
댓글이나 전화로 살짝 문의해주세요 :)
</pre>

<h1>고양이도 사회화가 필요해요.</h1>

<hr>

<img src="http://192.168.20.229:9090/forpet/resources/upload/infoImage/cat4.jpg" width="100%"/>

<pre>
문헌에 따라 차이는 있지만,
고양이는 대개 8~10주쯤
사회화시기가 끝난다고 알려져 있습니다.
이 시기 전 다양한 음식과 사물을 접하게
해주시고 다른 고양이, 사람 등에
익숙하게 해주시는 것이 좋아요.
또한 엄마고양이와 다른 새끼고양이와의
유대관계 역시 사회화에 도움이 되니
최소한 8주까지는 엄마고양이와 함께
생활하게 해주시는 것이 좋습니다.
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
Insert into FORPET.MEMBER (MEMBERSEQ,MEMBEREMAIL,MEMBERPASSWORD,MEMBERNICKNAME,MEMBERNAME,MEMBERPHONE,MEMBERADDRESS,MEMBERTYPE,MEMBERENROLLDATE,MEMBERQUITDATE) values (9,'asdf','$2a$10$SRVlahjjYm1J0MLl2w5bRepfqb3qdgUdd3fpMNiKHK.jwo1Y7lcKa','민첩한어금니','권민아',1025404993,'안산시 상록구 본오1동 958',null,to_date('19/03/29','RR/MM/DD'),null);
Insert into FORPET.MEMBER (MEMBERSEQ,MEMBEREMAIL,MEMBERPASSWORD,MEMBERNICKNAME,MEMBERNAME,MEMBERPHONE,MEMBERADDRESS,MEMBERTYPE,MEMBERENROLLDATE,MEMBERQUITDATE) values (3,'user02','$2a$10$eicTdMfR17vjTUJjcsAuSelaB2mRgKliZBF2ZrVDKItZ5DNv6u1zC','이클립쓰!!','이영우',1022222222,'서울시 강남구 역삼동 강남대로84길 16','deleted',to_date('19/03/28','RR/MM/DD'),to_date('19/04/17','RR/MM/DD'));
Insert into FORPET.MEMBER (MEMBERSEQ,MEMBEREMAIL,MEMBERPASSWORD,MEMBERNICKNAME,MEMBERNAME,MEMBERPHONE,MEMBERADDRESS,MEMBERTYPE,MEMBERENROLLDATE,MEMBERQUITDATE) values (4,'user03','$2a$10$aXqAgmBjy8DkDiiSe.7WI.H8ZOO8FyXPRfXWUAn/w0ymqFs7Aa6HK','노빠꾸오른쪽','박진우',1033333333,'경기도 남양주시 경춘로 1037',null,to_date('19/03/28','RR/MM/DD'),null);
Insert into FORPET.MEMBER (MEMBERSEQ,MEMBEREMAIL,MEMBERPASSWORD,MEMBERNICKNAME,MEMBERNAME,MEMBERPHONE,MEMBERADDRESS,MEMBERTYPE,MEMBERENROLLDATE,MEMBERQUITDATE) values (5,'user04','$2a$10$xtl6HWLeiSXX8xPOSQt8/ec9XQc6A01QvmJDnn0grQe2ZwwYHHn8W','포동동','한윤석',1044444444,'서울시 강남구 테헤란로 3길',null,to_date('19/03/28','RR/MM/DD'),null);
Insert into FORPET.MEMBER (MEMBERSEQ,MEMBEREMAIL,MEMBERPASSWORD,MEMBERNICKNAME,MEMBERNAME,MEMBERPHONE,MEMBERADDRESS,MEMBERTYPE,MEMBERENROLLDATE,MEMBERQUITDATE) values (6,'user05','$2a$10$S7BkgznIcWbddrEOUKhcs.D0d4fSj5U5HqPAJjkZE6OlWdHJtuvKC','안나오지롱','박순규',1055555555,'수원시 권선구 호매실동 1346번지','deleted',to_date('19/03/28','RR/MM/DD'),to_date('19/04/17','RR/MM/DD'));
Insert into FORPET.MEMBER (MEMBERSEQ,MEMBEREMAIL,MEMBERPASSWORD,MEMBERNICKNAME,MEMBERNAME,MEMBERPHONE,MEMBERADDRESS,MEMBERTYPE,MEMBERENROLLDATE,MEMBERQUITDATE) values (8,'admin','$2a$10$rvgZWbeorgtMd0aYMuHFoeX0wFSNZUd1PbKipEyFGzFfhFYX8XXT2','관리자','권영우',1012341234,'서울 강남구 테헤란로14길 6',null,to_date('19/03/29','RR/MM/DD'),null);
Insert into FORPET.MEMBER (MEMBERSEQ,MEMBEREMAIL,MEMBERPASSWORD,MEMBERNICKNAME,MEMBERNAME,MEMBERPHONE,MEMBERADDRESS,MEMBERTYPE,MEMBERENROLLDATE,MEMBERQUITDATE) values (11,'psoonkyu@gmail.com','$2a$10$ONZ4.RuZa63BENfYPchh9uM6WsZygIgnhw64mpoyIKx5UA3KpNVgG','박순규','박순규',1086020654,'서울 강남구 남부순환로 2806 13층',null,to_date('19/04/17','RR/MM/DD'),null);
Insert into FORPET.MEMBER (MEMBERSEQ,MEMBEREMAIL,MEMBERPASSWORD,MEMBERNICKNAME,MEMBERNAME,MEMBERPHONE,MEMBERADDRESS,MEMBERTYPE,MEMBERENROLLDATE,MEMBERQUITDATE) values (2,'hanpotato85@naver.com','$2a$10$TOjU6/q4kyL9Qb65zJWo3.lkL28hZDU4gZFDu3gaSsS0TjhPPbeIO','한똘','한윤석',1091045393,'서울 강서구 강서로 374',null,to_date('19/04/17','RR/MM/DD'),null);
Insert into FORPET.MEMBER (MEMBERSEQ,MEMBEREMAIL,MEMBERPASSWORD,MEMBERNICKNAME,MEMBERNAME,MEMBERPHONE,MEMBERADDRESS,MEMBERTYPE,MEMBERENROLLDATE,MEMBERQUITDATE) values (15,'1055660925','kakao','미나링','최민아',1054653455,'서울 강남구 압구정로 102',null,to_date('19/04/17','RR/MM/DD'),null);
Insert into FORPET.MEMBER (MEMBERSEQ,MEMBEREMAIL,MEMBERPASSWORD,MEMBERNICKNAME,MEMBERNAME,MEMBERPHONE,MEMBERADDRESS,MEMBERTYPE,MEMBERENROLLDATE,MEMBERQUITDATE) values (13,'1055787329','kakao','카카오순규','순규박',1086020654,'서울 강남구 개포로 202',null,to_date('19/04/17','RR/MM/DD'),null);
Insert into FORPET.MEMBER (MEMBERSEQ,MEMBEREMAIL,MEMBERPASSWORD,MEMBERNICKNAME,MEMBERNAME,MEMBERPHONE,MEMBERADDRESS,MEMBERTYPE,MEMBERENROLLDATE,MEMBERQUITDATE) values (16,'alsdk9583@naver.com','$2a$10$GsTba7JxX2imwVhLaC0V2e9IAQ8C/viqobGVeeU5MBRfEpHS95OKm','tretrettr','윤민아',1054653455,'서울 강남구 학동로 지하 102',null,to_date('19/04/17','RR/MM/DD'),null);
Insert into FORPET.MEMBER (MEMBERSEQ,MEMBEREMAIL,MEMBERPASSWORD,MEMBERNICKNAME,MEMBERNAME,MEMBERPHONE,MEMBERADDRESS,MEMBERTYPE,MEMBERENROLLDATE,MEMBERQUITDATE) values (17,'1056224196','kakao','신규회원','우영이',1050201834,'서울 강남구 테헤란로14길 6',null,to_date('19/04/17','RR/MM/DD'),null);
Insert into FORPET.MEMBER (MEMBERSEQ,MEMBEREMAIL,MEMBERPASSWORD,MEMBERNICKNAME,MEMBERNAME,MEMBERPHONE,MEMBERADDRESS,MEMBERTYPE,MEMBERENROLLDATE,MEMBERQUITDATE) values (18,'lyw318@naver.com','$2a$10$Zu7foVuMGmkfMoJPlhlmoeEpPlztFgRFKd/2uWa0oIM7ycMlPi686','가입회원','이영우',1012345678,'서울 강남구 테헤란로14길 6',null,to_date('19/04/17','RR/MM/DD'),null);
REM INSERTING into FORPET.MEMBERFRIEND
SET DEFINE OFF;
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (1,9,3,'둘이','N','일반');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (2,8,9,'민첩한어금니','N','일반');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (3,8,3,'이클립쓰!!','N','차단');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (4,3,9,'민첩한어금니','N','일반');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (5,3,8,'관리자','N','차단');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (6,8,4,'노빠꾸오른쪽','N','차단');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (7,8,5,'css따위','N','일반');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (8,8,6,'내가짱이야','N','차단');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (9,2,10,'미나링','N','일반');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (10,11,9,'민첩한어금니','N','일반');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (11,11,8,'관리자','N','일반');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (12,11,3,'이클립쓰!!','N','일반');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (13,11,4,'노빠꾸오른쪽','N','차단');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (14,11,5,'css따위','N','일반');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (15,11,6,'내가짱이야','N','일반');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (16,11,2,'한똘','N','일반');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (17,11,10,'미나링','N','일반');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (25,2,4,'노빠꾸오른쪽','N','차단');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (27,8,18,'이메일회원','N','일반');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (22,2,11,'박순규','N','일반');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (21,4,2,'한똘','N','일반');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (26,8,17,'신규회원','N','일반');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (28,9,11,'박순규','N','일반');
Insert into FORPET.MEMBERFRIEND (MFRIENDSEQ,MEMBERSEQ,MFRIENDMATENO,MFRIENDNICKNAME,MFRIENDFAVO,MFRIENDTYPE) values (29,9,17,'신규회원','N','일반');
REM INSERTING into FORPET.MEMBERMSG
SET DEFINE OFF;
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (1,'유저01','일반','둘이','gkgkgkgkgk',to_date('19/04/11','RR/MM/DD'),'N','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (2,'둘이','일반','유저01','하하하하하하하하하
',to_date('19/04/11','RR/MM/DD'),'N','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (3,'유저01','일반','둘이','첫줄
두째줄
세째줄
',to_date('19/04/11','RR/MM/DD'),'N','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (4,'관리자','일반','이클립쓰!!','안녕 관리자라고 해~',to_date('19/04/16','RR/MM/DD'),'N','차단');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (5,'관리자','일반','민첩한어금니','안녕 난 관리자라고 해~',to_date('19/04/16','RR/MM/DD'),'N','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (6,'이클립쓰!!','일반','관리자','안녕하세요',to_date('19/04/16','RR/MM/DD'),'N','차단');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (9,'관리자','일반','이클립쓰!!','쪽지 테스트입니다.<br/><br/>잘 되고 있나요?',to_date('19/04/17','RR/MM/DD'),'N','차단');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (8,'관리자','일반','내가짱이야','안녕하세요<br/>관리자입니다.<br/>지금 쪽지 테스트 중입니다.<br/>양해 부탁드립니다.',to_date('19/04/17','RR/MM/DD'),'Y','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (10,'관리자','일반','이클립쓰!!','차단 적용이 잘되고 있나요?<br/><br/>잘되나요?<br/><br/>진짜로???',to_date('19/04/17','RR/MM/DD'),'N','차단');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (11,'한똘','일반','미나링','쪽지 테스트입니다.<br/><br/>잘가나요?',to_date('19/04/17','RR/MM/DD'),'N','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (12,'한똘','일반','미나링','민아야 메세지 뜨나?',to_date('19/04/17','RR/MM/DD'),'Y','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (13,'한똘','일반','미나링','잘가나??<br/>ㅇㅇ',to_date('19/04/17','RR/MM/DD'),'N','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (14,'미나링','일반','한똘','잘떠요 ㅋㅋㅋㅋㅋㅋ',to_date('19/04/17','RR/MM/DD'),'N','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (15,'박순규','일반','민첩한어금니','나야나',to_date('19/04/17','RR/MM/DD'),'N','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (16,'박순규','일반','관리자','나라구<br/>',to_date('19/04/17','RR/MM/DD'),'N','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (17,'박순규','일반','이클립쓰!!','나야',to_date('19/04/17','RR/MM/DD'),'N','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (18,'박순규','일반','노빠꾸오른쪽','테스트<br/>',to_date('19/04/17','RR/MM/DD'),'Y','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (19,'박순규','일반','노빠꾸오른쪽','하하하',to_date('19/04/17','RR/MM/DD'),'Y','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (20,'박순규','일반','css따위','으으으ㅡㅇ',to_date('19/04/17','RR/MM/DD'),'N','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (21,'박순규','일반','내가짱이야','나야<br/>',to_date('19/04/17','RR/MM/DD'),'N','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (22,'박순규','일반','한똘','나야나',to_date('19/04/17','RR/MM/DD'),'N','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (23,'박순규','일반','미나링','잘하라구~!ㅋㅋㅋ<br/>',to_date('19/04/17','RR/MM/DD'),'N','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (24,'한똘','일반','박순규','잘갑니까?<br/>ㅇㅇ',to_date('19/04/17','RR/MM/DD'),'Y','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (25,'박순규','일반','한똘','아니..ㅋㅋㅋ',to_date('19/04/17','RR/MM/DD'),'Y','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (26,'박순규','일반','한똘','하하하<br/>',to_date('19/04/17','RR/MM/DD'),'N','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (27,'한똘','일반','관리자','쪽지가 잘 가나요???',to_date('19/04/17','RR/MM/DD'),'N','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (28,'박순규','일반','노빠꾸오른쪽','미나여~!~~~<br/>',to_date('19/04/17','RR/MM/DD'),'Y','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (29,'한똘','일반','노빠꾸오른쪽','쪽지 테스트<br/><br/><br/>쪽지 테스트<br/>쪽지 테스트<br/>쪽지 테스트<br/>',to_date('19/04/17','RR/MM/DD'),'Y','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (30,'박순규','일반','노빠꾸오른쪽','내가 쪽지 보냈어~~',to_date('19/04/17','RR/MM/DD'),'Y','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (31,'박순규','일반','관리자','관리자야~',to_date('19/04/17','RR/MM/DD'),'N','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (41,'박순규','일반','관리자','주소 바꾸지마 ㅋㅋㅋ<br/>',to_date('19/04/17','RR/MM/DD'),'N','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (42,'관리자','일반','이메일회원','안녕하세요?<br/><br/>회원가입을 축하합니다.',to_date('19/04/17','RR/MM/DD'),'N','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (43,'박순규','일반','민첩한어금니','안녕하세요?',to_date('19/04/17','RR/MM/DD'),'N','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (44,'민첩한어금니','일반','박순규','안녕하세요 순규 형님',to_date('19/04/17','RR/MM/DD'),'N','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (45,'박순규','일반','민첩한어금니','안녕하세요?<br/><br/>쪽지를 받았습니다.<br/>',to_date('19/04/17','RR/MM/DD'),'Y','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (37,'노빠꾸오른쪽','일반','한똘','123123',to_date('19/04/17','RR/MM/DD'),'N','차단');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (46,'박순규','일반','민첩한어금니','우와 잘되네요~!!',to_date('19/04/17','RR/MM/DD'),'Y','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (39,'박순규','일반','노빠꾸오른쪽','뭐냐////',to_date('19/04/17','RR/MM/DD'),'N','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (40,'박순규','일반','노빠꾸오른쪽','잘 하라구!!!',to_date('19/04/17','RR/MM/DD'),'N','일반');
Insert into FORPET.MEMBERMSG (MMSGSEQ,MEMBERNICKNAME,MMSGCATE,MMSGRCVNICKNAME,MMSGCONTENT,MMSGDATE,MMSGREAD,MMSGTYPE) values (47,'박순규','일반','민첩한어금니','와 차단 해제되었다!!',to_date('19/04/17','RR/MM/DD'),'N','일반');
REM INSERTING into FORPET.NOTICE
SET DEFINE OFF;
Insert into FORPET.NOTICE (NOTICESEQ,MEMBERSEQ,NOTICETITLE,NOTICECONTENT,READCOUNT,NOTICEDATE) values (1,8,'[회원간의예의] forPet 입니다. 사이트 사용방법에 대해서 알려드립니다. ','<pre>
1. 회원간 서로 배려하고 예의를 지킵니다.
(1) 내 생각과 다른 의견도 규칙위반이 아닌 한 존중합니다. 다른 의견에 대해 비판할 수는 있어도 무조건 비난해서는 안됩니다.

(2) 다른 이용자에 대한 존중의 의미로 존댓말을 사용하고, 닉네임 뒤에 “님”을 붙여 부릅니다.

(3) 욕설, 비속어의 사용을 금지합니다. (욕설임을 알 수 있는 자음, 기호 등 포함)

(4) 다른 회원에 대한 무분별한 비난이나 인신공격을 하지 않습니다. (신고사유 예시 참조)

(5) 과도한 추측이나 일반화로 다른 회원을 비난하지 않습니다. (신고사유 예시 참조)

(6) 다른 의견에 대하여 무조건적인 비하를 하여서는 안됩니다. (신고사유 예시 참조)

(7) 비방 또는 분란을 조장하는 허위사실이나 근거없는 정보를 유포해서는 안됩니다.



2. 다른 회원을 속이거나, 개인 또는 단체의 이익을 목적으로 부정하게 활동할 수 없습니다.
(1) 반복적으로 다른 이용자를 속일 목적으로 게시물을 작성할 수 없습니다.

(2) 일반적인 회원으로 가장하여 홍보성 게시물을 작성하여서는 안됩니다.

(3) 바이럴마케팅이나 전문적인 판매, 홍보(블로그, 동영상, 앱 등)를 위한 활동은 금지됩니다.

(4) 이미지 링크용도, 추천인코드, 권한획득 목적의 게시물 반복 작성 등 개인적 이득을 위한 활동을 하실 수 없습니다.

(5) 특정 단체에 대한 긍정적 또는 부정적 여론조성을 위해 부당하게 활동할 수 없습니다.

</pre>',5,to_date('19/04/16','RR/MM/DD'));
Insert into FORPET.NOTICE (NOTICESEQ,MEMBERSEQ,NOTICETITLE,NOTICECONTENT,READCOUNT,NOTICEDATE) values (2,8,'[법률적 검토] forPet 입니다. 사이트 사용방법에 대해서 알려드립니다. ','<pre>
3. 본인의 정보로 회원가입을 하고 활동해야 합니다.
(1) 1인 1아이디를 사용하며, 타인의 정보로 가입 및 활동할 수 없습니다.

(2) 부당하게 2개 이상의 아이디를 사용하거나 하나의 아이디를 2인 이상이 사용하는 경우 해당 아이디는 이용이 제한됩니다.

(3) 징계회피 목적의 탈퇴 후 재가입, 타인 명의를 사용하여 활동하는 경우 등이 확인되면 해당 아이디는 이용이 제한됩니다.



4. 법률 기타 법령 및 공공질서, 미풍양속에 반하는 내용의 게시물을 작성할 수 없습니다.
(1) 청소년에게 유해할 수 있는 외설적 표현물(글, 사진, 영상, 링크 등)을 게시하지 않습니다.

(2) 불법행위 방법 소개, 의욕 고취 등 범법행위를 교사, 방조하는 내용의 게시물을 작성하지 않습니다.

(3) 법령에 의해 금지되는 게시물을 올릴 수 없습니다.

(4) 유관기관의 요청이나 명령이 있는 경우 그에 따른 조치가 진행될 수 있습니다.



5. 타인의 권리를 침해하는 행위를 제한합니다.
(1) 저작권을 침해하는 게시물을 작성하지 않습니다. (기사 전문전재, 음악 배포 등)

      참고 :

      
http://notice.tistory.com/1221

      
http://www.bloter.net/archives/270183

(2) 식별가능한 타인의 초상을 무단으로 게시하여서는 안됩니다. (허용된 경우 제외)

      참고 :

      
http://terms.naver.com/entry.nhn?docId=3350972&cid=58190&categoryId=5819

(3) 타인의 재산권을 침해하는 내용이거나 허위의 사실로 영업을 방해할 목적의 게시물을 작성하지 않습니다.

(4) 타인의 권리를 침해하는 게시물은 침해 당사자의 요청에 의해 삭제될 수 있습니다. (삭제요청 및 처리과정 안내)


</pre>',2,to_date('19/04/16','RR/MM/DD'));
Insert into FORPET.NOTICE (NOTICESEQ,MEMBERSEQ,NOTICETITLE,NOTICECONTENT,READCOUNT,NOTICEDATE) values (3,8,'[상호간의예의] forPet 입니다. 사이트 사용방법에 대해서 알려드립니다. ','<pre>
6. 종교 비난, 선교/포교 활동을 제한합니다.
(1) 특정 종교에 대한 과도한 비난 및 이를 이유로 한 분란조장 행위를 하지 않습니다.

(2) 자신의 종교적 신념을 강요하거나 포교를 목적으로 한 활동은 제한됩니다.



7. 특정 집단에 대한 차별 및 무조건적 비난을 하여서는 안됩니다.
(1) 인종, 성별, 국적, 연령, 지역, 장애 등 구분이 가능한 집단에 대하여 그 구성원에게 굴욕감이나 불이익을 줄 수 있는 게시물을 작성하지 않습니다.

(2) 학벌, 재산, 직업, 생활양식, 취향, 종교, 정치적 견해 등을 이유로 무조건적인 비난을 하지 않습니다.



8. 다른 이용자의 이용에 방해가 되는 행위를 할 수 없습니다.
(1) 타인에게 혐오감을 주거나 불쾌하게 할 수 있는 게시물 작성을 금지합니다.

(2) 특수문자의 과도한 사용, 도배성 게시물/댓글 등 다른 이용자에게 불편을 주는 경우 해당 게시물은 삭제될 수 있습니다.

(3) 영화, 소설의 반전 등 스포일러 공개는 가급적 자제하며, 불가피한 경우 적당한 방법으로 표시하여 다른 이용자를 배려합니다.

(4) 이용자를 속이거나 과도하게 놀라게 할 목적의 게시물(이른바 낚시글)은 자제하여 주시기 바랍니다.

(5) 고의적으로 규칙위반 게시물 작성 후 삭제를 반복하는 경우 작성자는 이용이 제한될 수 있습니다.

(6) 바이러스 프로그램 유포, 스팸쪽지 등 타인에게 피해를 주는 행위를  금지합니다.

(7) 무분별하고 반복적인 비난 댓글, 괴롭힘을 위한 쪽지 발송 등의 스토킹 행위를 하지 않습니다.



9. 게시판의 용도에 맞게 게시물을 작성하셔야 합니다.
(1) 이용자의 편의를 위해 게시판이 분리되어 있으며, 각 게시판의 목적과 용도에 맞도록 게시물을 작성하고 이용하셔야 합니다.

(2) 사이트 이용규칙 및 각 게시판 규칙을 잘 지키며, 위반에 따른 불이익을 받는 일이 없도록 해주시기 바랍니다.



10. 사이트 규칙 위반 사례를 발견하면 신고해 주세요.
(1) 신고된 게시물은 관리자가 검토 후 조치합니다.

잘못된 게시물에 이용규칙을 위반하며 과도하게 대응하지 마시고, 신고를 통해 관리자가 조치할 수 있도록 도움 바랍니다.

(2) 게시물이나 댓글로 “신고했습니다” 또는 “신고하겠습니다” 등을 작성하는 경우 또다른 불필요한 분쟁을 야기시킵니다.

(3) 신고를 통해 전달하기 어려운 경우 [admin@clien.net]으로 제보주시면 확인하여 답변드리겠습니다.

</pre>',4,to_date('19/04/16','RR/MM/DD'));
Insert into FORPET.NOTICE (NOTICESEQ,MEMBERSEQ,NOTICETITLE,NOTICECONTENT,READCOUNT,NOTICEDATE) values (4,8,'개인정보 처리 방침','<pre>
개인정보처리방침
1. 수집하는 개인정보 항목
클리앙은 회원가입, 서비스 이용 등을 위해 아래와 같은 개인정보를 수집하고 있습니다.

1) 수집항목
일반 회원 가입시
필수항목 : 아이디, 비밀번호, 별명, 이메일
선택항목 : SNS정보
기업회원 가입시
필수항목 : 업체명, 업종, 입금자명, 연락처, 이메일, 환불계좌정보
선택항목 : 사업자등록번호
장터 이용시
필수항목 : 실명, 이동전화, 이메일
선택정보를 입력하지 않은 경우에도 서비스 이용의 제한은 없습니다.
본인인증과정에서 아래와 같은 정보들이 수집됩니다.
성명, 생년월일, 성별
서비스 이용과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.
IP 주소, 쿠키, 서비스 이용기록, 회원조치이력

2) 개인정보 수집방법
회원가입, 서비스 이용 신청, 회원정보 수정, 장터 게시물 등록

2. 개인정보의 수집 및 이용목적
클리앙은 수집한 개인정보를 다음의 목적을 위해 활용하며 다른 용도로는 사용되지 않습니다.

차후 이용목적이 변경될 시에는 사전에 동의를 구합니다.

아이디, 비밀번호, 별명 : 서비스 이용에 따른 본인식별, 중복가입 확인, 부정이용 방지를 위해 사용됩니다.
이메일 : 전체메일발송, 패스워드 분실시 필요한 정보제공 및 민원처리 등을 위해 사용됩니다.
성명, 생년월일, 성별 : 연령, 성별로 제한하는 특수한 서비스를 제공할 경우 및 내부 마케팅 자료구축, 부정이용 방지를 위해 사용됩니다.
SNS 정보 : 회원이 자신의 SNS를 공개하고자 할 경우 사용합니다.
이용자의 IP주소, 방문일시 : 불량회원의 부정 이용방지와 비인가 사용방지, 통계학적 분석에 사용됩니다.
그 외 선택사항 : 개인 맞춤 서비스를 제공하기 위해 사용됩니다.

3. 개인정보의 보유 및 이용기간
클리앙은 회원가입일로부터 서비스를 제공하는 기간 동안에 한하여 이용자의 개인정보를 보유 및 이용합니다.

단, 다음의 정보에 대해서는 회원탈퇴 후 아래의 이유로 명시한 기간 동안 보존합니다.

보존항목 : 성명, 생년월일, 성별, 이메일
보존근거 : 빈번한 가입과 탈퇴를 반복하는 악의적 이용 방지, 서비스 이용의 혼선 방지
보존기간 : 30일
보존항목 : "경고"이상의 조치를 받은 회원의 DI값 (중복가입확인정보) 및 회원조치이력
보존근거 : 회원의 불량 이용에 대한 조치이력 보관으로 악의적 이용의 재발 방지
보존기간 : 5년
보존항목 : 아이디
보존근거 : 아이디를 기준으로 설계되어 있어 탈퇴 후 타인이 동일한 아이디로 가입할 경우 서비스 이용의 혼선 방지
보존기간 : 서비스 제공 종료시까지

4. 개인정보의 파기절차 및 방법
원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체없이 파기합니다. 파기절차 및 방법은 다음과 같습니다.

1) 파기절차
회원이 회원가입 등을 위해 입력하신 정보는 목적이 달성된 후 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조) 일정 기간 저장된 후 파기되어집니다.

일정기간 저장된 개인정보는 법령에 의한 경우를 제외하고는 보유 목적 이외의 다른 목적으로 이용되지 않습니다.

2) 파기방법
전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.

</pre>',3,to_date('19/04/16','RR/MM/DD'));
Insert into FORPET.NOTICE (NOTICESEQ,MEMBERSEQ,NOTICETITLE,NOTICECONTENT,READCOUNT,NOTICEDATE) values (5,8,'책임의 한계와 법적고지','<pre>
책임의 한계와 법적고지
1. 목적
클리앙(이하 ''회사''라 칭함)가 제공하는 서비스를 통해 제공되는 정보(서비스로부터 링크로 연결된 다른 웹사이트의 텍스트, 이미지, 기타형태의 모든 정보를 포함)에 대해 다음과 같은 내용으로 그 법적인 책임과 한계를 고지합니다.


2. 서비스 운영 책임
회사는 서비스 이용약관 및 이용규칙, 기타 관련법령에 따라 타인의 권리를 존중하며 이에 위반되는 사항이 없도록 노력합니다. 또한 이용자 중 이를 위반하는 경우 일정기간 서비스 이용을 제한받거나 중지될 수 있습니다.

회사는 회사가 운영하는 서비스를 통해 제공되는 정보의 정확성이나 신뢰성에 대해 보증하지 않으며, 서비스를 통해 제공되는 정보를 이용한 결과로 구매 또는 취득하게 되는 제품 및 기타 정보의 질에 대해서도 보증하지 않습니다. 단 서비스되는 내용이 회사의 고의 또는 중대한 과실로 인정되는 경우는 예외로 합니다.


3. 서비스 이용의 책임
서비스를 통해 제공된 정보를 이용하고자 할 경우에는 이용자는 해당 정보의 저작권자의 동의를 얻어야 하며, 이 과정에서 회사는 개입하지 않습니다. 서비스를 통해 제공된 자료 및 정보에 대한 신뢰 여부의 책임은 해당 정보의 저작자에게 있으며, 회사는 정보를 필요에 따라 개선할 수는 있습니다.

서비스를 통해 제공된 정보를 이용하여, 타 사이트를 제시하거나 이동하는 행위는 사용자의 판단에 따른 것으로, 이렇게 제시된 타 사이트에 개제된 정보의 정확성 및 도덕성, 적법성에 대해 책임지지 않습니다.


4. 책임의 한계와 법적고지의 변경
회사는 본 책임의 한계와 법적고지의 내용을 인터넷산업의 상관례에 맞추어 적절한 방법으로 사전 통지없이 수시로 변경할 수 있습니다.


5. 책임의 한계와 법적고지의 효력
본 책임의 한계와 법적고지사항에서 다루고 있는 세부사항들은 관계당사자들간의 총체적인 합의사항이며, 회사의 개별서비스에서 정하고 있는 별도의 약관, 고지사항 등과 상충되는 경우에는 별도의 약관 또는 고지사항을 우선 적용합니다.

</pre>',4,to_date('19/04/16','RR/MM/DD'));
REM INSERTING into FORPET.NOTICEIMAGE
SET DEFINE OFF;
Insert into FORPET.NOTICEIMAGE (FILENAME,NOTICESEQ,PRIORITY) values ('190416124704569_8_0.png',3,0);
REM INSERTING into FORPET.PET
SET DEFINE OFF;
Insert into FORPET.PET (PETSEQ,MEMBERSEQ,PETNAME,PETBIRTH,PETTYPE,PETTYPE2,PETRENAMEDIMAGE) values (1,9,'야옹이',to_date('18/03/26','RR/MM/DD'),'Cat','페르시안','2019_04_11_134957146_134.png');
Insert into FORPET.PET (PETSEQ,MEMBERSEQ,PETNAME,PETBIRTH,PETTYPE,PETTYPE2,PETRENAMEDIMAGE) values (2,9,'멍멍이',to_date('02/11/26','RR/MM/DD'),'Dog','닥스훈트','2019_04_11_135033299_76.png');
Insert into FORPET.PET (PETSEQ,MEMBERSEQ,PETNAME,PETBIRTH,PETTYPE,PETTYPE2,PETRENAMEDIMAGE) values (3,8,'야옹이',to_date('19/04/15','RR/MM/DD'),'Cat','페르시안','2019_04_16_144840893_538.png');
Insert into FORPET.PET (PETSEQ,MEMBERSEQ,PETNAME,PETBIRTH,PETTYPE,PETTYPE2,PETRENAMEDIMAGE) values (4,8,'멍멍이',to_date('19/04/15','RR/MM/DD'),'Dog','닥스훈트','2019_04_16_144849373_262.png');
Insert into FORPET.PET (PETSEQ,MEMBERSEQ,PETNAME,PETBIRTH,PETTYPE,PETTYPE2,PETRENAMEDIMAGE) values (5,2,'핵핵이',to_date('19/04/01','RR/MM/DD'),'Dog','귀염둥이','2019_04_17_102023971_503.jpg');
Insert into FORPET.PET (PETSEQ,MEMBERSEQ,PETNAME,PETBIRTH,PETTYPE,PETTYPE2,PETRENAMEDIMAGE) values (9,5,'골드링구',to_date('19/04/02','RR/MM/DD'),'Dog','리트리버','2019_04_17_111158053_842.jpg');
Insert into FORPET.PET (PETSEQ,MEMBERSEQ,PETNAME,PETBIRTH,PETTYPE,PETTYPE2,PETRENAMEDIMAGE) values (7,11,'야옹이',to_date('19/01/01','RR/MM/DD'),'Cat','페르시안','2019_04_17_105725442_41.png');
Insert into FORPET.PET (PETSEQ,MEMBERSEQ,PETNAME,PETBIRTH,PETTYPE,PETTYPE2,PETRENAMEDIMAGE) values (8,11,'멍멍이',to_date('19/01/01','RR/MM/DD'),'Dog','닥스훈트','2019_04_17_105753371_248.png');
Insert into FORPET.PET (PETSEQ,MEMBERSEQ,PETNAME,PETBIRTH,PETTYPE,PETTYPE2,PETRENAMEDIMAGE) values (10,5,'또댕구구',to_date('19/03/09','RR/MM/DD'),'Dog','웰시코기','2019_04_17_111224468_434.jpg');
Insert into FORPET.PET (PETSEQ,MEMBERSEQ,PETNAME,PETBIRTH,PETTYPE,PETTYPE2,PETRENAMEDIMAGE) values (11,5,'줄무링',to_date('19/04/03','RR/MM/DD'),'Cat','기타','2019_04_17_111351941_722.jpg');
Insert into FORPET.PET (PETSEQ,MEMBERSEQ,PETNAME,PETBIRTH,PETTYPE,PETTYPE2,PETRENAMEDIMAGE) values (12,5,'흰둥이',to_date('19/04/16','RR/MM/DD'),'Cat','기타','2019_04_17_111419447_12.jpg');
Insert into FORPET.PET (PETSEQ,MEMBERSEQ,PETNAME,PETBIRTH,PETTYPE,PETTYPE2,PETRENAMEDIMAGE) values (14,18,'펭귄',to_date('19/04/02','RR/MM/DD'),'Bird','코알라','2019_04_17_131149766_204.jpg');
REM INSERTING into FORPET.PETDETAIL
SET DEFINE OFF;
REM INSERTING into FORPET.QNAREPLY
SET DEFINE OFF;
REM INSERTING into FORPET.SMALLBOARD
SET DEFINE OFF;
Insert into FORPET.SMALLBOARD (SMALLBOARDSEQ,MEMBERSEQ,SMALLBOARDKATEGORIE,SMALLBOARDTITLE,SMALLBOARDCONTENT,SMALLBOARDREADCOUNT,SMALLBOARDDATE) values (6,3,'강아지','강아지 뭉칩시다~~~!!!','뭉치자뭉치자!!',0,to_date('19/04/16','RR/MM/DD'));
Insert into FORPET.SMALLBOARD (SMALLBOARDSEQ,MEMBERSEQ,SMALLBOARDKATEGORIE,SMALLBOARDTITLE,SMALLBOARDCONTENT,SMALLBOARDREADCOUNT,SMALLBOARDDATE) values (2,8,'강아지','소모임게시판 이용안내','소모임 게시판은 애완동물 별로 게시판을 자유롭게 구분지을수 있습니다.

애완동물별 소모임을 개설해보세요
',0,to_date('19/04/16','RR/MM/DD'));
Insert into FORPET.SMALLBOARD (SMALLBOARDSEQ,MEMBERSEQ,SMALLBOARDKATEGORIE,SMALLBOARDTITLE,SMALLBOARDCONTENT,SMALLBOARDREADCOUNT,SMALLBOARDDATE) values (3,3,'조류','백두앵무 키워봐요~','백두앵무가 얼마나 귀엽게요~?

다같이 키워봐요',0,to_date('19/04/16','RR/MM/DD'));
Insert into FORPET.SMALLBOARD (SMALLBOARDSEQ,MEMBERSEQ,SMALLBOARDKATEGORIE,SMALLBOARDTITLE,SMALLBOARDCONTENT,SMALLBOARDREADCOUNT,SMALLBOARDDATE) values (8,3,'고양이','한강으로 고우~~~','갑시다!!',0,to_date('19/04/16','RR/MM/DD'));
Insert into FORPET.SMALLBOARD (SMALLBOARDSEQ,MEMBERSEQ,SMALLBOARDKATEGORIE,SMALLBOARDTITLE,SMALLBOARDCONTENT,SMALLBOARDREADCOUNT,SMALLBOARDDATE) values (7,3,'강아지','과연 발표날 한강을 갈까???','가쟈가쟈!!',0,to_date('19/04/16','RR/MM/DD'));
Insert into FORPET.SMALLBOARD (SMALLBOARDSEQ,MEMBERSEQ,SMALLBOARDKATEGORIE,SMALLBOARDTITLE,SMALLBOARDCONTENT,SMALLBOARDREADCOUNT,SMALLBOARDDATE) values (9,9,'고양이','민첩한어금니는 다 참여할 수 있어요!!','내 어금니는 빠르니까!!!',0,to_date('19/04/16','RR/MM/DD'));
Insert into FORPET.SMALLBOARD (SMALLBOARDSEQ,MEMBERSEQ,SMALLBOARDKATEGORIE,SMALLBOARDTITLE,SMALLBOARDCONTENT,SMALLBOARDREADCOUNT,SMALLBOARDDATE) values (21,10,'고슴도치','고슴도치 맘들 모임가져요~~','안녕하세요 저는 고슴도치 두마리를 키우고 있습니다. 
가끔 만나서 고슴도치 용품도 사고 정기 모임 가졌으면 좋겠어요~~~~',0,to_date('19/04/17','RR/MM/DD'));
Insert into FORPET.SMALLBOARD (SMALLBOARDSEQ,MEMBERSEQ,SMALLBOARDKATEGORIE,SMALLBOARDTITLE,SMALLBOARDCONTENT,SMALLBOARDREADCOUNT,SMALLBOARDDATE) values (22,10,'기니피그','기니피그 모임이요~','기니피그 모임을 가졌으면 합니다 
시간은 주중 오후6시 이후 , 주말 오전 10시부터 13시까지로 하면 좋을 것 같아요 
함께하실 분은 쪽지주세요~~~~~~~',0,to_date('19/04/17','RR/MM/DD'));
REM INSERTING into FORPET.SMALLBOARDREPLY
SET DEFINE OFF;
Insert into FORPET.SMALLBOARDREPLY (SBCOMMENTSEQ,MEMBERSEQ,SMALLBOARDSEQ,SBCOMMENTREF,SBCOMMENTDATE,SBCOMMENTTEXT,SBCOMMENTLEVEL) values (5,8,2,null,to_date('19/04/16','RR/MM/DD'),'야홋',1);
Insert into FORPET.SMALLBOARDREPLY (SBCOMMENTSEQ,MEMBERSEQ,SMALLBOARDSEQ,SBCOMMENTREF,SBCOMMENTDATE,SBCOMMENTTEXT,SBCOMMENTLEVEL) values (2,8,1,1,to_date('19/04/16','RR/MM/DD'),'123123',2);
Insert into FORPET.SMALLBOARDREPLY (SBCOMMENTSEQ,MEMBERSEQ,SMALLBOARDSEQ,SBCOMMENTREF,SBCOMMENTDATE,SBCOMMENTTEXT,SBCOMMENTLEVEL) values (3,8,1,null,to_date('19/04/16','RR/MM/DD'),'123123',1);
Insert into FORPET.SMALLBOARDREPLY (SBCOMMENTSEQ,MEMBERSEQ,SMALLBOARDSEQ,SBCOMMENTREF,SBCOMMENTDATE,SBCOMMENTTEXT,SBCOMMENTLEVEL) values (4,8,1,3,to_date('19/04/16','RR/MM/DD'),'123123123',2);
Insert into FORPET.SMALLBOARDREPLY (SBCOMMENTSEQ,MEMBERSEQ,SMALLBOARDSEQ,SBCOMMENTREF,SBCOMMENTDATE,SBCOMMENTTEXT,SBCOMMENTLEVEL) values (6,8,2,5,to_date('19/04/16','RR/MM/DD'),'어서 댓글정리를 해BOA YO',2);
Insert into FORPET.SMALLBOARDREPLY (SBCOMMENTSEQ,MEMBERSEQ,SMALLBOARDSEQ,SBCOMMENTREF,SBCOMMENTDATE,SBCOMMENTTEXT,SBCOMMENTLEVEL) values (10,3,3,9,to_date('19/04/16','RR/MM/DD'),'rthsrths',2);
Insert into FORPET.SMALLBOARDREPLY (SBCOMMENTSEQ,MEMBERSEQ,SMALLBOARDSEQ,SBCOMMENTREF,SBCOMMENTDATE,SBCOMMENTTEXT,SBCOMMENTLEVEL) values (8,8,2,7,to_date('19/04/16','RR/MM/DD'),'ㄴㅁㄹㄴㅇㅎ',2);
Insert into FORPET.SMALLBOARDREPLY (SBCOMMENTSEQ,MEMBERSEQ,SMALLBOARDSEQ,SBCOMMENTREF,SBCOMMENTDATE,SBCOMMENTTEXT,SBCOMMENTLEVEL) values (45,8,23,44,to_date('19/04/17','RR/MM/DD'),'123123',2);
Insert into FORPET.SMALLBOARDREPLY (SBCOMMENTSEQ,MEMBERSEQ,SMALLBOARDSEQ,SBCOMMENTREF,SBCOMMENTDATE,SBCOMMENTTEXT,SBCOMMENTLEVEL) values (12,8,3,10,to_date('19/04/16','RR/MM/DD'),'123123',2);
Insert into FORPET.SMALLBOARDREPLY (SBCOMMENTSEQ,MEMBERSEQ,SMALLBOARDSEQ,SBCOMMENTREF,SBCOMMENTDATE,SBCOMMENTTEXT,SBCOMMENTLEVEL) values (22,8,2,21,to_date('19/04/16','RR/MM/DD'),'ㅁㄴㅇㅁㄴㅇ',2);
Insert into FORPET.SMALLBOARDREPLY (SBCOMMENTSEQ,MEMBERSEQ,SMALLBOARDSEQ,SBCOMMENTREF,SBCOMMENTDATE,SBCOMMENTTEXT,SBCOMMENTLEVEL) values (14,3,3,13,to_date('19/04/16','RR/MM/DD'),'12312312',2);
Insert into FORPET.SMALLBOARDREPLY (SBCOMMENTSEQ,MEMBERSEQ,SMALLBOARDSEQ,SBCOMMENTREF,SBCOMMENTDATE,SBCOMMENTTEXT,SBCOMMENTLEVEL) values (15,3,3,12,to_date('19/04/16','RR/MM/DD'),'6456',2);
Insert into FORPET.SMALLBOARDREPLY (SBCOMMENTSEQ,MEMBERSEQ,SMALLBOARDSEQ,SBCOMMENTREF,SBCOMMENTDATE,SBCOMMENTTEXT,SBCOMMENTLEVEL) values (17,8,7,null,to_date('19/04/16','RR/MM/DD'),'ㄱㄱ',1);
Insert into FORPET.SMALLBOARDREPLY (SBCOMMENTSEQ,MEMBERSEQ,SMALLBOARDSEQ,SBCOMMENTREF,SBCOMMENTDATE,SBCOMMENTTEXT,SBCOMMENTLEVEL) values (42,9,21,null,to_date('19/04/17','RR/MM/DD'),'좋아요~좋아요~제가 쪽지 보내겠습니다~~~~~',1);
Insert into FORPET.SMALLBOARDREPLY (SBCOMMENTSEQ,MEMBERSEQ,SMALLBOARDSEQ,SBCOMMENTREF,SBCOMMENTDATE,SBCOMMENTTEXT,SBCOMMENTLEVEL) values (41,11,22,null,to_date('19/04/17','RR/MM/DD'),'와우 함께해요... 기니피그 정보가 많아서 좋아요~',1);
Insert into FORPET.SMALLBOARDREPLY (SBCOMMENTSEQ,MEMBERSEQ,SMALLBOARDSEQ,SBCOMMENTREF,SBCOMMENTDATE,SBCOMMENTTEXT,SBCOMMENTLEVEL) values (43,11,21,null,to_date('19/04/17','RR/MM/DD'),'김미리인듯...ㅎㅎ',1);
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
Insert into FORPET.VET (VETSEQ,VETNAME,VETADDRESS,VETPHONE,VETDAYSTIME,VETDAYETIME,VETSATSTIME,VETSATETIME,VETSUNSTIME,VETSUNETIME,VETCOMMENT) values (1,'드림동물병원','서울시 강남구 역삼동 역삼로 234','02-508-7583',9,22,9,22,10,21,'서울시 강남구 역삼동 771번지 뉴튼프라자 101호');
Insert into FORPET.VET (VETSEQ,VETNAME,VETADDRESS,VETPHONE,VETDAYSTIME,VETDAYETIME,VETSATSTIME,VETSATETIME,VETSUNSTIME,VETSUNETIME,VETCOMMENT) values (2,'24시 닥터멍동물병원','서울시 강남구 논현로 515','02-554-7505',9,22,9,22,9,22,'야간진료시간은 오후 10시부터 오전 9시');
Insert into FORPET.VET (VETSEQ,VETNAME,VETADDRESS,VETPHONE,VETDAYSTIME,VETDAYETIME,VETSATSTIME,VETSATETIME,VETSUNSTIME,VETSUNETIME,VETCOMMENT) values (3,'서울동물심장병원','서울시 강남구 언주로 542 ENP타워','02-6203-7588',9,22,9,22,10,21,'심장질환 특화된 병원');
Insert into FORPET.VET (VETSEQ,VETNAME,VETADDRESS,VETPHONE,VETDAYSTIME,VETDAYETIME,VETSATSTIME,VETSATETIME,VETSUNSTIME,VETSUNETIME,VETCOMMENT) values (4,'혜민동물병원','서울시 강남구 테헤란로8길 37 한돌빌딩','02-454-8275',9,22,9,22,10,21,'http://hyeminpet.blog.me/');
Insert into FORPET.VET (VETSEQ,VETNAME,VETADDRESS,VETPHONE,VETDAYSTIME,VETDAYETIME,VETSATSTIME,VETSATETIME,VETSUNSTIME,VETSUNETIME,VETCOMMENT) values (5,'고양이병원 백산동물병원','서울시 강남구 논현로86길 22','02-1644-5653',9,22,9,22,9,22,'24시간 운영');
Insert into FORPET.VET (VETSEQ,VETNAME,VETADDRESS,VETPHONE,VETDAYSTIME,VETDAYETIME,VETSATSTIME,VETSATETIME,VETSUNSTIME,VETSUNETIME,VETCOMMENT) values (6,'예은동물병원','서울시 강남구 역삼동 도곡로 189','02-529-5575',10,21,10,21,10,18,'영어가능 24시간');
Insert into FORPET.VET (VETSEQ,VETNAME,VETADDRESS,VETPHONE,VETDAYSTIME,VETDAYETIME,VETSATSTIME,VETSATETIME,VETSUNSTIME,VETSUNETIME,VETCOMMENT) values (7,'SNC 동물메디컬센터','서울시 강남구 논현로 416 운기빌딩 1층','02-562-7582',9,22,9,22,9,22,'http://blog.naver.com/sncamc');
Insert into FORPET.VET (VETSEQ,VETNAME,VETADDRESS,VETPHONE,VETDAYSTIME,VETDAYETIME,VETSATSTIME,VETSATETIME,VETSUNSTIME,VETSUNETIME,VETCOMMENT) values (8,'츄츄동물병원','서울시 강남구 논현로67길 56','02-512-0075',9,24,9,24,9,24,'http://blog.naver.com/vetlucy');
Insert into FORPET.VET (VETSEQ,VETNAME,VETADDRESS,VETPHONE,VETDAYSTIME,VETDAYETIME,VETSATSTIME,VETSATETIME,VETSUNSTIME,VETSUNETIME,VETCOMMENT) values (9,'위너스동물병원','서울시 강남구 역삼로 406','02-3452-6193',10,20,10,20,0,0,'일요일공휴일 휴무');
Insert into FORPET.VET (VETSEQ,VETNAME,VETADDRESS,VETPHONE,VETDAYSTIME,VETDAYETIME,VETSATSTIME,VETSATETIME,VETSUNSTIME,VETSUNETIME,VETCOMMENT) values (10,'봄동물병원','서울시 강남구 도곡로 115','1644-9416',9,22,9,22,9,22,'제갈준 원장님');
REM INSERTING into FORPET.VETCATEGORY
SET DEFINE OFF;
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (1,1,'개');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (2,2,'개');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (3,3,'개');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (4,4,'개');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (5,5,'고양이');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (6,6,'개');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (7,7,'개');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (8,8,'개');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (9,9,'개');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (10,10,'개');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (11,1,'고양이');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (12,3,'고양이');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (13,4,'고양이');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (14,6,'고양이');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (15,7,'고양이');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (16,8,'고양이');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (17,9,'고양이');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (18,10,'고양이');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (19,1,'기타');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (20,7,'기니피그');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (21,7,'조류');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (22,7,'토끼');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (23,7,'고슴도치');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (24,7,'기타');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (25,7,'파충류');
Insert into FORPET.VETCATEGORY (VETCATEGORYSEQ,VETSEQ,ANIMALTYPE) values (26,8,'조류');
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
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (1,1,'용품');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (2,2,'야간');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (3,2,'호텔');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (4,2,'미용');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (5,2,'용품');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (6,3,'용품');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (7,4,'용품');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (8,5,'용품');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (9,5,'호텔');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (10,5,'야간');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (11,6,'미용');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (12,7,'야간');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (13,7,'미용');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (14,8,'용품');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (15,8,'미용');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (16,8,'호텔');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (17,9,'야간');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (18,9,'용품');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (19,9,'미용');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (20,10,'용품');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (21,10,'미용');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (22,10,'야간');
Insert into FORPET.VETSERVICE (VETSERVICESEQ,VETSEQ,VETITEM) values (23,10,'호텔');
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
