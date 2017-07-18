use dev_db;

select customer_id from dev_db.customers where projects_id = (select projects_id from dev_db.projects where cost = (select min(cost) from dev_db.projects));