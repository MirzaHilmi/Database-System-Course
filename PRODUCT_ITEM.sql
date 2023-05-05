CREATE TABLE SBD.PRODUCT_ITEM
(
    ID          VARCHAR(36)    NOT NULL
        CONSTRAINT PK_STAFF_ID PRIMARY KEY,
    PRODUCT_ID  VARCHAR(36)    NOT NULL,
    NAME        VARCHAR(100)   NOT NULL,
    PRICE       DECIMAL(10, 2) NOT NULL,
    DESCRIPTION VARCHAR(255)   NOT NULL,
    STOCK       INT            NOT NULL
);

ALTER TABLE SBD.PRODUCT_ITEM
    ADD CONSTRAINT FK_PRODUCT_ITEM_PRODUCT_ID FOREIGN KEY (PRODUCT_ID) REFERENCES SBD.PRODUCT (ID)
    ADD CONSTRAINT UQ_PRODUCT_ITEM_NAME UNIQUE (NAME);

ALTER TABLE SBD.PRODUCT_ITEM
    DROP CONSTRAINT UQ_PRODUCT_ITEM_NAME;