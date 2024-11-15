CREATE TABLE `Сотрудник` (
    `ID` INT PRIMARY KEY,
    `ФИО` VARCHAR(50) NOT NULL,
    `Код должности` INT NOT NULL,
    `Код организации` INT NOT NULL
);

INSERT INTO `Сотрудник` VALUES
    (11, "Иванов И.И.", 1, 1),
    (12, "Петров П.П.", 1, 1),
    (13, "Сергеев С.С.", 1, 2),
    (21, "Сидоров С.С.", 2, 1),
    (22, "Андрев А.А.", 2, 2),
    (31, "Русланов Р.Р.", 3, 2),
    (32, "Максимов М.М.", 3, 1),
    (33, "Егоров Е.Е.", 3, 2),
    (41, "Георгиев Г.Г.", 4, 1),
    (42, "Байдавлетов Б.Б.", 4, 2);
    
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



CREATE TABLE `Организация` (
    `Код` INT PRIMARY KEY,
    `Название` VARCHAR(50) NOT NULL
);

INSERT INTO `Организация` VALUES
    (1, "ЕЕЕ"),
    (2, "ЛЛЛ");

SELECT * FROM `Организация`;



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



SELECT 'ANTI SEMI JOIN' AS '-----JOIN-----';

SELECT * FROM `Сотрудник` AS sot 
WHERE NOT EXISTS (SELECT 1 FROM `Должность` AS dol 
                  WHERE sot.`Код должности` = dol.`Код`);

                  

SELECT 'LEFT OUTER JOIN' AS '------JOIN------';

SELECT * FROM `Сотрудник` AS sot 
LEFT OUTER JOIN `Должность` AS dol
ON sot.`Код должности` = dol.`Код`;



SELECT 'RIGHT OUTER JOIN' AS '------JOIN------';

SELECT * FROM `Сотрудник` AS sot 
RIGHT OUTER JOIN `Должность` AS dol
ON sot.`Код должности` = dol.`Код`;



SELECT 'INNER JOIN LEFT OUTER JOIN' AS '-----------JOIN-----------';

SELECT * FROM `Сотрудник` AS sot 
INNER JOIN `Должность` AS dol 
ON sot.`Код должности` = dol.`Код`
LEFT OUTER JOIN `Организация` AS org 
ON sot.`Код организации` = org.`Код`;



SELECT 'LEFT OUTER JOIN WITH EXCLUSION' AS '-------------JOIN-------------';

SELECT * FROM `Сотрудник` AS sot
LEFT OUTER JOIN `Должность` AS dol
ON sot.`Код должности` = dol.`Код` 
WHERE dol.`Код` IS NULL;



SELECT 'RIGHT OUTER JOIN WITH EXCLUSION' AS '--------------JOIN--------------';

SELECT * FROM `Сотрудник` AS sot
RIGHT OUTER JOIN `Должность` AS dol
ON sot.`Код должности` = dol.`Код` 
WHERE sot.`Код должности` IS NULL;
