create extension postgis;

create table zona_verde
(
    fid serial not null,
    suprafata integer not null,
	localizare integer not  null,
    geom geometry('Polygon', 4326) not null,
	primary key(fid)
);

create table tip_zona_verde
(
    fid serial not null,
	zona_verde_fid integer not null,
	tip_zona varchar(200) not null,
    denumire varchar(200) not null,
	primary key(fid),
	foreign key(zona_verde_fid) references zona_verde(fid)
);

create table vegetatie
(
    fid serial not null,
    zona_verde_fid integer not null,
    suprafata integer not null,
    geom geometry('Polygon', 4326) NOT NULL,
	primary key(fid),
	foreign key(zona_verde_fid) references zona_verde(fid)
	
);

create table tip_vegetatie
(
	fid serial not null,
	vegetatie_fid integer not null,
	tip varchar(200) not null,
	specie varchar(200) not null,
	primary key(fid),
	foreign key(vegetatie_fid) references vegetatie(fid)
);

create table sistem_irigare
(
	fid serial not null,
	zona_verde_fid integer not null,
	lungime integer not null,
	geom geometry('LineString', 4326) not null,
	primary key(fid),
	foreign key(zona_verde_fid) references zona_verde(fid)
);

create table tip_sistem_irigare
(
	fid serial not null,
	sistem_irigare_fid integer not null,
	nume varchar(100) not null,
	descriere text not null,
	primary key(fid),
	foreign key(sistem_irigare_fid) references sistem_irigare(fid)
);

create table mobilier_urban
(
	fid serial not null,
	zona_verde_fid integer not null,
	localizare integer not null,
	geom geometry ('Point', 4326),
	primary key(fid),
	foreign key(zona_verde_fid) references zona_verde(fid)
);

create table tip_mobilier_urban
(
	fid serial not null,
	mobilier_urban_fid integer not null,
	tip varchar(200) not null,
	numar integer not null,
	primary key(fid),
	foreign key(mobilier_urban_fid) references mobilier_urban(fid)
);
