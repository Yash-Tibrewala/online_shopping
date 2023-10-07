create database onlineshoppingcart ;
use onlineshoppingcart;


CREATE TABLE Users(userid INT NOT NULL,name VARCHAR(20),phoneNumber VARCHAR(20),PRIMARY KEY(userid));

INSERT INTO users(userid,name,phoneNumber) VALUES (1,'Yash Agarwal','983-425-3495');
INSERT INTO users(userid,name,phoneNumber) VALUES (2,'Aadarsh Khandelwal','981-425-3100');
INSERT INTO users(userid,name,phoneNumber) VALUES (3,'Subham Pathak','987-434-9856');
INSERT INTO users(userid,name,phoneNumber) VALUES (4,'Disha Kedia','629-051-0389');
INSERT INTO users(userid,name,phoneNumber) VALUES (5,'Aman Seth','917-300-9977');
INSERT INTO users(userid,name,phoneNumber) VALUES (6,'Ambika Sharma','912-798-5086');
INSERT INTO users(userid,name,phoneNumber) VALUES (7,'Shweta Goenka','629-025-3866');
INSERT INTO users(userid,name,phoneNumber) VALUES (8,'Shivam Saraf','980-411-9522');
INSERT INTO users(userid,name,phoneNumber) VALUES (9,'Chirag Jhunjhunwala','912-000-3115');
INSERT INTO users(userid,name,phoneNumber) VALUES (10,'Arnav Tripathi','986-450-3665');
INSERT INTO users(userid,name,phoneNumber) VALUES (11,'Tanishq Agarwal','629-088-7753');
INSERT INTO users(userid,name,phoneNumber) VALUES (12,'Sakshi Gaya','916-555-1189');
INSERT INTO users(userid,name,phoneNumber) VALUES (13,'Sushmita Sen','988-777-4215');
INSERT INTO users(userid,name,phoneNumber) VALUES (14,'Piyush Danwar','629-025-2323');
INSERT INTO users(userid,name,phoneNumber) VALUES (15,'Ansh Tomar','987-403-0597');
INSERT INTO users(userid,name,phoneNumber) VALUES (16,'Keshav Singh','629-054-6390');
INSERT INTO users(userid,name,phoneNumber) VALUES (17,'Megha Gupta','914-526-8847');
INSERT INTO users(userid,name,phoneNumber) VALUES (18,'Faizan Ahmed','919-220-1191');
INSERT INTO users(userid,name,phoneNumber) VALUES (19,'Anirban Banerjee','986-050-3221');
INSERT INTO users(userid,name,phoneNumber) VALUES (20,'Hitesh Mehta','908-410-3492');
INSERT INTO users(userid,name,phoneNumber) VALUES (21,'Karan Arora','629-076-9205');
INSERT INTO users(userid,name,phoneNumber) VALUES (22,'Yash Kejriwal','989-231-1294');
INSERT INTO users(userid,name,phoneNumber) VALUES (23,'Priyanka Bhav','910-001-6643');
INSERT INTO users(userid,name,phoneNumber) VALUES (24,'Ritesh Kapadia','980-425-3495');
INSERT INTO users(userid,name,phoneNumber) VALUES (25,'Taniya Yadav','629-077-2965');
INSERT INTO users(userid,name,phoneNumber) VALUES (26,'Sara Modi','918-245-0801');
INSERT INTO users(userid,name,phoneNumber) VALUES (27,'Luv Iyer','629-077-2140');
INSERT INTO users(userid,name,phoneNumber) VALUES (28,'Shruti Sharma','983-102-2146');
INSERT INTO users(userid,name,phoneNumber) VALUES (29,'Prem Chopra','982-5505-8872');
INSERT INTO users(userid,name,phoneNumber) VALUES (30,'Vikas Deora','908-425-3495');


CREATE TABLE Address(addrid INT NOT NULL,userid INT NOT NULL,name VARCHAR(50),contactPhoneNumber VARCHAR(20)
,city VARCHAR(100),PRIMARY KEY(addrid),
FOREIGN KEY(userid) REFERENCES Users(userid));

