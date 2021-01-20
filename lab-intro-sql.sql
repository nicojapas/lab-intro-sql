-- Lab | SQL Intro

-- 1. Review the tables in the database.

-- 2. Explore tables by selecting all columns from each table or using the in built review features for your client.
select * from sakila.actor
limit 10;
select * from sakila.address
limit 10;
# etc...

-- 3. Select one column from a table. Get film titles.
select distinct title from sakila.film;

-- 4. Select one column from a table and alias it. Get unique list of film languages under the alias `language`. Note that we are not asking you to obtain the language per each film,
-- but this is a good time to think about how you might get that information in the future.
select distinct name from sakila.language;

-- 5. Using the `select` statements and reviewing how many records are returned, can you find out how many stores and staff does the company have? Can you return a list of employee first names only?
# How many stores:
select count(store_id) from sakila.store;

# Specific store addresses
select address from sakila.address
where address_id in (1,2);

# Employee first names
select first_name from sakila.staff;

-- 6. Bonus: How many unique days did customers rent movies in this dataset?
select count(distinct left(rental_date, 10)) from sakila.rental;