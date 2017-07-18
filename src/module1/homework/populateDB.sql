USE dev_db;


INSERT INTO dev_db.companies (company_name) VALUES ('KMB');
INSERT INTO dev_db.companies (company_name) VALUES ('NAVI');
INSERT INTO dev_db.companies (company_name) VALUES ('ROZETKA');

INSERT INTO dev_db.developers (name, surname, age, company_id) VALUES ('Boris', 'Lahutin', 25, 1);
INSERT INTO dev_db.developers (name, surname, age, company_id) VALUES ('Alex', 'Landau' , 33, 2);
INSERT INTO dev_db.developers (name, surname, age, company_id) VALUES ('Ivan', 'Egorov' , 22, 3);

INSERT INTO dev_db.skills (skills_name) VALUES('Java');
INSERT INTO dev_db.skills (skills_name) VALUES('C++');
INSERT INTO dev_db.skills (skills_name) VALUES('C#');

INSERT INTO dev_db.developers_has_skills (developers_id, skills_id) VALUES(1, 1);
INSERT INTO dev_db.developers_has_skills (developers_id, skills_id) VALUES(1, 3);
INSERT INTO dev_db.developers_has_skills (developers_id, skills_id) VALUES(2, 1);
INSERT INTO dev_db.developers_has_skills (developers_id, skills_id) VALUES(2, 2);
INSERT INTO dev_db.developers_has_skills (developers_id, skills_id) VALUES(3, 1);
INSERT INTO dev_db.developers_has_skills (developers_id, skills_id) VALUES(3, 2);
INSERT INTO dev_db.developers_has_skills (developers_id, skills_id) VALUES(3, 3);

INSERT INTO projects (project_name, company_id) VALUES('Clash of clans', 1);
INSERT INTO projects (project_name, company_id) VALUES('Vikings', 2);
INSERT INTO projects (project_name, company_id) VALUES('Dota', 3);
INSERT INTO projects (project_name, company_id) VALUES('Subway', 4);

INSERT INTO customers (customer_name, projects_id) VALUES('Valera', 1);
INSERT INTO customers (customer_name, projects_id) VALUES('Petr', 2);
INSERT INTO customers (customer_name, projects_id) VALUES('Bob', 3);
INSERT INTO customers (customer_name, projects_id) VALUES('Lucas', 4);

INSERT INTO projects_has_developers (projects_id, developers_id) VALUES(1, 1);
INSERT INTO projects_has_developers (projects_id, developers_id) VALUES(1, 2);
INSERT INTO projects_has_developers (projects_id, developers_id) VALUES(1, 3);
INSERT INTO projects_has_developers (projects_id, developers_id) VALUES(2, 1);
INSERT INTO projects_has_developers (projects_id, developers_id) VALUES(2, 2);
INSERT INTO projects_has_developers (projects_id, developers_id) VALUES(3, 3);
INSERT INTO projects_has_developers (projects_id, developers_id) VALUES(4, 1);