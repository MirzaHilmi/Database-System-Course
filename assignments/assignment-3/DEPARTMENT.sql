CREATE TABLE SBD.DEPARTMENT
(
    ID          VARCHAR(36)  NOT NULL
        CONSTRAINT PK_DEPARTMENT_ID PRIMARY KEY,
    MERCHANT_ID VARCHAR(36)  NOT NULL,
    NAME        VARCHAR(100) NOT NULL,
    DESCRIPTION VARCHAR(255) NOT NULL
);

ALTER TABLE SBD.DEPARTMENT
    ADD CONSTRAINT FK_DEPARTMENT_MERCHANT_ID FOREIGN KEY (MERCHANT_ID) REFERENCES SBD.MERCHANT (ID)
    ADD CONSTRAINT UQ_DEPARTMENT_NAME UNIQUE (NAME);

ALTER TABLE SBD.DEPARTMENT
    DROP CONSTRAINT UQ_DEPARTMENT_NAME;