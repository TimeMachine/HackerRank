select round(sqrt(power(min(lat_n)-min(long_w),2)+power(max(lat_n)-max(long_w),2)),4) from station;
