CREATE TABLE `Сотрудник` (
    `ID` INT PRIMARY KEY,
    `ФИО` VARCHAR(50) NOT NULL,
    `Код должности` INT NOT NULL
);

INSERT INTO `Сотрудник` VALUES
    (11, "Иванов И.И.", 1),
    (12, "Петров П.П.", 1),
    (13, "Сергеев С.С.", 1),
    (21, "Сидоров С.С.", 2),
    (22, "Андрев А.А.", 2),
    (31, "Русланов Р.Р.", 3),
    (32, "Максимов М.М.", 3),
    (33, "Егоров Е.Е.", 3),
    (41, "Георгиев Г.Г.", 4),
    (42, "Байдавлетов Б.Б.", 4);
    
SELECT * FROM `Сотрудник`;



CREATE TABLE `Должность` (
    `Код` INT PRIMARY KEY,
    `Название` VARCHAR(50) NOT NULL
);

INSERT INTO `Должность` VALUES
    (1, "Администратор"),
    (2, "Менеджер"),
    (3, "Программист"),
    (5, "Уборщик"),
    (6, "Директор");

SELECT * FROM `Должность`;



SELECT '  INNER JOIN  ' AS '-----JOIN-----';

SELECT * FROM `Сотрудник` AS sot 
INNER JOIN `Должность` AS dol
ON sot.`Код должности` = dol.`Код`;



SELECT 'FULL OUTER JOIN' AS '-----JOIN-----';

SELECT * FROM `Сотрудник` AS sot 
LEFT JOIN `Должность` AS dol
ON sot.`Код должности` = dol.`Код`
UNION
SELECT * FROM `Сотрудник` AS sot 
RIGHT JOIN `Должность` AS dol
ON sot.`Код должности` = dol.`Код`;



SELECT 'FULL OUTER JOIN WITH EXCLUSION' AS '-------------JOIN-------------';

SELECT * FROM `Сотрудник` AS sot 
LEFT JOIN `Должность` AS dol
ON sot.`Код должности` = dol.`Код`
WHERE dol.`Код` IS NOT NULL
UNION
SELECT * FROM `Сотрудник` AS sot 
RIGHT JOIN `Должность` AS dol
ON sot.`Код должности` = dol.`Код`
WHERE sot.`Код должности` IS NOT NULL;
