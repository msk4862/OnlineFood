use pizza_shop_db;
show tables;
drop table items;

create table items(id int not null, item_name varchar(255) not null, price_rupee double(5, 2) not null, item_image_url varchar(512));

insert into items values(1, "Veg Burger", 99, "Images/menu_items/veg_burger.jpg");
insert into items values(2, "Paneer Frankie", 79, "Images/menu_items/paneer_frankie.jpg");
insert into items values(3, "Veg Manchow Soup", 120, "Images/menu_items/vegetable_manchow_soup.jpg");
insert into items values(4, "Tandoori Chicken", 220, "Images/menu_items/tandoori_chicken.jpg");
insert into items values(5, "Veg Momos", 180, "Images/menu_items/veg_momos.jpg");
insert into items values(6, "Chicken Lollipop", 160, "Images/menu_items/chicken_lollipop.jpg");
insert into items values(7, "Veg Deluxe Thali", 260, "Images/menu_items/veg_deluxe_thali.jpg");
insert into items values(8, "Gulab Jamun", 89, "Images/menu_items/gulab-jamun.jpg");
insert into items values(9, "Cold Coffee", 120, "Images/menu_items/cold-coffee.jpg");
insert into items values(10, "Salad", 50, "Images/menu_items/salad.jpg");
insert into items values(11, "Cheese Sandwich", 120, "Images/menu_items/cheese_sandwich.jpg");
insert into items values(12, "Coke", 60, "Images/menu_items/coke.jpg");
insert into items values(13, "Oreo Shake", 180, "Images/menu_items/oreo_shake.jpg");
insert into items values(14, "Vanilla Ice cream", 100, "Images/menu_items/vanilla_icecream.jpg");
insert into items values(15, "Medium Margherita Pizza", 280, "Images/menu_items/margherita_pizza.jpg");
insert into items values(16, "Cheese Burger", 120, "https://user-images.githubusercontent.com/24875366/100517077-3b116b80-31ae-11eb-8706-dae96d7688e4.jpg");

select * from items;



