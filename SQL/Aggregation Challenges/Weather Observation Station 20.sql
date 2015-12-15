select round(lat_n,4) from (select a.lat_n, a.id, count(a.lat_n) as rank from station a, station b where a.lat_n <= b.lat_n group by a.id,a.lat_n) as c where rank = (select (count(id)+1)/2 from station);