/* retorna'm un llistat en majúscules del nom d'aquells usuaris
   que tinguin permisos a la secció 'Edit Photos' */

SELECT UPPER(users.name) FROM users 
    LEFT JOIN user_permission ON users.id = user_permission.user_id 
    LEFT JOIN permissions ON user_permission.permission_id = permissions.id 
    WHERE permissions.name = 'Edit Photos';

/* mostra'm un únic llistat d'usuaris amb el seu id, nom, email, ordenats per nom */

SELECT users.id,users.name,users.email FROM users UNION ALL 
    SELECT administrators.identifier,administrators.name,administrators.email FROM administrators UNION ALL
    SELECT customers.id,customers.name_contact,customers.email FROM customers ORDER BY name ASC;