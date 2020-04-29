USE restapi;

CREATE TABLE IF NOT EXISTS user_details (
    id                  INT         AUTO_INCREMENT      PRIMARY KEY,
    name          CHAR(25)    NOT NULL,
    age         INT         NOT NULL DEFAULT 0,
    department           CHAR(25)    NOT NULL,
    subject              CHAR(64)    NOT NULL UNIQUE,
    
    
    deleted             TINYINT(1)  NOT NULL DEFAULT 0,
    creation_date       DATETIME    DEFAULT CURRENT_TIMESTAMP,
    last_update         DATETIME    DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)ENGINE = INNODB CHARACTER SET=utf8;