-- 게시판, 댓글, 회원가입을 위한 테이블, 시퀀스 삭제
DROP TABLE reply4;
DROP TABLE errorBoard;
DROP TABLE members3;
DROP SEQUENCE errorBoard_seq;
DROP SEQUENCE reply4_seq;

-- 게시판, 댓글, 회원가입을 위한 테이블, 시퀀스 생성
CREATE TABLE members3 (
	userid VARCHAR2(100) PRIMARY KEY,
	userpwd VARCHAR2(100) NOT NULL,
	username VARCHAR2(100) NOT NULL,
	email VARCHAR2(200) NOT NULL
);


--게시판 글정보 테이블
CREATE table errorBoard(
	boardnum number primary key,	--게시글 일련번호
	userid varchar2(20) not null,  		--작성자 이름
	title varchar2(200) not null, 		--글제목
	content varchar2(4000) not null,  	--글내용
	hitcount number default 0, 		--조회수
	regdate date default sysdate ,	--작성일
	originalfile varchar2(200),		--첨부파일명 (원래 이름)
	savedfile varchar2(200)		--저장파일명
	);

--게시판 글 일련번호에 사용할 시퀀스 생성
create sequence errorBoard_seq;

--게시판 글 저장 예
insert into errorBoard (boardnum, userid, title, content)
values (board2_seq.nextval, 'aaa', '글제목', '글내용입니다.');

--리플 정보 테이블
create table reply4 (
	replynum number primary key,   	--리플 일련번호
	boardnum number  not null, 		--본문글번호
	userid varchar2(20) not null, 		--리플 작성자 이름 
	replytext varchar2(1000) not null,  	--리플내용
	regdate date default sysdate,		--등록일자
	originalfile varchar2(200),		--첨부파일명 (원래 이름)
	savedfile varchar2(200)		--저장파일명
);

--리플 테이블 일련번호에 사용할 시퀀스 생성
create sequence reply4_seq;

--리플 저장 예
insert into reply4 values (reply4_seq.nextval, 1, '홍길동', '리플내용', sysdate);
commit;