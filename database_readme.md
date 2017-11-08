HEADER EXAMPLE: purchaser name	item description	item price	purchase count	merchant address	merchant name

TABLES               | COLUMNS(TYPE)
---------------------|---------------------------------------------
clients              | id(int), name(string)
items                | id(int), description(string), price(decimal)
merchants            | id(int), address(string), name(string)
purchases            | id(int), client_id(int), count(int)
items_merchants      | id(int), merchant_id(int), item_id(int)
items_purchases      | id(int), purchase_id(int), item_id(int)
merchants_purchases  | id(int), purchase_id(int), merchant_id(int)


* based on Rails generate model
* assuming pre registered clients, items and merchants