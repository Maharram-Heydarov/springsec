INSERT IGNORE INTO users
VALUES ('user', '{noop}User@1234', '1');
INSERT IGNORE INTO authorities
VALUES ('user', 'read');

INSERT IGNORE INTO users
VALUES ('admin', '{bcrypt}$2a$12$SKr1VxR1WzOaQoGe6Spddu4uLVrdcz4SeKBURMdrwjuWaMJooHwsu', '1');
INSERT IGNORE INTO authorities
VALUES ('admin', 'admin');

CREATE TABLE `customer`
(
    `id`    int          NOT NULL AUTO_INCREMENT,
    `email` varchar(45)  NOT NULL,
    `pwd`   varchar(200) NOT NULL,
    `role`  varchar(45)  NOT NULL,
    PRIMARY KEY (`id`)
);

INSERT INTO customer (email, pwd, role)
VALUES ('customer1@example.com', '{noop}User@1234', 'read');

INSERT INTO customer (email, pwd, role)
VALUES ('customer_admin@example.com', '{bcrypt}$2a$12$SKr1VxR1WzOaQoGe6Spddu4uLVrdcz4SeKBURMdrwjuWaMJooHwsu', 'admin');

INSERT INTO customer (email, pwd, role)
VALUES ('customer_admin2@example.com', '{noop}H.M.0042@hm', 'admin');
