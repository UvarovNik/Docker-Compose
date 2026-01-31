\c postgres;
CREATE DATABASE users_db;
CREATE DATABASE hotels_db;
CREATE DATABASE reservations_db;
CREATE DATABASE payments_db;
CREATE DATABASE balances_db;
CREATE DATABASE statistics_db;

-- Предоставление прав пользователю postgres
GRANT ALL PRIVILEGES ON DATABASE users_db TO postgres;
GRANT ALL PRIVILEGES ON DATABASE hotels_db TO postgres;
GRANT ALL PRIVILEGES ON DATABASE reservations_db TO postgres;
GRANT ALL PRIVILEGES ON DATABASE payments_db TO postgres;
GRANT ALL PRIVILEGES ON DATABASE balances_db TO postgres;
GRANT ALL PRIVILEGES ON DATABASE statistics_db TO postgres;