create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contents varchar(255), contract_type varchar(255), date_added date, industry varchar(255), period_of_validity date, salary integer, title varchar(255), company_id bigint not null, primary key (id_advertisement)) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id bigint not null, company_id bigint not null, customer_id bigint not null, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail varchar(255), postalcode integer, user_id bigint not null, primary key (nip)) engine=InnoDB
create table course (id_course bigint not null, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, user_id bigint not null, primary key (id_customer)) engine=InnoDB
create table cv (idcv bigint not null, dane varchar(255), education varchar(255), hobbies varchar(255), skills varchar(255), work_experience varchar(255), customer_id bigint not null, primary key (idcv)) engine=InnoDB
create table hibernate_sequence (next_val bigint) engine=InnoDB
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id bigint not null, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, numberofquestions integer, title varchar(255), company_id bigint not null, primary key (id_survey)) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, primary key (id_user)) engine=InnoDB
alter table application add constraint UK_soj9nie0qdj6b3jdwel6wwnuk unique (advertisement_id)
alter table company add constraint UK_g82ixrst2tc542u5s214ggpdf unique (user_id)
alter table customer add constraint UK_j7ja2xvrxudhvssosd4nu1o92 unique (user_id)
alter table cv add constraint UK_7nsstl9x9nrjxv264fx1ngx0m unique (customer_id)
alter table survey add constraint UK_6hettjbyknyxu85xaehqlk1jq unique (company_id)
alter table advertisement add constraint FKosjshkro6r0jfxjanm58alfmf foreign key (company_id) references company (nip)
alter table application add constraint FK5wwcphcwd1u08fenhtbvyg14p foreign key (advertisement_id) references advertisement (id_advertisement)
alter table application add constraint FKjm4svmen8mv59grpbgjp5v1ml foreign key (company_id) references company (nip)
alter table application add constraint FKdih65y3ywnh2g5ddjae3ud4kw foreign key (customer_id) references customer (id_customer)
alter table certificate add constraint FKbin167gb15lctd21ocemxja99 foreign key (customer_id) references customer (id_customer)
alter table company add constraint FKdy4v2yb46hefqicjpyj7b7e4s foreign key (user_id) references user (id_user)
alter table course add constraint FK418pvmlvhrll9ilj6uprdchp6 foreign key (customer_id) references customer (id_customer)
alter table customer add constraint FKj8dlm21j202cadsbfkoem0s58 foreign key (user_id) references user (id_user)
alter table cv add constraint FKaejxs9ixrvnawdyag0kmsp8sf foreign key (customer_id) references customer (id_customer)
alter table question add constraint FK65ro96jafjvulbqu8ia0pb254 foreign key (survey_id) references survey (id_survey)
alter table survey add constraint FKo5sdismkcu0pgey32yc98eo12 foreign key (company_id) references company (nip)
