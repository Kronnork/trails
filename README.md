# trails
In Mysql - grant all privileges on *.* to 'root'@'%' 
grant all privileges on *.* to 'root'@'%' identified by 'Abcd@123';


----

cd ~/app/
git clone https://github.com/Kronnork/trails.git
cd trails
sudo docker build -t gmyapi .
docker run --net=host -i -t -p 8090:8090 gmyapi


In new window -
docker ps 

curl -i http://127.0.0.1:8090/people/
curl -i -X  POST http://localhost:8090/people -d '{ "FirstName": "John",  "LastName": "Doe"}'
curl -i http://127.0.0.1:8090/people/
