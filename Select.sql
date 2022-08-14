--Написать SELECT-запросы, которые выведут информацию согласно инструкциям ниже.
--
--Внимание! Результаты запросов не должны быть пустыми (учтите при заполнении таблиц).
--
--название и год выхода альбомов, вышедших в 2018 году;
--название и продолжительность самого длительного трека;
--название треков, продолжительность которых не менее 3,5 минуты;
--названия сборников, вышедших в период с 2018 по 2020 год включительно;
--исполнители, чье имя состоит из 1 слова;
--название треков, которые содержат слово "мой"/"my".

SELECT name, yaer FROM albums
WHERE yaer  = 2018;

SELECT name, duration FROM tracks
ORDER BY duration  DESC
LIMIT 1;

SELECT name, duration FROM tracks
WHERE duration  >= '0:03:30'
order by duration  desc;

select name, yaer  from collections
where (yaer >= 2018) and (yaer <= 2020)

select name
from artists
where not name like '%% %%'

select name
from tracks
where name like ('%%my%%') 