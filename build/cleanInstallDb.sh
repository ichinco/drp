CREATE TABLE `drp_users` (
`user_id` INT( 128 ) NOT NULL AUTO_INCREMENT PRIMARY KEY ,
`username` VARCHAR( 12 ) NOT NULL ,
`password` VARCHAR( 128 ) NOT NULL ,
UNIQUE (
`username`
)
) ENGINE = MYISAM ;