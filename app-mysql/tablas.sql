create table actor
(
codigo varchar (5),
nombre varchar (15),
apellido varchar (15),
fechanac date,
constraint pk_actor primary key (codigo)
);

create table pelicula
(
codigo varchar (5),
titulo varchar (30),
fecha_estreno date,
puntuacion decimal (3,1),
lengua_original varchar (3),
constraint pk_pelicula primary key (codigo),
constraint puntuacion_ck check (puntuacion between 0 and 10)
);

create table pelicula_actor
(
codigo_actor varchar (5),
codigo_pelicula varchar (5),
tipo_personaje enum ('Principal','Secundario'),
constraint pk_pelicula_actor primary key (codigo_actor,codigo_pelicula),
constraint fk_codigo_actor foreign key (codigo_actor) references actor (codigo),
constraint fk_codigo_pelicula foreign key (codigo_pelicula) references pelicula (codigo)
);
