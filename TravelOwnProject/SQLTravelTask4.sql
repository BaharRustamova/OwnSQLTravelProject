---Question 1. Show Place name from Best place where entry fee is free and City has state

select BestPlace.PlaceName, Cities.CityName,States.StateName from States inner join Cities
on States.StateID=Cities.StateID inner join BestPlace
on BestPlace.CityID=Cities.CityID
where EntryFee='Free' and States.StateName is not null

---Question 2. Create a SQL query that records the number of currency from country and show 
--country name which belong to distinct currency

SELECT COUNT(Currency) AS NumDistinctCurrencies, Currency 
FROM Countries
GROUP BY Currency;

---Question 3. Show cities with their recommended travel apps.

select Cities.CityName,TransportApp.AppName from Cities inner join TransportApp
on Cities.CityID=TransportApp.CityID

---Question 4. Show the best places in a specific country. WHERE countries.country_name = 'YourCountry';

select Countries.CountryName,BestPlace.PlaceName,Cities.CityName from Countries inner join Cities
on Cities.CountryID=Countries.CountryID inner join BestPlace
on BestPlace.CityID=Cities.CityID
where Countries.CountryName='Azerbaijan'

---Question 5. Display cities with the highest-rated best places.

select  top 20 max(BestPlace.Rating) as 'Highest rated',Cities.CityName,BestPlace.PlaceName from Cities inner join BestPlace
on Cities.CityID=BestPlace.CityID
group by Cities.CityName,BestPlace.PlaceName
order by 'Highest rated' desc

---Question 6. Find all states and their associated cities, including unmatched states:

select States.StateName,Cities.CityName from States left join Cities
on States.StateID=Cities.StateID

---Question 7. Find to get all travel apps and the best places they recommend, including unmatched apps.

select BestPlace.PlaceName,TransportApp.AppName from BestPlace right join Cities
on Cities.CityID=BestPlace.CityID left join TransportApp
on Cities.CityID=TransportApp.CityID
