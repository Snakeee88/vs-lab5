ALTER TABLE groups ADD COLUMN cathedrals_id INT; --<----Изначально планировал cathedrals_id с модификатором NOT NULL, но понял, что это в данной ситуации не сработает.

-->Тут должен быть запрос добавления данных об Кафедрах, но я его нечаянно выполнил, как другой запрос (7.sql)<--

SELECT * FROM cathedrals;

UPDATE groups
SET cathedrals_id = 1 WHERE short_name IN ('Б-ИВТ-25-1','Б-ИВТ-25-2');
UPDATE groups
SET cathedrals_id = 2 WHERE short_name IN ('Б-ФИИТ-25','Б-ПИ-25');

SELECT * FROM groups WHERE cathedrals_id = 1;