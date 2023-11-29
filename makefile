include .env

DSN=$(MYSQL_USER):$(MYSQL_PASSWORD)@tcp($(MYSQL_HOST):$(MYSQL_PORT))/$(MYSQL_DATABASE)

# Dockerを立ち上げる
# 全て立ち上げる
all-d:
	cd docker && docker-compose up -d
# フォアグラウンドで立ち上げる
all:
	cd docker && docker-compose up
# dbとapiだけ立ち上げる
db-api:
	cd docker && docker-compose up db api
# apiだけ立ち上げる
api:
	cd docker && docker-compose up api
# Dockerを停止する
stop:
	cd docker && docker-compose stop
# コンテナに入る
api-exec:
	cd docker && docker exec -it attendanceapp-backend-1 sh
