use heroku_d1010f43979e37a

/* 게시글 */
create table tb_post
(
     postId       BIGINT            NOT NULL    PRIMARY KEY AUTO_INCREMENT
    ,user_id      VARCHAR(50)       NOT NULL
    ,content      NVARCHAR(2000)    NOT NULL
    ,isDelete     boolean           NOT NULL    DEFAULT 0
    ,isBlind      boolean           NOT NULL    DEFAULT 0
    ,reg_date     TIMESTAMP         NOT NULL
    ,upd_date     TIMESTAMP         NULL
)

/* 게시글 이미지 */
create table tb_postImg
(
     imgNo       BIGINT        NOT NULL    PRIMARY KEY AUTO_INCREMENT
    ,imgURI      VARCHAR(200)  NOT NULL
)

/* 맵핑 테이블*/
create table tb_postImgMapping
(
     imgNo       BIGINT        NOT NULL
    ,postId      BIGINT        NOT NULL
)

ALTER TABLE tb_postImgMapping ADD PRIMARY KEY(imgNo, postId);

/* 댓글 */
create table tb_comment
(
     commentId    BIGINT            NOT NULL    PRIMARY KEY AUTO_INCREMENT  
    ,postId       BIGINT            NOT NULL    
    ,user_id      VARCHAR(50)       NOT NULL
    ,content      NVARCHAR(2000)    NOT NULL
    ,isDelete     boolean           NOT NULL    DEFAULT 0
    ,isBlind      boolean           NOT NULL    DEFAULT 0
    ,reg_date     TIMESTAMP         NOT NULL
    ,upd_date     TIMESTAMP         NULL
)

/* 좋아요 */
create table tb_likes
(
     postId       BIGINT       NOT NULL
    ,user_id      VARCHAR(50)  NOT NULL
)

ALTER TABLE tb_likes ADD PRIMARY KEY(postId, user_id);
