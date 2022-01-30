docker pull jupyter/pyspark-notebook
imageid=`docker images|grep jupyter/pyspark-notebook|awk -F ' ' 'NR==1{print $3}'`
nohup docker run -p 8888:8888 $imageid & docker.out 2>&1
# docker exec -it 3d293204ab1b /bin/bash
sleep 15
a=`docker ps|awk -F ' ' '{print $1}'`
con=`echo $a|awk -F ' ' '{print $2}'`
docker cp worldcities_sample.csv ${con}:/home/jovyan/
docker cp city_temperature_sample.csv ${con}:/home/jovyan/
docker cp country_lkp.csv ${con}:/home/jovyan/
docker cp worldweather_report.ipynb ${con}:/home/jovyan/
docker cp weather_report_sample_ver1.2.py.ipynb ${con}:/home/jovyan/
