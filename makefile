include .env

DSN=$(MYSQL_USER):$(MYSQL_PASSWORD)@tcp($(MYSQL_HOST):$(MYSQL_PORT))/$(MYSQL_DATABASE)

# Dockerを立ち上げる
# 全て立ち上げる
all-d:
	docker-compose up -d
# フォアグラウンドで立ち上げる
all:
	docker-compose up
# dbとapiだけ立ち上げる
db-api:
	docker-compose up db api
# apiだけ立ち上げる
api:
	docker-compose up api
# Dockerを停止する
stop:
	docker-compose stop
