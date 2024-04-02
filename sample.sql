DROP DATABASE IF EXISTS sample;
CREATE DATABASE sample;

use sample;

CREATE TABLE sample1_departments (
   department_no     char(5),     -- 部署番号
   department_name varchar(255),  -- 部署名
   PRIMARY KEY (department_no)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;
 
-- テストデータ
INSERT INTO sample1_departments VALUES('A0001', 'アプリ開発部');
INSERT INTO sample1_departments VALUES('A0002', 'データベース開発部');
INSERT INTO sample1_departments VALUES('B0003', 'Webデザイン部');

CREATE TABLE sample1_employees (
    no int NOT NULL, -- 従業員番号
    department_no char(5), -- 部署番号
    last_name varchar(255), -- 名
    first_name varchar(255), -- 姓
    PRIMARY KEY (no), -- 主キー
    FOREIGN KEY(department_no) -- 外部キー
    REFERENCES sample1_departments(department_no) -- 部署テーブル.部署番号
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;
 
-- テストデータ
INSERT INTO sample1_employees VALUES('10001', 'A0001','侍','太郎');
INSERT INTO sample1_employees VALUES('10002', 'A0002','侍','次郎');
INSERT INTO sample1_employees VALUES('10003', 'B0003','侍','花子');
