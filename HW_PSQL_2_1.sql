create table if not exists genre (
    id serial primary key,
    name_genre varchar(40) unique not null
);

create table artist_list (
    id serial primary key, 
    artist_name varchar(40) unique not null, 
    genre_artist integer references genre(id)
);

create table albums (
    id serial primary key, 
    name_album varchar(40) unique not null, 
    date_release date, 
    artist_id integer references artist_list(id)
);

create table tracks (
    id serial primary key,
    track_name text not null,
    track_time serial,
    album_id integer references albums(id),
    artist_id integer references albums(id)
);