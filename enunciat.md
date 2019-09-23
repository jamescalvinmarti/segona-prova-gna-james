# Donada la següent estructura MySQL, retorna'm un llistat en majúscules del nom d'aquells usuaris que tinguin permisos a la secció 'Edit Photos'

CREATE TABLE 'users' (
'id' INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
'name' VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL,
'email' VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL
PRIMARY KEY ('id'),
UNIQUE KEY 'users_email_unique' ('email')
) ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE 'user_permission' (
'permission_id' INT(10) UNSIGNED NOT NULL,
'user_id' BIGINT(20) UNSIGNED NOT NULL
PRIMARY KEY ('permission_id','user_id'),
CONSTRAINT 'user_permission_permission_id' FOREIGN KEY ('permission_id') REFERENCES 'permissions' ('id') ON DELETE CASCADE,
CONSTRAINT 'user_permission_user_id' FOREIGN KEY ('user_id') REFERENCES 'users' ('id') ON DELETE CASCADE
) ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE 'permissions' (
'id' INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
'name' VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL
PRIMARY KEY ('id')
) ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

# Donada la següent estructura MySQL, mostra'm un únic llistat d'usuaris amb el seu id, nom, email, ordenats per nom

CREATE TABLE 'users' (
'id' INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
'name' VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL,
'email' VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL
PRIMARY KEY ('id'),
UNIQUE KEY 'users_email_unique' ('email')
) ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE 'administrators' (
'identifier' INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
'name' VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL,
'surname' VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL,
'email' VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL
PRIMARY KEY ('identifier'),
UNIQUE KEY 'users_email_unique' ('email')
) ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE 'customers' (
'id' INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
'name_contact' VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,
'email' VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL
PRIMARY KEY ('id'),
UNIQUE KEY 'users_email_unique' ('email')
) ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;