INSERT INTO address VALUES (1,28,'Shruti Sharma','983-102-2146','Delhi');
INSERT INTO address VALUES (2,21,'Karan Arora','629-076-9205','Mumbai');
INSERT INTO address VALUES (3,30,'Vikas Deora','908-425-3495','Chennai');
INSERT INTO address VALUES (4,11,'Tanishq Agarwal','629-088-7753','Kolkata');
INSERT INTO address VALUES (5,20,'Hitesh Mehta','908-410-3492','Bangalore');
INSERT INTO address VALUES (6,18,'Faizan Ahmed','919-220-1191','Hyderabad');
INSERT INTO address VALUES (7,9,'Chirag Jhunjhunwala','912-000-3115','Delhi');
INSERT INTO address VALUES (8,12,'Sakshi Gaya','916-555-1189','Kolakta');
INSERT INTO address VALUES (9,25,'Taniya Yadav','629-077-2965','Mumbai');
INSERT INTO address VALUES (10,3,'Subham Pathak','987-434-9856','Chennai');
INSERT INTO address VALUES (11,15,'Ansh Tomar','987-403-0597','Jaipur');
INSERT INTO address VALUES (12,19,'Anirban Banerjee','986-050-3221','Pune');
INSERT INTO address VALUES (13,6,'Ambika Sharma','912-798-5086','Ahemdabad');
INSERT INTO address VALUES (14,17,'Megha Gupta','914-526-8847','Raipur');
INSERT INTO address VALUES (15,14,'Piyush Danwar','629-025-2323','Aurangabad');
INSERT INTO address VALUES (16,24,'Ritesh Kapadia','980-425-3495','Mumbai');
INSERT INTO address VALUES (17,13,'Sushmita Sen','988-777-4215','Kolkata');
INSERT INTO address VALUES (18,16,'Keshav Singh','629-054-6390','Chandigarh');
INSERT INTO address VALUES (19,4,'Disha Kedia','629-051-0389','Delhi');
INSERT INTO address VALUES (20,7,'Shweta Goenka','629-025-3866','Chennai');
INSERT INTO address VALUES (21,2,'Aadarsh Khandelwal','981-425-3100','Mumbai');
INSERT INTO address VALUES (22,1,'Yash Agarwal','983-425-3495','Delhi');
INSERT INTO address VALUES (23,5,'Aman Seth','917-300-9977','Pune');
INSERT INTO address VALUES (24,22,'Yash Kejriwal','989-231-1294','Kolkata');
INSERT INTO address VALUES (25,8,'Shivam Saraf','980-411-9522','Surat');
INSERT INTO address VALUES (26,18,'Faizan Ahmed','919-220-1191','Jaipur');
INSERT INTO address VALUES (27,23,'Priyanka Bhav','910-001-6643','Noida');
INSERT INTO address VALUES (28,29,'Prem Chopra','982-5505-8872','Gangtok');
INSERT INTO address VALUES (29,26,'Sara Modi','918-245-0801','Mumbai');
INSERT INTO address VALUES (30,27,'Luv Iyer','629-077-2140','Bangalore');


CREATE TABLE Buyer(userid INT NOT NULL,PRIMARY KEY(userid)
,FOREIGN KEY(userid) REFERENCES Users(userid));

INSERT INTO buyer VALUES (5);
INSERT INTO buyer VALUES (11);
INSERT INTO buyer VALUES (18);
INSERT INTO buyer VALUES (29);
INSERT INTO buyer VALUES (24);
INSERT INTO buyer VALUES (16);
INSERT INTO buyer VALUES (9);
INSERT INTO buyer VALUES (3);
INSERT INTO buyer VALUES (19);
INSERT INTO buyer VALUES (6);


CREATE TABLE Seller(userid INT NOT NULL,PRIMARY KEY(userid)
,FOREIGN KEY(userid) REFERENCES Users(userid));

INSERT INTO seller VALUES (1);
INSERT INTO seller VALUES (15);
INSERT INTO seller VALUES (30);
INSERT INTO seller VALUES (22);
INSERT INTO seller VALUES (14);
INSERT INTO seller VALUES (13);
INSERT INTO seller VALUES (10);
INSERT INTO seller VALUES (8);
INSERT INTO seller VALUES (4);
INSERT INTO seller VALUES (20);


