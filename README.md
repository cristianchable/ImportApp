# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
ruby 2.7.1
rails 6.1.4


* Database creation
For this project, i use Mysql.
The next link explains how install mysql
https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-20-04

Don't forget install mysql_client

Run:
Bundle install  #For install the gems in the project

* Database initialization

In the database.yml file, use the new database name for production
Run:

bundle exec rails db:create #Database creation in production environment

bundle exec rails db:migrate #Run pending migrations in production environment



En esta aplicación podrás seleccionar tu archivo de excel para importar los datos para la empresa.
