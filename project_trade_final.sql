drop table if exists vendor;

create table vendor(
Company_name varchar(50) primary key,
first_name varchar(50)not null,
last_name varchar(50),
address varchar(100) not null,
city varchar(50) not null,
postal_code int not null,
contact_number text not null,
email_address varchar(50),
GST_number varchar(50),
website varchar(100)
)

select *
from vendor
order by company_name

insert into vendor(company_name,first_name,last_name,address,city,postal_code,contact_number,email_address,GST_number,webiste)
values('xyz pvt ltd','srivanth','mothi','sky dugar','chennai',600201,9654872547,'xyz@gmail.com','326415fr','xyz.in')



drop table if exists client;

create table client(
Company_name varchar(50) primary key,
first_name varchar(50)not null,
last_name varchar(50),
address varchar(100) not null,
city varchar(50) not null,
postal_code int not null,
contact_number text not null,
email_address varchar(50),
GST_number varchar(50),
website varchar(50)
)

select* from client

insert into client(company_name, first_name,last_name,address,city,postal_code,contact_number,email_address,GST_number,website)
values('plp ltd','poli','reeq','oddsncjdsncs','blore',587456,897456325,'plp@gmail.com','ge58745','seeri.in')

drop table if exists inventory;

create table inventory(
product_id text not null,
product_name varchar (30) not null,
quantity int,
unit text,
price_of_1_unit int not null,
product_specifications varchar (30),
product_description varchar (30),
weight int,
unit_of_weight varchar (25)
)

select*from inventory

insert into inventory(product_id,product_name,quantity,unit,price_of_1_unit,product_specifications,weight,unit_of_weight)
values(2901,'pipe',4,'number',400,'5 inch pipe', 2.5,'kg');

insert into inventory
values(2010,'sand',25,'cubic feet',125,'m-sand','sand',25,'cubic foot');

select * from inventory

drop table if exists enquiry;

create table enquiry (
enquiry_number text,
company_name varchar(50),
contact_person varchar(20),
address varchar(50),
phone_number text,
email_id varchar(30),
enquiry_details varchar (150)
)

select*from enquiry

insert into enquiry (enquiry_number,company_name,contact_person,address,phone_number,email_id,enquiry_details)
values('e564','xyz ltd','sri','dddndsc jsdcjsdcjsdc', 6587452547,'xyz@gmail.com','sand pipe and cement')

insert into enquiry
values('e2145','lol pvt ltd','kloi','mcdsmcdccm',8796541278,'lol@live.in','pipe')


drop table if exists purchase_order

create table purchase_order (
po_number text,
po_date date,
company_name varchar (50),
company_address varchar(50),
billing_name_address varchar(100),
shipping_name_address varchar (100),
items varchar(50),
quantity int,
price int,
total_amount text)

select*from purchase_order;

insert into purchase_order(po_number,po_date,company_name,company_address,billing_name_address,shipping_name_address,items,quantity,price,total_amount)
values('po5697','2023-03-15','xyl ltd','dsdscsd cds c','kdcsdjcdj','oddjwndjc','pipe-5inch',100,40,4000);

select*from purchase_order;
select po_number,po_date,items,quantity,price,(quantity * price)total_number from purchase_order;

drop table if exists invoice

create table invoice (
invoice_number text,
date_of_invoice date,
company_name varchar (50),
address varchar(50),
billing_to varchar(50),
billing_address varchar(50),
terms_of_payment text,
due_date date,
item_description varchar(50),
quantity int,
price int,
total_amount text not null)

insert into invoice(invoice_number,date_of_invoice,company_name,address,billing_to,billing_address,terms_of_payment,due_date,item_description,quantity,price,total_amount)
values('32547','2023/03/16','xyz ltd','omkdsmcdck','plp ltd','dscdsccsdcw','30 days','2023/04/15','pipe',15,25,2725)

select * from invoice