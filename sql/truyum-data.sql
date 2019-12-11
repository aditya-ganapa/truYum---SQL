-- Include table data insertion, updation, deletion and select scripts
desc menu_item;
insert into menu_item values(1, 'Sandwich', 99.00, 'Yes', '2017-03-15', 'Main Course', 'Yes');
insert into menu_item values(2, 'Burger', 129.00, 'Yes', '2017-12-23', 'Main Course', 'No');
insert into menu_item values(3, 'Pizza', 149.00, 'Yes', '2017-08-21', 'Main Course', 'No');
insert into menu_item values(4, 'French Fries', 57.00, 'No', '2017-07-02', 'Starters', 'Yes');
insert into menu_item values(5, 'Chocolate Brownie', 32.00, 'Yes', '2022-11-02', 'Dessert', 'Yes');
select * from menu_item;

select * from menu_item where me_active='Yes' and datediff(curdate(), me_date_of_launch)>=0;

select * from menu_item where me_id=1;
update menu_item set me_name='Ice Cream', me_price=49, me_active='Yes', me_date_of_launch='2017-10-25', me_category='Dessert', me_free_delivery='No' where me_id=1;

desc user;
insert into user values(101, 'Ram');
insert into user values(102, 'Shyam');
select * from user;
desc cart;
insert into cart values(1001, 102, 1);
insert into cart values(1002, 102, 2);
insert into cart values(1003, 102, 3);
select * from cart;

select * from cart inner join menu_item on ct_me_id=me_id where ct_us_id=102;
select sum(me_price) from cart inner join menu_item on ct_me_id=me_id where ct_us_id=102;

delete from cart where ct_us_id=102 and ct_me_id=3;
select * from cart;