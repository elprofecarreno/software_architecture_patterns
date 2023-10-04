USE my_system_db;

INSERT INTO users (username, usersecret, isactivate) VALUES('admin', 'pbkdf2:sha256:600000$DcFQ8MKEL12iwPGa$17fb3c2d11808ef1afa135f7e7106f7aa929eab09a87d2dea55487777cd504ca', true);
INSERT INTO users (username, usersecret, isactivate) VALUES('simple', 'pbkdf2:sha256:600000$DcFQ8MKEL12iwPGa$17fb3c2d11808ef1afa135f7e7106f7aa929eab09a87d2dea55487777cd504ca', false);