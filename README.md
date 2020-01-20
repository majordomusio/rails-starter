# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

docker create --name rails-starter -e POSTGRES_PASSWORD=saas -e POSTGRES_USER=saas -e POSTGRES_DB=saas -p 5432:5432 postgres:10

docker create --name rails-starter -e MYSQL_ROOT_PASSWORD=saas -e MYSQL_PASSWORD=saas -e MYSQL_USER=saas -e MYSQL_DB=saas -p 3306:3306 mariadb:10.4

https://hibbard.eu/rails-react-crud-app/