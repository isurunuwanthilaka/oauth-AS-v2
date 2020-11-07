INSERT INTO oauth_client_details (client_id, client_secret, web_server_redirect_uri, scope, access_token_validity, refresh_token_validity, resource_ids, authorized_grant_types, additional_information) VALUES ('sampath', '{bcrypt}$2y$12$Js5yoCznMcYCkQfuwLKGae8Yo7H3H02aRY46bB.JkWNx8Lr9Gd9vC', 'http://localhost:8082/auth/login/oauth2/code/sampath', 'READ,WRITE', '3600', '10000', 'inventory,payment', 'authorization_code,password,refresh_token,implicit', '{}');

INSERT INTO permission (name) VALUES ('create_profile');
INSERT INTO permission (name) VALUES ('read_profile');
INSERT INTO permission (name) VALUES ('update_profile');
INSERT INTO permission (name) VALUES ('delete_profile');

INSERT INTO role (NAME) VALUES ('ROLE_admin');
INSERT INTO role (NAME) VALUES ('ROLE_editor');
INSERT INTO role (NAME) VALUES ('ROLE_operator');

INSERT INTO PERMISSION_ROLE (PERMISSION_ID, ROLE_ID) VALUES(1,1);  /*create-> admin */
INSERT INTO PERMISSION_ROLE (PERMISSION_ID, ROLE_ID) VALUES(2,1);  /*read-> admin */
INSERT INTO PERMISSION_ROLE (PERMISSION_ID, ROLE_ID) VALUES(3,1);  /*update-> admin */
INSERT INTO PERMISSION_ROLE (PERMISSION_ID, ROLE_ID) VALUES(4,1);  /*delete-> admin */
INSERT INTO PERMISSION_ROLE (PERMISSION_ID, ROLE_ID) VALUES(4,1);  /*delete-> admin */
INSERT INTO PERMISSION_ROLE (PERMISSION_ID, ROLE_ID) VALUES(4,1);  /*delete-> admin */
INSERT INTO PERMISSION_ROLE (PERMISSION_ID, ROLE_ID) VALUES(2,2);  /*read-> editor */
INSERT INTO PERMISSION_ROLE (PERMISSION_ID, ROLE_ID) VALUES(3,2);  /*update-> editor */
INSERT INTO PERMISSION_ROLE (PERMISSION_ID, ROLE_ID) VALUES(2,3);  /*read-> operator */

INSERT INTO users (id, username,password, email, enabled, account_non_expired, credentials_non_expired, account_non_locked) VALUES (1, 'isuru','{bcrypt}$2y$12$cRt6HajzYtH5Z.b2juz6eO1jOARcw8NIba0/PZBWnSsMWcTY3BWOC', 'isuru@isumalab.com', '1', '1', '1', '1');
INSERT INTO  users (id, username,password, email, enabled, account_non_expired, credentials_non_expired, account_non_locked) VALUES (2, 'madhuranga', '{bcrypt}$2y$12$QrFgeqd7eAGiF/Xctc4ntuE3nW7UKC/oe6uENMBrRIRpHq7V/jlp.','madhuranga@isumalab.com', '1', '1', '1', '1');
INSERT INTO  users (id, username,password, email, enabled, account_non_expired, credentials_non_expired, account_non_locked) VALUES (3, 'nuwanthilaka', '{bcrypt}$2y$12$hNs.n5M7V8v9BMh.FO7BIeIj5HF5cREdKvx9V6sf4.XXaYlcMC8Sq','nuwanthilaka@isumalab.com', '1', '1', '1', '1');

--  passowrds:
--  isuru - ipass
--  madhuranga - mpass
--  nuwanthilaka - npass

INSERT INTO ROLE_USER (ROLE_ID, USER_ID) VALUES (1, 1); /* isuru-admin */
INSERT INTO ROLE_USER (ROLE_ID, USER_ID) VALUES (2, 2); /* madhuranga-editor */
INSERT INTO ROLE_USER (ROLE_ID, USER_ID) VALUES (3, 3); /* nuwanthilaka-operatorr */
