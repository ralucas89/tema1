-- 1. Retrieve the top 10 most expensive products in the 'Product' table.
select top 10
ProductID, Name, ListPrice from Production.Product
order by ListPrice desc;

-- 2. Find the total number of products for each product subcategory.

select productsubcategoryID, count(ProductSubcategoryID) as nrproducts from Production.Product 
group by ProductSubcategoryID

-- 3. List all products that have a standard cost between $100 and $500. 

select ProductID, name, StandardCost from Production.Product
where StandardCost between 100 and 500;

-- 4. Retrieve the top 5 product subcategories with the highest average list price.

select top 5
ProductSubcategoryID, avg(ListPrice) as mostexpensive from Production.Product 
group by ProductSubcategoryID order by mostexpensive desc

-- 5. Find the total number of discontinued products.

select count(ProductID) as nmbrofproducts, DiscontinuedDate from Production.Product 
group by DiscontinuedDate 