use heroku_d1010f43979e37a

/* 유저 정보 */
create table tb_user
(
     user_id            VARCHAR(50)     NOT NULL    PRIMARY KEY
    ,user_nickname      VARCHAR(200)    NOT NULL
    ,user_pwd           VARCHAR(50)     NOT NULL
    ,user_prev_pwd      VARCHAR(50)     NOT NULL
    ,user_status        TINYINT 
    ,login_false_count  TINYINT 
    ,user_pwd_e_dt      TIMESTAMP
    ,admin_login_dt     TIMESTAMP
    ,profilimg          VARCHAR(200)    NULL
    ,reg_date           TIMESTAMP       NOT NULL
    ,upd_date           TIMESTAMP       NULL
)
