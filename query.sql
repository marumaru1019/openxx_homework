-- # ----------------------- CREATE elemet table -------------------------
# sample_tableがあったら削除し再作成する
DROP TABLE IF EXISTS element_table;

CREATE TABLE element_table(
#PRIMARY KEYに設定し自動で値が保管されるようにする
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
title varchar(255),
company varchar(255),
abst1 text,
abst2 text,
price text,
initial_price varchar(255),
free_plan varchar(255),
free_trial varchar(255),
detail_link text
)DEFAULT CHARACTER SET=utf8mb4 COLLATE = utf8mb4_general_ci;

-- # ----------------------- CREATE detail table -------------------------
# sample_tableがあったら削除し再作成する
DROP TABLE IF EXISTS detail_table;

CREATE TABLE detail_table(
#PRIMARY KEYに設定し自動で値が保管されるようにする
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
detail_link text,
point1 text,
point2 text,
point3 text,
target_industry varchar(255),
goal varchar(255),
scale varchar(255)
)DEFAULT CHARACTER SET=utf8mb4 COLLATE = utf8mb4_general_ci;

-- # dumpの作業をする

-- 実際に結合作業をする
select title as "チャットボット名",
company as "会社名",
concat(abst1,abst2) as "概要",
point1 as "POINT1",
point2 as "POINT2",
point3 as "POINT3",
target_industry as "対象業界",
goal as "目的",
scale as "規模",
price as "利用料金",
initial_price as "初期費用",
free_plan as "無料プラン",
free_trial as "無料トライアル"

from element_table
join detail_table
on element_table.detail_link = detail_table.detail_link;


-- export 作業をする