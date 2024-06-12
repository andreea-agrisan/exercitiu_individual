--tabel zona_verde
SELECT * FROM zona_verde WHERE ST_Area(geom) > 1000;
SELECT * FROM zona_verde WHERE ST_Perimeter(geom) > 500;

--tabel vegetatie
SELECT * FROM vegetatie WHERE ST_Area(geom) > 500;
SELECT * FROM vegetatie WHERE ST_DWithin(geom, ST_GeomFromText('POINT(23.55 45.55)', 4326), 100);

--tabel sistem_irigare
SELECT * FROM sistem_irigare WHERE ST_Length(geom) > 200;
SELECT * FROM sistem_irigare WHERE ST_Distance(geom, ST_GeomFromText('POINT(23.55 45.55)', 4326)) < 50;

--tabel mobilier_urban
SELECT * FROM mobilier_urban WHERE ST_Distance(geom, ST_GeomFromText('POINT(23.55 45.55)', 4326)) < 20;
SELECT * FROM mobilier_urban WHERE ST_DWithin(geom, ST_GeomFromText('POINT(23.55 45.55)', 4326), 50);