CREATE TABLE BankCard(cardNumber VARCHAR(25) NOT NULL,expiryDate DATE,
bank VARCHAR(20),PRIMARY KEY(cardNumber));

INSERT INTO bankcard VALUES('4023 1231 3431 8623', '2039-9-10','AXIS');
INSERT INTO bankcard VALUES('5872 8293 3321 0123', '2020-5-14','SBI');
INSERT INTO bankcard VALUES('4902 9212 3402 8831', '2027-7-01','HDFC');
INSERT INTO bankcard VALUES('5782 7293 8472 0318', '2028-8-15','KOTAK');
INSERT INTO bankcard VALUES('4509 4462 9302 0716', '2030-1-30','BOB');
INSERT INTO bankcard VALUES('8473 9299 8492 7361', '2024-6-20','SBI');
INSERT INTO bankcard VALUES('4457 4992 7391 0219', '2025-8-30','AXIS');
INSERT INTO bankcard VALUES('5728 8391 7362 5381', '2035-5-20','KOTAK');
INSERT INTO bankcard VALUES('7283 8982 8361 5593', '2029-4-14','BOB');
INSERT INTO bankcard VALUES('9238 2749 5738 5921', '2027-8-01','HDFC');


CREATE TABLE CreditCard(cardNumber VARCHAR(25) NOT NULL,userid INT NOT NULL,organization VARCHAR(20)
,PRIMARY KEY(cardNumber),FOREIGN KEY(cardNumber) REFERENCES BankCard(cardNumber),
FOREIGN KEY(userid) REFERENCES Users(userid));

INSERT INTO creditcard VALUES('4902 9212 3402 8831',5,'VISA');
INSERT INTO creditcard VALUES('4023 1231 3431 8623',18,'MASTER');
INSERT INTO creditcard VALUES('8473 9299 8492 7361',21,'VISA');
INSERT INTO creditcard VALUES('7283 8982 8361 5593',30,'VISA');
INSERT INTO creditcard VALUES('9238 2749 5738 5921',2,'MASTER');


CREATE TABLE DebitCard(cardNumber VARCHAR(25) NOT NULL,userid INT NOT NULL
,PRIMARY KEY(cardNumber)
,FOREIGN KEY(cardNumber) REFERENCES BankCard(cardNumber),
FOREIGN KEY(userid) REFERENCES Users(userid));

INSERT INTO debitcard VALUES('5872 8293 3321 0123', 15);
INSERT INTO debitcard VALUES('5728 8391 7362 5381', 3);
INSERT INTO debitcard VALUES('4457 4992 7391 0219', 23);
INSERT INTO debitcard VALUES('5782 7293 8472 0318', 1);
INSERT INTO debitcard VALUES('4509 4462 9302 0716', 13);


CREATE TABLE Store(sid INT NOT NULL,name VARCHAR(20),city VARCHAR(20),
ranking INT,PRIMARY KEY(sid));

INSERT INTO store VALUES(8,'Reliance Digital','Mumbai',4);
INSERT INTO store VALUES(10,'BestBuy','Delhi',5);
INSERT INTO store VALUES(39,'Electronix','Chennai',3);
INSERT INTO store VALUES(77,'Everyone Favorite','Mumbai',4);
INSERT INTO store VALUES(218,'American Eagle','Kolkata',2);


CREATE TABLE Brand(brandName VARCHAR(20) NOT NULL,PRIMARY KEY (brandName));

INSERT INTO Brand VALUES('Asus');
INSERT INTO Brand VALUES('Boat');
INSERT INTO Brand VALUES('Canon');
INSERT INTO Brand VALUES('DELL');
INSERT INTO Brand VALUES('GoPro');
INSERT INTO Brand VALUES('Microsoft');


CREATE TABLE Product(pid INT NOT NULL,sid INT NOT NULL,brand VARCHAR(50) NOT NULL,name VARCHAR(100),type VARCHAR(50)
,modelNumber VARCHAR(50),color VARCHAR(50),amount INT,price INT,PRIMARY KEY(pid),FOREIGN KEY(sid) 
REFERENCES Store(sid),FOREIGN KEY(brand) REFERENCES Brand(brandName));

