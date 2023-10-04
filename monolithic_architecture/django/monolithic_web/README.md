## 


docker build -t monolithic_web:0.0.1 .

docker run -d -p 9000:8000 --name monolithic-web-container monolithic_web:0.0.1