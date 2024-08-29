CREATE DATABASE lidhjet;
USE lidhjet;
CREATE TABLE tabela_1 (
  id INT AUTO_INCREMENT PRIMARY KEY,
  emri VARCHAR(20),
  email VARCHAR(30)
);

CREATE TABLE tabela_2 (
  id INT AUTO_INCREMENT PRIMARY KEY,
  adresa VARCHAR(30),
  qyteti VARCHAR(20)
);

CREATE TABLE tabela_3 (
  id INT AUTO_INCREMENT PRIMARY KEY,
  tabela_1_id INT,
  tabela_2_id INT,
  FOREIGN KEY (tabela_1_id) REFERENCES tabela_1(id),
  FOREIGN KEY (tabela_2_id) REFERENCES tabela_2(id)
);
INSERT INTO tabela_1 (emri, email) VALUES ('Euron', 'euron@example.com');
INSERT INTO tabela_1 (emri, email) VALUES ('Albion', 'albion@example.com');
INSERT INTO tabela_1 (emri, email) VALUES ('Qerim', 'qerim@example.com');

INSERT INTO tabela_2 (adresa, qyteti) VALUES ('Nr23', 'Vushtrri');
INSERT INTO tabela_2 (adresa, qyteti) VALUES ('Nr45', 'Vushtrri');
INSERT INTO tabela_2 (adresa, qyteti) VALUES ('Nr35', 'Vushtrri');

INSERT INTO tabela_3 (tabela_1_id, tabela_2_id) VALUES (1, 1);
INSERT INTO tabela_3 (tabela_1_id, tabela_2_id) VALUES (2, 2);
INSERT INTO tabela_3 (tabela_1_id, tabela_2_id) VALUES (3, 3);

SELECT tabela_1.emri, tabela_1.email, tabela_2.adresa, tabela_2.qyteti
FROM tabela_1
JOIN tabela_3 ON tabela_1.id = tabela_3.tabela_1_id
JOIN tabela_2 ON tabela_3.tabela_2_id = tabela_2.id;