INSERT INTO Product VALUES(1,8,'Asus','ASUS Chromebook 11.6 laptop','laptop','C201PA-DS02','grey',10,262);
INSERT INTO Product VALUES(2,10,'Boat','Boat Noise Cancellation wireless headphone','headphone','759944-0010','blue',100,449);
INSERT INTO Product VALUES(3,39,'Canon','Canon EOS Rebel T5','cameras','9126B003','black',50,500);
INSERT INTO Product VALUES(4,77,'DELL','DELL Ultra HD 4k Monitor P2715Q 27-Inch Screen LED-Lit Monitor','computer accessories','P2715Q','black',40,713);
INSERT INTO Product VALUES(5,218,'GoPro','GoPro HERO','cameras','CHDHX-501-CA','black',80,599);
INSERT INTO Product VALUES(6,218,'Microsoft','Microsoft Xbox 360 Wired Controller for Windows','controllers','52A-00004','black',60,35);
INSERT INTO Product VALUES(7,8,'Microsoft','Microsoft Sculpt Ergonomic Wireless Bluetrack Desktop Keyboard','computer accessories','L5V-00003','black',70,126);
INSERT INTO Product VALUES(8,8,'Microsoft','Microsoft Surface Pro 4 i5 (128GB) with Wireless Media Adapter','laptop','CR5-00001','black',30,1350);


CREATE TABLE OrderItem(itemid INT NOT NULL,pid INT NOT NULL
,price INT,PRIMARY KEY(itemid),FOREIGN KEY(pid)
 REFERENCES Product(pid));

INSERT INTO OrderItem VALUES(1,1,262);
INSERT INTO OrderItem VALUES(2,2,449);
INSERT INTO OrderItem VALUES(3,3,500);
INSERT INTO OrderItem VALUES(4,4,713);
INSERT INTO OrderItem VALUES(5,5,599);
INSERT INTO OrderItem VALUES(6,6,35);
INSERT INTO OrderItem VALUES(7,7,126);
INSERT INTO OrderItem VALUES(8,8,1350);
INSERT INTO OrderItem VALUES(9,1,262);
INSERT INTO OrderItem VALUES(10,5,599);


CREATE TABLE Orders(orderNumber INT NOT NULL,paymentState VARCHAR(12)
,creationTime DATE,totalAmount INT,PRIMARY KEY (orderNumber));

INSERT INTO Orders VALUES(76023921,'Paid','2016-09-18',315);
INSERT INTO Orders VALUES(23924831,'Paid','2014-03-22',174);
INSERT INTO Orders VALUES(87291231,'Unpaid','2017-01-23',102);
INSERT INTO Orders VALUES(58293123,'Unpaid','2016-12-27',928);
INSERT INTO Orders VALUES(12992012,'Paid','2015-05-30',203);
INSERT INTO Orders VALUES(59203012,'Paid','2017-02-12',87);
INSERT INTO Orders VALUES(91027482,'Unpaid','2016-12-27',187);
INSERT INTO Orders VALUES(72839301,'Unpaid','2015-02-13',293);
INSERT INTO Orders VALUES(93042135,'Paid','2015-08-22',52);
INSERT INTO Orders VALUES(74892932,'UnPaid','2016-02-19',77);
INSERT INTO Orders VALUES(83921201,'Paid','2017-01-03',301);
INSERT INTO Orders VALUES(73919231,'Paid','2014-02-11',20);
INSERT INTO Orders VALUES(84821231,'Paid','2014-11-02',18);


CREATE TABLE Save_to_Shopping_Cart(userid INT NOT NULL ,pid INT NOT NULL
,addTime DATE,quantity INT,PRIMARY KEY (userid,pid),FOREIGN KEY(userid) 
REFERENCES Buyer(userid),FOREIGN KEY(pid) REFERENCES Product(pid));

