docker pull registry.cn-hangzhou.aliyuncs.com/sharkseven/openapi-hlg:latest
echo www.openapi.dev 127.0.0.1 >> /etc/hosts
docker run -dt -p 8754:80 --link=mongodb:mongodb -e DBPASS=openapi -e MONGO_URL=mongodb://admin:openapi@localhost:27017/openapi -e MAIL_URL=smtp://exmail.qq.com:25 -e ROOT_URL=http://www.openap.dev registry.cn-hangzhou.aliyuncs.com/sharkseven/openapi-hlg:latest

