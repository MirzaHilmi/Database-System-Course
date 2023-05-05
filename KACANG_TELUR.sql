CREATE TABLE SBD.KACANG_TELUR
(
    ID              VARCHAR(36)  NOT NULL
        CONSTRAINT PK_KACANG_TELUR_ID PRIMARY KEY,
    PRODUCT_ITEM_ID VARCHAR(36)  NOT NULL,
    NAME            VARCHAR(100) NOT NULL
);

ALTER TABLE SBD.KACANG_TELUR
    ADD CONSTRAINT FK_KACANG_TELUR_PRODUCT_ITEM_ID FOREIGN KEY (PRODUCT_ITEM_ID) REFERENCES SBD.PRODUCT_ITEM (ID)
    ADD CONSTRAINT UQ_KACANG_TELUR_NAME UNIQUE (NAME);

ALTER TABLE SBD.KACANG_TELUR
    DROP CONSTRAINT UQ_KACANG_TELUR_NAME;