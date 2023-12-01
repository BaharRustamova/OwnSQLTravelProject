---Question 1. Show placename,city where city is not in the list of city table.

select BestPlace.PlaceName, Cities.CityID from BestPlace left join Cities 
on BestPlace.CityID=Cities.CityID
where Cities.CityID is null

 ---Question 2. Which app names used in travel? Show them.

 select AppName from TransportApp

 ---Question 3. Display famous meal and BestPlaceToTry where city is paris and price less than 35 dollar.

 select MealName,BestPlaceToTry,Cities.CityName from FamousMeal inner join Cities 
 on FamousMeal.CityID=Cities.CityID
 where Cities.CityName='Paris' and FamousMeal.Price<35 

 ---Question 4. Find the famous meals associated with a particular city, For example city is Baku.

select FamousMeal.MealName,Cities.CityName from FamousMeal inner join Cities
on FamousMeal.CityID=Cities.CityID
where Cities.CityName='Baku'

---Question 5. Retrieve details about the most expensive famous meal.

select top 5 max(Price) as 'most expensive meal',MealName,BestPlaceToTry 
from FamousMeal 
group by MealName,BestPlaceToTry,Price
order by Price desc

---Question 6. Write a query that returns the most popular BestPlaces in Las Vegas and the state it belongs to or not.

select Cities.CityName,BestPlace.PlaceName,States.StateName from Cities left join BestPlace
on BestPlace.CityID=Cities.CityID left join States
on States.StateID=Cities.StateID
where Cities.CityName='Las Vegas'

---Question 7. Find the number of countries included in the Asian continent and display 
--it as 'Count of Asia countries'.

select count(Countries.CountryName) as 'Count of Asia countries' from Countries inner join CONTINENTS
on CONTINENTS.ContinentID=Countries.ContinentID
where CONTINENTS.ContinentName='Asia'

---Question 8. Write a SQL query to show all the Countries. Sort the result-set in ascending order 
--by CountryName. 

select * from Countries order by CountryName asc

---Question 9. Write a SQL query to find Meal name where are either from the city 'New York' 
--or where do not have a Meal price greater than 100 dollar.

select FamousMeal.MealName,FamousMeal.Price,Cities.CityName from Cities inner join FamousMeal 
on Cities.CityID=FamousMeal.CityID
where Cities.CityName='New York' or FamousMeal.Price!>100

---Question 10. Write a SQL query to find the details of all Countries where official language is ‘Indonesian’ or ‘English’.

select * from Countries where OfficialLanguage='Indonesian' or OfficialLanguage='English'