INSERT INTO Save_to_Shopping_Cart VALUES(5,1,'2017-02-21',1);
INSERT INTO Save_to_Shopping_Cart VALUES(5,2,'2016-09-18',1);
INSERT INTO Save_to_Shopping_Cart VALUES(18,3,'2014-03-22',2);
INSERT INTO Save_to_Shopping_Cart VALUES(24,5,'2016-12-27',2);
INSERT INTO Save_to_Shopping_Cart VALUES(11,6,'2015-05-30',1);
INSERT INTO Save_to_Shopping_Cart VALUES(9,7,'2016-02-19',4);
INSERT INTO Save_to_Shopping_Cart VALUES(18,8,'2012-01-20',1);


CREATE TABLE Contain(orderNumber INT NOT NULL,itemid INT NOT NULL,quantity INT
,PRIMARY KEY (orderNumber,itemid),FOREIGN KEY(orderNumber) REFERENCES Orders(orderNumber)
,FOREIGN KEY(itemid) REFERENCES OrderItem(itemid));

INSERT INTO Contain VALUES(76023921,1,1);
INSERT INTO Contain VALUES(76023921,2,2);
INSERT INTO Contain VALUES(23924831,3,1);
INSERT INTO Contain VALUES(87291231,4,2);
INSERT INTO Contain VALUES(58293123,5,1);
INSERT INTO Contain VALUES(12992012,6,1);
INSERT INTO Contain VALUES(12992012,7,1);
INSERT INTO Contain VALUES(59203012,8,1);
INSERT INTO Contain VALUES(91027482,9,1);
INSERT INTO Contain VALUES(72839301,10,1);
INSERT INTO Contain VALUES(93042135,1,1);
INSERT INTO Contain VALUES(93042135,2,1);
INSERT INTO Contain VALUES(93042135,3,1);
INSERT INTO Contain VALUES(84821231,5,3);
INSERT INTO Contain VALUES(73919231,6,2);
INSERT INTO Contain VALUES(83921201,7,5);


CREATE TABLE Payment(orderNumber INT NOT NULL,creditcardNumber VARCHAR(25) NOT NULL
,payTime DATE,PRIMARY KEY(orderNumber,creditcardNumber),FOREIGN KEY(orderNumber) 
REFERENCES Orders(orderNumber),FOREIGN KEY(creditcardNumber) REFERENCES CreditCard(cardNumber));

INSERT INTO Payment VALUES(23924831,'4902 9212 3402 8831','2016-08-23');
INSERT INTO Payment VALUES(87291231,'4023 1231 3431 8623','2016-08-07');
INSERT INTO Payment VALUES(58293123,'8473 9299 8492 7361','2016-09-07');
INSERT INTO Payment VALUES(12992012,'7283 8982 8361 5593','2015-02-23');
INSERT INTO Payment VALUES(59203012,'9238 2749 5738 5921','2013-09-07');
INSERT INTO Payment VALUES(91027482,'4902 9212 3402 8831','2017-02-01');
INSERT INTO Payment VALUES(72839301,'4902 9212 3402 8831','2016-10-23');
INSERT INTO Payment VALUES(93042135,'4023 1231 3431 8623','2016-10-07');
INSERT INTO Payment VALUES(91027482,'7283 8982 8361 5593','2017-02-01');
INSERT INTO Payment VALUES(84821231,'9238 2749 5738 5921','2017-01-23');
INSERT INTO Payment VALUES(73919231,'9238 2749 5738 5921','2016-10-23');
INSERT INTO Payment VALUES(83921201,'9238 2749 5738 5921','2017-02-01');


CREATE TABLE Deliver_To(addrid INT NOT NULL ,orderNumber INT NOT NULL
,TimeDelivered DATE,PRIMARY KEY(addrid,orderNumber)
,FOREIGN KEY(addrid) REFERENCES Address(addrid)
,FOREIGN KEY(orderNumber) REFERENCES Orders(orderNumber));

INSERT INTO deliver_to VALUES(30,87291231,'2017-02-17');
INSERT INTO deliver_to VALUES(1,12992012,'2015-6-10');
INSERT INTO deliver_to VALUES(7,76023921,'2015-10-04');
INSERT INTO deliver_to VALUES(12,59203012,'2017-02-20');
INSERT INTO deliver_to VALUES(14,93042135,'2015-09-08');


SELECT *FROM users;






