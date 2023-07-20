/* TAblas para crear en instancia BigQuery */

CREATE OR REPLACE TABLE `storied-box-393201.test_raw.customers` (
  `customer_id` INT64 NOT NULL,
  `customer_fname` STRING NOT NULL,
  `customer_lname` STRING NOT NULL,
  `customer_email` STRING NOT NULL,
  `customer_password` STRING NOT NULL,
  `customer_street` STRING NOT NULL,
  `customer_city` STRING NOT NULL,
  `customer_state` STRING NOT NULL,
  `customer_zipcode` STRING NOT NULL
);

CREATE OR REPLACE TABLE `storied-box-393201.test_raw.orders` (
  `order_id` INT64 NOT NULL,
  `order_date` TIMESTAMP NOT NULL,
  `order_customer_id` INT64 NOT NULL,
  `order_status` STRING NOT NULL
);

CREATE OR REPLACE TABLE `storied-box-393201.test_raw.order_items` (
  `order_item_id` INT64 NOT NULL,
  `order_item_order_id` INT64 NOT NULL,
  `order_item_product_id` INT64 NOT NULL,
  `order_item_quantity` INT64 NOT NULL,
  `order_item_subtotal` FLOAT64 NOT NULL,
  `order_item_product_price` FLOAT64 NOT NULL
);

CREATE OR REPLACE TABLE `storied-box-393201.test_raw.products` (
  `product_id` INT64 NOT NULL,
  `product_category_id` INT64 NOT NULL,
  `product_name` STRING NOT NULL,
  `product_description` STRING NOT NULL,
  `product_price` FLOAT64 NOT NULL,
  `product_image` STRING NOT NULL
);

CREATE OR REPLACE TABLE `storied-box-393201.test_raw.categories` (
  `category_id` INT64 NOT NULL,
  `category_department_id` INT64 NOT NULL,
  `category_name` STRING NOT NULL
);

CREATE OR REPLACE TABLE `storied-box-393201.test_raw.departments` (
  `department_id` INT64 NOT NULL,
  `department_name` STRING NOT NULL
);