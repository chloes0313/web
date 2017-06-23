

CREATE TABLE recipe(
	RECIPE_ID		NUMBER(7)		PRIMARY KEY,
	RECIPE_NM_KO	VARCHAR2(100)	NOT NULL,
	SUMRY			VARCHAR2(500)	NOT NULL,
	NATION_CODE		VARCHAR2(10)	NOT NULL,
	NATION_NM		VARCHAR2(10)	NOT NULL,
	TY_CODE			VARCHAR2(10)	NOT NULL,
	TY_NM			VARCHAR2(50)	NOT NULL,
	COOKING_TIME	VARCHAR2(10)	NOT NULL,
	CALORIE			VARCHAR2(10)	NOT NULL,
	QNT				VARCHAR2(10)	NOT NULL,
	LEVEL_NM		VARCHAR2(10)	NOT NULL,
	IRDNT_CODE		VARCHAR2(50)	,
	PC_NM			VARCHAR2(20)	,
	IMG_URL			VARCHAR2(300)	NOT NULL,
	DET_URL			VARCHAR2(300)	NOT NULL
);

INSERT INTO RECIPE
VALUES (
		1,
		'나물비빔밥	',
		'육수로 지은 밥에 야채를 듬뿍 넣은 영양만점 나물비빔밥!',
		'3020001',
		'한식',
		'3010001',
		'밥',
		'60분',
		'580Kcal',
		'4인분',
		'보통',
		'곡류',
		'5,000원',
		'http://file.okdab.com/UserFiles/searching/recipe/000200.jpg',
		'http://www.okdab.com/consumer/recipe/recipeView.do?recipeSn=1'

);

{"RECIPE_ID":"레시피 코드"},{"RECIPE_NM_KO":"레시피 이름"},{"SUMRY":"간략(요약) 소개"},{"NATION_CODE":"유형코드"},
{"NATION_NM":"유형분류"},{"TY_CODE":"음식분류코드"},{"TY_NM":"음식분류"},{"COOKING_TIME":"조리시간"},{"CALORIE":"칼로리"},
{"QNT":"분량"},{"LEVEL_NM":"난이도"},{"IRDNT_CODE":"재료별 분류명"},{"PC_NM":"가격별 분류"},{"IMG_URL":"대표이미지 URL"},
{"DET_URL":"상세 URL"}]


CREATE TABLE recipe_steps(
	RECIPE_ID		NUMBER(7)		,  
	COOKING_NO		NUMBER(7)		,
	COOKING_DC		VARCHAR2(500)	NOT NULL,
	STRE_STEP_IMAGE_URL	VARCHAR2(300)	,
	STEP_TIP		VARCHAR2(500),
CONSTRAINT recipe_steps_fk FOREIGN KEY (RECIPE_ID) REFERENCES recipe ON DELETE CASCADE,
CONSTRAINT recipe_steps_pk PRIMARY KEY (RECIPE_ID, COOKING_NO)
);	-- recipe_id랑 cooking_no이랑 합해서 프라이머리키 등록

INSERT INTO RECIPE_STEPS
VALUES (
		1,
		3,	
		'청포묵은 고기와 비슷한 크기로 잘라 끓는 물에 데쳐내고 계란은 노른자와 흰자를 분리해 지단부쳐 곱게 채썬다.',
		null,
		null
);

INSERT INTO RECIPE_STEPS
VALUES (
		1,
		4,	
		'콩나물과 숙주, 미나리는 데쳐서 국간장과 참기름으로 간하고, 고사리와 도라지는 참기름을 두른 프라이팬에 살짝 볶아놓는다.',
		null,
		null
);

INSERT INTO RECIPE_STEPS
VALUES (
		1,
		5,	
		'밥을 참기름으로 무쳐 그릇에 담고 준비한 재료를 고루 얹는다.',
		null,
		null
);

INSERT INTO RECIPE_STEPS
VALUES (
		1,
		2,	
		'안심은 불고기 양념하여 30분간 재워 국물 없이 구워 한 김 식으면 한입 크기로 자른다.',
		'http://file.okdab.com/UserFiles/searching/recipe/000200_p02.jpg',
		null
);

INSERT INTO RECIPE_STEPS
VALUES (
		1,
		1,	
		'양지머리로 육수를 낸 후 식혀 기름을 걷어낸 후, 불린 쌀을 넣어 고슬고슬하게 밥을 짓는다.',
		'http://file.okdab.com/UserFiles/searching/recipe/000200_p01.jpg',
		null
);



SELECT r.RECIPE_ID,
		r.RECIPE_NM_KO,
		r.SUMRY,
		r.PC_NM,
		s.COOKING_NO,
		s.COOKING_DC,
		s.STEP_TIP
FROM recipe r, recipe_steps s
WHERE r.recipe_Id = s.recipe_Id
AND r.recipe_id = 1
ORDER BY s.cooking_no






[{"RECIPE_ID":"레시피 코드"},{"COOKING_NO":"요리설명순서"},{"COOKING_DC":"요리설명"},{"STRE_STEP_IMAGE_URL":"과정 이미지 URL"},
{"STEP_TIP":"과정팁"}]



CREATE TABLE recipe_ingredients(
	RECIPE_ID		NUMBER(7)		NOT NULL,  
	IRDNT_SN		NUMBER(5)		,
	IRDNT_NM		VARCHAR2(50)	NOT NULL,
	IRDNT_CPCTY		VARCHAR2(50)	,
	IRDNT_TY_CODE	VARCHAR2(10)	NOT NULL,
	IRDNT_TY_NM		VARCHAR2(10)	NOT NULL,
CONSTRAINT recipe_ingredients_fk FOREIGN KEY (RECIPE_ID) REFERENCES recipe ON DELETE CASCADE,
CONSTRAINT recipe_ingredients_pk PRIMARY KEY (IRDNT_SN)
);	-- recipe_id랑 cooking_no이랑 합해서 프라이머리키 등록


INSERT INTO RECIPE_INGREDIENTS
VALUES (
	1,
	2,
	'안심',
	'200g',
	'3060001',
	'주재료'
);


INSERT INTO RECIPE_INGREDIENTS
VALUES (
	1,
	16,
	'계란',
	'1개',
	'3060001',
	'주재료'
);


INSERT INTO RECIPE_INGREDIENTS
VALUES (
	1,
	15,
	'고사리',
	'20g',
	'3060001',
	'주재료'
);


INSERT INTO RECIPE_INGREDIENTS
VALUES (
	1,
	14,
	'도라지',
	'20g',
	'3060001',
	'주재료'
);

INSERT INTO RECIPE_INGREDIENTS
VALUES (
	1,
	13,
	'숙주',
	'20g',
	'3060001',
	'주재료'
);

INSERT INTO RECIPE_INGREDIENTS
VALUES (
	1,
	12,
	'설탕',
	'약간',
	'3060003',
	'양념'
);

{"RECIPE_ID":"레시피 코드"},{"IRDNT_SN":"재료순번"},{"IRDNT_NM":"재료명"},{"IRDNT_CPCTY":"재료용량"},{"IRDNT_TY_CODE":"재료타입 코드"},{"IRDNT_TY_NM":"재료타입명"}],


"data"
[{"IRDNT_CPCTY":"4컵","IRDNT_NM":"쌀","IRDNT_SN":1,"RN":1,"IRDNT_TY_NM":"주재료","RECIPE_ID":1,"IRDNT_TY_CODE":"3060001"}