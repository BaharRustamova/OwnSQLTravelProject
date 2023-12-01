---Question 1. Find the place that open from 9:00 AM - 5:00 PM and show place description, city name which is belong to

select Cities.CityName,BestPlace.PlaceName,BestPlace.Description,BestPlace.OpeningHours from BestPlace inner join
Cities 
on Cities.CityID=BestPlace.CityID
where BestPlace.OpeningHours='9:00 AM - 5:00 PM'

---Question 2. Write query to find name of state,capital city where state id =15
select StateName,States.CapitalCity from States 
where StateID=15

---Question 3. Find the best place,famous meal and meal price less than 10 in Krakow

select Cities.CityName,BestPlace.PlaceName,FamousMeal.MealName from Cities inner join BestPlace
on BestPlace.CityID=Cities.CityID
inner join FamousMeal
on FamousMeal.CityID=Cities.CityID
where Cities.CityName='Krakow'

---Question 4. Find the best place,which is entry fee is free or null in Krakow

select BestPlace.PlaceName,Cities.CityName from Cities inner join BestPlace
on BestPlace.CityID=Cities.CityID
where (EntryFee='Free' or EntryFee is null) and Cities.CityName='Krakow'

---Question 5. Person want to go to Paris and she need Application name to use in Paris. 

select Cities.CityName, TransportApp.AppName from Cities inner join TransportApp
on TransportApp.CityID=Cities.CityID
where Cities.CityName='Paris'

---Question 6. Find the capital city of Poland,its official language and which state it belongs to or not .

select Countries.CountryName,Countries.OfficialLanguage,States.StateName from Countries left join States
on States.CountryID=Countries.CountryID
where CountryName='Poland'

---Question 7. Write query that all information about Countries but exceed Currency is Euro and ContinentID is 2

select * from Countries where Currency!='Euro' and ContinentID!=2

---Question 8. Find min price of Meals and which city is belong it

select top 1 min(FamousMeal.Price) as'Min Price for meal' ,FamousMeal.MealName, Cities.CityName FROM FamousMeal
inner join Cities
on FamousMeal.CityID=Cities.CityID
group by FamousMeal.MealName,Cities.CityName
order by 'Min Price for meal' asc

---Question 9. Write a query , show City name,place name,rating in place names are Heydar Aliyev Center,
--Wieliczka Salt Mine,Old Town Gdansk.

select Cities.CityName,BestPlace.PlaceName,BestPlace.Rating from BestPlace inner join Cities
on BestPlace.CityID=Cities.CityID
where BestPlace.PlaceName in('Heydar Aliyev Center','Wieliczka Salt Mine','Old Town Gdansk')

---Question 10. Show all information about Best place where entry fee is free

select * from BestPlace where EntryFee='Free'














