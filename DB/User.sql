use heroku_d1010f43979e37a

drop table tb_user

/* 유저 정보 */
create table tb_user
(
     user_id            VARCHAR(50)     NOT NULL    PRIMARY KEY
    ,user_nickname      VARCHAR(200)    NOT NULL
    ,user_pwd           VARCHAR(80)     NOT NULL
    ,user_prev_pwd      VARCHAR(80)     NULL
    ,user_status        TINYINT         NOT NULL    DEFAULT 0
    ,login_false_count  TINYINT         NOT NULL    DEFAULT 0
    ,user_pwd_e_dt      TIMESTAMP       NULL
    ,admin_login_dt     TIMESTAMP       NULL
    ,profilimg          VARCHAR(200)    NULL
    ,reg_date           TIMESTAMP       NOT NULL
    ,upd_date           TIMESTAMP       NULL
)
