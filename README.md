# WEATHERFORCAST
#install docker in your linux machine
#Download and keep all the files in the same directory
#run the below command, this command will pyspark-jupyter image from docker hub, install , copy all the requisite files by its own.
sh -x automation_steps.sh 
#Please check if docker container is up and running. use below commands to check
docker ps
#result will looks like this
CONTAINER ID   IMAGE          COMMAND                  CREATED         STATUS         PORTS                                       NAMES
cf795c7a2ee3   e337ec0550bb   "tini -g -- start-no…"   4 minutes ago   Up 4 minutes   0.0.0.0:8888->8888/tcp, :::8888->8888/tcp   festive_fermi

#once the installation is completed, there will a nohup.out file created in the same directory
-rw------- 1 rahul rahul       3786 Jan 30 10:48 nohup.out

#open the file and copy the jupyter url and paste it on a chrome browser. Result will look like this 
[I 2022-01-30 02:44:16.450 ServerApp] http://cf795c7a2ee3:8888/lab?token=a9d384198591f2bb7d35135b5c436e5938fc7724bc31c2c9
[I 2022-01-30 02:44:16.450 ServerApp]  or http://127.0.0.1:8888/lab?token=a9d384198591f2bb7d35135b5c436e5938fc7724bc31c2c9
[I 2022-01-30 02:44:16.450 ServerApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 2022-01-30 02:44:16.453 ServerApp] 
    
    To access the server, open this file in a browser:
        file:///home/jovyan/.local/share/jupyter/runtime/jpserver-7-open.html
    Or copy and paste one of these URLs:
        http://cf795c7a2ee3:8888/lab?token=a9d384198591f2bb7d35135b5c436e5938fc7724bc31c2c9
     or http://127.0.0.1:8888/lab?token=a9d384198591f2bb7d35135b5c436e5938fc7724bc31c2c9
[I 2022-01-30 02:44:35.305 LabApp] Build is up to date

#once the jupyter is up you can open the notebook and run, However, line 25 onwards will not work due space constraint i have not uploaded those data files.
weather_report_sample_ver1.2.py.ipynb
