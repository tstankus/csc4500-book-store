drop database if exists `BookStore`;
create database `BookStore`;
use BookStore;

drop table if exists `Staging`;
create table Staging(
	bookTitle nvarchar(200),
	bookAuthor nvarchar(50),
	bookCategory nvarchar(50),
	bookPages nvarchar(50),
	bookPublisher nvarchar(50)
);

load data local infile "C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/books_new.csv"
into table Staging
fields terminated by ','
lines terminated by '\n'
ignore 1 lines;
drop table if exists `Books`;
create table Books
(
	title nvarchar(200),
    author nvarchar(50),
    category nvarchar(200),
	pages decimal(5,0),
	publisher decimal(2,1),
    price decimal(6,2)
);

alter table Books
	add bookID int not null AUTO_INCREMENT primary key;

insert IGNORE into Books
						(title, author, category, pages, publisher)
                        select distinct		bookTitle, bookAuthor, BookCategory, BookPages, BookPublisher
                        from Staging where bookTitle is not null;

drop table if exists `Employees`;
create table Employees
(
	firstName varchar(50),
	lastName varchar(50),
	dateOfBirth date,
	startDate date
);

alter table Employees
	add employeeID int not null AUTO_INCREMENT primary key;

drop table if exists `Customers`;
create table Customers
(
	firstName varchar(50),
	lastName varchar(50),
    email varchar(50)
);
alter table Customers
	add customerID int not null auto_increment primary key;

drop table if exists `Orders`;
create table `Orders`
(
	bookID int not null,
	orderDate date
);
alter table Orders
	add orderID int not null auto_increment primary key;
    
drop table if exists `Invoices`;
create table `Invoices`
(
	bookID int not null,
    employeeID int not null,
    customerID int not null,
    orderID int not null,
    invoiceDate date
);
alter table Invoices
	add invoiceID int not null auto_increment primary key;