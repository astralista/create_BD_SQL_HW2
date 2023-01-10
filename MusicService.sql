create table if not exists Genres (
	Genre_id int primary key,
	name VARCHAR(40) not null	
);

create table if not exists Artists (
	Artist_ID int primary key,
	name VARCHAR(40) not null
);

create table if not exists Genres_Artists (
	Genre_ID int not null,
	Artist_ID int not null,
	primary key (Genre_ID, Artist_ID),
	foreign key (Genre_ID) references Genres,
	foreign key (Artist_ID) references Artists
);

create table if not exists Albums (
	Album_ID SERIAL primary key,
	name VARCHAR(40) not null,
	release_year date not null
);

create table if not exists Albums_Artists (
	Album_ID int not null,
	Artist_ID int not null,
	primary key (Album_ID, Artist_ID),
	foreign key (Album_ID) references Albums,
	foreign key (Artist_ID) references Artists
);

create table if not exists Tracks (
	Track_ID SERIAL primary key,
	name VARCHAR(40) not null,
	Duration time not null,
	Album_ID INTEGER not null references Albums(Album_id)
);

create table if not exists Songbook (
	Songbook_ID SERIAL primary key,
	name VARCHAR(40) not null,
	release_year date not null
);

create table if not exists Songbook_Tracks (
	Songbook_ID int not null,
	Track_ID int not null,
	primary key (Songbook_ID, Track_ID),
	foreign key (Songbook_ID) references Songbook,
	foreign key (Track_ID) references Tracks
);