

/*==============================================================*/
/* Table: sys_user                                              */
/*==============================================================*/


create schema shiro;

create table role
(
  id         int          null,
  role       varchar(100) null,
  permission varchar(100) null
);


INSERT INTO shiro.role (id, role, permission) VALUES (1, 'user', 'normal');
INSERT INTO shiro.role (id, role, permission) VALUES (2, 'admin', 'vip');



create table user
(
  id         int auto_increment
    primary key,
  username   varchar(100) null,
  password   varchar(100) null,
  role       varchar(100) null,
  permission varchar(100) null,
  ban        varchar(100) null
);
INSERT INTO shiro.user (id, username, password, role, permission, ban) VALUES (1, 'howie', '1234567', 'admin', 'normal', '0');
INSERT INTO shiro.user (id, username, password, role, permission, ban) VALUES (2, 'swit', '123456789', 'user', 'normal', '0');
INSERT INTO shiro.user (id, username, password, role, permission, ban) VALUES (3, 'kobe', '112233', 'user', 'vip', '0');