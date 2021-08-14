
-- bankApp project 0 

drop table users;
drop table accounts;
drop table transactions;




create table if not exists users(
	user_id serial primary key,
	user_name varchar(30) unique not NULL,
	user_password varchar(30) not NULL,
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(20) NOT null,
    user_email varchar(60) not null
);
insert into users (user_name,user_password, first_name,last_name,user_email) 
values('james123','yy','Benjamin', 'Yuan', 'email@email.com');

insert into users (user_name,user_password, first_name,last_name,user_email) 
values('bang123','yy','Benjamin', 'Yuan','qq@email.com' );

select * from users;


create table if not exists employees(
	user_id serial primary key,
	user_name varchar(30) unique not NULL,
    passwords VARCHAR(40) NOT NULL
);



create table if not exists accounts(
	accounts_id serial primary key,
	account_name varchar(30) not null,
	account_banlance Decimal,
	account_approved boolean not null,
	user_id int references users(user_id)
);




select * from employees;
select * from employees where user_name = 'Ben1' and passwords = 'yy1';
insert into employees (user_name, passwords) values('Ben1', 'yy1');


select * from accounts where user_id = 2;


select * from accounts;


select * from users;

select * from users where user_name = 'bang123';



update accounts set account_approved = true where accounts_id = 16 ;

insert into accounts (account_name,account_banlance,account_approved,user_id) 
values('savings123','0',false, 1),
		('svings124','100',false,2);
	
	insert into accounts (account_name,account_banlance,account_approved,user_id) 
values('checking123','0',false, 1),
		('checking','100',false,1);
delete from accounts;





