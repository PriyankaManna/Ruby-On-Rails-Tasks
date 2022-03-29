Tables
author
columns(name(string))
has_many :books

Book
columns(author_id(int), book(string), sold_quantity(string), name(string), published(boolean))
belongs_to :author
has_many :reviews

Review
Columns(ratings(int), user_id(int), description(text), book_id(int))
belongs_to :book


Q1 Write a query that will return all authors with the count of all their books
Author.joins(:books).group("authors.name").count("books.author_id")

SELECT COUNT("books"."author_id") AS "count_books_author_id", "authors"."name" AS "authors_name" FROM "authors" INNER JOIN "books" ON "books"."author_id" = "authors"."id" GROUP BY "authors"."name"

 => {"J.K. Rowling"=>2, "William Shakespeare"=>2} 


Q2 Write a query to get the count of authors who have published at least one book.
Author.includes(:books).where(books: { published: true }).count

SELECT COUNT(DISTINCT "authors"."id") FROM "authors" LEFT OUTER JOIN "books" ON "books"."author_id" = "authors"."id" WHERE "books"."published" = ?  [["published", 1]]
 
=> 2 

sold_quantity(string) converted to sold_quantity(int) 

Q3 Write a query to retrieve authors whose book sold more than 20 times.
	Author.joins("INNER JOIN books ON books.author_id = authors.id AND books.sold_quantity >20").distinct	
SELECT DISTINCT "authors".* FROM "authors" INNER JOIN books ON books.author_id = authors.id AND books.sold_quantity >20

 =>                                                         
[#<Author:0x00007f24ec48dba0                                
  id: 1,                                                    
  name: "J.K. Rowling",                                     
  created_at: Tue, 29 Mar 2022 09:58:31.091987000 UTC +00:00,
  updated_at: Tue, 29 Mar 2022 09:58:31.091987000 UTC +00:00>] 



Q4 Write a query to get the authors whose book rating is greater than 3.5
	Author.joins(books: :reviews).where("reviews.ratings> 3.5")

SELECT DISTINCT "authors".* FROM "authors" INNER JOIN "books" ON "books"."author_id" = "authors"."id" INNER JOIN "reviews" ON "reviews"."book_id" = "books"."id" WHERE (reviews.ratings> 3.5)                         
 =>                                                                            
[#<Author:0x0000564021574f88                                                   
  id: 1,                                                                       
  name: "J.K. Rowling",                                                        
  created_at: Tue, 29 Mar 2022 09:58:31.091987000 UTC +00:00,                  
  updated_at: Tue, 29 Mar 2022 09:58:31.091987000 UTC +00:00>]  

Q5 Write a query to get top 10 sold books
	Book.order(sold_quantity: :desc).limit(10)

	SELECT "books".* FROM "books" ORDER BY "books"."sold_quantity" DESC LIMIT ?  [["LIMIT", 10]]                                             

Q6 Write a query to get top 20 sold books in last month
	Book.order(sold_quantity: :desc).where("created_at > ?", 1.month.ago).limit(20)

SELECT "books".* FROM "books" WHERE (created_at > '2022-02-28 13:31:31.697637') ORDER BY "books"."sold_quantity" DESC LIMIT ?  [["LIMIT", 20]]

Q7 Write a query to get top 10 sold books in last week
	Book.order(sold_quantity: :desc).where("created_at >= ?", 1.week.ago).limit(10)

SELECT "books".* FROM "books" WHERE (created_at >= '2022-03-22 13:33:42.566070') ORDER BY "books"."sold_quantity" DESC LIMIT ?  [["LIMIT", 10]]

Q8 Write a query to get top 10 sold books in last day
Book.order(sold_quantity: :desc).where("created_at > ?", Time.now-1.days).limit(10)

SELECT "books".* FROM "books" WHERE (created_at > '2022-03-28 13:35:35.243301') ORDER BY "books"."sold_quantity" DESC LIMIT ?  [["LIMIT", 10]]

Q9 Write a query to get the books which reviews contains a "nice"
	Book.joins(:reviews).where("reviews.description like ?", "%nice%")

SELECT "books".* FROM "books" INNER JOIN "reviews" ON "reviews"."book_id" = "books"."id" WHERE (reviews.description like '%nice%')



Q10 Note down difference between joins and includes
Includes
Performs outer left join and store the associated result in memory.
Sometimes generate one query and sometimes generates 2 queries.
If you want to force to use a single query you can add .references
Joins
Only affects the SQL query
doesn’t load related data into memory

Q11 Try different types of joins
Left join
Book.left_joins(:reviews)

SELECT "books".* FROM "books" LEFT OUTER JOIN "reviews" ON "reviews"."book_id" = "books"."id" 

Inner join
Book.joins(:reviews)

 SELECT "books".* FROM "books" INNER JOIN "reviews" ON "reviews"."book_id" = "books"."id"                                                   

Author.joins('INNER JOIN books ON books.author_id = authors.id')

 SELECT "authors".* FROM "authors" INNER JOIN books ON books.author_id = authors.id

left outer join
Book.left_outer_joins(:reviews)

  SELECT "books".* FROM "books" LEFT OUTER JOIN "reviews" ON "reviews"."book_id" = "books"."id"



