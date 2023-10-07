use onlineshoppingcart;

-- display the information about laptops
select *from product where type='laptop';

-- display the total quantity of products from store with storeid 24 in the shopping cart
select sum(quantity) as totalquantity
from Save_to_Shopping_Cart
WHERE Save_to_Shopping_Cart.pid IN (SELECT Product.pid FROM Product WHERE sid=24);

-- display the name and city of orders delivered on 2017-02-17
SELECT name, city
FROM Address
WHERE addrid IN (SELECT addrid FROM Deliver_To WHERE TimeDelivered = '2017-02-17');

-- display the products ordered maximum no of times
select name,count(*)from product group by name
order by count(*) desc;

-- display the store names and ids in desc order
select sid,name,count(*) from store
group by sid 
order by count(*)desc;

-- display ranking as per sid which is greaterr than 3
select sid,name, ranking from store where ranking>3;

-- display the names with various changes
select name from users where name like 'K%';
select name from users where name like '%Y%';
select name from users where name like '_A%';

-- display all address where city is Delhi
select count(*)from address where city='Delhi';

-- display credit card details joining users
select cardnumber from creditcard
join users
on creditcard.cardnumber = users.userid;

-- display contains and payments using left join
select * from contain
left join payment
on contain.ordernumber = payment.ordernumber;

-- display orders and payments using right join
select * from orders
right join payment
on orders.ordernumber = payment.ordernumber;

-- display all from 2 tables
select *from Save_to_Shopping_Cart,address;

-- display addressid and purchaser
select del.addrid,ad.name as purchaser
from address as ad
join deliver_to as del
on ad.userid=del.addrid;

-- display price from orderitem where price is equal to or higher than 500
select *from orderitem where price>=500;

-- display all details regarding debit card table
select * from debitcard
join address
on address.userid = debitcard.userid;

-- display cardnumber from debitcard
select cardnumber from debitcard
join address
on address.userid = debitcard.userid;


-- display specific cardnumber details
select cardnumber='5728 8391 7362 5381' from debitcard
join address
on address.userid = debitcard.userid;







