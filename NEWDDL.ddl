
CREATE TABLE CTRY
(
	Country_Cd STRING,
	Country_Short_Name STRING,
	Source_System_Cd STRING,
	Country_Long_Name STRING,
	ISO_Country_Cd STRING,
	Tax_Procedure_Cd STRING,
	Country_Language_Cd STRING,
	Country_Currency_Cd STRING,
	DAI_Update_Dttm TIMESTAMP,
	DAI_Create_Dttm TIMESTAMP,
	DAI_BTCH_ID BIGINT
);

ALTER TABLE CTRY
	ADD CONSTRAINT XPKCOUNTRY PRIMARY KEY (Source_System_Cd, Country_Cd) DISABLE NOVALIDATE;

CREATE TABLE CURRENCY
(
	Currency_Short_Name STRING,
	Currency_Long_Name STRING,
	Currency_Type_Indicator CHAR(1),
	ISO_Currency_Cd STRING,
	Currency_Alternate_Cd STRING,
	Decimal_Place_Cnt INT,
	Valid_To_Dt TIMESTAMP,
	DAI_Update_Dttm TIMESTAMP,
	DAI_Create_Dttm TIMESTAMP,
	Currency_Cd STRING,
	Source_System_Cd STRING,
	DAI_BTCH_ID BIGINT
)
PARTITIONED BY 
(
	SRC_SYS_CD STRING
);

ALTER TABLE CURRENCY
	ADD CONSTRAINT XPKCURRENCY PRIMARY KEY (Source_System_Cd, Currency_Cd) DISABLE NOVALIDATE;

CREATE TABLE E_4
(
	a CHAR(18)
);

ALTER TABLE E_4
	ADD CONSTRAINT XPKE_4 PRIMARY KEY (a) DISABLE NOVALIDATE;

CREATE TABLE LANGUAGE
(
	Source_System_Cd STRING,
	Language_Cd STRING,
	ISO_Language_Cd STRING,
	Language_Name STRING,
	DAI_Update_Dttm TIMESTAMP,
	DAI_Create_Dttm TIMESTAMP,
	DAI_BTCH_ID BIGINT
);

ALTER TABLE LANGUAGE
	ADD CONSTRAINT XPKLANGUAGE PRIMARY KEY (Source_System_Cd, Language_Cd) DISABLE NOVALIDATE;
