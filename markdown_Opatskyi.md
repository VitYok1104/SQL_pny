## Запити до бази данних "Автопарк"

***
######1. Водій з найбільшим стажем 
	+select name from users 
	where
	exp = (select max(exp) from users)
***
######2. Які автомобілі ще не повернено до автопарку
	+select cars.name, brands.brand from cars 
	join brands on cars.brand_id = brands.id 
	join car_history on car_history.id = cars.id 
	where car_history.state = 0
***
######3. В якому гаражі знаходиться зелений автомобіль
	+select garages.addres, garages.gar_name 
	from garages 
	join colors 
	on garages.id = colors.id 
	where 
	colors.color = "green"
***
######4. Якого кольору "Тесла"
	+select colors.color 
	from colors 
	join brands 
	on brands.id = colors.id 
	where brands.brand = "Tesla"
***
######5. Автомобіль з найбільшим об'ємом двигуна
	+select brands.brand 
	from brands 
	join cars 
	on brands.id = cars.id 
	where cars.engine_capacity = 
	(select max(cars.engine_capacity) from cars)
***
