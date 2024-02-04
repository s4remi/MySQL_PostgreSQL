CREATE TABLE conversations(
    user_name VARCHAR(200),
    employer_name VARCHAR(250),
    message TEXT,
    date_sent TIMESTAMP
);

INSERT INTO conversations (user_name, employer_name, message, date_sent)
VALUES ('Max Schwarz', 'Learning inc', 'Hi, I like learning','2021-10-15  14:37:16');