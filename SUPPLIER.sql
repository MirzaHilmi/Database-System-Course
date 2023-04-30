CREATE TABLE SUPPLIER
(
    ID           VARCHAR(36)  NOT NULL
        CONSTRAINT PK_SUPPLIER_ID PRIMARY KEY,
    ADDRESS_ID   VARCHAR(36)  NOT NULL,
    NAME         VARCHAR(100) NOT NULL,
    EMAIL        VARCHAR(100) NOT NULL,
    PHONE_NUMBER VARCHAR(15)  NOT NULL
);

ALTER TABLE SUPPLIER
    ADD CONSTRAINT FK_SUPPLIER_ADDRESS_ID FOREIGN KEY (ADDRESS_ID) REFERENCES ADDRESS (ID)
    ADD CONSTRAINT UQ_SUPPLIER_EMAIL UNIQUE (EMAIL)
    ADD CONSTRAINT UQ_SUPPLIER_PHONE_NUMBER UNIQUE (PHONE_NUMBER)
    ADD CONSTRAINT UQ_SUPPLIER_NAME UNIQUE (NAME);

ALTER TABLE SUPPLIER
    DROP CONSTRAINT UQ_SUPPLIER_NAME;