docker pull tutum/mongodb
docker pull apinf/platform
echo www.openapi.dev 127.0.0.1 >> /etc/hosts
docker run -d -p 27017:27017 -p 28017:28017 -e MONGODB_USER="openapi" -e MONGODB_DATABASE="openapi" -e MONGODB_PASS="openapi" tutum/mongodb

docker run docker run -p 8754:80 --link=mongodb:mongodb -e MONGO_URL=mongodb://openapi:openapi@localhost:27017/openapi -e MAIL_URL=smtp://exmail.qq.com:25 -e ROOT_URL=http://www.openap.dev apinf/platform:latest

