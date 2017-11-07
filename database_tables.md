HEADER EXAMPLE: purchaser name	item description	item price	purchase count	merchant address	merchant name

TABLES               | COLUMNS(TYPE)
---------------------|---------------------------------------------
purchases            | id(int), client_id(int), count(int)
clients              | id(int), name(string)
items                | id(int), description(string), price(decimal)
purchases_items      | id(int), purchase_id(int), item_id(int)
merchants            | id(int), address(string), name(string)
purchases_merchants  | id(int), purchase_id(int), merchant_id(int)
