use heroku_d1010f43979e37a

/* ∞Ò«¡ ƒ⁄Ω∫ */
create table tb_golf_course(
     course_id              int             NOT NULL    PRIMARY KEY    AUTO_INCREMENT
    ,course_name            VARCHAR(30)     NOT NULL
    ,course_logo            VARCHAR(200)
    ,course_img_url         VARCHAR(200)
    ,address_category       TINYINT
    ,address                VARCHAR(20)
    ,course_homepage_url    VARCHAR(200)
    ,telephone              VARCHAR(20)
    ,isVisible              VARCHAR(1)      NOT NULL    DEFAULT 'Y'
    ,isDeleted              VARCHAR(1)      NOT NULL    DEFAULT 'N'
    ,reg_date               TIMESTAMP       NOT NULL
)

/* ∞Ò«¡ »¶ */
create table tb_golf_hole(
     course_id              INT             NOT NULL 
    ,hole_number            TINYINT         NOT NULL   UNIQUE AUTO_INCREMENT
    ,hole_img_url           VARCHAR(200)
    ,hole_name              VARCHAR(30)
)

ALTER TABLE tb_golf_hole ADD PRIMARY KEY(course_id, hole_number);

/* ∞Ò«¡ ∏Æ∫‰ */
create table tb_golf_review(
     course_id          INT                 NOT NULL
    ,user_id            VARCHAR(50)         NOT NULL
    ,review_content     NVARCHAR(2000)  
    ,course_score       TINYINT             NOT NULL
    ,isVisible          VARCHAR(1)          NOT NULL    DEFAULT 'Y'
    ,isDeleted          VARCHAR(1)          NOT NULL    DEFAULT 'N'
    ,reg_date           TIMESTAMP           NOT NULL
    ,mod_date           TIMESTAMP
)

ALTER TABLE tb_golf_review ADD PRIMARY KEY(course_id, user_id);

/* ∞Ò«¡ ¡¡æ∆ø‰ */
create table tb_golf_thumb(
     course_id          INT                 NOT NULL
    ,user_id            VARCHAR(50)         NOT NULL
    ,reg_date           TIMESTAMP           NOT NULL
)

ALTER TABLE tb_golf_thumb ADD PRIMARY KEY(course_id, user_id);

/* ∞Ò«¡ ∫œ∏∂≈© */
create table tb_golf_bookmark
(
     course_id          INT                 NOT NULL
    ,user_id            VARCHAR(50)         NOT NULL
    ,reg_date           TIMESTAMP           NOT NULL
)

ALTER TABLE tb_golf_bookmark ADD PRIMARY KEY(course_id, user_id);

/* ∞Ò«¡ »¶ ¥Ò±€ */
create table tb_hole_comment
(
     comment_id         INT                 NOT NULL    PRIMARY KEY    AUTO_INCREMENT
    ,course_id          INT                 NOT NULL
    ,hole_number        TINYINT             NOT NULL
    ,user_id            VARCHAR(50)         NOT NULL
    ,hole_content       NVARCHAR(2000)
    ,isVisible          VARCHAR(1)          NOT NULL    DEFAULT 'Y'
    ,isDeleted          VARCHAR(1)          NOT NULL    DEFAULT 'N'
    ,reg_date           TIMESTAMP           NOT NULL
    ,mod_date           TIMESTAMP
)









