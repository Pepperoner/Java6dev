use dev_db;

select avg(salary) from dev_db.developers where developers_id in(select developers_id from dev_db.projects_has_developers where projects_id = (select projects_id from dev_db.projects where cost = (select min(cost) from projects))); 