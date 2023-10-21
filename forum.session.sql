-- @block
CREATE TABLE IF NOT EXISTS user(
    created_timestamp INT NOT NULL,
    primary_ip TEXT NOT NULL,
    primary_ip_type BOOLEAN,
    persistant_info_id INT,
    FOREIGN KEY(persistant_info_id) REFERENCES persistant_user_info(rowid)
);

CREATE TABLE IF NOT EXISTS persistant_user_info(
    created_timestamp INT NOT NULL,
    nickname TEXT NOT NULL,
    password_hash INT,
    biography TEXT,
    preferred_settings TEXT,
    blocklist_id INT,
    FOREIGN KEY(blocklist_id) REFERENCES blacklist(rowid)
);

CREATE TABLE IF NOT EXISTS post(
    created_timestamp INT NOT NULL,
    title TEXT,
    body TEXT NOT NULL,
    parent_id INT,
    poster_id INT NOT NULL,
    FOREIGN KEY(poster_id) REFERENCES user(rowid),
    FOREIGN KEY(parent_id) REFERENCES post(rowid)
);

CREATE TABLE IF NOT EXISTS blacklist(
    dummy INT
)