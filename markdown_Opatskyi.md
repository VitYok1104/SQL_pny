
## Запити до бази данних "Автопарк"
***
######1. Запит вибору водія, який водить ЛАЗ:
	+select drivers.name, cars.name from drivers 
	join cars 
	on cars.driver = drivers.driv_id 
	where cars.name = 'ЛАЗ'
***
######2. Запит для показу всіх путівок, які ще не відбулись:

	+select tours.tour_id, tours.tour_name from tours 
	where tours.tour_state != 'відбулося'
***
######3. Запит перевірки стану всіх автомобілів:
	+select cars.name, car_list.state from car_list 
	join cars 
	on cars.car_id = car_list.car_id
***
######4. Запит виводу механіка автомобіля, ім'я водія якого є Іван:
	+select drivers.name as driverName, 
	drivers.lastname as driverSurname, 
	cars.name as carName, 
	mechanics.name as mechanicName, 
	mechanics.lastname as mechanicSurname 
	from drivers join cars on cars.driver = drivers.driv_id 
	join mechanics on mechanics.mech_id = drivers.driv_id 
	where drivers.name = 'Іван'
***
######5. Запит для показу механіків, яким будуть надані не справні автомобілі:
	+select cars.name as carName, 
	car_list.state, 
	mechanics.name as mechanicName, 
	mechanics.lastname as mechanicSurname 
	from car_list join cars on cars.car_id = car_list.car_id 
	join mechanics on mechanics.mech_id = car_list.car_id 
	where car_list.state = 'не справна'
***
