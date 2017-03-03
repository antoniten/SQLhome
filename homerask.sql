create table Facults( 
id int(1) PRIMARY KEY NOT NULL AUTO_INCREMENT, 
facul_name varchar(100), 
decan varchar(100), 
data datetime ); 

create table sklad( 
id int(1) PRIMARY KEY NOT NULL AUTO_INCREMENT, 
fio varchar(255), 
adress varchar(255), 
telephone varchar(20), 
cappa int); 

create table hranenie( 
col int, 
vidacha varchar(200), 
punct_vidachi int, 
book_number int, 
FOREIGN KEY punct_vidachi REFERENCES sklad(id), 
FOREIGN KEY book_number REFERENCES books(id) 
); 

create table books( 
 id int(1) PRIMARY KEY NOT NULL AUTO_INCREMENT, 
 name varchar(255), 
 after varchar(255), 
 isda varchar(255), 
 year_isda int, 
 price int, 
 prisnak varchar(255) 

); 

create table books_teach( 
 disci varchar(255), 
 book int, 
 facul int, 
 FOREIGN KEY book REFERENCES books(id), 
 FOREIGN KEY facul REFERENCES Facults(id) 
);