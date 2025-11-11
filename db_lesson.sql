CREATE TABLE departments (
  department_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(20) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

ALTER TABLE 
  people 
ADD 
  department_id INT UNSIGNED 
AFTER 
  email;

INSERT INTO 
  departments (name)
VALUES
  ('営業'),
  ('開発'),
  ('経理'),
  ('人事'),
  ('情報システム');

INSERT INTO 
  people (name, department_id)
VALUES
  ('佐藤翔太',1),
  ('鈴木美咲',1),
  ('高橋蓮',1),
  ('田中彩花',2),
  ('伊藤大輔',2),
  ('渡辺咲良',2),
  ('中村海斗',2),
  ('小林結衣',3),
  ('山本悠真',4),
  ('加藤菜々',5);

INSERT INTO 
  reports (person_id, content)
VALUES
  (7,'本日入社して環境設定を行った。'),
  (8,'環境設定とHTML&CSSを行った。'),
  (9,'HTML&CSSとPC基礎を行った。'),
  (10,'Git Lessonを行った。'),
  (11,'入社して研修を開始した。 '),
  (12,'研修を開始してからDBに入った。'),
  (13,'カリキュラムを完了したので実践レビューを行った。'),
  (14,'カリキュラムを完了したのでレビュー依頼を出した。'),
  (15,'レビュー依頼を出したのでArecorceを進めた。'),
  (16,'環境設定が完了したので研修を開始した。');

UPDATE 
  people 
SET 
  department_id = '1' 
WHERE 
  person_id = 1;

UPDATE 
  people 
SET 
  department_id = '2' 
WHERE 
  person_id = 2;

UPDATE 
  people 
SET 
  department_id = '3' 
WHERE 
  person_id = 3;

UPDATE 
  people 
SET 
  department_id = '4' 
WHERE 
  person_id = 4;

UPDATE 
  people 
SET 
  department_id = '5' 
WHERE 
  person_id = 6;

SELECT 
  name, age 
FROM 
  people 
WHERE 
  gender = 1 
ORDER BY 
  age DESC;

氏名、メールアドレス、年齢を
「people」テーブルより
部署IDのカラムが「1」の人に絞り
レコードの作成日時を昇順にして出力する。
