create table if not exists Chiefs (
	Chief_ID int primary key,
	name VARCHAR(20) not null
);

create table if not exists Employees (
	Employee_ID int primary key,
	name VARCHAR(20) not null,
	departament VARCHAR(20) not null,
	Chief_ID int not null,
	foreign key (Chief_ID) references Chiefs(Chief_ID)
);