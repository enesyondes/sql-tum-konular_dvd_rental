--Sorgu1: film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
SELECT title,rating FROM film
GROUP BY title,rating

--Sorgu2: film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda film sayısı 50 den 
--fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.
SELECT replacement_cost, COUNT(*) FROM film
GROUP BY replacement_cost
HAVING COUNT(*) > 50

--Sorgu3: customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir? 
SELECT store_id, COUNT(customer_id) FROM customer
GROUP BY store_id;

--Sorgu4: city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra en fazla şehir
--sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız.
SELECT country_id,COUNT(*) FROM city
GROUP BY country_id
ORDER BY COUNT(*) desc
LIMIT 1;
