SET SESSION AUTOCOMMIT = 0;

DROP DATABASE furnitureStore;
CREATE DATABASE IF NOT EXISTS furnitureStore DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE furnitureStore;

/* ユーザーに権限の付与 */
CREATE USER IF NOT EXISTS 'test_user'@'localhost' IDENTIFIED BY 'pwd';
GRANT ALL ON furnitureStore.* TO 'test_user'@'localhost';

START TRANSACTION;

--
-- Table structure for table mst_items
--

CREATE TABLE mst_items (
  id int(10) AUTO_INCREMENT PRIMARY KEY,
  name varchar(50) NOT NULL,
  img_path varchar(50) NOT NULL,
  text_top varchar(200) NOT NULL,
  text_bottom varchar(200) NOT NULL,
  price int(10) UNSIGNED NOT NULL,
  size varchar(50) NOT NULL,
  color varchar(20) NOT NULL,
  material varchar(20) NOT NULL
);

--
-- Dumping data for table mst_items
--

INSERT INTO mst_items (name, img_path, text_top, text_bottom, price, size, color, material) VALUES
('プロダクトタイトル1'
, 'item1.jpg'
, 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト'
, 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト'
, 99999
, 'W999 × D999 × H999'
, 'テキスト'
, 'テキストテキストテキスト'
),
('プロダクトタイトル2'
, 'item2.jpg'
, 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト'
, 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト'
, 99999
, 'W999 × D999 × H999'
, 'テキスト'
, 'テキストテキストテキスト'
),
('プロダクトタイトル3'
, 'item3.jpg'
, 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト'
, 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト'
, 99999
, 'W999 × D999 × H999'
, 'テキスト'
, 'テキストテキストテキスト'
),
('プロダクトタイトル4'
, 'item4.jpg'
, 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト'
, 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト'
, 99999
, 'W999 × D999 × H999'
, 'テキスト'
, 'テキストテキストテキスト'
),
('プロダクトタイトル5'
, 'item5.jpg'
, 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト'
, 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト'
, 99999
, 'W999 × D999 × H999'
, 'テキスト'
, 'テキストテキストテキスト'
),
('プロダクトタイトル6'
, 'item6.jpg'
, 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト'
, 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト'
, 99999
, 'W999 × D999 × H999'
, 'テキスト'
, 'テキストテキストテキスト'
),
('プロダクトタイトル7'
, 'item7.jpg'
, 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト'
, 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト'
, 99999
, 'W999 × D999 × H999'
, 'テキスト'
, 'テキストテキストテキスト'
),
('プロダクトタイトル8'
, 'item8.jpg'
, 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト'
, 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト'
, 99999
, 'W999 × D999 × H999'
, 'テキスト'
, 'テキストテキストテキスト'
),
('プロダクトタイトル9'
, 'item9.jpg'
, 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト'
, 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト'
, 99999
, 'W999 × D999 × H999'
, 'テキスト'
, 'テキストテキストテキスト'
),
('プロダクトタイトル10'
, 'item10.jpg'
, 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト'
, 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト'
, 99999
, 'W999 × D999 × H999'
, 'テキスト'
, 'テキストテキストテキスト'
),
('プロダクトタイトル11'
, 'item11.jpg'
, 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト'
, 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト'
, 99999
, 'W999 × D999 × H999'
, 'テキスト'
, 'テキストテキストテキスト'
),
('プロダクトタイトル12'
, 'item12.jpg'
, 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト'
, 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト'
, 99999
, 'W999 × D999 × H999'
, 'テキスト'
, 'テキストテキストテキスト'
),
('プロダクトタイトル13'
, 'item13.jpg'
, 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト'
, 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト'
, 99999
, 'W999 × D999 × H999'
, 'テキスト'
, 'テキストテキストテキスト'
),
('プロダクトタイトル14'
, 'item14.jpg'
, 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト'
, 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト'
, 99999
, 'W999 × D999 × H999'
, 'テキスト'
, 'テキストテキストテキスト'
),
('プロダクトタイトル15'
, 'item15.jpg'
, 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト'
, 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト'
, 99999
, 'W999 × D999 × H999'
, 'テキスト'
, 'テキストテキストテキスト'
),
('プロダクトタイトル16'
, 'item16.jpg'
, 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト'
, 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト'
, 99999
, 'W999 × D999 × H999'
, 'テキスト'
, 'テキストテキストテキスト'
);

COMMIT;

