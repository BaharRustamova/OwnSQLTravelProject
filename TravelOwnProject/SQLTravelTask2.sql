---Question 1. Find those City name with all information whose name containing the 1st 
--character is 'I' and the 4th character is 'a' and rests may be any character.

select CityName from Cities where CityName like 'I%%a%'

---Question 2. Find the highest Population number for city with its City ID and City name, for 
--only those population which have State ID

 select Cities.CityID,Cities.CityName,States.StateID,max(Cities.PopulationCity) as'max number of population' 
 from Cities inner join States
 on States.StateID=Cities.StateID
 where States.StateID is not null and Cities.CityID is not null
 group by Cities.CityID,Cities.CityName,States.StateID

---Question 3. Write a query so that its App name is 'Jakdojade', the city to which the application belongs 
--and the state in which that city belongs or not are shown. Show AppName,CityName,StateName

select TransportApp.AppName,Cities.CityName,States.StateName from TransportApp left join Cities
on TransportApp.CityID=Cities.CityID
left join States
on Cities.StateID=States.StateID
where TransportApp.AppName='Jakdojade'

---Question 4. Show that state name is California and which cities are belong to some state or not and
--find cities with Transport app name

select States.StateName,Cities.CityName,TransportApp.AppName from States right join Cities
on States.StateID=Cities.StateID
left join TransportApp
on Cities.CityID=TransportApp.CityID
where States.StateName='California'

---Question 5. Show all the Famous meal name in Price 30 dollar or for place 'Vin et Poulet' together 
--with the place 'Kebab Kingdom' .

select FamousMeal.MealName,FamousMeal.Price,FamousMeal.BestPlaceToTry from FamousMeal 
where Price=30 or BestPlaceToTry='Vin et Poulet'

---Question 6. Show information from Countries and continent name where ContinentID=2 and Currency is 'Euro'

select * from Countries 
where ContinentID=2 and Currency='Euro'

---Question 7. Find the city that population between 10000 and 200000, and find the state name which cities 
--belong to that state or not.

select Cities.CityName,Cities.PopulationCity,States.StateName from States right join Cities
on States.StateID=Cities.StateID
where Cities.PopulationCity between 10000 and 200000

---Question 8. Write query to find from best place Placename,description, rating and entry fee. Entry fee 
--must be null or rating between 3 and 5

select PlaceName,Description,Rating,EntryFee from BestPlace 
where entryFee is null or Rating between 3 and 5

---Question 9. Find the count of cities as 'count cities' belong to United States, show country name and 
--count of cities .

select count(Cities.CityName) as 'count cities' ,Countries.CountryName from Countries inner join Cities
on Countries.CountryID=Cities.CountryID
where Countries.CountryName='United States'
group by Countries.CountryName

---Question 10. Create a SQL query that records the number of distinct currency from country and show 
--country name which belong to distinct currency

SELECT COUNT(distinct Currency) AS NumDistinctCurrencies, Currency 
FROM Countries
GROUP BY Currency;




 



