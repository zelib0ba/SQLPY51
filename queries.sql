create table if not exists Genre (genre_id serial primary key, genre_name varchar (40) not null);
create table if not exists Artist (artist_id serial primary key, artist_name varchar(40) not null, genre_id int references Genre(genre_id));
create table if not exists Album (album_id serial primary key, album_name varchar (40) not null, release_year int not null, artist_id int references Artist(artist_id));
create table if not exists Track (track_id serial primary key, track_name varchar (40) not null, duration real not null, album_id int references Album(album_id));
