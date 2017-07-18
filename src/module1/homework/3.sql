use dev_db;

update dev_db.developers set salary = 1250 where dev_id = 1;
update dev_db.developers set salary = 1750 where dev_id = 2;
update dev_db.developers set salary = 2500 where dev_id = 3;

select sum(salary) from dev_db.developers;