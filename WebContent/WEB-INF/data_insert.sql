
insert into job(jobNo, jobName, jobDesc)
   values(jobNo_SEQ.NEXTVAL, '안방 인테리어', '아파트 안방을 인테리어 하는 작업입니다.');
insert into job(jobNo, jobName, jobDesc)
   values(jobNo_SEQ.NEXTVAL, '거실 인테리어', '아파트 거실을 인테리어 하는 작업입니다.');
insert into job(jobNo, jobName, jobDesc)
   values(jobNo_SEQ.NEXTVAL, '싱크대 인테리어', '아파트 싱크대를 인테리어 하는 작업입니다.');
insert into job(jobNo, jobName, jobDesc)
   values(jobNo_SEQ.NEXTVAL, '화장실 인테리어', '아파트 화장실을 인테리어 하는 작업입니다.');
insert into job(jobNo, jobName, jobDesc)
   values(jobNo_SEQ.NEXTVAL, '테라스 인테리어', '아파트 테라스를 인테리어 하는 작업입니다.');
   
insert into company(companyNo, companyName, companyCeoName, companyCeoPhone, jobArea, jobNo)
   values(companyNo_SEQ.NEXTVAL, '(주)그림', '김씨랑', '010-2325-3389', '경기도', 1);
insert into company(companyNo, companyName, companyCeoName, companyCeoPhone, jobArea, jobNo)
   values(companyNo_SEQ.NEXTVAL, '(주)인터', '박대성', '010-2325-3389', '경기도', 2);
insert into company(companyNo, companyName, companyCeoName, companyCeoPhone, jobArea, jobNo)
   values(companyNo_SEQ.NEXTVAL, '(주)시그린', '이대로', '010-2325-3389', '서울', 3);
insert into company(companyNo, companyName, companyCeoName, companyCeoPhone, jobArea, jobNo)
   values(companyNo_SEQ.NEXTVAL, '(주)아람들', '김사랑', '010-2325-3389', '서울', 4);
insert into company(companyNo, companyName, companyCeoName, companyCeoPhone, jobArea, jobNo)
   values(companyNo_SEQ.NEXTVAL, '(주)멋쟁이', '안정해', '010-2325-3389', '제주도', 5);
   
insert into member(memberId, memberPwd, memberName, 
   companyNo, memberLevel, memberEmail, memberPhone, jobArea)
   values('user01', '0101', '유일위',
   1, '9', 'youilwi@naver.com', '010-6517-6369', '인천');
insert into member(memberNo, memberId, memberPwd, memberName, 
   companyNo, memberLevel, memberEmail, memberPhone, jobArea)
   values('user02', '0202', '박현창',
   2, '9', 'park@naver.com', '010-6517-6369', '서울');
insert into member(memberNo, memberId, memberPwd, memberName, 
   companyNo, memberLevel, memberEmail, memberPhone, jobArea)
   values('user03', '0303', '문병우',
   3, '9', 'mun@naver.com', '010-6517-6369', '경기도');
insert into member(memberNo, memberId, memberPwd, memberName, 
   companyNo, memberLevel, memberEmail, memberPhone, jobArea)
   values('user04', '0404', '유일위',
   4, '9', 'sang@naver.com', '010-6517-6369', '제주');
insert into member(memberNo, memberId, memberPwd, memberName, 
   companyNo, memberLevel, memberEmail, memberPhone, jobArea)
   values('user05', '0505', '이순신',
   5, '1', 'kim@naver.com', '010-6517-6369', '전라도');
   
insert into orderRequest(orderNo, memberId, jobNo, companyNo, orderTitle,
   orderPrice, orderComm, orderStatus, orderResult, startDate, enddate)
   values(orderNo_SEQ.NEXTVAL, 'user01', 1, 1, '인테리어 첫공사', 1000000, 100000,
   '1', 'B', SysDate,);
   
insert into board(boardNo, memberId, boardTitle, boardContent, regDate,
   readCount, boardType, filePath, PhotoPath)
   values(boardNo_SEQ.NEXTVAL, 'user01', '견적요청서 공지사할 입니다.', '견적요청서를 작성할 때 주의사항입니다.',
   SysDate, 0, 'A', 'C:\class5\file\', 'C:\class5\photo\');