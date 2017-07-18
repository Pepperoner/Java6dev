use dev_db;

update dev_db.developers set salary = 1250 where dev_id = 1;
update dev_db.developers set salary = 1750 where dev_id = 2;
update dev_db.developers set salary = 2500 where dev_id = 3;

update ilya_db.projects set cost = (select sum(salary) from dev_db.developers where developers_id IN (select developers_id from dev_db.projects_has_developers where projects_id = 1)) where project_id = 1;
update ilya_db.projects set cost = (select sum(salary) from dev_db.developers where developers_id IN (select developers_id from dev_db.projects_has_developers where projects_id = 2)) where project_id = 2;
update ilya_db.projects set cost = (select sum(salary) from dev_db.developers where developers_id IN (select developers_id from dev_db.projects_has_developers where projects_id = 3)) where project_id = 3;

select max(cost) from dev_db.projects;