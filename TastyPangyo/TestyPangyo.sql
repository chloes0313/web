
SELECT * FROM review;
DROP TABLE review;
CREATE TABLE review (
	review_no		NUMBER(5)		PRIMARY KEY,
	member_id		VARCHAR2(20)	NOT NULL,
	restaurant_id	NUMBER(6)		NOT NULL,
	restaurant_name	VARCHAR2(20)	NOT NULL,
	registered_date	DATE			NOT NULL,
	title			VARCHAR2(120)	NOT NULL,
	comments		VARCHAR2(1000)	NOT NULL,
	kostar			NUMBER(2)		NOT NULL,	
CONSTRAINT	review_restaurant_fk	FOREIGN	KEY	(restaurant_id)	REFERENCES restaurant,
CONSTRAINT	review_member_fk		FOREIGN KEY (member_id)		REFERENCES member
);

CREATE SEQUENCE review_no_seq;
DROP SEQUENCE review_no_seq;

DROP TABLE restaurant;
SELECT * FROM restaurant;
CREATE TABLE restaurant (
	restaurant_id	NUMBER(6)		PRIMARY KEY,
	food_category	VARCHAR2(20)	NOT NULL,
	location		VARCHAR2(100)	NOT NULL,
	restaurant_name	VARCHAR2(20)	NOT NULL,
	restaurant_tel	VARCHAR2(30)	NOT NULL,
	restaurant_intro	VARCHAR2(1000)	NOT NULL,
	hits			NUMBER(10)		NOT NULL	
);

CREATE SEQUENCE restaurant_id_seq;
DROP SEQUENCE restaurant_id_seq;


INSERT INTO RESTAURANT VALUES (restaurant_id_seq.nextval, '피자', '경기 성남시 분당구 대왕판교로 670 유스페이스2 A동 107호', '브루클린', '031-628-6399', '유스페이스2A동에 있는 브루클린 피자&펍!<br> 프라이드 포테이토, 나쵸, 치킨, 피자 등 다양한 메뉴가 준비되어있습니다. <br> 메인 메뉴인 피자는 치즈, 고르곤졸라, 페페로니, 시금치, 하와이안, 할라피뇨, 소세지 피자 등 취향대로 골라 먹을 수 있습니다. <br> 골든에일, 필스너, 바이젠 등 여러가지 맥주와 함께 즐기면 꿀맛:)<br>', 0);
INSERT INTO RESTAURANT VALUES (restaurant_id_seq.nextval, '한식', '경기 성남시 분당구 대왕판교로 670 682호', '새마을식당', '031-628-6694', '백종원의 대표식당, 새마을식당!<br>점심에도 저녁 회식에도 사람들이 많이 찾는 곳입니다.<br>주메뉴 : 열탄불고기, 소금구이, 7분 김치찌개<br><br>', 0);



DROP TABLE member;
SELECT * FROM member;
CREATE TABLE member(
	member_id	VARCHAR2(20)		PRIMARY KEY,
	member_pw	VARCHAR2(20)		NOT NULL,
	member_name	VARCHAR2(20)		NOT NULL,
	visit_date	DATE				NOT NULL
);

INSERT INTO member VALUES ('chloes', '90385', '성은영', '2017-03-13');
INSERT INTO member VALUES ('sirius_012', '666666', '안뇽', '2017-05-05');

DROP TABLE restaurantimage;
SELECT * FROM restaurantimage;
CREATE TABLE restaurantimage(
	restaurant_id	NUMBER(6)		,
	image			VARCHAR2(100)	NOT NULL,
CONSTRAINT	restaurantimage_restaurant_fk	FOREIGN	KEY (restaurant_id)	REFERENCES restaurant
);


INSERT INTO RESTAURANTIMAGE VALUES (3, '사진경로1');
INSERT INTO RESTAURANTIMAGE VALUES (3, '사진경로2');
INSERT INTO RESTAURANTIMAGE VALUES (3, '사진경로3');



SELECT m.restaurant_id, 
	r.food_category, 
	r.location,
	r.restaurant_name,
	r.restaurant_tel,
	r.restaurant_intro,
	r.hits,
	m.image
FROM RESTAURANT r, RESTAURANTIMAGE m
WHERE r.restaurant_id = m.restaurant_id (+) AND m.restaurant_id = 3

