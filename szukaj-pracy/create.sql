create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), archives_id_archives bigint, company_id_company bigint, search_id_search bigint, survey_advertisement_id_survey bigint, primary key (id_advertisement)) engine=InnoDB
create table advertisement_applications_advertisement (advertisement_id_advertisement bigint not null, applications_advertisement_id_application bigint not null) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id_advertisement bigint, company_id_company bigint, customers_id_customers bigint, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table archives_advertisements_archives (archives_id_archives bigint not null, advertisements_archives_id_advertisement bigint not null) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, survey_company_id_survey bigint, user_company_id_user bigint, primary key (nip)) engine=InnoDB
create table company_advertisement_company (company_nip bigint not null, advertisement_company_id_advertisement bigint not null) engine=InnoDB
create table company_applications_company (company_nip bigint not null, applications_company_id_application bigint not null) engine=InnoDB
create table company_message_enties_company (company_nip bigint not null, message_enties_company_id_message bigint not null) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, cv_customer_idcv bigint, user_customer_id_user bigint, primary key (id_customer)) engine=InnoDB
create table customer_applications_customer (customer_id_customer bigint not null, applications_customer_id_application bigint not null) engine=InnoDB
create table customer_certificates_customer (customer_id_customer bigint not null, certificates_customer_id_certificate bigint not null) engine=InnoDB
create table customer_courses_customer (customer_id_customer bigint not null, courses_customer_id_course bigint not null) engine=InnoDB
create table customer_message_enties_customer (customer_id_customer bigint not null, message_enties_customer_id_message bigint not null) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_cv_id_customer bigint, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id_company bigint, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id_survey bigint, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), advertisement_search_id_advertisement bigint, primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_survey_nip bigint, primary key (id_survey)) engine=InnoDB
create table survey_advertisements_survey (survey_id_survey bigint not null, advertisements_survey_id_advertisement bigint not null) engine=InnoDB
create table survey_questions_survey (survey_id_survey bigint not null, questions_survey_id_question bigint not null) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, company_user_nip bigint, customer_user_id_customer bigint, primary key (id_user)) engine=InnoDB
alter table advertisement_applications_advertisement add constraint UK_t9vmg93l6xvdk2oq8td9tcccy unique (applications_advertisement_id_application)
alter table archives_advertisements_archives add constraint UK_g5peufehograuc2llcxl688qd unique (advertisements_archives_id_advertisement)
alter table company_advertisement_company add constraint UK_h5xvl2jc3lf9xsx7374upl517 unique (advertisement_company_id_advertisement)
alter table company_applications_company add constraint UK_hkt9mvu1s15qbncx00u4fohdj unique (applications_company_id_application)
alter table company_message_enties_company add constraint UK_bsh08l0m3eq0gkuht1wtuwh73 unique (message_enties_company_id_message)
alter table customer_applications_customer add constraint UK_phgoowicafg3nojh1fgx02bk1 unique (applications_customer_id_application)
alter table customer_certificates_customer add constraint UK_2j79g8838r8j5aq86tcunqstd unique (certificates_customer_id_certificate)
alter table customer_courses_customer add constraint UK_a2dox4sstw7ja05uo28vnrkjg unique (courses_customer_id_course)
alter table customer_message_enties_customer add constraint UK_p1j68rgs6aeimw5wl0dstwu2k unique (message_enties_customer_id_message)
alter table survey_advertisements_survey add constraint UK_6yxayavbjgfwqbgosarhvk9g3 unique (advertisements_survey_id_advertisement)
alter table survey_questions_survey add constraint UK_kplcsv1b2cunaahmwyyv6rdke unique (questions_survey_id_question)
alter table advertisement add constraint FK93w94eiacexpvr1mm3a8u9jpb foreign key (archives_id_archives) references archives (id_archives)
alter table advertisement add constraint FKqdmy4ppepvyvhprfm7tp4ci41 foreign key (company_id_company) references company (nip)
alter table advertisement add constraint FK4x9rvtrche09omc3euucqmeef foreign key (search_id_search) references search (id_categories_of_search)
alter table advertisement add constraint FKtddexe0pqk3tjn6456tojvmia foreign key (survey_advertisement_id_survey) references survey (id_survey)
alter table advertisement_applications_advertisement add constraint FKc4s9vvwd7tv8o6f3gnn7s8jh8 foreign key (applications_advertisement_id_application) references application (id_application)
alter table advertisement_applications_advertisement add constraint FKgqf2f0tv2y5cflamvh9p4skre foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK614e8yxe5rahjj8eaos0fviii foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK5m64be5ht8ngb1wji5trm2tku foreign key (company_id_company) references company (nip)
alter table application add constraint FKpa4d07bkmbmi0uep81cran6ma foreign key (customers_id_customers) references customer (id_customer)
alter table archives_advertisements_archives add constraint FKjoqwtgfpdyadm9gxh6atea5o3 foreign key (advertisements_archives_id_advertisement) references advertisement (id_advertisement)
alter table archives_advertisements_archives add constraint FKa0ao0tbsvj8wxpqynxtcm68dy foreign key (archives_id_archives) references archives (id_archives)
alter table certificate add constraint FK5k2f727vigkmpjvbalfy41rqa foreign key (customer_id_customer) references customer (id_customer)
alter table company add constraint FK8b5u4qxvyixxmtbrcniuajgyt foreign key (survey_company_id_survey) references survey (id_survey)
alter table company add constraint FKjrrfp81vg6l6mfmwvr8wwk73k foreign key (user_company_id_user) references user (id_user)
alter table company_advertisement_company add constraint FK6uxpm7x410lw4qscjd2su3wce foreign key (advertisement_company_id_advertisement) references advertisement (id_advertisement)
alter table company_advertisement_company add constraint FKra6ropf3ni6y03ea3x6r3wuli foreign key (company_nip) references company (nip)
alter table company_applications_company add constraint FK1j3yr7se7ermskwkixtn6oa8n foreign key (applications_company_id_application) references application (id_application)
alter table company_applications_company add constraint FKfxqkr3cw4dllk2e98suufeebv foreign key (company_nip) references company (nip)
alter table company_message_enties_company add constraint FKi9pg89k3dt1msbn84ixos180e foreign key (message_enties_company_id_message) references message (id_message)
alter table company_message_enties_company add constraint FK8imux87k5is85fmw60dc8r9i0 foreign key (company_nip) references company (nip)
alter table course add constraint FKgxng2xf3os0e1g01yh74hqj7u foreign key (customer_id_customer) references customer (id_customer)
alter table customer add constraint FK10v30i0mmylpqt626liiimlwu foreign key (cv_customer_idcv) references cv (idcv)
alter table customer add constraint FKrlw2al5r2uvqfqejg8hnprx2v foreign key (user_customer_id_user) references user (id_user)
alter table customer_applications_customer add constraint FKq0k60bi2ucc3ifahhb5sna455 foreign key (applications_customer_id_application) references application (id_application)
alter table customer_applications_customer add constraint FKyndklb0401rg1t3rbhou45v1 foreign key (customer_id_customer) references customer (id_customer)
alter table customer_certificates_customer add constraint FKq3lln1ft0x652lf61uyavcfyf foreign key (certificates_customer_id_certificate) references certificate (id_certificate)
alter table customer_certificates_customer add constraint FKg5xmilyon2rt9w84g1xkc0v7e foreign key (customer_id_customer) references customer (id_customer)
alter table customer_courses_customer add constraint FKlv20r7wn7ea3ko61fdchlvxx7 foreign key (courses_customer_id_course) references course (id_course)
alter table customer_courses_customer add constraint FKhb89tu4g9juwomglh5o4ildkc foreign key (customer_id_customer) references customer (id_customer)
alter table customer_message_enties_customer add constraint FK87qk9mvnhk6icpj02qduw8iid foreign key (message_enties_customer_id_message) references message (id_message)
alter table customer_message_enties_customer add constraint FKk577gek8jgi7latljoc1wu4vd foreign key (customer_id_customer) references customer (id_customer)
alter table cv add constraint FKa7pc74ut0qecqa1q6mqk0dseh foreign key (customer_cv_id_customer) references customer (id_customer)
alter table message add constraint FKqoj0iksnxuy71t0d7vqnpk260 foreign key (company_id_company) references company (nip)
alter table question add constraint FK322vu14ev6wxov2dfsqkpxnl4 foreign key (survey_id_survey) references survey (id_survey)
alter table search add constraint FKpqchuntykbw6f2dowv9mfjail foreign key (advertisement_search_id_advertisement) references advertisement (id_advertisement)
alter table survey add constraint FKa3is5ghk0lo9udagkinrv4v9v foreign key (company_survey_nip) references company (nip)
alter table survey_advertisements_survey add constraint FKc9moy3goxk1f3rpyg8w7ar8tl foreign key (advertisements_survey_id_advertisement) references advertisement (id_advertisement)
alter table survey_advertisements_survey add constraint FKjpax6hmj6lkrwhx3u1yghkykw foreign key (survey_id_survey) references survey (id_survey)
alter table survey_questions_survey add constraint FKadxkmy2ncqpq90bcdo8rnx7s5 foreign key (questions_survey_id_question) references question (id_question)
alter table survey_questions_survey add constraint FKgxo63ukoi0sga3gfw7smijnf3 foreign key (survey_id_survey) references survey (id_survey)
alter table user add constraint FKearmmhtje53d5oqwixkfmuyky foreign key (company_user_nip) references company (nip)
alter table user add constraint FKq248jm9qs5dxdka1bj4aewju4 foreign key (customer_user_id_customer) references customer (id_customer)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), archives_id_archives bigint, company_id_company bigint, search_id_search bigint, survey_advertisement_id_survey bigint, primary key (id_advertisement)) engine=InnoDB
create table advertisement_applications_advertisement (advertisement_id_advertisement bigint not null, applications_advertisement_id_application bigint not null) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id_advertisement bigint, company_id_company bigint, customers_id_customers bigint, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table archives_advertisements_archives (archives_id_archives bigint not null, advertisements_archives_id_advertisement bigint not null) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, survey_company_id_survey bigint, user_company_id_user bigint, primary key (nip)) engine=InnoDB
create table company_advertisement_company (company_nip bigint not null, advertisement_company_id_advertisement bigint not null) engine=InnoDB
create table company_applications_company (company_nip bigint not null, applications_company_id_application bigint not null) engine=InnoDB
create table company_message_enties_company (company_nip bigint not null, message_enties_company_id_message bigint not null) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, cv_customer_idcv bigint, user_customer_id_user bigint, primary key (id_customer)) engine=InnoDB
create table customer_applications_customer (customer_id_customer bigint not null, applications_customer_id_application bigint not null) engine=InnoDB
create table customer_certificates_customer (customer_id_customer bigint not null, certificates_customer_id_certificate bigint not null) engine=InnoDB
create table customer_courses_customer (customer_id_customer bigint not null, courses_customer_id_course bigint not null) engine=InnoDB
create table customer_message_enties_customer (customer_id_customer bigint not null, message_enties_customer_id_message bigint not null) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_cv_id_customer bigint, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id_company bigint, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id_survey bigint, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), advertisement_search_id_advertisement bigint, primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_survey_nip bigint, primary key (id_survey)) engine=InnoDB
create table survey_advertisements_survey (survey_id_survey bigint not null, advertisements_survey_id_advertisement bigint not null) engine=InnoDB
create table survey_questions_survey (survey_id_survey bigint not null, questions_survey_id_question bigint not null) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, company_user_nip bigint, customer_user_id_customer bigint, primary key (id_user)) engine=InnoDB
alter table advertisement_applications_advertisement add constraint UK_t9vmg93l6xvdk2oq8td9tcccy unique (applications_advertisement_id_application)
alter table archives_advertisements_archives add constraint UK_g5peufehograuc2llcxl688qd unique (advertisements_archives_id_advertisement)
alter table company_advertisement_company add constraint UK_h5xvl2jc3lf9xsx7374upl517 unique (advertisement_company_id_advertisement)
alter table company_applications_company add constraint UK_hkt9mvu1s15qbncx00u4fohdj unique (applications_company_id_application)
alter table company_message_enties_company add constraint UK_bsh08l0m3eq0gkuht1wtuwh73 unique (message_enties_company_id_message)
alter table customer_applications_customer add constraint UK_phgoowicafg3nojh1fgx02bk1 unique (applications_customer_id_application)
alter table customer_certificates_customer add constraint UK_2j79g8838r8j5aq86tcunqstd unique (certificates_customer_id_certificate)
alter table customer_courses_customer add constraint UK_a2dox4sstw7ja05uo28vnrkjg unique (courses_customer_id_course)
alter table customer_message_enties_customer add constraint UK_p1j68rgs6aeimw5wl0dstwu2k unique (message_enties_customer_id_message)
alter table survey_advertisements_survey add constraint UK_6yxayavbjgfwqbgosarhvk9g3 unique (advertisements_survey_id_advertisement)
alter table survey_questions_survey add constraint UK_kplcsv1b2cunaahmwyyv6rdke unique (questions_survey_id_question)
alter table advertisement add constraint FK93w94eiacexpvr1mm3a8u9jpb foreign key (archives_id_archives) references archives (id_archives)
alter table advertisement add constraint FKqdmy4ppepvyvhprfm7tp4ci41 foreign key (company_id_company) references company (nip)
alter table advertisement add constraint FK4x9rvtrche09omc3euucqmeef foreign key (search_id_search) references search (id_categories_of_search)
alter table advertisement add constraint FKtddexe0pqk3tjn6456tojvmia foreign key (survey_advertisement_id_survey) references survey (id_survey)
alter table advertisement_applications_advertisement add constraint FKc4s9vvwd7tv8o6f3gnn7s8jh8 foreign key (applications_advertisement_id_application) references application (id_application)
alter table advertisement_applications_advertisement add constraint FKgqf2f0tv2y5cflamvh9p4skre foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK614e8yxe5rahjj8eaos0fviii foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK5m64be5ht8ngb1wji5trm2tku foreign key (company_id_company) references company (nip)
alter table application add constraint FKpa4d07bkmbmi0uep81cran6ma foreign key (customers_id_customers) references customer (id_customer)
alter table archives_advertisements_archives add constraint FKjoqwtgfpdyadm9gxh6atea5o3 foreign key (advertisements_archives_id_advertisement) references advertisement (id_advertisement)
alter table archives_advertisements_archives add constraint FKa0ao0tbsvj8wxpqynxtcm68dy foreign key (archives_id_archives) references archives (id_archives)
alter table certificate add constraint FK5k2f727vigkmpjvbalfy41rqa foreign key (customer_id_customer) references customer (id_customer)
alter table company add constraint FK8b5u4qxvyixxmtbrcniuajgyt foreign key (survey_company_id_survey) references survey (id_survey)
alter table company add constraint FKjrrfp81vg6l6mfmwvr8wwk73k foreign key (user_company_id_user) references user (id_user)
alter table company_advertisement_company add constraint FK6uxpm7x410lw4qscjd2su3wce foreign key (advertisement_company_id_advertisement) references advertisement (id_advertisement)
alter table company_advertisement_company add constraint FKra6ropf3ni6y03ea3x6r3wuli foreign key (company_nip) references company (nip)
alter table company_applications_company add constraint FK1j3yr7se7ermskwkixtn6oa8n foreign key (applications_company_id_application) references application (id_application)
alter table company_applications_company add constraint FKfxqkr3cw4dllk2e98suufeebv foreign key (company_nip) references company (nip)
alter table company_message_enties_company add constraint FKi9pg89k3dt1msbn84ixos180e foreign key (message_enties_company_id_message) references message (id_message)
alter table company_message_enties_company add constraint FK8imux87k5is85fmw60dc8r9i0 foreign key (company_nip) references company (nip)
alter table course add constraint FKgxng2xf3os0e1g01yh74hqj7u foreign key (customer_id_customer) references customer (id_customer)
alter table customer add constraint FK10v30i0mmylpqt626liiimlwu foreign key (cv_customer_idcv) references cv (idcv)
alter table customer add constraint FKrlw2al5r2uvqfqejg8hnprx2v foreign key (user_customer_id_user) references user (id_user)
alter table customer_applications_customer add constraint FKq0k60bi2ucc3ifahhb5sna455 foreign key (applications_customer_id_application) references application (id_application)
alter table customer_applications_customer add constraint FKyndklb0401rg1t3rbhou45v1 foreign key (customer_id_customer) references customer (id_customer)
alter table customer_certificates_customer add constraint FKq3lln1ft0x652lf61uyavcfyf foreign key (certificates_customer_id_certificate) references certificate (id_certificate)
alter table customer_certificates_customer add constraint FKg5xmilyon2rt9w84g1xkc0v7e foreign key (customer_id_customer) references customer (id_customer)
alter table customer_courses_customer add constraint FKlv20r7wn7ea3ko61fdchlvxx7 foreign key (courses_customer_id_course) references course (id_course)
alter table customer_courses_customer add constraint FKhb89tu4g9juwomglh5o4ildkc foreign key (customer_id_customer) references customer (id_customer)
alter table customer_message_enties_customer add constraint FK87qk9mvnhk6icpj02qduw8iid foreign key (message_enties_customer_id_message) references message (id_message)
alter table customer_message_enties_customer add constraint FKk577gek8jgi7latljoc1wu4vd foreign key (customer_id_customer) references customer (id_customer)
alter table cv add constraint FKa7pc74ut0qecqa1q6mqk0dseh foreign key (customer_cv_id_customer) references customer (id_customer)
alter table message add constraint FKqoj0iksnxuy71t0d7vqnpk260 foreign key (company_id_company) references company (nip)
alter table question add constraint FK322vu14ev6wxov2dfsqkpxnl4 foreign key (survey_id_survey) references survey (id_survey)
alter table search add constraint FKpqchuntykbw6f2dowv9mfjail foreign key (advertisement_search_id_advertisement) references advertisement (id_advertisement)
alter table survey add constraint FKa3is5ghk0lo9udagkinrv4v9v foreign key (company_survey_nip) references company (nip)
alter table survey_advertisements_survey add constraint FKc9moy3goxk1f3rpyg8w7ar8tl foreign key (advertisements_survey_id_advertisement) references advertisement (id_advertisement)
alter table survey_advertisements_survey add constraint FKjpax6hmj6lkrwhx3u1yghkykw foreign key (survey_id_survey) references survey (id_survey)
alter table survey_questions_survey add constraint FKadxkmy2ncqpq90bcdo8rnx7s5 foreign key (questions_survey_id_question) references question (id_question)
alter table survey_questions_survey add constraint FKgxo63ukoi0sga3gfw7smijnf3 foreign key (survey_id_survey) references survey (id_survey)
alter table user add constraint FKearmmhtje53d5oqwixkfmuyky foreign key (company_user_nip) references company (nip)
alter table user add constraint FKq248jm9qs5dxdka1bj4aewju4 foreign key (customer_user_id_customer) references customer (id_customer)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), archives_advertisements_archives bigint, company_id_company bigint, search_id_search bigint, survey_advertisement_id_survey bigint, primary key (id_advertisement)) engine=InnoDB
create table advertisement_applications_advertisement (advertisement_id_advertisement bigint not null, applications_advertisement_id_application bigint not null) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id_advertisement bigint, company_id_company bigint, customers_id_customers bigint, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table archives_advertisements_archives (archives_id_archives bigint not null, advertisements_archives_id_advertisement bigint not null) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, survey_company_id_survey bigint, user_company_id_user bigint, primary key (nip)) engine=InnoDB
create table company_advertisement_company (company_nip bigint not null, advertisement_company_id_advertisement bigint not null) engine=InnoDB
create table company_applications_company (company_nip bigint not null, applications_company_id_application bigint not null) engine=InnoDB
create table company_message_enties_company (company_nip bigint not null, message_enties_company_id_message bigint not null) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, cv_customer_idcv bigint, user_customer_id_user bigint, primary key (id_customer)) engine=InnoDB
create table customer_applications_customer (customer_id_customer bigint not null, applications_customer_id_application bigint not null) engine=InnoDB
create table customer_certificates_customer (customer_id_customer bigint not null, certificates_customer_id_certificate bigint not null) engine=InnoDB
create table customer_courses_customer (customer_id_customer bigint not null, courses_customer_id_course bigint not null) engine=InnoDB
create table customer_message_enties_customer (customer_id_customer bigint not null, message_enties_customer_id_message bigint not null) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_cv_id_customer bigint, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id_company bigint, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id_survey bigint, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), advertisement_search_id_advertisement bigint, primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_survey_nip bigint, primary key (id_survey)) engine=InnoDB
create table survey_advertisements_survey (survey_id_survey bigint not null, advertisements_survey_id_advertisement bigint not null) engine=InnoDB
create table survey_questions_survey (survey_id_survey bigint not null, questions_survey_id_question bigint not null) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, company_user_nip bigint, customer_user_id_customer bigint, primary key (id_user)) engine=InnoDB
alter table advertisement_applications_advertisement add constraint UK_t9vmg93l6xvdk2oq8td9tcccy unique (applications_advertisement_id_application)
alter table archives_advertisements_archives add constraint UK_g5peufehograuc2llcxl688qd unique (advertisements_archives_id_advertisement)
alter table company_advertisement_company add constraint UK_h5xvl2jc3lf9xsx7374upl517 unique (advertisement_company_id_advertisement)
alter table company_applications_company add constraint UK_hkt9mvu1s15qbncx00u4fohdj unique (applications_company_id_application)
alter table company_message_enties_company add constraint UK_bsh08l0m3eq0gkuht1wtuwh73 unique (message_enties_company_id_message)
alter table customer_applications_customer add constraint UK_phgoowicafg3nojh1fgx02bk1 unique (applications_customer_id_application)
alter table customer_certificates_customer add constraint UK_2j79g8838r8j5aq86tcunqstd unique (certificates_customer_id_certificate)
alter table customer_courses_customer add constraint UK_a2dox4sstw7ja05uo28vnrkjg unique (courses_customer_id_course)
alter table customer_message_enties_customer add constraint UK_p1j68rgs6aeimw5wl0dstwu2k unique (message_enties_customer_id_message)
alter table survey_advertisements_survey add constraint UK_6yxayavbjgfwqbgosarhvk9g3 unique (advertisements_survey_id_advertisement)
alter table survey_questions_survey add constraint UK_kplcsv1b2cunaahmwyyv6rdke unique (questions_survey_id_question)
alter table advertisement add constraint FKe9j9svq440l1imuu19etpt59y foreign key (archives_advertisements_archives) references archives (id_archives)
alter table advertisement add constraint FKqdmy4ppepvyvhprfm7tp4ci41 foreign key (company_id_company) references company (nip)
alter table advertisement add constraint FK4x9rvtrche09omc3euucqmeef foreign key (search_id_search) references search (id_categories_of_search)
alter table advertisement add constraint FKtddexe0pqk3tjn6456tojvmia foreign key (survey_advertisement_id_survey) references survey (id_survey)
alter table advertisement_applications_advertisement add constraint FKc4s9vvwd7tv8o6f3gnn7s8jh8 foreign key (applications_advertisement_id_application) references application (id_application)
alter table advertisement_applications_advertisement add constraint FKgqf2f0tv2y5cflamvh9p4skre foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK614e8yxe5rahjj8eaos0fviii foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK5m64be5ht8ngb1wji5trm2tku foreign key (company_id_company) references company (nip)
alter table application add constraint FKpa4d07bkmbmi0uep81cran6ma foreign key (customers_id_customers) references customer (id_customer)
alter table archives_advertisements_archives add constraint FKjoqwtgfpdyadm9gxh6atea5o3 foreign key (advertisements_archives_id_advertisement) references advertisement (id_advertisement)
alter table archives_advertisements_archives add constraint FKa0ao0tbsvj8wxpqynxtcm68dy foreign key (archives_id_archives) references archives (id_archives)
alter table certificate add constraint FK5k2f727vigkmpjvbalfy41rqa foreign key (customer_id_customer) references customer (id_customer)
alter table company add constraint FK8b5u4qxvyixxmtbrcniuajgyt foreign key (survey_company_id_survey) references survey (id_survey)
alter table company add constraint FKjrrfp81vg6l6mfmwvr8wwk73k foreign key (user_company_id_user) references user (id_user)
alter table company_advertisement_company add constraint FK6uxpm7x410lw4qscjd2su3wce foreign key (advertisement_company_id_advertisement) references advertisement (id_advertisement)
alter table company_advertisement_company add constraint FKra6ropf3ni6y03ea3x6r3wuli foreign key (company_nip) references company (nip)
alter table company_applications_company add constraint FK1j3yr7se7ermskwkixtn6oa8n foreign key (applications_company_id_application) references application (id_application)
alter table company_applications_company add constraint FKfxqkr3cw4dllk2e98suufeebv foreign key (company_nip) references company (nip)
alter table company_message_enties_company add constraint FKi9pg89k3dt1msbn84ixos180e foreign key (message_enties_company_id_message) references message (id_message)
alter table company_message_enties_company add constraint FK8imux87k5is85fmw60dc8r9i0 foreign key (company_nip) references company (nip)
alter table course add constraint FKgxng2xf3os0e1g01yh74hqj7u foreign key (customer_id_customer) references customer (id_customer)
alter table customer add constraint FK10v30i0mmylpqt626liiimlwu foreign key (cv_customer_idcv) references cv (idcv)
alter table customer add constraint FKrlw2al5r2uvqfqejg8hnprx2v foreign key (user_customer_id_user) references user (id_user)
alter table customer_applications_customer add constraint FKq0k60bi2ucc3ifahhb5sna455 foreign key (applications_customer_id_application) references application (id_application)
alter table customer_applications_customer add constraint FKyndklb0401rg1t3rbhou45v1 foreign key (customer_id_customer) references customer (id_customer)
alter table customer_certificates_customer add constraint FKq3lln1ft0x652lf61uyavcfyf foreign key (certificates_customer_id_certificate) references certificate (id_certificate)
alter table customer_certificates_customer add constraint FKg5xmilyon2rt9w84g1xkc0v7e foreign key (customer_id_customer) references customer (id_customer)
alter table customer_courses_customer add constraint FKlv20r7wn7ea3ko61fdchlvxx7 foreign key (courses_customer_id_course) references course (id_course)
alter table customer_courses_customer add constraint FKhb89tu4g9juwomglh5o4ildkc foreign key (customer_id_customer) references customer (id_customer)
alter table customer_message_enties_customer add constraint FK87qk9mvnhk6icpj02qduw8iid foreign key (message_enties_customer_id_message) references message (id_message)
alter table customer_message_enties_customer add constraint FKk577gek8jgi7latljoc1wu4vd foreign key (customer_id_customer) references customer (id_customer)
alter table cv add constraint FKa7pc74ut0qecqa1q6mqk0dseh foreign key (customer_cv_id_customer) references customer (id_customer)
alter table message add constraint FKqoj0iksnxuy71t0d7vqnpk260 foreign key (company_id_company) references company (nip)
alter table question add constraint FK322vu14ev6wxov2dfsqkpxnl4 foreign key (survey_id_survey) references survey (id_survey)
alter table search add constraint FKpqchuntykbw6f2dowv9mfjail foreign key (advertisement_search_id_advertisement) references advertisement (id_advertisement)
alter table survey add constraint FKa3is5ghk0lo9udagkinrv4v9v foreign key (company_survey_nip) references company (nip)
alter table survey_advertisements_survey add constraint FKc9moy3goxk1f3rpyg8w7ar8tl foreign key (advertisements_survey_id_advertisement) references advertisement (id_advertisement)
alter table survey_advertisements_survey add constraint FKjpax6hmj6lkrwhx3u1yghkykw foreign key (survey_id_survey) references survey (id_survey)
alter table survey_questions_survey add constraint FKadxkmy2ncqpq90bcdo8rnx7s5 foreign key (questions_survey_id_question) references question (id_question)
alter table survey_questions_survey add constraint FKgxo63ukoi0sga3gfw7smijnf3 foreign key (survey_id_survey) references survey (id_survey)
alter table user add constraint FKearmmhtje53d5oqwixkfmuyky foreign key (company_user_nip) references company (nip)
alter table user add constraint FKq248jm9qs5dxdka1bj4aewju4 foreign key (customer_user_id_customer) references customer (id_customer)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), archives_id_archives bigint, company_id_company bigint, search_id_search bigint, survey_advertisement_id_survey bigint, primary key (id_advertisement)) engine=InnoDB
create table advertisement_applications_advertisement (advertisement_id_advertisement bigint not null, applications_advertisement_id_application bigint not null) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id_advertisement bigint, company_id_company bigint, customers_id_customers bigint, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table archives_advertisements_archives (archives_id_archives bigint not null, advertisements_archives_id_advertisement bigint not null) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, survey_company_id_survey bigint, user_company_id_user bigint, primary key (nip)) engine=InnoDB
create table company_advertisement_company (company_nip bigint not null, advertisement_company_id_advertisement bigint not null) engine=InnoDB
create table company_applications_company (company_nip bigint not null, applications_company_id_application bigint not null) engine=InnoDB
create table company_message_enties_company (company_nip bigint not null, message_enties_company_id_message bigint not null) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, cv_customer_idcv bigint, user_customer_id_user bigint, primary key (id_customer)) engine=InnoDB
create table customer_applications_customer (customer_id_customer bigint not null, applications_customer_id_application bigint not null) engine=InnoDB
create table customer_certificates_customer (customer_id_customer bigint not null, certificates_customer_id_certificate bigint not null) engine=InnoDB
create table customer_courses_customer (customer_id_customer bigint not null, courses_customer_id_course bigint not null) engine=InnoDB
create table customer_message_enties_customer (customer_id_customer bigint not null, message_enties_customer_id_message bigint not null) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_cv_id_customer bigint, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id_company bigint, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id_survey bigint, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), advertisement_search_id_advertisement bigint, primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_survey_nip bigint, primary key (id_survey)) engine=InnoDB
create table survey_advertisements_survey (survey_id_survey bigint not null, advertisements_survey_id_advertisement bigint not null) engine=InnoDB
create table survey_questions_survey (survey_id_survey bigint not null, questions_survey_id_question bigint not null) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, company_user_nip bigint, customer_user_id_customer bigint, primary key (id_user)) engine=InnoDB
alter table advertisement_applications_advertisement add constraint UK_t9vmg93l6xvdk2oq8td9tcccy unique (applications_advertisement_id_application)
alter table archives_advertisements_archives add constraint UK_g5peufehograuc2llcxl688qd unique (advertisements_archives_id_advertisement)
alter table company_advertisement_company add constraint UK_h5xvl2jc3lf9xsx7374upl517 unique (advertisement_company_id_advertisement)
alter table company_applications_company add constraint UK_hkt9mvu1s15qbncx00u4fohdj unique (applications_company_id_application)
alter table company_message_enties_company add constraint UK_bsh08l0m3eq0gkuht1wtuwh73 unique (message_enties_company_id_message)
alter table customer_applications_customer add constraint UK_phgoowicafg3nojh1fgx02bk1 unique (applications_customer_id_application)
alter table customer_certificates_customer add constraint UK_2j79g8838r8j5aq86tcunqstd unique (certificates_customer_id_certificate)
alter table customer_courses_customer add constraint UK_a2dox4sstw7ja05uo28vnrkjg unique (courses_customer_id_course)
alter table customer_message_enties_customer add constraint UK_p1j68rgs6aeimw5wl0dstwu2k unique (message_enties_customer_id_message)
alter table survey_advertisements_survey add constraint UK_6yxayavbjgfwqbgosarhvk9g3 unique (advertisements_survey_id_advertisement)
alter table survey_questions_survey add constraint UK_kplcsv1b2cunaahmwyyv6rdke unique (questions_survey_id_question)
alter table advertisement add constraint FK93w94eiacexpvr1mm3a8u9jpb foreign key (archives_id_archives) references archives (id_archives)
alter table advertisement add constraint FKqdmy4ppepvyvhprfm7tp4ci41 foreign key (company_id_company) references company (nip)
alter table advertisement add constraint FK4x9rvtrche09omc3euucqmeef foreign key (search_id_search) references search (id_categories_of_search)
alter table advertisement add constraint FKtddexe0pqk3tjn6456tojvmia foreign key (survey_advertisement_id_survey) references survey (id_survey)
alter table advertisement_applications_advertisement add constraint FKc4s9vvwd7tv8o6f3gnn7s8jh8 foreign key (applications_advertisement_id_application) references application (id_application)
alter table advertisement_applications_advertisement add constraint FKgqf2f0tv2y5cflamvh9p4skre foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK614e8yxe5rahjj8eaos0fviii foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK5m64be5ht8ngb1wji5trm2tku foreign key (company_id_company) references company (nip)
alter table application add constraint FKpa4d07bkmbmi0uep81cran6ma foreign key (customers_id_customers) references customer (id_customer)
alter table archives_advertisements_archives add constraint FKjoqwtgfpdyadm9gxh6atea5o3 foreign key (advertisements_archives_id_advertisement) references advertisement (id_advertisement)
alter table archives_advertisements_archives add constraint FKa0ao0tbsvj8wxpqynxtcm68dy foreign key (archives_id_archives) references archives (id_archives)
alter table certificate add constraint FK5k2f727vigkmpjvbalfy41rqa foreign key (customer_id_customer) references customer (id_customer)
alter table company add constraint FK8b5u4qxvyixxmtbrcniuajgyt foreign key (survey_company_id_survey) references survey (id_survey)
alter table company add constraint FKjrrfp81vg6l6mfmwvr8wwk73k foreign key (user_company_id_user) references user (id_user)
alter table company_advertisement_company add constraint FK6uxpm7x410lw4qscjd2su3wce foreign key (advertisement_company_id_advertisement) references advertisement (id_advertisement)
alter table company_advertisement_company add constraint FKra6ropf3ni6y03ea3x6r3wuli foreign key (company_nip) references company (nip)
alter table company_applications_company add constraint FK1j3yr7se7ermskwkixtn6oa8n foreign key (applications_company_id_application) references application (id_application)
alter table company_applications_company add constraint FKfxqkr3cw4dllk2e98suufeebv foreign key (company_nip) references company (nip)
alter table company_message_enties_company add constraint FKi9pg89k3dt1msbn84ixos180e foreign key (message_enties_company_id_message) references message (id_message)
alter table company_message_enties_company add constraint FK8imux87k5is85fmw60dc8r9i0 foreign key (company_nip) references company (nip)
alter table course add constraint FKgxng2xf3os0e1g01yh74hqj7u foreign key (customer_id_customer) references customer (id_customer)
alter table customer add constraint FK10v30i0mmylpqt626liiimlwu foreign key (cv_customer_idcv) references cv (idcv)
alter table customer add constraint FKrlw2al5r2uvqfqejg8hnprx2v foreign key (user_customer_id_user) references user (id_user)
alter table customer_applications_customer add constraint FKq0k60bi2ucc3ifahhb5sna455 foreign key (applications_customer_id_application) references application (id_application)
alter table customer_applications_customer add constraint FKyndklb0401rg1t3rbhou45v1 foreign key (customer_id_customer) references customer (id_customer)
alter table customer_certificates_customer add constraint FKq3lln1ft0x652lf61uyavcfyf foreign key (certificates_customer_id_certificate) references certificate (id_certificate)
alter table customer_certificates_customer add constraint FKg5xmilyon2rt9w84g1xkc0v7e foreign key (customer_id_customer) references customer (id_customer)
alter table customer_courses_customer add constraint FKlv20r7wn7ea3ko61fdchlvxx7 foreign key (courses_customer_id_course) references course (id_course)
alter table customer_courses_customer add constraint FKhb89tu4g9juwomglh5o4ildkc foreign key (customer_id_customer) references customer (id_customer)
alter table customer_message_enties_customer add constraint FK87qk9mvnhk6icpj02qduw8iid foreign key (message_enties_customer_id_message) references message (id_message)
alter table customer_message_enties_customer add constraint FKk577gek8jgi7latljoc1wu4vd foreign key (customer_id_customer) references customer (id_customer)
alter table cv add constraint FKa7pc74ut0qecqa1q6mqk0dseh foreign key (customer_cv_id_customer) references customer (id_customer)
alter table message add constraint FKqoj0iksnxuy71t0d7vqnpk260 foreign key (company_id_company) references company (nip)
alter table question add constraint FK322vu14ev6wxov2dfsqkpxnl4 foreign key (survey_id_survey) references survey (id_survey)
alter table search add constraint FKpqchuntykbw6f2dowv9mfjail foreign key (advertisement_search_id_advertisement) references advertisement (id_advertisement)
alter table survey add constraint FKa3is5ghk0lo9udagkinrv4v9v foreign key (company_survey_nip) references company (nip)
alter table survey_advertisements_survey add constraint FKc9moy3goxk1f3rpyg8w7ar8tl foreign key (advertisements_survey_id_advertisement) references advertisement (id_advertisement)
alter table survey_advertisements_survey add constraint FKjpax6hmj6lkrwhx3u1yghkykw foreign key (survey_id_survey) references survey (id_survey)
alter table survey_questions_survey add constraint FKadxkmy2ncqpq90bcdo8rnx7s5 foreign key (questions_survey_id_question) references question (id_question)
alter table survey_questions_survey add constraint FKgxo63ukoi0sga3gfw7smijnf3 foreign key (survey_id_survey) references survey (id_survey)
alter table user add constraint FKearmmhtje53d5oqwixkfmuyky foreign key (company_user_nip) references company (nip)
alter table user add constraint FKq248jm9qs5dxdka1bj4aewju4 foreign key (customer_user_id_customer) references customer (id_customer)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), archives_id_archives bigint, company_id_company bigint, search_id_search bigint, survey_advertisement_id_survey bigint, primary key (id_advertisement)) engine=InnoDB
create table advertisement_applications_advertisement (advertisement_id_advertisement bigint not null, applications_advertisement_id_application bigint not null) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id_advertisement bigint, company_id_company bigint, customers_id_customers bigint, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table archives_advertisements_archives (archives_id_archives bigint not null, advertisements_archives_id_advertisement bigint not null) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, survey_company_id_survey bigint, user_company_id_user bigint, primary key (nip)) engine=InnoDB
create table company_advertisement_company (company_nip bigint not null, advertisement_company_id_advertisement bigint not null) engine=InnoDB
create table company_applications_company (company_nip bigint not null, applications_company_id_application bigint not null) engine=InnoDB
create table company_message_enties_company (company_nip bigint not null, message_enties_company_id_message bigint not null) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, cv_customer_idcv bigint, user_customer_id_user bigint, primary key (id_customer)) engine=InnoDB
create table customer_applications_customer (customer_id_customer bigint not null, applications_customer_id_application bigint not null) engine=InnoDB
create table customer_certificates_customer (customer_id_customer bigint not null, certificates_customer_id_certificate bigint not null) engine=InnoDB
create table customer_courses_customer (customer_id_customer bigint not null, courses_customer_id_course bigint not null) engine=InnoDB
create table customer_message_enties_customer (customer_id_customer bigint not null, message_enties_customer_id_message bigint not null) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_cv_id_customer bigint, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id_company bigint, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id_survey bigint, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), advertisement_search_id_advertisement bigint, primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_survey_nip bigint, primary key (id_survey)) engine=InnoDB
create table survey_advertisements_survey (survey_id_survey bigint not null, advertisements_survey_id_advertisement bigint not null) engine=InnoDB
create table survey_questions_survey (survey_id_survey bigint not null, questions_survey_id_question bigint not null) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, company_user_nip bigint, customer_user_id_customer bigint, primary key (id_user)) engine=InnoDB
alter table advertisement_applications_advertisement add constraint UK_t9vmg93l6xvdk2oq8td9tcccy unique (applications_advertisement_id_application)
alter table archives_advertisements_archives add constraint UK_g5peufehograuc2llcxl688qd unique (advertisements_archives_id_advertisement)
alter table company_advertisement_company add constraint UK_h5xvl2jc3lf9xsx7374upl517 unique (advertisement_company_id_advertisement)
alter table company_applications_company add constraint UK_hkt9mvu1s15qbncx00u4fohdj unique (applications_company_id_application)
alter table company_message_enties_company add constraint UK_bsh08l0m3eq0gkuht1wtuwh73 unique (message_enties_company_id_message)
alter table customer_applications_customer add constraint UK_phgoowicafg3nojh1fgx02bk1 unique (applications_customer_id_application)
alter table customer_certificates_customer add constraint UK_2j79g8838r8j5aq86tcunqstd unique (certificates_customer_id_certificate)
alter table customer_courses_customer add constraint UK_a2dox4sstw7ja05uo28vnrkjg unique (courses_customer_id_course)
alter table customer_message_enties_customer add constraint UK_p1j68rgs6aeimw5wl0dstwu2k unique (message_enties_customer_id_message)
alter table survey_advertisements_survey add constraint UK_6yxayavbjgfwqbgosarhvk9g3 unique (advertisements_survey_id_advertisement)
alter table survey_questions_survey add constraint UK_kplcsv1b2cunaahmwyyv6rdke unique (questions_survey_id_question)
alter table advertisement add constraint FK93w94eiacexpvr1mm3a8u9jpb foreign key (archives_id_archives) references archives (id_archives)
alter table advertisement add constraint FKqdmy4ppepvyvhprfm7tp4ci41 foreign key (company_id_company) references company (nip)
alter table advertisement add constraint FK4x9rvtrche09omc3euucqmeef foreign key (search_id_search) references search (id_categories_of_search)
alter table advertisement add constraint FKtddexe0pqk3tjn6456tojvmia foreign key (survey_advertisement_id_survey) references survey (id_survey)
alter table advertisement_applications_advertisement add constraint FKc4s9vvwd7tv8o6f3gnn7s8jh8 foreign key (applications_advertisement_id_application) references application (id_application)
alter table advertisement_applications_advertisement add constraint FKgqf2f0tv2y5cflamvh9p4skre foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK614e8yxe5rahjj8eaos0fviii foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK5m64be5ht8ngb1wji5trm2tku foreign key (company_id_company) references company (nip)
alter table application add constraint FKpa4d07bkmbmi0uep81cran6ma foreign key (customers_id_customers) references customer (id_customer)
alter table archives_advertisements_archives add constraint FKjoqwtgfpdyadm9gxh6atea5o3 foreign key (advertisements_archives_id_advertisement) references advertisement (id_advertisement)
alter table archives_advertisements_archives add constraint FKa0ao0tbsvj8wxpqynxtcm68dy foreign key (archives_id_archives) references archives (id_archives)
alter table certificate add constraint FK5k2f727vigkmpjvbalfy41rqa foreign key (customer_id_customer) references customer (id_customer)
alter table company add constraint FK8b5u4qxvyixxmtbrcniuajgyt foreign key (survey_company_id_survey) references survey (id_survey)
alter table company add constraint FKjrrfp81vg6l6mfmwvr8wwk73k foreign key (user_company_id_user) references user (id_user)
alter table company_advertisement_company add constraint FK6uxpm7x410lw4qscjd2su3wce foreign key (advertisement_company_id_advertisement) references advertisement (id_advertisement)
alter table company_advertisement_company add constraint FKra6ropf3ni6y03ea3x6r3wuli foreign key (company_nip) references company (nip)
alter table company_applications_company add constraint FK1j3yr7se7ermskwkixtn6oa8n foreign key (applications_company_id_application) references application (id_application)
alter table company_applications_company add constraint FKfxqkr3cw4dllk2e98suufeebv foreign key (company_nip) references company (nip)
alter table company_message_enties_company add constraint FKi9pg89k3dt1msbn84ixos180e foreign key (message_enties_company_id_message) references message (id_message)
alter table company_message_enties_company add constraint FK8imux87k5is85fmw60dc8r9i0 foreign key (company_nip) references company (nip)
alter table course add constraint FKgxng2xf3os0e1g01yh74hqj7u foreign key (customer_id_customer) references customer (id_customer)
alter table customer add constraint FK10v30i0mmylpqt626liiimlwu foreign key (cv_customer_idcv) references cv (idcv)
alter table customer add constraint FKrlw2al5r2uvqfqejg8hnprx2v foreign key (user_customer_id_user) references user (id_user)
alter table customer_applications_customer add constraint FKq0k60bi2ucc3ifahhb5sna455 foreign key (applications_customer_id_application) references application (id_application)
alter table customer_applications_customer add constraint FKyndklb0401rg1t3rbhou45v1 foreign key (customer_id_customer) references customer (id_customer)
alter table customer_certificates_customer add constraint FKq3lln1ft0x652lf61uyavcfyf foreign key (certificates_customer_id_certificate) references certificate (id_certificate)
alter table customer_certificates_customer add constraint FKg5xmilyon2rt9w84g1xkc0v7e foreign key (customer_id_customer) references customer (id_customer)
alter table customer_courses_customer add constraint FKlv20r7wn7ea3ko61fdchlvxx7 foreign key (courses_customer_id_course) references course (id_course)
alter table customer_courses_customer add constraint FKhb89tu4g9juwomglh5o4ildkc foreign key (customer_id_customer) references customer (id_customer)
alter table customer_message_enties_customer add constraint FK87qk9mvnhk6icpj02qduw8iid foreign key (message_enties_customer_id_message) references message (id_message)
alter table customer_message_enties_customer add constraint FKk577gek8jgi7latljoc1wu4vd foreign key (customer_id_customer) references customer (id_customer)
alter table cv add constraint FKa7pc74ut0qecqa1q6mqk0dseh foreign key (customer_cv_id_customer) references customer (id_customer)
alter table message add constraint FKqoj0iksnxuy71t0d7vqnpk260 foreign key (company_id_company) references company (nip)
alter table question add constraint FK322vu14ev6wxov2dfsqkpxnl4 foreign key (survey_id_survey) references survey (id_survey)
alter table search add constraint FKpqchuntykbw6f2dowv9mfjail foreign key (advertisement_search_id_advertisement) references advertisement (id_advertisement)
alter table survey add constraint FKa3is5ghk0lo9udagkinrv4v9v foreign key (company_survey_nip) references company (nip)
alter table survey_advertisements_survey add constraint FKc9moy3goxk1f3rpyg8w7ar8tl foreign key (advertisements_survey_id_advertisement) references advertisement (id_advertisement)
alter table survey_advertisements_survey add constraint FKjpax6hmj6lkrwhx3u1yghkykw foreign key (survey_id_survey) references survey (id_survey)
alter table survey_questions_survey add constraint FKadxkmy2ncqpq90bcdo8rnx7s5 foreign key (questions_survey_id_question) references question (id_question)
alter table survey_questions_survey add constraint FKgxo63ukoi0sga3gfw7smijnf3 foreign key (survey_id_survey) references survey (id_survey)
alter table user add constraint FKearmmhtje53d5oqwixkfmuyky foreign key (company_user_nip) references company (nip)
alter table user add constraint FKq248jm9qs5dxdka1bj4aewju4 foreign key (customer_user_id_customer) references customer (id_customer)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), archive_advertisement_id_archives bigint, company_id_company bigint, search_advertisement_id_categories_of_search bigint, survey_advertisement_id_survey bigint, primary key (id_advertisement)) engine=InnoDB
create table advertisement_applications_advertisement (advertisement_id_advertisement bigint not null, applications_advertisement_id_application bigint not null) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id_advertisement bigint, company_id_company bigint, customers_id_customers bigint, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, advertisement_archives_id_advertisement bigint, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, survey_company_id_survey bigint, user_company_id_user bigint, primary key (nip)) engine=InnoDB
create table company_advertisement_company (company_nip bigint not null, advertisement_company_id_advertisement bigint not null) engine=InnoDB
create table company_applications_company (company_nip bigint not null, applications_company_id_application bigint not null) engine=InnoDB
create table company_message_enties_company (company_nip bigint not null, message_enties_company_id_message bigint not null) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, cv_customer_idcv bigint, user_customer_id_user bigint, primary key (id_customer)) engine=InnoDB
create table customer_applications_customer (customer_id_customer bigint not null, applications_customer_id_application bigint not null) engine=InnoDB
create table customer_certificates_customer (customer_id_customer bigint not null, certificates_customer_id_certificate bigint not null) engine=InnoDB
create table customer_courses_customer (customer_id_customer bigint not null, courses_customer_id_course bigint not null) engine=InnoDB
create table customer_message_enties_customer (customer_id_customer bigint not null, message_enties_customer_id_message bigint not null) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_cv_id_customer bigint, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id_company bigint, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id_survey bigint, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), advertisement_search_id_advertisement bigint, primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_survey_nip bigint, primary key (id_survey)) engine=InnoDB
create table survey_advertisements_survey (survey_id_survey bigint not null, advertisements_survey_id_advertisement bigint not null) engine=InnoDB
create table survey_questions_survey (survey_id_survey bigint not null, questions_survey_id_question bigint not null) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, company_user_nip bigint, customer_user_id_customer bigint, primary key (id_user)) engine=InnoDB
alter table advertisement_applications_advertisement add constraint UK_t9vmg93l6xvdk2oq8td9tcccy unique (applications_advertisement_id_application)
alter table company_advertisement_company add constraint UK_h5xvl2jc3lf9xsx7374upl517 unique (advertisement_company_id_advertisement)
alter table company_applications_company add constraint UK_hkt9mvu1s15qbncx00u4fohdj unique (applications_company_id_application)
alter table company_message_enties_company add constraint UK_bsh08l0m3eq0gkuht1wtuwh73 unique (message_enties_company_id_message)
alter table customer_applications_customer add constraint UK_phgoowicafg3nojh1fgx02bk1 unique (applications_customer_id_application)
alter table customer_certificates_customer add constraint UK_2j79g8838r8j5aq86tcunqstd unique (certificates_customer_id_certificate)
alter table customer_courses_customer add constraint UK_a2dox4sstw7ja05uo28vnrkjg unique (courses_customer_id_course)
alter table customer_message_enties_customer add constraint UK_p1j68rgs6aeimw5wl0dstwu2k unique (message_enties_customer_id_message)
alter table survey_advertisements_survey add constraint UK_6yxayavbjgfwqbgosarhvk9g3 unique (advertisements_survey_id_advertisement)
alter table survey_questions_survey add constraint UK_kplcsv1b2cunaahmwyyv6rdke unique (questions_survey_id_question)
alter table advertisement add constraint FKgiunmpba4cimjk8llgubfe6ul foreign key (archive_advertisement_id_archives) references archives (id_archives)
alter table advertisement add constraint FKqdmy4ppepvyvhprfm7tp4ci41 foreign key (company_id_company) references company (nip)
alter table advertisement add constraint FKoy7utu8iquefodt8gwnplm9on foreign key (search_advertisement_id_categories_of_search) references search (id_categories_of_search)
alter table advertisement add constraint FKtddexe0pqk3tjn6456tojvmia foreign key (survey_advertisement_id_survey) references survey (id_survey)
alter table advertisement_applications_advertisement add constraint FKc4s9vvwd7tv8o6f3gnn7s8jh8 foreign key (applications_advertisement_id_application) references application (id_application)
alter table advertisement_applications_advertisement add constraint FKgqf2f0tv2y5cflamvh9p4skre foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK614e8yxe5rahjj8eaos0fviii foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK5m64be5ht8ngb1wji5trm2tku foreign key (company_id_company) references company (nip)
alter table application add constraint FKpa4d07bkmbmi0uep81cran6ma foreign key (customers_id_customers) references customer (id_customer)
alter table archives add constraint FKthem932fgxbj48wsdbx3ccnq foreign key (advertisement_archives_id_advertisement) references advertisement (id_advertisement)
alter table certificate add constraint FK5k2f727vigkmpjvbalfy41rqa foreign key (customer_id_customer) references customer (id_customer)
alter table company add constraint FK8b5u4qxvyixxmtbrcniuajgyt foreign key (survey_company_id_survey) references survey (id_survey)
alter table company add constraint FKjrrfp81vg6l6mfmwvr8wwk73k foreign key (user_company_id_user) references user (id_user)
alter table company_advertisement_company add constraint FK6uxpm7x410lw4qscjd2su3wce foreign key (advertisement_company_id_advertisement) references advertisement (id_advertisement)
alter table company_advertisement_company add constraint FKra6ropf3ni6y03ea3x6r3wuli foreign key (company_nip) references company (nip)
alter table company_applications_company add constraint FK1j3yr7se7ermskwkixtn6oa8n foreign key (applications_company_id_application) references application (id_application)
alter table company_applications_company add constraint FKfxqkr3cw4dllk2e98suufeebv foreign key (company_nip) references company (nip)
alter table company_message_enties_company add constraint FKi9pg89k3dt1msbn84ixos180e foreign key (message_enties_company_id_message) references message (id_message)
alter table company_message_enties_company add constraint FK8imux87k5is85fmw60dc8r9i0 foreign key (company_nip) references company (nip)
alter table course add constraint FKgxng2xf3os0e1g01yh74hqj7u foreign key (customer_id_customer) references customer (id_customer)
alter table customer add constraint FK10v30i0mmylpqt626liiimlwu foreign key (cv_customer_idcv) references cv (idcv)
alter table customer add constraint FKrlw2al5r2uvqfqejg8hnprx2v foreign key (user_customer_id_user) references user (id_user)
alter table customer_applications_customer add constraint FKq0k60bi2ucc3ifahhb5sna455 foreign key (applications_customer_id_application) references application (id_application)
alter table customer_applications_customer add constraint FKyndklb0401rg1t3rbhou45v1 foreign key (customer_id_customer) references customer (id_customer)
alter table customer_certificates_customer add constraint FKq3lln1ft0x652lf61uyavcfyf foreign key (certificates_customer_id_certificate) references certificate (id_certificate)
alter table customer_certificates_customer add constraint FKg5xmilyon2rt9w84g1xkc0v7e foreign key (customer_id_customer) references customer (id_customer)
alter table customer_courses_customer add constraint FKlv20r7wn7ea3ko61fdchlvxx7 foreign key (courses_customer_id_course) references course (id_course)
alter table customer_courses_customer add constraint FKhb89tu4g9juwomglh5o4ildkc foreign key (customer_id_customer) references customer (id_customer)
alter table customer_message_enties_customer add constraint FK87qk9mvnhk6icpj02qduw8iid foreign key (message_enties_customer_id_message) references message (id_message)
alter table customer_message_enties_customer add constraint FKk577gek8jgi7latljoc1wu4vd foreign key (customer_id_customer) references customer (id_customer)
alter table cv add constraint FKa7pc74ut0qecqa1q6mqk0dseh foreign key (customer_cv_id_customer) references customer (id_customer)
alter table message add constraint FKqoj0iksnxuy71t0d7vqnpk260 foreign key (company_id_company) references company (nip)
alter table question add constraint FK322vu14ev6wxov2dfsqkpxnl4 foreign key (survey_id_survey) references survey (id_survey)
alter table search add constraint FKpqchuntykbw6f2dowv9mfjail foreign key (advertisement_search_id_advertisement) references advertisement (id_advertisement)
alter table survey add constraint FKa3is5ghk0lo9udagkinrv4v9v foreign key (company_survey_nip) references company (nip)
alter table survey_advertisements_survey add constraint FKc9moy3goxk1f3rpyg8w7ar8tl foreign key (advertisements_survey_id_advertisement) references advertisement (id_advertisement)
alter table survey_advertisements_survey add constraint FKjpax6hmj6lkrwhx3u1yghkykw foreign key (survey_id_survey) references survey (id_survey)
alter table survey_questions_survey add constraint FKadxkmy2ncqpq90bcdo8rnx7s5 foreign key (questions_survey_id_question) references question (id_question)
alter table survey_questions_survey add constraint FKgxo63ukoi0sga3gfw7smijnf3 foreign key (survey_id_survey) references survey (id_survey)
alter table user add constraint FKearmmhtje53d5oqwixkfmuyky foreign key (company_user_nip) references company (nip)
alter table user add constraint FKq248jm9qs5dxdka1bj4aewju4 foreign key (customer_user_id_customer) references customer (id_customer)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), archive_advertisement_id_archives bigint, company_id_company bigint, search_advertisement_id_categories_of_search bigint, survey_advertisement_id_survey bigint, primary key (id_advertisement)) engine=InnoDB
create table advertisement_applications_advertisement (advertisement_id_advertisement bigint not null, applications_advertisement_id_application bigint not null) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id_advertisement bigint, company_id_company bigint, customer_id_customer bigint, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, advertisement_archives_id_advertisement bigint, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, survey_company_id_survey bigint, user_company_id_user bigint, primary key (nip)) engine=InnoDB
create table company_advertisement_company (company_nip bigint not null, advertisement_company_id_advertisement bigint not null) engine=InnoDB
create table company_applications_company (company_nip bigint not null, applications_company_id_application bigint not null) engine=InnoDB
create table company_message_enties_company (company_nip bigint not null, message_enties_company_id_message bigint not null) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, cv_customer_idcv bigint, user_customer_id_user bigint, primary key (id_customer)) engine=InnoDB
create table customer_applications_customer (customer_id_customer bigint not null, applications_customer_id_application bigint not null) engine=InnoDB
create table customer_certificates_customer (customer_id_customer bigint not null, certificates_customer_id_certificate bigint not null) engine=InnoDB
create table customer_courses_customer (customer_id_customer bigint not null, courses_customer_id_course bigint not null) engine=InnoDB
create table customer_message_enties_customer (customer_id_customer bigint not null, message_enties_customer_id_message bigint not null) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_cv_id_customer bigint, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id_company bigint, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id_survey bigint, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), advertisement_search_id_advertisement bigint, primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_survey_nip bigint, primary key (id_survey)) engine=InnoDB
create table survey_advertisements_survey (survey_id_survey bigint not null, advertisements_survey_id_advertisement bigint not null) engine=InnoDB
create table survey_questions_survey (survey_id_survey bigint not null, questions_survey_id_question bigint not null) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, company_user_nip bigint, customer_user_id_customer bigint, primary key (id_user)) engine=InnoDB
alter table advertisement_applications_advertisement add constraint UK_t9vmg93l6xvdk2oq8td9tcccy unique (applications_advertisement_id_application)
alter table company_advertisement_company add constraint UK_h5xvl2jc3lf9xsx7374upl517 unique (advertisement_company_id_advertisement)
alter table company_applications_company add constraint UK_hkt9mvu1s15qbncx00u4fohdj unique (applications_company_id_application)
alter table company_message_enties_company add constraint UK_bsh08l0m3eq0gkuht1wtuwh73 unique (message_enties_company_id_message)
alter table customer_applications_customer add constraint UK_phgoowicafg3nojh1fgx02bk1 unique (applications_customer_id_application)
alter table customer_certificates_customer add constraint UK_2j79g8838r8j5aq86tcunqstd unique (certificates_customer_id_certificate)
alter table customer_courses_customer add constraint UK_a2dox4sstw7ja05uo28vnrkjg unique (courses_customer_id_course)
alter table customer_message_enties_customer add constraint UK_p1j68rgs6aeimw5wl0dstwu2k unique (message_enties_customer_id_message)
alter table survey_advertisements_survey add constraint UK_6yxayavbjgfwqbgosarhvk9g3 unique (advertisements_survey_id_advertisement)
alter table survey_questions_survey add constraint UK_kplcsv1b2cunaahmwyyv6rdke unique (questions_survey_id_question)
alter table advertisement add constraint FKgiunmpba4cimjk8llgubfe6ul foreign key (archive_advertisement_id_archives) references archives (id_archives)
alter table advertisement add constraint FKqdmy4ppepvyvhprfm7tp4ci41 foreign key (company_id_company) references company (nip)
alter table advertisement add constraint FKoy7utu8iquefodt8gwnplm9on foreign key (search_advertisement_id_categories_of_search) references search (id_categories_of_search)
alter table advertisement add constraint FKtddexe0pqk3tjn6456tojvmia foreign key (survey_advertisement_id_survey) references survey (id_survey)
alter table advertisement_applications_advertisement add constraint FKc4s9vvwd7tv8o6f3gnn7s8jh8 foreign key (applications_advertisement_id_application) references application (id_application)
alter table advertisement_applications_advertisement add constraint FKgqf2f0tv2y5cflamvh9p4skre foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK614e8yxe5rahjj8eaos0fviii foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK5m64be5ht8ngb1wji5trm2tku foreign key (company_id_company) references company (nip)
alter table application add constraint FKklsb5byveiajqob9jpcqx37ce foreign key (customer_id_customer) references customer (id_customer)
alter table archives add constraint FKthem932fgxbj48wsdbx3ccnq foreign key (advertisement_archives_id_advertisement) references advertisement (id_advertisement)
alter table certificate add constraint FK5k2f727vigkmpjvbalfy41rqa foreign key (customer_id_customer) references customer (id_customer)
alter table company add constraint FK8b5u4qxvyixxmtbrcniuajgyt foreign key (survey_company_id_survey) references survey (id_survey)
alter table company add constraint FKjrrfp81vg6l6mfmwvr8wwk73k foreign key (user_company_id_user) references user (id_user)
alter table company_advertisement_company add constraint FK6uxpm7x410lw4qscjd2su3wce foreign key (advertisement_company_id_advertisement) references advertisement (id_advertisement)
alter table company_advertisement_company add constraint FKra6ropf3ni6y03ea3x6r3wuli foreign key (company_nip) references company (nip)
alter table company_applications_company add constraint FK1j3yr7se7ermskwkixtn6oa8n foreign key (applications_company_id_application) references application (id_application)
alter table company_applications_company add constraint FKfxqkr3cw4dllk2e98suufeebv foreign key (company_nip) references company (nip)
alter table company_message_enties_company add constraint FKi9pg89k3dt1msbn84ixos180e foreign key (message_enties_company_id_message) references message (id_message)
alter table company_message_enties_company add constraint FK8imux87k5is85fmw60dc8r9i0 foreign key (company_nip) references company (nip)
alter table course add constraint FKgxng2xf3os0e1g01yh74hqj7u foreign key (customer_id_customer) references customer (id_customer)
alter table customer add constraint FK10v30i0mmylpqt626liiimlwu foreign key (cv_customer_idcv) references cv (idcv)
alter table customer add constraint FKrlw2al5r2uvqfqejg8hnprx2v foreign key (user_customer_id_user) references user (id_user)
alter table customer_applications_customer add constraint FKq0k60bi2ucc3ifahhb5sna455 foreign key (applications_customer_id_application) references application (id_application)
alter table customer_applications_customer add constraint FKyndklb0401rg1t3rbhou45v1 foreign key (customer_id_customer) references customer (id_customer)
alter table customer_certificates_customer add constraint FKq3lln1ft0x652lf61uyavcfyf foreign key (certificates_customer_id_certificate) references certificate (id_certificate)
alter table customer_certificates_customer add constraint FKg5xmilyon2rt9w84g1xkc0v7e foreign key (customer_id_customer) references customer (id_customer)
alter table customer_courses_customer add constraint FKlv20r7wn7ea3ko61fdchlvxx7 foreign key (courses_customer_id_course) references course (id_course)
alter table customer_courses_customer add constraint FKhb89tu4g9juwomglh5o4ildkc foreign key (customer_id_customer) references customer (id_customer)
alter table customer_message_enties_customer add constraint FK87qk9mvnhk6icpj02qduw8iid foreign key (message_enties_customer_id_message) references message (id_message)
alter table customer_message_enties_customer add constraint FKk577gek8jgi7latljoc1wu4vd foreign key (customer_id_customer) references customer (id_customer)
alter table cv add constraint FKa7pc74ut0qecqa1q6mqk0dseh foreign key (customer_cv_id_customer) references customer (id_customer)
alter table message add constraint FKqoj0iksnxuy71t0d7vqnpk260 foreign key (company_id_company) references company (nip)
alter table question add constraint FK322vu14ev6wxov2dfsqkpxnl4 foreign key (survey_id_survey) references survey (id_survey)
alter table search add constraint FKpqchuntykbw6f2dowv9mfjail foreign key (advertisement_search_id_advertisement) references advertisement (id_advertisement)
alter table survey add constraint FKa3is5ghk0lo9udagkinrv4v9v foreign key (company_survey_nip) references company (nip)
alter table survey_advertisements_survey add constraint FKc9moy3goxk1f3rpyg8w7ar8tl foreign key (advertisements_survey_id_advertisement) references advertisement (id_advertisement)
alter table survey_advertisements_survey add constraint FKjpax6hmj6lkrwhx3u1yghkykw foreign key (survey_id_survey) references survey (id_survey)
alter table survey_questions_survey add constraint FKadxkmy2ncqpq90bcdo8rnx7s5 foreign key (questions_survey_id_question) references question (id_question)
alter table survey_questions_survey add constraint FKgxo63ukoi0sga3gfw7smijnf3 foreign key (survey_id_survey) references survey (id_survey)
alter table user add constraint FKearmmhtje53d5oqwixkfmuyky foreign key (company_user_nip) references company (nip)
alter table user add constraint FKq248jm9qs5dxdka1bj4aewju4 foreign key (customer_user_id_customer) references customer (id_customer)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), archive_advertisement_id_archives bigint, company_id_company bigint, search_advertisement_id_categories_of_search bigint, survey_advertisement_id_survey bigint, primary key (id_advertisement)) engine=InnoDB
create table advertisement_applications_advertisement (advertisement_id_advertisement bigint not null, applications_advertisement_id_application bigint not null) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id_advertisement bigint, company_id_company bigint, customer_id_customer bigint, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, advertisement_archives_id_advertisement bigint, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, survey_company_id_survey bigint, user_company_id_user bigint, primary key (nip)) engine=InnoDB
create table company_advertisement_company (company_nip bigint not null, advertisement_company_id_advertisement bigint not null) engine=InnoDB
create table company_applications_company (company_nip bigint not null, applications_company_id_application bigint not null) engine=InnoDB
create table company_message_enties_company (company_nip bigint not null, message_enties_company_id_message bigint not null) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, cv_customer_idcv bigint, user_customer_id_user bigint, primary key (id_customer)) engine=InnoDB
create table customer_applications_customer (customer_id_customer bigint not null, applications_customer_id_application bigint not null) engine=InnoDB
create table customer_certificates_customer (customer_id_customer bigint not null, certificates_customer_id_certificate bigint not null) engine=InnoDB
create table customer_courses_customer (customer_id_customer bigint not null, courses_customer_id_course bigint not null) engine=InnoDB
create table customer_message_enties_customer (customer_id_customer bigint not null, message_enties_customer_id_message bigint not null) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_cv_id_customer bigint, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id_company bigint, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id_survey bigint, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), advertisement_search_id_advertisement bigint, primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_survey_nip bigint, primary key (id_survey)) engine=InnoDB
create table survey_advertisements_survey (survey_id_survey bigint not null, advertisements_survey_id_advertisement bigint not null) engine=InnoDB
create table survey_questions_survey (survey_id_survey bigint not null, questions_survey_id_question bigint not null) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, company_user_nip bigint, customer_user_id_customer bigint, primary key (id_user)) engine=InnoDB
alter table advertisement_applications_advertisement add constraint UK_t9vmg93l6xvdk2oq8td9tcccy unique (applications_advertisement_id_application)
alter table company_advertisement_company add constraint UK_h5xvl2jc3lf9xsx7374upl517 unique (advertisement_company_id_advertisement)
alter table company_applications_company add constraint UK_hkt9mvu1s15qbncx00u4fohdj unique (applications_company_id_application)
alter table company_message_enties_company add constraint UK_bsh08l0m3eq0gkuht1wtuwh73 unique (message_enties_company_id_message)
alter table customer_applications_customer add constraint UK_phgoowicafg3nojh1fgx02bk1 unique (applications_customer_id_application)
alter table customer_certificates_customer add constraint UK_2j79g8838r8j5aq86tcunqstd unique (certificates_customer_id_certificate)
alter table customer_courses_customer add constraint UK_a2dox4sstw7ja05uo28vnrkjg unique (courses_customer_id_course)
alter table customer_message_enties_customer add constraint UK_p1j68rgs6aeimw5wl0dstwu2k unique (message_enties_customer_id_message)
alter table survey_advertisements_survey add constraint UK_6yxayavbjgfwqbgosarhvk9g3 unique (advertisements_survey_id_advertisement)
alter table survey_questions_survey add constraint UK_kplcsv1b2cunaahmwyyv6rdke unique (questions_survey_id_question)
alter table advertisement add constraint FKgiunmpba4cimjk8llgubfe6ul foreign key (archive_advertisement_id_archives) references archives (id_archives)
alter table advertisement add constraint FKqdmy4ppepvyvhprfm7tp4ci41 foreign key (company_id_company) references company (nip)
alter table advertisement add constraint FKoy7utu8iquefodt8gwnplm9on foreign key (search_advertisement_id_categories_of_search) references search (id_categories_of_search)
alter table advertisement add constraint FKtddexe0pqk3tjn6456tojvmia foreign key (survey_advertisement_id_survey) references survey (id_survey)
alter table advertisement_applications_advertisement add constraint FKc4s9vvwd7tv8o6f3gnn7s8jh8 foreign key (applications_advertisement_id_application) references application (id_application)
alter table advertisement_applications_advertisement add constraint FKgqf2f0tv2y5cflamvh9p4skre foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK614e8yxe5rahjj8eaos0fviii foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK5m64be5ht8ngb1wji5trm2tku foreign key (company_id_company) references company (nip)
alter table application add constraint FKklsb5byveiajqob9jpcqx37ce foreign key (customer_id_customer) references customer (id_customer)
alter table archives add constraint FKthem932fgxbj48wsdbx3ccnq foreign key (advertisement_archives_id_advertisement) references advertisement (id_advertisement)
alter table certificate add constraint FK5k2f727vigkmpjvbalfy41rqa foreign key (customer_id_customer) references customer (id_customer)
alter table company add constraint FK8b5u4qxvyixxmtbrcniuajgyt foreign key (survey_company_id_survey) references survey (id_survey)
alter table company add constraint FKjrrfp81vg6l6mfmwvr8wwk73k foreign key (user_company_id_user) references user (id_user)
alter table company_advertisement_company add constraint FK6uxpm7x410lw4qscjd2su3wce foreign key (advertisement_company_id_advertisement) references advertisement (id_advertisement)
alter table company_advertisement_company add constraint FKra6ropf3ni6y03ea3x6r3wuli foreign key (company_nip) references company (nip)
alter table company_applications_company add constraint FK1j3yr7se7ermskwkixtn6oa8n foreign key (applications_company_id_application) references application (id_application)
alter table company_applications_company add constraint FKfxqkr3cw4dllk2e98suufeebv foreign key (company_nip) references company (nip)
alter table company_message_enties_company add constraint FKi9pg89k3dt1msbn84ixos180e foreign key (message_enties_company_id_message) references message (id_message)
alter table company_message_enties_company add constraint FK8imux87k5is85fmw60dc8r9i0 foreign key (company_nip) references company (nip)
alter table course add constraint FKgxng2xf3os0e1g01yh74hqj7u foreign key (customer_id_customer) references customer (id_customer)
alter table customer add constraint FK10v30i0mmylpqt626liiimlwu foreign key (cv_customer_idcv) references cv (idcv)
alter table customer add constraint FKrlw2al5r2uvqfqejg8hnprx2v foreign key (user_customer_id_user) references user (id_user)
alter table customer_applications_customer add constraint FKq0k60bi2ucc3ifahhb5sna455 foreign key (applications_customer_id_application) references application (id_application)
alter table customer_applications_customer add constraint FKyndklb0401rg1t3rbhou45v1 foreign key (customer_id_customer) references customer (id_customer)
alter table customer_certificates_customer add constraint FKq3lln1ft0x652lf61uyavcfyf foreign key (certificates_customer_id_certificate) references certificate (id_certificate)
alter table customer_certificates_customer add constraint FKg5xmilyon2rt9w84g1xkc0v7e foreign key (customer_id_customer) references customer (id_customer)
alter table customer_courses_customer add constraint FKlv20r7wn7ea3ko61fdchlvxx7 foreign key (courses_customer_id_course) references course (id_course)
alter table customer_courses_customer add constraint FKhb89tu4g9juwomglh5o4ildkc foreign key (customer_id_customer) references customer (id_customer)
alter table customer_message_enties_customer add constraint FK87qk9mvnhk6icpj02qduw8iid foreign key (message_enties_customer_id_message) references message (id_message)
alter table customer_message_enties_customer add constraint FKk577gek8jgi7latljoc1wu4vd foreign key (customer_id_customer) references customer (id_customer)
alter table cv add constraint FKa7pc74ut0qecqa1q6mqk0dseh foreign key (customer_cv_id_customer) references customer (id_customer)
alter table message add constraint FKqoj0iksnxuy71t0d7vqnpk260 foreign key (company_id_company) references company (nip)
alter table question add constraint FK322vu14ev6wxov2dfsqkpxnl4 foreign key (survey_id_survey) references survey (id_survey)
alter table search add constraint FKpqchuntykbw6f2dowv9mfjail foreign key (advertisement_search_id_advertisement) references advertisement (id_advertisement)
alter table survey add constraint FKa3is5ghk0lo9udagkinrv4v9v foreign key (company_survey_nip) references company (nip)
alter table survey_advertisements_survey add constraint FKc9moy3goxk1f3rpyg8w7ar8tl foreign key (advertisements_survey_id_advertisement) references advertisement (id_advertisement)
alter table survey_advertisements_survey add constraint FKjpax6hmj6lkrwhx3u1yghkykw foreign key (survey_id_survey) references survey (id_survey)
alter table survey_questions_survey add constraint FKadxkmy2ncqpq90bcdo8rnx7s5 foreign key (questions_survey_id_question) references question (id_question)
alter table survey_questions_survey add constraint FKgxo63ukoi0sga3gfw7smijnf3 foreign key (survey_id_survey) references survey (id_survey)
alter table user add constraint FKearmmhtje53d5oqwixkfmuyky foreign key (company_user_nip) references company (nip)
alter table user add constraint FKq248jm9qs5dxdka1bj4aewju4 foreign key (customer_user_id_customer) references customer (id_customer)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), archive_advertisement_id_archives bigint, company_id_company bigint, search_advertisement_id_categories_of_search bigint, survey_advertisement_id_survey bigint, primary key (id_advertisement)) engine=InnoDB
create table advertisement_applications_advertisement (advertisement_id_advertisement bigint not null, applications_advertisement_id_application bigint not null) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id_advertisement bigint, company_id_company bigint, customer_id_customer bigint, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, advertisement_archives_id_advertisement bigint, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, survey_company_id_survey bigint, user_company_id_user bigint, primary key (nip)) engine=InnoDB
create table company_advertisement_company (company_nip bigint not null, advertisement_company_id_advertisement bigint not null) engine=InnoDB
create table company_applications_company (company_nip bigint not null, applications_company_id_application bigint not null) engine=InnoDB
create table company_message_enties_company (company_nip bigint not null, message_enties_company_id_message bigint not null) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, cv_customer_idcv bigint, user_customer_id_user bigint, primary key (id_customer)) engine=InnoDB
create table customer_applications_customer (customer_id_customer bigint not null, applications_customer_id_application bigint not null) engine=InnoDB
create table customer_certificates_customer (customer_id_customer bigint not null, certificates_customer_id_certificate bigint not null) engine=InnoDB
create table customer_courses_customer (customer_id_customer bigint not null, courses_customer_id_course bigint not null) engine=InnoDB
create table customer_message_enties_customer (customer_id_customer bigint not null, message_enties_customer_id_message bigint not null) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_cv_id_customer bigint, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id_company bigint, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id_survey bigint, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), advertisement_search_id_advertisement bigint, primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_survey_nip bigint, primary key (id_survey)) engine=InnoDB
create table survey_advertisements_survey (survey_id_survey bigint not null, advertisements_survey_id_advertisement bigint not null) engine=InnoDB
create table survey_questions_survey (survey_id_survey bigint not null, questions_survey_id_question bigint not null) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, company_user_nip bigint, customer_user_id_customer bigint, primary key (id_user)) engine=InnoDB
alter table advertisement_applications_advertisement add constraint UK_t9vmg93l6xvdk2oq8td9tcccy unique (applications_advertisement_id_application)
alter table company_advertisement_company add constraint UK_h5xvl2jc3lf9xsx7374upl517 unique (advertisement_company_id_advertisement)
alter table company_applications_company add constraint UK_hkt9mvu1s15qbncx00u4fohdj unique (applications_company_id_application)
alter table company_message_enties_company add constraint UK_bsh08l0m3eq0gkuht1wtuwh73 unique (message_enties_company_id_message)
alter table customer_applications_customer add constraint UK_phgoowicafg3nojh1fgx02bk1 unique (applications_customer_id_application)
alter table customer_certificates_customer add constraint UK_2j79g8838r8j5aq86tcunqstd unique (certificates_customer_id_certificate)
alter table customer_courses_customer add constraint UK_a2dox4sstw7ja05uo28vnrkjg unique (courses_customer_id_course)
alter table customer_message_enties_customer add constraint UK_p1j68rgs6aeimw5wl0dstwu2k unique (message_enties_customer_id_message)
alter table survey_advertisements_survey add constraint UK_6yxayavbjgfwqbgosarhvk9g3 unique (advertisements_survey_id_advertisement)
alter table survey_questions_survey add constraint UK_kplcsv1b2cunaahmwyyv6rdke unique (questions_survey_id_question)
alter table advertisement add constraint FKgiunmpba4cimjk8llgubfe6ul foreign key (archive_advertisement_id_archives) references archives (id_archives)
alter table advertisement add constraint FKqdmy4ppepvyvhprfm7tp4ci41 foreign key (company_id_company) references company (nip)
alter table advertisement add constraint FKoy7utu8iquefodt8gwnplm9on foreign key (search_advertisement_id_categories_of_search) references search (id_categories_of_search)
alter table advertisement add constraint FKtddexe0pqk3tjn6456tojvmia foreign key (survey_advertisement_id_survey) references survey (id_survey)
alter table advertisement_applications_advertisement add constraint FKc4s9vvwd7tv8o6f3gnn7s8jh8 foreign key (applications_advertisement_id_application) references application (id_application)
alter table advertisement_applications_advertisement add constraint FKgqf2f0tv2y5cflamvh9p4skre foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK614e8yxe5rahjj8eaos0fviii foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK5m64be5ht8ngb1wji5trm2tku foreign key (company_id_company) references company (nip)
alter table application add constraint FKklsb5byveiajqob9jpcqx37ce foreign key (customer_id_customer) references customer (id_customer)
alter table archives add constraint FKthem932fgxbj48wsdbx3ccnq foreign key (advertisement_archives_id_advertisement) references advertisement (id_advertisement)
alter table certificate add constraint FK5k2f727vigkmpjvbalfy41rqa foreign key (customer_id_customer) references customer (id_customer)
alter table company add constraint FK8b5u4qxvyixxmtbrcniuajgyt foreign key (survey_company_id_survey) references survey (id_survey)
alter table company add constraint FKjrrfp81vg6l6mfmwvr8wwk73k foreign key (user_company_id_user) references user (id_user)
alter table company_advertisement_company add constraint FK6uxpm7x410lw4qscjd2su3wce foreign key (advertisement_company_id_advertisement) references advertisement (id_advertisement)
alter table company_advertisement_company add constraint FKra6ropf3ni6y03ea3x6r3wuli foreign key (company_nip) references company (nip)
alter table company_applications_company add constraint FK1j3yr7se7ermskwkixtn6oa8n foreign key (applications_company_id_application) references application (id_application)
alter table company_applications_company add constraint FKfxqkr3cw4dllk2e98suufeebv foreign key (company_nip) references company (nip)
alter table company_message_enties_company add constraint FKi9pg89k3dt1msbn84ixos180e foreign key (message_enties_company_id_message) references message (id_message)
alter table company_message_enties_company add constraint FK8imux87k5is85fmw60dc8r9i0 foreign key (company_nip) references company (nip)
alter table course add constraint FKgxng2xf3os0e1g01yh74hqj7u foreign key (customer_id_customer) references customer (id_customer)
alter table customer add constraint FK10v30i0mmylpqt626liiimlwu foreign key (cv_customer_idcv) references cv (idcv)
alter table customer add constraint FKrlw2al5r2uvqfqejg8hnprx2v foreign key (user_customer_id_user) references user (id_user)
alter table customer_applications_customer add constraint FKq0k60bi2ucc3ifahhb5sna455 foreign key (applications_customer_id_application) references application (id_application)
alter table customer_applications_customer add constraint FKyndklb0401rg1t3rbhou45v1 foreign key (customer_id_customer) references customer (id_customer)
alter table customer_certificates_customer add constraint FKq3lln1ft0x652lf61uyavcfyf foreign key (certificates_customer_id_certificate) references certificate (id_certificate)
alter table customer_certificates_customer add constraint FKg5xmilyon2rt9w84g1xkc0v7e foreign key (customer_id_customer) references customer (id_customer)
alter table customer_courses_customer add constraint FKlv20r7wn7ea3ko61fdchlvxx7 foreign key (courses_customer_id_course) references course (id_course)
alter table customer_courses_customer add constraint FKhb89tu4g9juwomglh5o4ildkc foreign key (customer_id_customer) references customer (id_customer)
alter table customer_message_enties_customer add constraint FK87qk9mvnhk6icpj02qduw8iid foreign key (message_enties_customer_id_message) references message (id_message)
alter table customer_message_enties_customer add constraint FKk577gek8jgi7latljoc1wu4vd foreign key (customer_id_customer) references customer (id_customer)
alter table cv add constraint FKa7pc74ut0qecqa1q6mqk0dseh foreign key (customer_cv_id_customer) references customer (id_customer)
alter table message add constraint FKqoj0iksnxuy71t0d7vqnpk260 foreign key (company_id_company) references company (nip)
alter table question add constraint FK322vu14ev6wxov2dfsqkpxnl4 foreign key (survey_id_survey) references survey (id_survey)
alter table search add constraint FKpqchuntykbw6f2dowv9mfjail foreign key (advertisement_search_id_advertisement) references advertisement (id_advertisement)
alter table survey add constraint FKa3is5ghk0lo9udagkinrv4v9v foreign key (company_survey_nip) references company (nip)
alter table survey_advertisements_survey add constraint FKc9moy3goxk1f3rpyg8w7ar8tl foreign key (advertisements_survey_id_advertisement) references advertisement (id_advertisement)
alter table survey_advertisements_survey add constraint FKjpax6hmj6lkrwhx3u1yghkykw foreign key (survey_id_survey) references survey (id_survey)
alter table survey_questions_survey add constraint FKadxkmy2ncqpq90bcdo8rnx7s5 foreign key (questions_survey_id_question) references question (id_question)
alter table survey_questions_survey add constraint FKgxo63ukoi0sga3gfw7smijnf3 foreign key (survey_id_survey) references survey (id_survey)
alter table user add constraint FKearmmhtje53d5oqwixkfmuyky foreign key (company_user_nip) references company (nip)
alter table user add constraint FKq248jm9qs5dxdka1bj4aewju4 foreign key (customer_user_id_customer) references customer (id_customer)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), archive_advertisement_id_archives bigint, company_id_company bigint, search_advertisement_id_categories_of_search bigint, survey_advertisement_id_survey bigint, primary key (id_advertisement)) engine=InnoDB
create table advertisement_applications_advertisement (advertisement_id_advertisement bigint not null, applications_advertisement_id_application bigint not null) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id_advertisement bigint, company_id_company bigint, customer_id_customer bigint, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, advertisement_archives_id_advertisement bigint, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, survey_company_id_survey bigint, user_company_id_user bigint, primary key (nip)) engine=InnoDB
create table company_advertisement_company (company_nip bigint not null, advertisement_company_id_advertisement bigint not null) engine=InnoDB
create table company_applications_company (company_nip bigint not null, applications_company_id_application bigint not null) engine=InnoDB
create table company_message_enties_company (company_nip bigint not null, message_enties_company_id_message bigint not null) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, cv_customer_idcv bigint, user_customer_id_user bigint, primary key (id_customer)) engine=InnoDB
create table customer_applications_customer (customer_id_customer bigint not null, applications_customer_id_application bigint not null) engine=InnoDB
create table customer_certificates_customer (customer_id_customer bigint not null, certificates_customer_id_certificate bigint not null) engine=InnoDB
create table customer_courses_customer (customer_id_customer bigint not null, courses_customer_id_course bigint not null) engine=InnoDB
create table customer_message_enties_customer (customer_id_customer bigint not null, message_enties_customer_id_message bigint not null) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_cv_id_customer bigint, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id_company bigint, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id_survey bigint, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), advertisement_search_id_advertisement bigint, primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_survey_nip bigint, primary key (id_survey)) engine=InnoDB
create table survey_advertisements_survey (survey_id_survey bigint not null, advertisements_survey_id_advertisement bigint not null) engine=InnoDB
create table survey_questions_survey (survey_id_survey bigint not null, questions_survey_id_question bigint not null) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, company_user_nip bigint, customer_user_id_customer bigint, primary key (id_user)) engine=InnoDB
alter table advertisement_applications_advertisement add constraint UK_t9vmg93l6xvdk2oq8td9tcccy unique (applications_advertisement_id_application)
alter table company_advertisement_company add constraint UK_h5xvl2jc3lf9xsx7374upl517 unique (advertisement_company_id_advertisement)
alter table company_applications_company add constraint UK_hkt9mvu1s15qbncx00u4fohdj unique (applications_company_id_application)
alter table company_message_enties_company add constraint UK_bsh08l0m3eq0gkuht1wtuwh73 unique (message_enties_company_id_message)
alter table customer_applications_customer add constraint UK_phgoowicafg3nojh1fgx02bk1 unique (applications_customer_id_application)
alter table customer_certificates_customer add constraint UK_2j79g8838r8j5aq86tcunqstd unique (certificates_customer_id_certificate)
alter table customer_courses_customer add constraint UK_a2dox4sstw7ja05uo28vnrkjg unique (courses_customer_id_course)
alter table customer_message_enties_customer add constraint UK_p1j68rgs6aeimw5wl0dstwu2k unique (message_enties_customer_id_message)
alter table survey_advertisements_survey add constraint UK_6yxayavbjgfwqbgosarhvk9g3 unique (advertisements_survey_id_advertisement)
alter table survey_questions_survey add constraint UK_kplcsv1b2cunaahmwyyv6rdke unique (questions_survey_id_question)
alter table advertisement add constraint FKgiunmpba4cimjk8llgubfe6ul foreign key (archive_advertisement_id_archives) references archives (id_archives)
alter table advertisement add constraint FKqdmy4ppepvyvhprfm7tp4ci41 foreign key (company_id_company) references company (nip)
alter table advertisement add constraint FKoy7utu8iquefodt8gwnplm9on foreign key (search_advertisement_id_categories_of_search) references search (id_categories_of_search)
alter table advertisement add constraint FKtddexe0pqk3tjn6456tojvmia foreign key (survey_advertisement_id_survey) references survey (id_survey)
alter table advertisement_applications_advertisement add constraint FKc4s9vvwd7tv8o6f3gnn7s8jh8 foreign key (applications_advertisement_id_application) references application (id_application)
alter table advertisement_applications_advertisement add constraint FKgqf2f0tv2y5cflamvh9p4skre foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK614e8yxe5rahjj8eaos0fviii foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK5m64be5ht8ngb1wji5trm2tku foreign key (company_id_company) references company (nip)
alter table application add constraint FKklsb5byveiajqob9jpcqx37ce foreign key (customer_id_customer) references customer (id_customer)
alter table archives add constraint FKthem932fgxbj48wsdbx3ccnq foreign key (advertisement_archives_id_advertisement) references advertisement (id_advertisement)
alter table certificate add constraint FK5k2f727vigkmpjvbalfy41rqa foreign key (customer_id_customer) references customer (id_customer)
alter table company add constraint FK8b5u4qxvyixxmtbrcniuajgyt foreign key (survey_company_id_survey) references survey (id_survey)
alter table company add constraint FKjrrfp81vg6l6mfmwvr8wwk73k foreign key (user_company_id_user) references user (id_user)
alter table company_advertisement_company add constraint FK6uxpm7x410lw4qscjd2su3wce foreign key (advertisement_company_id_advertisement) references advertisement (id_advertisement)
alter table company_advertisement_company add constraint FKra6ropf3ni6y03ea3x6r3wuli foreign key (company_nip) references company (nip)
alter table company_applications_company add constraint FK1j3yr7se7ermskwkixtn6oa8n foreign key (applications_company_id_application) references application (id_application)
alter table company_applications_company add constraint FKfxqkr3cw4dllk2e98suufeebv foreign key (company_nip) references company (nip)
alter table company_message_enties_company add constraint FKi9pg89k3dt1msbn84ixos180e foreign key (message_enties_company_id_message) references message (id_message)
alter table company_message_enties_company add constraint FK8imux87k5is85fmw60dc8r9i0 foreign key (company_nip) references company (nip)
alter table course add constraint FKgxng2xf3os0e1g01yh74hqj7u foreign key (customer_id_customer) references customer (id_customer)
alter table customer add constraint FK10v30i0mmylpqt626liiimlwu foreign key (cv_customer_idcv) references cv (idcv)
alter table customer add constraint FKrlw2al5r2uvqfqejg8hnprx2v foreign key (user_customer_id_user) references user (id_user)
alter table customer_applications_customer add constraint FKq0k60bi2ucc3ifahhb5sna455 foreign key (applications_customer_id_application) references application (id_application)
alter table customer_applications_customer add constraint FKyndklb0401rg1t3rbhou45v1 foreign key (customer_id_customer) references customer (id_customer)
alter table customer_certificates_customer add constraint FKq3lln1ft0x652lf61uyavcfyf foreign key (certificates_customer_id_certificate) references certificate (id_certificate)
alter table customer_certificates_customer add constraint FKg5xmilyon2rt9w84g1xkc0v7e foreign key (customer_id_customer) references customer (id_customer)
alter table customer_courses_customer add constraint FKlv20r7wn7ea3ko61fdchlvxx7 foreign key (courses_customer_id_course) references course (id_course)
alter table customer_courses_customer add constraint FKhb89tu4g9juwomglh5o4ildkc foreign key (customer_id_customer) references customer (id_customer)
alter table customer_message_enties_customer add constraint FK87qk9mvnhk6icpj02qduw8iid foreign key (message_enties_customer_id_message) references message (id_message)
alter table customer_message_enties_customer add constraint FKk577gek8jgi7latljoc1wu4vd foreign key (customer_id_customer) references customer (id_customer)
alter table cv add constraint FKa7pc74ut0qecqa1q6mqk0dseh foreign key (customer_cv_id_customer) references customer (id_customer)
alter table message add constraint FKqoj0iksnxuy71t0d7vqnpk260 foreign key (company_id_company) references company (nip)
alter table question add constraint FK322vu14ev6wxov2dfsqkpxnl4 foreign key (survey_id_survey) references survey (id_survey)
alter table search add constraint FKpqchuntykbw6f2dowv9mfjail foreign key (advertisement_search_id_advertisement) references advertisement (id_advertisement)
alter table survey add constraint FKa3is5ghk0lo9udagkinrv4v9v foreign key (company_survey_nip) references company (nip)
alter table survey_advertisements_survey add constraint FKc9moy3goxk1f3rpyg8w7ar8tl foreign key (advertisements_survey_id_advertisement) references advertisement (id_advertisement)
alter table survey_advertisements_survey add constraint FKjpax6hmj6lkrwhx3u1yghkykw foreign key (survey_id_survey) references survey (id_survey)
alter table survey_questions_survey add constraint FKadxkmy2ncqpq90bcdo8rnx7s5 foreign key (questions_survey_id_question) references question (id_question)
alter table survey_questions_survey add constraint FKgxo63ukoi0sga3gfw7smijnf3 foreign key (survey_id_survey) references survey (id_survey)
alter table user add constraint FKearmmhtje53d5oqwixkfmuyky foreign key (company_user_nip) references company (nip)
alter table user add constraint FKq248jm9qs5dxdka1bj4aewju4 foreign key (customer_user_id_customer) references customer (id_customer)


create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), archive_advertisement_id_archives bigint, company_id_company bigint, search_advertisement_id_categories_of_search bigint, survey_advertisement_id_survey bigint, primary key (id_advertisement)) engine=InnoDB
create table advertisement_applications_advertisement (advertisement_id_advertisement bigint not null, applications_advertisement_id_application bigint not null) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id_advertisement bigint, company_id_company bigint, customer_id_customer bigint, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, advertisement_archives_id_advertisement bigint, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, survey_company_id_survey bigint, user_company_id_user bigint, primary key (nip)) engine=InnoDB
create table company_advertisement_company (company_nip bigint not null, advertisement_company_id_advertisement bigint not null) engine=InnoDB
create table company_applications_company (company_nip bigint not null, applications_company_id_application bigint not null) engine=InnoDB
create table company_message_enties_company (company_nip bigint not null, message_enties_company_id_message bigint not null) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, cv_customer_idcv bigint, user_customer_id_user bigint, primary key (id_customer)) engine=InnoDB
create table customer_applications_customer (customer_id_customer bigint not null, applications_customer_id_application bigint not null) engine=InnoDB
create table customer_certificates_customer (customer_id_customer bigint not null, certificates_customer_id_certificate bigint not null) engine=InnoDB
create table customer_courses_customer (customer_id_customer bigint not null, courses_customer_id_course bigint not null) engine=InnoDB
create table customer_message_enties_customer (customer_id_customer bigint not null, message_enties_customer_id_message bigint not null) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_cv_id_customer bigint, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id_company bigint, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id_survey bigint, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), advertisement_search_id_advertisement bigint, primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_survey_nip bigint, primary key (id_survey)) engine=InnoDB
create table survey_advertisements_survey (survey_id_survey bigint not null, advertisements_survey_id_advertisement bigint not null) engine=InnoDB
create table survey_questions_survey (survey_id_survey bigint not null, questions_survey_id_question bigint not null) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, company_user_nip bigint, customer_user_id_customer bigint, primary key (id_user)) engine=InnoDB
alter table advertisement_applications_advertisement add constraint UK_t9vmg93l6xvdk2oq8td9tcccy unique (applications_advertisement_id_application)
alter table company_advertisement_company add constraint UK_h5xvl2jc3lf9xsx7374upl517 unique (advertisement_company_id_advertisement)
alter table company_applications_company add constraint UK_hkt9mvu1s15qbncx00u4fohdj unique (applications_company_id_application)
alter table company_message_enties_company add constraint UK_bsh08l0m3eq0gkuht1wtuwh73 unique (message_enties_company_id_message)
alter table customer_applications_customer add constraint UK_phgoowicafg3nojh1fgx02bk1 unique (applications_customer_id_application)
alter table customer_certificates_customer add constraint UK_2j79g8838r8j5aq86tcunqstd unique (certificates_customer_id_certificate)
alter table customer_courses_customer add constraint UK_a2dox4sstw7ja05uo28vnrkjg unique (courses_customer_id_course)
alter table customer_message_enties_customer add constraint UK_p1j68rgs6aeimw5wl0dstwu2k unique (message_enties_customer_id_message)
alter table survey_advertisements_survey add constraint UK_6yxayavbjgfwqbgosarhvk9g3 unique (advertisements_survey_id_advertisement)
alter table survey_questions_survey add constraint UK_kplcsv1b2cunaahmwyyv6rdke unique (questions_survey_id_question)
alter table advertisement add constraint FKgiunmpba4cimjk8llgubfe6ul foreign key (archive_advertisement_id_archives) references archives (id_archives)
alter table advertisement add constraint FKqdmy4ppepvyvhprfm7tp4ci41 foreign key (company_id_company) references company (nip)
alter table advertisement add constraint FKoy7utu8iquefodt8gwnplm9on foreign key (search_advertisement_id_categories_of_search) references search (id_categories_of_search)
alter table advertisement add constraint FKtddexe0pqk3tjn6456tojvmia foreign key (survey_advertisement_id_survey) references survey (id_survey)
alter table advertisement_applications_advertisement add constraint FKc4s9vvwd7tv8o6f3gnn7s8jh8 foreign key (applications_advertisement_id_application) references application (id_application)
alter table advertisement_applications_advertisement add constraint FKgqf2f0tv2y5cflamvh9p4skre foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK614e8yxe5rahjj8eaos0fviii foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK5m64be5ht8ngb1wji5trm2tku foreign key (company_id_company) references company (nip)
alter table application add constraint FKklsb5byveiajqob9jpcqx37ce foreign key (customer_id_customer) references customer (id_customer)
alter table archives add constraint FKthem932fgxbj48wsdbx3ccnq foreign key (advertisement_archives_id_advertisement) references advertisement (id_advertisement)
alter table certificate add constraint FK5k2f727vigkmpjvbalfy41rqa foreign key (customer_id_customer) references customer (id_customer)
alter table company add constraint FK8b5u4qxvyixxmtbrcniuajgyt foreign key (survey_company_id_survey) references survey (id_survey)
alter table company add constraint FKjrrfp81vg6l6mfmwvr8wwk73k foreign key (user_company_id_user) references user (id_user)
alter table company_advertisement_company add constraint FK6uxpm7x410lw4qscjd2su3wce foreign key (advertisement_company_id_advertisement) references advertisement (id_advertisement)
alter table company_advertisement_company add constraint FKra6ropf3ni6y03ea3x6r3wuli foreign key (company_nip) references company (nip)
alter table company_applications_company add constraint FK1j3yr7se7ermskwkixtn6oa8n foreign key (applications_company_id_application) references application (id_application)
alter table company_applications_company add constraint FKfxqkr3cw4dllk2e98suufeebv foreign key (company_nip) references company (nip)
alter table company_message_enties_company add constraint FKi9pg89k3dt1msbn84ixos180e foreign key (message_enties_company_id_message) references message (id_message)
alter table company_message_enties_company add constraint FK8imux87k5is85fmw60dc8r9i0 foreign key (company_nip) references company (nip)
alter table course add constraint FKgxng2xf3os0e1g01yh74hqj7u foreign key (customer_id_customer) references customer (id_customer)
alter table customer add constraint FK10v30i0mmylpqt626liiimlwu foreign key (cv_customer_idcv) references cv (idcv)
alter table customer add constraint FKrlw2al5r2uvqfqejg8hnprx2v foreign key (user_customer_id_user) references user (id_user)
alter table customer_applications_customer add constraint FKq0k60bi2ucc3ifahhb5sna455 foreign key (applications_customer_id_application) references application (id_application)
alter table customer_applications_customer add constraint FKyndklb0401rg1t3rbhou45v1 foreign key (customer_id_customer) references customer (id_customer)
alter table customer_certificates_customer add constraint FKq3lln1ft0x652lf61uyavcfyf foreign key (certificates_customer_id_certificate) references certificate (id_certificate)
alter table customer_certificates_customer add constraint FKg5xmilyon2rt9w84g1xkc0v7e foreign key (customer_id_customer) references customer (id_customer)
alter table customer_courses_customer add constraint FKlv20r7wn7ea3ko61fdchlvxx7 foreign key (courses_customer_id_course) references course (id_course)
alter table customer_courses_customer add constraint FKhb89tu4g9juwomglh5o4ildkc foreign key (customer_id_customer) references customer (id_customer)
alter table customer_message_enties_customer add constraint FK87qk9mvnhk6icpj02qduw8iid foreign key (message_enties_customer_id_message) references message (id_message)
alter table customer_message_enties_customer add constraint FKk577gek8jgi7latljoc1wu4vd foreign key (customer_id_customer) references customer (id_customer)
alter table cv add constraint FKa7pc74ut0qecqa1q6mqk0dseh foreign key (customer_cv_id_customer) references customer (id_customer)
alter table message add constraint FKqoj0iksnxuy71t0d7vqnpk260 foreign key (company_id_company) references company (nip)
alter table question add constraint FK322vu14ev6wxov2dfsqkpxnl4 foreign key (survey_id_survey) references survey (id_survey)
alter table search add constraint FKpqchuntykbw6f2dowv9mfjail foreign key (advertisement_search_id_advertisement) references advertisement (id_advertisement)
alter table survey add constraint FKa3is5ghk0lo9udagkinrv4v9v foreign key (company_survey_nip) references company (nip)
alter table survey_advertisements_survey add constraint FKc9moy3goxk1f3rpyg8w7ar8tl foreign key (advertisements_survey_id_advertisement) references advertisement (id_advertisement)
alter table survey_advertisements_survey add constraint FKjpax6hmj6lkrwhx3u1yghkykw foreign key (survey_id_survey) references survey (id_survey)
alter table survey_questions_survey add constraint FKadxkmy2ncqpq90bcdo8rnx7s5 foreign key (questions_survey_id_question) references question (id_question)
alter table survey_questions_survey add constraint FKgxo63ukoi0sga3gfw7smijnf3 foreign key (survey_id_survey) references survey (id_survey)
alter table user add constraint FKearmmhtje53d5oqwixkfmuyky foreign key (company_user_nip) references company (nip)
alter table user add constraint FKq248jm9qs5dxdka1bj4aewju4 foreign key (customer_user_id_customer) references customer (id_customer)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), archive_advertisement_id_archives bigint, company_id_company bigint, search_advertisement_id_categories_of_search bigint, survey_id_survey bigint, primary key (id_advertisement)) engine=InnoDB
create table advertisement_applications_advertisement (advertisement_id_advertisement bigint not null, applications_advertisement_id_application bigint not null) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id_advertisement bigint, company_id_company bigint, customer_id_customer bigint, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, advertisement_archives_id_advertisement bigint, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, survey_company_id_survey bigint, user_company_id_user bigint, primary key (nip)) engine=InnoDB
create table company_advertisement_company (company_nip bigint not null, advertisement_company_id_advertisement bigint not null) engine=InnoDB
create table company_applications_company (company_nip bigint not null, applications_company_id_application bigint not null) engine=InnoDB
create table company_message_enties_company (company_nip bigint not null, message_enties_company_id_message bigint not null) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, cv_customer_idcv bigint, user_customer_id_user bigint, primary key (id_customer)) engine=InnoDB
create table customer_applications_customer (customer_id_customer bigint not null, applications_customer_id_application bigint not null) engine=InnoDB
create table customer_certificates_customer (customer_id_customer bigint not null, certificates_customer_id_certificate bigint not null) engine=InnoDB
create table customer_courses_customer (customer_id_customer bigint not null, courses_customer_id_course bigint not null) engine=InnoDB
create table customer_message_enties_customer (customer_id_customer bigint not null, message_enties_customer_id_message bigint not null) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_cv_id_customer bigint, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id_company bigint, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id_survey bigint, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), advertisement_search_id_advertisement bigint, primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_survey_nip bigint, primary key (id_survey)) engine=InnoDB
create table survey_advertisements_survey (survey_id_survey bigint not null, advertisements_survey_id_advertisement bigint not null) engine=InnoDB
create table survey_questions_survey (survey_id_survey bigint not null, questions_survey_id_question bigint not null) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, company_user_nip bigint, customer_user_id_customer bigint, primary key (id_user)) engine=InnoDB
alter table advertisement_applications_advertisement add constraint UK_t9vmg93l6xvdk2oq8td9tcccy unique (applications_advertisement_id_application)
alter table company_advertisement_company add constraint UK_h5xvl2jc3lf9xsx7374upl517 unique (advertisement_company_id_advertisement)
alter table company_applications_company add constraint UK_hkt9mvu1s15qbncx00u4fohdj unique (applications_company_id_application)
alter table company_message_enties_company add constraint UK_bsh08l0m3eq0gkuht1wtuwh73 unique (message_enties_company_id_message)
alter table customer_applications_customer add constraint UK_phgoowicafg3nojh1fgx02bk1 unique (applications_customer_id_application)
alter table customer_certificates_customer add constraint UK_2j79g8838r8j5aq86tcunqstd unique (certificates_customer_id_certificate)
alter table customer_courses_customer add constraint UK_a2dox4sstw7ja05uo28vnrkjg unique (courses_customer_id_course)
alter table customer_message_enties_customer add constraint UK_p1j68rgs6aeimw5wl0dstwu2k unique (message_enties_customer_id_message)
alter table survey_advertisements_survey add constraint UK_6yxayavbjgfwqbgosarhvk9g3 unique (advertisements_survey_id_advertisement)
alter table survey_questions_survey add constraint UK_kplcsv1b2cunaahmwyyv6rdke unique (questions_survey_id_question)
alter table advertisement add constraint FKgiunmpba4cimjk8llgubfe6ul foreign key (archive_advertisement_id_archives) references archives (id_archives)
alter table advertisement add constraint FKqdmy4ppepvyvhprfm7tp4ci41 foreign key (company_id_company) references company (nip)
alter table advertisement add constraint FKoy7utu8iquefodt8gwnplm9on foreign key (search_advertisement_id_categories_of_search) references search (id_categories_of_search)
alter table advertisement add constraint FK6b5b0ngkb7g0q8v1y5jlyr1ar foreign key (survey_id_survey) references survey (id_survey)
alter table advertisement_applications_advertisement add constraint FKc4s9vvwd7tv8o6f3gnn7s8jh8 foreign key (applications_advertisement_id_application) references application (id_application)
alter table advertisement_applications_advertisement add constraint FKgqf2f0tv2y5cflamvh9p4skre foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK614e8yxe5rahjj8eaos0fviii foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK5m64be5ht8ngb1wji5trm2tku foreign key (company_id_company) references company (nip)
alter table application add constraint FKklsb5byveiajqob9jpcqx37ce foreign key (customer_id_customer) references customer (id_customer)
alter table archives add constraint FKthem932fgxbj48wsdbx3ccnq foreign key (advertisement_archives_id_advertisement) references advertisement (id_advertisement)
alter table certificate add constraint FK5k2f727vigkmpjvbalfy41rqa foreign key (customer_id_customer) references customer (id_customer)
alter table company add constraint FK8b5u4qxvyixxmtbrcniuajgyt foreign key (survey_company_id_survey) references survey (id_survey)
alter table company add constraint FKjrrfp81vg6l6mfmwvr8wwk73k foreign key (user_company_id_user) references user (id_user)
alter table company_advertisement_company add constraint FK6uxpm7x410lw4qscjd2su3wce foreign key (advertisement_company_id_advertisement) references advertisement (id_advertisement)
alter table company_advertisement_company add constraint FKra6ropf3ni6y03ea3x6r3wuli foreign key (company_nip) references company (nip)
alter table company_applications_company add constraint FK1j3yr7se7ermskwkixtn6oa8n foreign key (applications_company_id_application) references application (id_application)
alter table company_applications_company add constraint FKfxqkr3cw4dllk2e98suufeebv foreign key (company_nip) references company (nip)
alter table company_message_enties_company add constraint FKi9pg89k3dt1msbn84ixos180e foreign key (message_enties_company_id_message) references message (id_message)
alter table company_message_enties_company add constraint FK8imux87k5is85fmw60dc8r9i0 foreign key (company_nip) references company (nip)
alter table course add constraint FKgxng2xf3os0e1g01yh74hqj7u foreign key (customer_id_customer) references customer (id_customer)
alter table customer add constraint FK10v30i0mmylpqt626liiimlwu foreign key (cv_customer_idcv) references cv (idcv)
alter table customer add constraint FKrlw2al5r2uvqfqejg8hnprx2v foreign key (user_customer_id_user) references user (id_user)
alter table customer_applications_customer add constraint FKq0k60bi2ucc3ifahhb5sna455 foreign key (applications_customer_id_application) references application (id_application)
alter table customer_applications_customer add constraint FKyndklb0401rg1t3rbhou45v1 foreign key (customer_id_customer) references customer (id_customer)
alter table customer_certificates_customer add constraint FKq3lln1ft0x652lf61uyavcfyf foreign key (certificates_customer_id_certificate) references certificate (id_certificate)
alter table customer_certificates_customer add constraint FKg5xmilyon2rt9w84g1xkc0v7e foreign key (customer_id_customer) references customer (id_customer)
alter table customer_courses_customer add constraint FKlv20r7wn7ea3ko61fdchlvxx7 foreign key (courses_customer_id_course) references course (id_course)
alter table customer_courses_customer add constraint FKhb89tu4g9juwomglh5o4ildkc foreign key (customer_id_customer) references customer (id_customer)
alter table customer_message_enties_customer add constraint FK87qk9mvnhk6icpj02qduw8iid foreign key (message_enties_customer_id_message) references message (id_message)
alter table customer_message_enties_customer add constraint FKk577gek8jgi7latljoc1wu4vd foreign key (customer_id_customer) references customer (id_customer)
alter table cv add constraint FKa7pc74ut0qecqa1q6mqk0dseh foreign key (customer_cv_id_customer) references customer (id_customer)
alter table message add constraint FKqoj0iksnxuy71t0d7vqnpk260 foreign key (company_id_company) references company (nip)
alter table question add constraint FK322vu14ev6wxov2dfsqkpxnl4 foreign key (survey_id_survey) references survey (id_survey)
alter table search add constraint FKpqchuntykbw6f2dowv9mfjail foreign key (advertisement_search_id_advertisement) references advertisement (id_advertisement)
alter table survey add constraint FKa3is5ghk0lo9udagkinrv4v9v foreign key (company_survey_nip) references company (nip)
alter table survey_advertisements_survey add constraint FKc9moy3goxk1f3rpyg8w7ar8tl foreign key (advertisements_survey_id_advertisement) references advertisement (id_advertisement)
alter table survey_advertisements_survey add constraint FKjpax6hmj6lkrwhx3u1yghkykw foreign key (survey_id_survey) references survey (id_survey)
alter table survey_questions_survey add constraint FKadxkmy2ncqpq90bcdo8rnx7s5 foreign key (questions_survey_id_question) references question (id_question)
alter table survey_questions_survey add constraint FKgxo63ukoi0sga3gfw7smijnf3 foreign key (survey_id_survey) references survey (id_survey)
alter table user add constraint FKearmmhtje53d5oqwixkfmuyky foreign key (company_user_nip) references company (nip)
alter table user add constraint FKq248jm9qs5dxdka1bj4aewju4 foreign key (customer_user_id_customer) references customer (id_customer)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), archive_advertisement_id_archives bigint, company_id_company bigint, search_advertisement_id_categories_of_search bigint, survey_id_survey bigint, primary key (id_advertisement)) engine=InnoDB
create table advertisement_applications_advertisement (advertisement_id_advertisement bigint not null, applications_advertisement_id_application bigint not null) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id_advertisement bigint, company_id_company bigint, customer_id_customer bigint, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, advertisement_archives_id_advertisement bigint, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, survey_company_id_survey bigint, user_company_id_user bigint, primary key (nip)) engine=InnoDB
create table company_advertisement_company (company_nip bigint not null, advertisement_company_id_advertisement bigint not null) engine=InnoDB
create table company_applications_company (company_nip bigint not null, applications_company_id_application bigint not null) engine=InnoDB
create table company_message_enties_company (company_nip bigint not null, message_enties_company_id_message bigint not null) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, cv_customer_idcv bigint, user_customer_id_user bigint, primary key (id_customer)) engine=InnoDB
create table customer_applications_customer (customer_id_customer bigint not null, applications_customer_id_application bigint not null) engine=InnoDB
create table customer_certificates_customer (customer_id_customer bigint not null, certificates_customer_id_certificate bigint not null) engine=InnoDB
create table customer_courses_customer (customer_id_customer bigint not null, courses_customer_id_course bigint not null) engine=InnoDB
create table customer_message_enties_customer (customer_id_customer bigint not null, message_enties_customer_id_message bigint not null) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_cv_id_customer bigint, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id_company bigint, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id_survey bigint, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), advertisement_search_id_advertisement bigint, primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_survey_nip bigint, primary key (id_survey)) engine=InnoDB
create table survey_advertisements_survey (survey_id_survey bigint not null, advertisements_survey_id_advertisement bigint not null) engine=InnoDB
create table survey_questions_survey (survey_id_survey bigint not null, questions_survey_id_question bigint not null) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, company_user_nip bigint, customer_user_id_customer bigint, primary key (id_user)) engine=InnoDB
alter table advertisement_applications_advertisement add constraint UK_t9vmg93l6xvdk2oq8td9tcccy unique (applications_advertisement_id_application)
alter table company_advertisement_company add constraint UK_h5xvl2jc3lf9xsx7374upl517 unique (advertisement_company_id_advertisement)
alter table company_applications_company add constraint UK_hkt9mvu1s15qbncx00u4fohdj unique (applications_company_id_application)
alter table company_message_enties_company add constraint UK_bsh08l0m3eq0gkuht1wtuwh73 unique (message_enties_company_id_message)
alter table customer_applications_customer add constraint UK_phgoowicafg3nojh1fgx02bk1 unique (applications_customer_id_application)
alter table customer_certificates_customer add constraint UK_2j79g8838r8j5aq86tcunqstd unique (certificates_customer_id_certificate)
alter table customer_courses_customer add constraint UK_a2dox4sstw7ja05uo28vnrkjg unique (courses_customer_id_course)
alter table customer_message_enties_customer add constraint UK_p1j68rgs6aeimw5wl0dstwu2k unique (message_enties_customer_id_message)
alter table survey_advertisements_survey add constraint UK_6yxayavbjgfwqbgosarhvk9g3 unique (advertisements_survey_id_advertisement)
alter table survey_questions_survey add constraint UK_kplcsv1b2cunaahmwyyv6rdke unique (questions_survey_id_question)
alter table advertisement add constraint FKgiunmpba4cimjk8llgubfe6ul foreign key (archive_advertisement_id_archives) references archives (id_archives)
alter table advertisement add constraint FKqdmy4ppepvyvhprfm7tp4ci41 foreign key (company_id_company) references company (nip)
alter table advertisement add constraint FKoy7utu8iquefodt8gwnplm9on foreign key (search_advertisement_id_categories_of_search) references search (id_categories_of_search)
alter table advertisement add constraint FK6b5b0ngkb7g0q8v1y5jlyr1ar foreign key (survey_id_survey) references survey (id_survey)
alter table advertisement_applications_advertisement add constraint FKc4s9vvwd7tv8o6f3gnn7s8jh8 foreign key (applications_advertisement_id_application) references application (id_application)
alter table advertisement_applications_advertisement add constraint FKgqf2f0tv2y5cflamvh9p4skre foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK614e8yxe5rahjj8eaos0fviii foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK5m64be5ht8ngb1wji5trm2tku foreign key (company_id_company) references company (nip)
alter table application add constraint FKklsb5byveiajqob9jpcqx37ce foreign key (customer_id_customer) references customer (id_customer)
alter table archives add constraint FKthem932fgxbj48wsdbx3ccnq foreign key (advertisement_archives_id_advertisement) references advertisement (id_advertisement)
alter table certificate add constraint FK5k2f727vigkmpjvbalfy41rqa foreign key (customer_id_customer) references customer (id_customer)
alter table company add constraint FK8b5u4qxvyixxmtbrcniuajgyt foreign key (survey_company_id_survey) references survey (id_survey)
alter table company add constraint FKjrrfp81vg6l6mfmwvr8wwk73k foreign key (user_company_id_user) references user (id_user)
alter table company_advertisement_company add constraint FK6uxpm7x410lw4qscjd2su3wce foreign key (advertisement_company_id_advertisement) references advertisement (id_advertisement)
alter table company_advertisement_company add constraint FKra6ropf3ni6y03ea3x6r3wuli foreign key (company_nip) references company (nip)
alter table company_applications_company add constraint FK1j3yr7se7ermskwkixtn6oa8n foreign key (applications_company_id_application) references application (id_application)
alter table company_applications_company add constraint FKfxqkr3cw4dllk2e98suufeebv foreign key (company_nip) references company (nip)
alter table company_message_enties_company add constraint FKi9pg89k3dt1msbn84ixos180e foreign key (message_enties_company_id_message) references message (id_message)
alter table company_message_enties_company add constraint FK8imux87k5is85fmw60dc8r9i0 foreign key (company_nip) references company (nip)
alter table course add constraint FKgxng2xf3os0e1g01yh74hqj7u foreign key (customer_id_customer) references customer (id_customer)
alter table customer add constraint FK10v30i0mmylpqt626liiimlwu foreign key (cv_customer_idcv) references cv (idcv)
alter table customer add constraint FKrlw2al5r2uvqfqejg8hnprx2v foreign key (user_customer_id_user) references user (id_user)
alter table customer_applications_customer add constraint FKq0k60bi2ucc3ifahhb5sna455 foreign key (applications_customer_id_application) references application (id_application)
alter table customer_applications_customer add constraint FKyndklb0401rg1t3rbhou45v1 foreign key (customer_id_customer) references customer (id_customer)
alter table customer_certificates_customer add constraint FKq3lln1ft0x652lf61uyavcfyf foreign key (certificates_customer_id_certificate) references certificate (id_certificate)
alter table customer_certificates_customer add constraint FKg5xmilyon2rt9w84g1xkc0v7e foreign key (customer_id_customer) references customer (id_customer)
alter table customer_courses_customer add constraint FKlv20r7wn7ea3ko61fdchlvxx7 foreign key (courses_customer_id_course) references course (id_course)
alter table customer_courses_customer add constraint FKhb89tu4g9juwomglh5o4ildkc foreign key (customer_id_customer) references customer (id_customer)
alter table customer_message_enties_customer add constraint FK87qk9mvnhk6icpj02qduw8iid foreign key (message_enties_customer_id_message) references message (id_message)
alter table customer_message_enties_customer add constraint FKk577gek8jgi7latljoc1wu4vd foreign key (customer_id_customer) references customer (id_customer)
alter table cv add constraint FKa7pc74ut0qecqa1q6mqk0dseh foreign key (customer_cv_id_customer) references customer (id_customer)
alter table message add constraint FKqoj0iksnxuy71t0d7vqnpk260 foreign key (company_id_company) references company (nip)
alter table question add constraint FK322vu14ev6wxov2dfsqkpxnl4 foreign key (survey_id_survey) references survey (id_survey)
alter table search add constraint FKpqchuntykbw6f2dowv9mfjail foreign key (advertisement_search_id_advertisement) references advertisement (id_advertisement)
alter table survey add constraint FKa3is5ghk0lo9udagkinrv4v9v foreign key (company_survey_nip) references company (nip)
alter table survey_advertisements_survey add constraint FKc9moy3goxk1f3rpyg8w7ar8tl foreign key (advertisements_survey_id_advertisement) references advertisement (id_advertisement)
alter table survey_advertisements_survey add constraint FKjpax6hmj6lkrwhx3u1yghkykw foreign key (survey_id_survey) references survey (id_survey)
alter table survey_questions_survey add constraint FKadxkmy2ncqpq90bcdo8rnx7s5 foreign key (questions_survey_id_question) references question (id_question)
alter table survey_questions_survey add constraint FKgxo63ukoi0sga3gfw7smijnf3 foreign key (survey_id_survey) references survey (id_survey)
alter table user add constraint FKearmmhtje53d5oqwixkfmuyky foreign key (company_user_nip) references company (nip)
alter table user add constraint FKq248jm9qs5dxdka1bj4aewju4 foreign key (customer_user_id_customer) references customer (id_customer)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), archive_advertisement_id_archives bigint, company_id_company bigint, search_advertisement_id_categories_of_search bigint, survey_id_survey bigint, primary key (id_advertisement)) engine=InnoDB
create table advertisement_applications_advertisement (advertisement_id_advertisement bigint not null, applications_advertisement_id_application bigint not null) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id_advertisement bigint, company_id_company bigint, customer_id_customer bigint, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, advertisement_archives_id_advertisement bigint, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, survey_company_id_survey bigint, user_company_id_user bigint, primary key (nip)) engine=InnoDB
create table company_advertisement_company (company_nip bigint not null, advertisement_company_id_advertisement bigint not null) engine=InnoDB
create table company_applications_company (company_nip bigint not null, applications_company_id_application bigint not null) engine=InnoDB
create table company_message_enties_company (company_nip bigint not null, message_enties_company_id_message bigint not null) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, cv_customer_idcv bigint, user_customer_id_user bigint, primary key (id_customer)) engine=InnoDB
create table customer_applications_customer (customer_id_customer bigint not null, applications_customer_id_application bigint not null) engine=InnoDB
create table customer_certificates_customer (customer_id_customer bigint not null, certificates_customer_id_certificate bigint not null) engine=InnoDB
create table customer_courses_customer (customer_id_customer bigint not null, courses_customer_id_course bigint not null) engine=InnoDB
create table customer_message_enties_customer (customer_id_customer bigint not null, message_enties_customer_id_message bigint not null) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_cv_id_customer bigint, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id_company bigint, customer_id_customer bigint, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id_survey bigint, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), advertisement_search_id_advertisement bigint, primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_survey_nip bigint, primary key (id_survey)) engine=InnoDB
create table survey_advertisements_survey (survey_id_survey bigint not null, advertisements_survey_id_advertisement bigint not null) engine=InnoDB
create table survey_questions_survey (survey_id_survey bigint not null, questions_survey_id_question bigint not null) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, company_user_nip bigint, customer_user_id_customer bigint, primary key (id_user)) engine=InnoDB
alter table advertisement_applications_advertisement add constraint UK_t9vmg93l6xvdk2oq8td9tcccy unique (applications_advertisement_id_application)
alter table company_advertisement_company add constraint UK_h5xvl2jc3lf9xsx7374upl517 unique (advertisement_company_id_advertisement)
alter table company_applications_company add constraint UK_hkt9mvu1s15qbncx00u4fohdj unique (applications_company_id_application)
alter table company_message_enties_company add constraint UK_bsh08l0m3eq0gkuht1wtuwh73 unique (message_enties_company_id_message)
alter table customer_applications_customer add constraint UK_phgoowicafg3nojh1fgx02bk1 unique (applications_customer_id_application)
alter table customer_certificates_customer add constraint UK_2j79g8838r8j5aq86tcunqstd unique (certificates_customer_id_certificate)
alter table customer_courses_customer add constraint UK_a2dox4sstw7ja05uo28vnrkjg unique (courses_customer_id_course)
alter table customer_message_enties_customer add constraint UK_p1j68rgs6aeimw5wl0dstwu2k unique (message_enties_customer_id_message)
alter table survey_advertisements_survey add constraint UK_6yxayavbjgfwqbgosarhvk9g3 unique (advertisements_survey_id_advertisement)
alter table survey_questions_survey add constraint UK_kplcsv1b2cunaahmwyyv6rdke unique (questions_survey_id_question)
alter table advertisement add constraint FKgiunmpba4cimjk8llgubfe6ul foreign key (archive_advertisement_id_archives) references archives (id_archives)
alter table advertisement add constraint FKqdmy4ppepvyvhprfm7tp4ci41 foreign key (company_id_company) references company (nip)
alter table advertisement add constraint FKoy7utu8iquefodt8gwnplm9on foreign key (search_advertisement_id_categories_of_search) references search (id_categories_of_search)
alter table advertisement add constraint FK6b5b0ngkb7g0q8v1y5jlyr1ar foreign key (survey_id_survey) references survey (id_survey)
alter table advertisement_applications_advertisement add constraint FKc4s9vvwd7tv8o6f3gnn7s8jh8 foreign key (applications_advertisement_id_application) references application (id_application)
alter table advertisement_applications_advertisement add constraint FKgqf2f0tv2y5cflamvh9p4skre foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK614e8yxe5rahjj8eaos0fviii foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK5m64be5ht8ngb1wji5trm2tku foreign key (company_id_company) references company (nip)
alter table application add constraint FKklsb5byveiajqob9jpcqx37ce foreign key (customer_id_customer) references customer (id_customer)
alter table archives add constraint FKthem932fgxbj48wsdbx3ccnq foreign key (advertisement_archives_id_advertisement) references advertisement (id_advertisement)
alter table certificate add constraint FK5k2f727vigkmpjvbalfy41rqa foreign key (customer_id_customer) references customer (id_customer)
alter table company add constraint FK8b5u4qxvyixxmtbrcniuajgyt foreign key (survey_company_id_survey) references survey (id_survey)
alter table company add constraint FKjrrfp81vg6l6mfmwvr8wwk73k foreign key (user_company_id_user) references user (id_user)
alter table company_advertisement_company add constraint FK6uxpm7x410lw4qscjd2su3wce foreign key (advertisement_company_id_advertisement) references advertisement (id_advertisement)
alter table company_advertisement_company add constraint FKra6ropf3ni6y03ea3x6r3wuli foreign key (company_nip) references company (nip)
alter table company_applications_company add constraint FK1j3yr7se7ermskwkixtn6oa8n foreign key (applications_company_id_application) references application (id_application)
alter table company_applications_company add constraint FKfxqkr3cw4dllk2e98suufeebv foreign key (company_nip) references company (nip)
alter table company_message_enties_company add constraint FKi9pg89k3dt1msbn84ixos180e foreign key (message_enties_company_id_message) references message (id_message)
alter table company_message_enties_company add constraint FK8imux87k5is85fmw60dc8r9i0 foreign key (company_nip) references company (nip)
alter table course add constraint FKgxng2xf3os0e1g01yh74hqj7u foreign key (customer_id_customer) references customer (id_customer)
alter table customer add constraint FK10v30i0mmylpqt626liiimlwu foreign key (cv_customer_idcv) references cv (idcv)
alter table customer add constraint FKrlw2al5r2uvqfqejg8hnprx2v foreign key (user_customer_id_user) references user (id_user)
alter table customer_applications_customer add constraint FKq0k60bi2ucc3ifahhb5sna455 foreign key (applications_customer_id_application) references application (id_application)
alter table customer_applications_customer add constraint FKyndklb0401rg1t3rbhou45v1 foreign key (customer_id_customer) references customer (id_customer)
alter table customer_certificates_customer add constraint FKq3lln1ft0x652lf61uyavcfyf foreign key (certificates_customer_id_certificate) references certificate (id_certificate)
alter table customer_certificates_customer add constraint FKg5xmilyon2rt9w84g1xkc0v7e foreign key (customer_id_customer) references customer (id_customer)
alter table customer_courses_customer add constraint FKlv20r7wn7ea3ko61fdchlvxx7 foreign key (courses_customer_id_course) references course (id_course)
alter table customer_courses_customer add constraint FKhb89tu4g9juwomglh5o4ildkc foreign key (customer_id_customer) references customer (id_customer)
alter table customer_message_enties_customer add constraint FK87qk9mvnhk6icpj02qduw8iid foreign key (message_enties_customer_id_message) references message (id_message)
alter table customer_message_enties_customer add constraint FKk577gek8jgi7latljoc1wu4vd foreign key (customer_id_customer) references customer (id_customer)
alter table cv add constraint FKa7pc74ut0qecqa1q6mqk0dseh foreign key (customer_cv_id_customer) references customer (id_customer)
alter table message add constraint FKqoj0iksnxuy71t0d7vqnpk260 foreign key (company_id_company) references company (nip)
alter table message add constraint FK1904gs1f8a39vpqpd4j0v2nuo foreign key (customer_id_customer) references customer (id_customer)
alter table question add constraint FK322vu14ev6wxov2dfsqkpxnl4 foreign key (survey_id_survey) references survey (id_survey)
alter table search add constraint FKpqchuntykbw6f2dowv9mfjail foreign key (advertisement_search_id_advertisement) references advertisement (id_advertisement)
alter table survey add constraint FKa3is5ghk0lo9udagkinrv4v9v foreign key (company_survey_nip) references company (nip)
alter table survey_advertisements_survey add constraint FKc9moy3goxk1f3rpyg8w7ar8tl foreign key (advertisements_survey_id_advertisement) references advertisement (id_advertisement)
alter table survey_advertisements_survey add constraint FKjpax6hmj6lkrwhx3u1yghkykw foreign key (survey_id_survey) references survey (id_survey)
alter table survey_questions_survey add constraint FKadxkmy2ncqpq90bcdo8rnx7s5 foreign key (questions_survey_id_question) references question (id_question)
alter table survey_questions_survey add constraint FKgxo63ukoi0sga3gfw7smijnf3 foreign key (survey_id_survey) references survey (id_survey)
alter table user add constraint FKearmmhtje53d5oqwixkfmuyky foreign key (company_user_nip) references company (nip)
alter table user add constraint FKq248jm9qs5dxdka1bj4aewju4 foreign key (customer_user_id_customer) references customer (id_customer)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), archive_advertisement_id_archives bigint, company_id_company bigint, search_advertisement_id_categories_of_search bigint, survey_id_survey bigint, primary key (id_advertisement)) engine=InnoDB
create table advertisement_applications_advertisement (advertisement_id_advertisement bigint not null, applications_advertisement_id_application bigint not null) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id_advertisement bigint, company_id_company bigint, customer_id_customer bigint, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, advertisement_archives_id_advertisement bigint, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, survey_company_id_survey bigint, user_company_id_user bigint, primary key (nip)) engine=InnoDB
create table company_advertisement_company (company_nip bigint not null, advertisement_company_id_advertisement bigint not null) engine=InnoDB
create table company_applications_company (company_nip bigint not null, applications_company_id_application bigint not null) engine=InnoDB
create table company_message_enties_company (company_nip bigint not null, message_enties_company_id_message bigint not null) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, cv_customer_idcv bigint, user_customer_id_user bigint, primary key (id_customer)) engine=InnoDB
create table customer_applications_customer (customer_id_customer bigint not null, applications_customer_id_application bigint not null) engine=InnoDB
create table customer_certificates_customer (customer_id_customer bigint not null, certificates_customer_id_certificate bigint not null) engine=InnoDB
create table customer_courses_customer (customer_id_customer bigint not null, courses_customer_id_course bigint not null) engine=InnoDB
create table customer_message_enties_customer (customer_id_customer bigint not null, message_enties_customer_id_message bigint not null) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_cv_id_customer bigint, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id_company bigint, customer_id_customer bigint, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id_survey bigint, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), advertisement_search_id_advertisement bigint, primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_survey_nip bigint, primary key (id_survey)) engine=InnoDB
create table survey_advertisements_survey (survey_id_survey bigint not null, advertisements_survey_id_advertisement bigint not null) engine=InnoDB
create table survey_questions_survey (survey_id_survey bigint not null, questions_survey_id_question bigint not null) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, company_user_nip bigint, customer_user_id_customer bigint, primary key (id_user)) engine=InnoDB
alter table advertisement_applications_advertisement add constraint UK_t9vmg93l6xvdk2oq8td9tcccy unique (applications_advertisement_id_application)
alter table company_advertisement_company add constraint UK_h5xvl2jc3lf9xsx7374upl517 unique (advertisement_company_id_advertisement)
alter table company_applications_company add constraint UK_hkt9mvu1s15qbncx00u4fohdj unique (applications_company_id_application)
alter table company_message_enties_company add constraint UK_bsh08l0m3eq0gkuht1wtuwh73 unique (message_enties_company_id_message)
alter table customer_applications_customer add constraint UK_phgoowicafg3nojh1fgx02bk1 unique (applications_customer_id_application)
alter table customer_certificates_customer add constraint UK_2j79g8838r8j5aq86tcunqstd unique (certificates_customer_id_certificate)
alter table customer_courses_customer add constraint UK_a2dox4sstw7ja05uo28vnrkjg unique (courses_customer_id_course)
alter table customer_message_enties_customer add constraint UK_p1j68rgs6aeimw5wl0dstwu2k unique (message_enties_customer_id_message)
alter table survey_advertisements_survey add constraint UK_6yxayavbjgfwqbgosarhvk9g3 unique (advertisements_survey_id_advertisement)
alter table survey_questions_survey add constraint UK_kplcsv1b2cunaahmwyyv6rdke unique (questions_survey_id_question)
alter table advertisement add constraint FKgiunmpba4cimjk8llgubfe6ul foreign key (archive_advertisement_id_archives) references archives (id_archives)
alter table advertisement add constraint FKqdmy4ppepvyvhprfm7tp4ci41 foreign key (company_id_company) references company (nip)
alter table advertisement add constraint FKoy7utu8iquefodt8gwnplm9on foreign key (search_advertisement_id_categories_of_search) references search (id_categories_of_search)
alter table advertisement add constraint FK6b5b0ngkb7g0q8v1y5jlyr1ar foreign key (survey_id_survey) references survey (id_survey)
alter table advertisement_applications_advertisement add constraint FKc4s9vvwd7tv8o6f3gnn7s8jh8 foreign key (applications_advertisement_id_application) references application (id_application)
alter table advertisement_applications_advertisement add constraint FKgqf2f0tv2y5cflamvh9p4skre foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK614e8yxe5rahjj8eaos0fviii foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK5m64be5ht8ngb1wji5trm2tku foreign key (company_id_company) references company (nip)
alter table application add constraint FKklsb5byveiajqob9jpcqx37ce foreign key (customer_id_customer) references customer (id_customer)
alter table archives add constraint FKthem932fgxbj48wsdbx3ccnq foreign key (advertisement_archives_id_advertisement) references advertisement (id_advertisement)
alter table certificate add constraint FK5k2f727vigkmpjvbalfy41rqa foreign key (customer_id_customer) references customer (id_customer)
alter table company add constraint FK8b5u4qxvyixxmtbrcniuajgyt foreign key (survey_company_id_survey) references survey (id_survey)
alter table company add constraint FKjrrfp81vg6l6mfmwvr8wwk73k foreign key (user_company_id_user) references user (id_user)
alter table company_advertisement_company add constraint FK6uxpm7x410lw4qscjd2su3wce foreign key (advertisement_company_id_advertisement) references advertisement (id_advertisement)
alter table company_advertisement_company add constraint FKra6ropf3ni6y03ea3x6r3wuli foreign key (company_nip) references company (nip)
alter table company_applications_company add constraint FK1j3yr7se7ermskwkixtn6oa8n foreign key (applications_company_id_application) references application (id_application)
alter table company_applications_company add constraint FKfxqkr3cw4dllk2e98suufeebv foreign key (company_nip) references company (nip)
alter table company_message_enties_company add constraint FKi9pg89k3dt1msbn84ixos180e foreign key (message_enties_company_id_message) references message (id_message)
alter table company_message_enties_company add constraint FK8imux87k5is85fmw60dc8r9i0 foreign key (company_nip) references company (nip)
alter table course add constraint FKgxng2xf3os0e1g01yh74hqj7u foreign key (customer_id_customer) references customer (id_customer)
alter table customer add constraint FK10v30i0mmylpqt626liiimlwu foreign key (cv_customer_idcv) references cv (idcv)
alter table customer add constraint FKrlw2al5r2uvqfqejg8hnprx2v foreign key (user_customer_id_user) references user (id_user)
alter table customer_applications_customer add constraint FKq0k60bi2ucc3ifahhb5sna455 foreign key (applications_customer_id_application) references application (id_application)
alter table customer_applications_customer add constraint FKyndklb0401rg1t3rbhou45v1 foreign key (customer_id_customer) references customer (id_customer)
alter table customer_certificates_customer add constraint FKq3lln1ft0x652lf61uyavcfyf foreign key (certificates_customer_id_certificate) references certificate (id_certificate)
alter table customer_certificates_customer add constraint FKg5xmilyon2rt9w84g1xkc0v7e foreign key (customer_id_customer) references customer (id_customer)
alter table customer_courses_customer add constraint FKlv20r7wn7ea3ko61fdchlvxx7 foreign key (courses_customer_id_course) references course (id_course)
alter table customer_courses_customer add constraint FKhb89tu4g9juwomglh5o4ildkc foreign key (customer_id_customer) references customer (id_customer)
alter table customer_message_enties_customer add constraint FK87qk9mvnhk6icpj02qduw8iid foreign key (message_enties_customer_id_message) references message (id_message)
alter table customer_message_enties_customer add constraint FKk577gek8jgi7latljoc1wu4vd foreign key (customer_id_customer) references customer (id_customer)
alter table cv add constraint FKa7pc74ut0qecqa1q6mqk0dseh foreign key (customer_cv_id_customer) references customer (id_customer)
alter table message add constraint FKqoj0iksnxuy71t0d7vqnpk260 foreign key (company_id_company) references company (nip)
alter table message add constraint FK1904gs1f8a39vpqpd4j0v2nuo foreign key (customer_id_customer) references customer (id_customer)
alter table question add constraint FK322vu14ev6wxov2dfsqkpxnl4 foreign key (survey_id_survey) references survey (id_survey)
alter table search add constraint FKpqchuntykbw6f2dowv9mfjail foreign key (advertisement_search_id_advertisement) references advertisement (id_advertisement)
alter table survey add constraint FKa3is5ghk0lo9udagkinrv4v9v foreign key (company_survey_nip) references company (nip)
alter table survey_advertisements_survey add constraint FKc9moy3goxk1f3rpyg8w7ar8tl foreign key (advertisements_survey_id_advertisement) references advertisement (id_advertisement)
alter table survey_advertisements_survey add constraint FKjpax6hmj6lkrwhx3u1yghkykw foreign key (survey_id_survey) references survey (id_survey)
alter table survey_questions_survey add constraint FKadxkmy2ncqpq90bcdo8rnx7s5 foreign key (questions_survey_id_question) references question (id_question)
alter table survey_questions_survey add constraint FKgxo63ukoi0sga3gfw7smijnf3 foreign key (survey_id_survey) references survey (id_survey)
alter table user add constraint FKearmmhtje53d5oqwixkfmuyky foreign key (company_user_nip) references company (nip)
alter table user add constraint FKq248jm9qs5dxdka1bj4aewju4 foreign key (customer_user_id_customer) references customer (id_customer)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), archive_advertisement_id_archives bigint, company_id_company bigint, search_advertisement_id_categories_of_search bigint, survey_id_survey bigint, primary key (id_advertisement)) engine=InnoDB
create table advertisement_applications_advertisement (advertisement_id_advertisement bigint not null, applications_advertisement_id_application bigint not null) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id_advertisement bigint, company_id_company bigint, customer_id_customer bigint, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, advertisement_archives_id_advertisement bigint, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, survey_company_id_survey bigint, user_company_id_user bigint, primary key (nip)) engine=InnoDB
create table company_advertisement_company (company_nip bigint not null, advertisement_company_id_advertisement bigint not null) engine=InnoDB
create table company_applications_company (company_nip bigint not null, applications_company_id_application bigint not null) engine=InnoDB
create table company_message_enties_company (company_nip bigint not null, message_enties_company_id_message bigint not null) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, cv_customer_idcv bigint, user_customer_id_user bigint, primary key (id_customer)) engine=InnoDB
create table customer_applications_customer (customer_id_customer bigint not null, applications_customer_id_application bigint not null) engine=InnoDB
create table customer_certificates_customer (customer_id_customer bigint not null, certificates_customer_id_certificate bigint not null) engine=InnoDB
create table customer_courses_customer (customer_id_customer bigint not null, courses_customer_id_course bigint not null) engine=InnoDB
create table customer_message_enties_customer (customer_id_customer bigint not null, message_enties_customer_id_message bigint not null) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_cv_id_customer bigint, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id_company bigint, customer_id_customer bigint, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id_survey bigint, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), advertisement_search_id_advertisement bigint, primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_survey_nip bigint, primary key (id_survey)) engine=InnoDB
create table survey_advertisements_survey (survey_id_survey bigint not null, advertisements_survey_id_advertisement bigint not null) engine=InnoDB
create table survey_questions_survey (survey_id_survey bigint not null, questions_survey_id_question bigint not null) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, company_user_nip bigint, customer_user_id_customer bigint, primary key (id_user)) engine=InnoDB
alter table advertisement_applications_advertisement add constraint UK_t9vmg93l6xvdk2oq8td9tcccy unique (applications_advertisement_id_application)
alter table company_advertisement_company add constraint UK_h5xvl2jc3lf9xsx7374upl517 unique (advertisement_company_id_advertisement)
alter table company_applications_company add constraint UK_hkt9mvu1s15qbncx00u4fohdj unique (applications_company_id_application)
alter table company_message_enties_company add constraint UK_bsh08l0m3eq0gkuht1wtuwh73 unique (message_enties_company_id_message)
alter table customer_applications_customer add constraint UK_phgoowicafg3nojh1fgx02bk1 unique (applications_customer_id_application)
alter table customer_certificates_customer add constraint UK_2j79g8838r8j5aq86tcunqstd unique (certificates_customer_id_certificate)
alter table customer_courses_customer add constraint UK_a2dox4sstw7ja05uo28vnrkjg unique (courses_customer_id_course)
alter table customer_message_enties_customer add constraint UK_p1j68rgs6aeimw5wl0dstwu2k unique (message_enties_customer_id_message)
alter table survey_advertisements_survey add constraint UK_6yxayavbjgfwqbgosarhvk9g3 unique (advertisements_survey_id_advertisement)
alter table survey_questions_survey add constraint UK_kplcsv1b2cunaahmwyyv6rdke unique (questions_survey_id_question)
alter table advertisement add constraint FKgiunmpba4cimjk8llgubfe6ul foreign key (archive_advertisement_id_archives) references archives (id_archives)
alter table advertisement add constraint FKqdmy4ppepvyvhprfm7tp4ci41 foreign key (company_id_company) references company (nip)
alter table advertisement add constraint FKoy7utu8iquefodt8gwnplm9on foreign key (search_advertisement_id_categories_of_search) references search (id_categories_of_search)
alter table advertisement add constraint FK6b5b0ngkb7g0q8v1y5jlyr1ar foreign key (survey_id_survey) references survey (id_survey)
alter table advertisement_applications_advertisement add constraint FKc4s9vvwd7tv8o6f3gnn7s8jh8 foreign key (applications_advertisement_id_application) references application (id_application)
alter table advertisement_applications_advertisement add constraint FKgqf2f0tv2y5cflamvh9p4skre foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK614e8yxe5rahjj8eaos0fviii foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK5m64be5ht8ngb1wji5trm2tku foreign key (company_id_company) references company (nip)
alter table application add constraint FKklsb5byveiajqob9jpcqx37ce foreign key (customer_id_customer) references customer (id_customer)
alter table archives add constraint FKthem932fgxbj48wsdbx3ccnq foreign key (advertisement_archives_id_advertisement) references advertisement (id_advertisement)
alter table certificate add constraint FK5k2f727vigkmpjvbalfy41rqa foreign key (customer_id_customer) references customer (id_customer)
alter table company add constraint FK8b5u4qxvyixxmtbrcniuajgyt foreign key (survey_company_id_survey) references survey (id_survey)
alter table company add constraint FKjrrfp81vg6l6mfmwvr8wwk73k foreign key (user_company_id_user) references user (id_user)
alter table company_advertisement_company add constraint FK6uxpm7x410lw4qscjd2su3wce foreign key (advertisement_company_id_advertisement) references advertisement (id_advertisement)
alter table company_advertisement_company add constraint FKra6ropf3ni6y03ea3x6r3wuli foreign key (company_nip) references company (nip)
alter table company_applications_company add constraint FK1j3yr7se7ermskwkixtn6oa8n foreign key (applications_company_id_application) references application (id_application)
alter table company_applications_company add constraint FKfxqkr3cw4dllk2e98suufeebv foreign key (company_nip) references company (nip)
alter table company_message_enties_company add constraint FKi9pg89k3dt1msbn84ixos180e foreign key (message_enties_company_id_message) references message (id_message)
alter table company_message_enties_company add constraint FK8imux87k5is85fmw60dc8r9i0 foreign key (company_nip) references company (nip)
alter table course add constraint FKgxng2xf3os0e1g01yh74hqj7u foreign key (customer_id_customer) references customer (id_customer)
alter table customer add constraint FK10v30i0mmylpqt626liiimlwu foreign key (cv_customer_idcv) references cv (idcv)
alter table customer add constraint FKrlw2al5r2uvqfqejg8hnprx2v foreign key (user_customer_id_user) references user (id_user)
alter table customer_applications_customer add constraint FKq0k60bi2ucc3ifahhb5sna455 foreign key (applications_customer_id_application) references application (id_application)
alter table customer_applications_customer add constraint FKyndklb0401rg1t3rbhou45v1 foreign key (customer_id_customer) references customer (id_customer)
alter table customer_certificates_customer add constraint FKq3lln1ft0x652lf61uyavcfyf foreign key (certificates_customer_id_certificate) references certificate (id_certificate)
alter table customer_certificates_customer add constraint FKg5xmilyon2rt9w84g1xkc0v7e foreign key (customer_id_customer) references customer (id_customer)
alter table customer_courses_customer add constraint FKlv20r7wn7ea3ko61fdchlvxx7 foreign key (courses_customer_id_course) references course (id_course)
alter table customer_courses_customer add constraint FKhb89tu4g9juwomglh5o4ildkc foreign key (customer_id_customer) references customer (id_customer)
alter table customer_message_enties_customer add constraint FK87qk9mvnhk6icpj02qduw8iid foreign key (message_enties_customer_id_message) references message (id_message)
alter table customer_message_enties_customer add constraint FKk577gek8jgi7latljoc1wu4vd foreign key (customer_id_customer) references customer (id_customer)
alter table cv add constraint FKa7pc74ut0qecqa1q6mqk0dseh foreign key (customer_cv_id_customer) references customer (id_customer)
alter table message add constraint FKqoj0iksnxuy71t0d7vqnpk260 foreign key (company_id_company) references company (nip)
alter table message add constraint FK1904gs1f8a39vpqpd4j0v2nuo foreign key (customer_id_customer) references customer (id_customer)
alter table question add constraint FK322vu14ev6wxov2dfsqkpxnl4 foreign key (survey_id_survey) references survey (id_survey)
alter table search add constraint FKpqchuntykbw6f2dowv9mfjail foreign key (advertisement_search_id_advertisement) references advertisement (id_advertisement)
alter table survey add constraint FKa3is5ghk0lo9udagkinrv4v9v foreign key (company_survey_nip) references company (nip)
alter table survey_advertisements_survey add constraint FKc9moy3goxk1f3rpyg8w7ar8tl foreign key (advertisements_survey_id_advertisement) references advertisement (id_advertisement)
alter table survey_advertisements_survey add constraint FKjpax6hmj6lkrwhx3u1yghkykw foreign key (survey_id_survey) references survey (id_survey)
alter table survey_questions_survey add constraint FKadxkmy2ncqpq90bcdo8rnx7s5 foreign key (questions_survey_id_question) references question (id_question)
alter table survey_questions_survey add constraint FKgxo63ukoi0sga3gfw7smijnf3 foreign key (survey_id_survey) references survey (id_survey)
alter table user add constraint FKearmmhtje53d5oqwixkfmuyky foreign key (company_user_nip) references company (nip)
alter table user add constraint FKq248jm9qs5dxdka1bj4aewju4 foreign key (customer_user_id_customer) references customer (id_customer)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), archive_advertisement_id_archives bigint, company_id_company bigint, search_advertisement_id_categories_of_search bigint, survey_id_survey bigint, primary key (id_advertisement)) engine=InnoDB
create table advertisement_applications_advertisement (advertisement_id_advertisement bigint not null, applications_advertisement_id_application bigint not null) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, id_advertisement bigint not null, company_id_company bigint, customer_id_customer bigint, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, advertisement_archives_id_advertisement bigint, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, survey_company_id_survey bigint, user_company_id_user bigint, primary key (nip)) engine=InnoDB
create table company_advertisement_company (company_nip bigint not null, advertisement_company_id_advertisement bigint not null) engine=InnoDB
create table company_applications_company (company_nip bigint not null, applications_company_id_application bigint not null) engine=InnoDB
create table company_message_enties_company (company_nip bigint not null, message_enties_company_id_message bigint not null) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, cv_customer_idcv bigint, user_customer_id_user bigint, primary key (id_customer)) engine=InnoDB
create table customer_applications_customer (customer_id_customer bigint not null, applications_customer_id_application bigint not null) engine=InnoDB
create table customer_certificates_customer (customer_id_customer bigint not null, certificates_customer_id_certificate bigint not null) engine=InnoDB
create table customer_courses_customer (customer_id_customer bigint not null, courses_customer_id_course bigint not null) engine=InnoDB
create table customer_message_enties_customer (customer_id_customer bigint not null, message_enties_customer_id_message bigint not null) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_cv_id_customer bigint, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id_company bigint, customer_id_customer bigint, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id_survey bigint, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), advertisement_search_id_advertisement bigint, primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_survey_nip bigint, primary key (id_survey)) engine=InnoDB
create table survey_advertisements_survey (survey_id_survey bigint not null, advertisements_survey_id_advertisement bigint not null) engine=InnoDB
create table survey_questions_survey (survey_id_survey bigint not null, questions_survey_id_question bigint not null) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, company_user_nip bigint, customer_user_id_customer bigint, primary key (id_user)) engine=InnoDB
alter table advertisement_applications_advertisement add constraint UK_t9vmg93l6xvdk2oq8td9tcccy unique (applications_advertisement_id_application)
alter table company_advertisement_company add constraint UK_h5xvl2jc3lf9xsx7374upl517 unique (advertisement_company_id_advertisement)
alter table company_applications_company add constraint UK_hkt9mvu1s15qbncx00u4fohdj unique (applications_company_id_application)
alter table company_message_enties_company add constraint UK_bsh08l0m3eq0gkuht1wtuwh73 unique (message_enties_company_id_message)
alter table customer_applications_customer add constraint UK_phgoowicafg3nojh1fgx02bk1 unique (applications_customer_id_application)
alter table customer_certificates_customer add constraint UK_2j79g8838r8j5aq86tcunqstd unique (certificates_customer_id_certificate)
alter table customer_courses_customer add constraint UK_a2dox4sstw7ja05uo28vnrkjg unique (courses_customer_id_course)
alter table customer_message_enties_customer add constraint UK_p1j68rgs6aeimw5wl0dstwu2k unique (message_enties_customer_id_message)
alter table survey_advertisements_survey add constraint UK_6yxayavbjgfwqbgosarhvk9g3 unique (advertisements_survey_id_advertisement)
alter table survey_questions_survey add constraint UK_kplcsv1b2cunaahmwyyv6rdke unique (questions_survey_id_question)
alter table advertisement add constraint FKgiunmpba4cimjk8llgubfe6ul foreign key (archive_advertisement_id_archives) references archives (id_archives)
alter table advertisement add constraint FKqdmy4ppepvyvhprfm7tp4ci41 foreign key (company_id_company) references company (nip)
alter table advertisement add constraint FKoy7utu8iquefodt8gwnplm9on foreign key (search_advertisement_id_categories_of_search) references search (id_categories_of_search)
alter table advertisement add constraint FK6b5b0ngkb7g0q8v1y5jlyr1ar foreign key (survey_id_survey) references survey (id_survey)
alter table advertisement_applications_advertisement add constraint FKc4s9vvwd7tv8o6f3gnn7s8jh8 foreign key (applications_advertisement_id_application) references application (id_application)
alter table advertisement_applications_advertisement add constraint FKgqf2f0tv2y5cflamvh9p4skre foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK62wp7g2o7xn6aidvwedc25atk foreign key (id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK5m64be5ht8ngb1wji5trm2tku foreign key (company_id_company) references company (nip)
alter table application add constraint FKklsb5byveiajqob9jpcqx37ce foreign key (customer_id_customer) references customer (id_customer)
alter table archives add constraint FKthem932fgxbj48wsdbx3ccnq foreign key (advertisement_archives_id_advertisement) references advertisement (id_advertisement)
alter table certificate add constraint FK5k2f727vigkmpjvbalfy41rqa foreign key (customer_id_customer) references customer (id_customer)
alter table company add constraint FK8b5u4qxvyixxmtbrcniuajgyt foreign key (survey_company_id_survey) references survey (id_survey)
alter table company add constraint FKjrrfp81vg6l6mfmwvr8wwk73k foreign key (user_company_id_user) references user (id_user)
alter table company_advertisement_company add constraint FK6uxpm7x410lw4qscjd2su3wce foreign key (advertisement_company_id_advertisement) references advertisement (id_advertisement)
alter table company_advertisement_company add constraint FKra6ropf3ni6y03ea3x6r3wuli foreign key (company_nip) references company (nip)
alter table company_applications_company add constraint FK1j3yr7se7ermskwkixtn6oa8n foreign key (applications_company_id_application) references application (id_application)
alter table company_applications_company add constraint FKfxqkr3cw4dllk2e98suufeebv foreign key (company_nip) references company (nip)
alter table company_message_enties_company add constraint FKi9pg89k3dt1msbn84ixos180e foreign key (message_enties_company_id_message) references message (id_message)
alter table company_message_enties_company add constraint FK8imux87k5is85fmw60dc8r9i0 foreign key (company_nip) references company (nip)
alter table course add constraint FKgxng2xf3os0e1g01yh74hqj7u foreign key (customer_id_customer) references customer (id_customer)
alter table customer add constraint FK10v30i0mmylpqt626liiimlwu foreign key (cv_customer_idcv) references cv (idcv)
alter table customer add constraint FKrlw2al5r2uvqfqejg8hnprx2v foreign key (user_customer_id_user) references user (id_user)
alter table customer_applications_customer add constraint FKq0k60bi2ucc3ifahhb5sna455 foreign key (applications_customer_id_application) references application (id_application)
alter table customer_applications_customer add constraint FKyndklb0401rg1t3rbhou45v1 foreign key (customer_id_customer) references customer (id_customer)
alter table customer_certificates_customer add constraint FKq3lln1ft0x652lf61uyavcfyf foreign key (certificates_customer_id_certificate) references certificate (id_certificate)
alter table customer_certificates_customer add constraint FKg5xmilyon2rt9w84g1xkc0v7e foreign key (customer_id_customer) references customer (id_customer)
alter table customer_courses_customer add constraint FKlv20r7wn7ea3ko61fdchlvxx7 foreign key (courses_customer_id_course) references course (id_course)
alter table customer_courses_customer add constraint FKhb89tu4g9juwomglh5o4ildkc foreign key (customer_id_customer) references customer (id_customer)
alter table customer_message_enties_customer add constraint FK87qk9mvnhk6icpj02qduw8iid foreign key (message_enties_customer_id_message) references message (id_message)
alter table customer_message_enties_customer add constraint FKk577gek8jgi7latljoc1wu4vd foreign key (customer_id_customer) references customer (id_customer)
alter table cv add constraint FKa7pc74ut0qecqa1q6mqk0dseh foreign key (customer_cv_id_customer) references customer (id_customer)
alter table message add constraint FKqoj0iksnxuy71t0d7vqnpk260 foreign key (company_id_company) references company (nip)
alter table message add constraint FK1904gs1f8a39vpqpd4j0v2nuo foreign key (customer_id_customer) references customer (id_customer)
alter table question add constraint FK322vu14ev6wxov2dfsqkpxnl4 foreign key (survey_id_survey) references survey (id_survey)
alter table search add constraint FKpqchuntykbw6f2dowv9mfjail foreign key (advertisement_search_id_advertisement) references advertisement (id_advertisement)
alter table survey add constraint FKa3is5ghk0lo9udagkinrv4v9v foreign key (company_survey_nip) references company (nip)
alter table survey_advertisements_survey add constraint FKc9moy3goxk1f3rpyg8w7ar8tl foreign key (advertisements_survey_id_advertisement) references advertisement (id_advertisement)
alter table survey_advertisements_survey add constraint FKjpax6hmj6lkrwhx3u1yghkykw foreign key (survey_id_survey) references survey (id_survey)
alter table survey_questions_survey add constraint FKadxkmy2ncqpq90bcdo8rnx7s5 foreign key (questions_survey_id_question) references question (id_question)
alter table survey_questions_survey add constraint FKgxo63ukoi0sga3gfw7smijnf3 foreign key (survey_id_survey) references survey (id_survey)
alter table user add constraint FKearmmhtje53d5oqwixkfmuyky foreign key (company_user_nip) references company (nip)
alter table user add constraint FKq248jm9qs5dxdka1bj4aewju4 foreign key (customer_user_id_customer) references customer (id_customer)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), archive_advertisement_id_archives bigint, company_id_company bigint, search_advertisement_id_categories_of_search bigint, survey_id_survey bigint, primary key (id_advertisement)) engine=InnoDB
create table advertisement_applications_advertisement (advertisement_id_advertisement bigint not null, applications_advertisement_id_application bigint not null) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, id_advertisement bigint not null, company_id_company bigint, customer_id_customer bigint, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, advertisement_archives_id_advertisement bigint, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, survey_company_id_survey bigint, user_company_id_user bigint, primary key (nip)) engine=InnoDB
create table company_advertisement_company (company_nip bigint not null, advertisement_company_id_advertisement bigint not null) engine=InnoDB
create table company_applications_company (company_nip bigint not null, applications_company_id_application bigint not null) engine=InnoDB
create table company_message_enties_company (company_nip bigint not null, message_enties_company_id_message bigint not null) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, cv_customer_idcv bigint, user_customer_id_user bigint, primary key (id_customer)) engine=InnoDB
create table customer_applications_customer (customer_id_customer bigint not null, applications_customer_id_application bigint not null) engine=InnoDB
create table customer_certificates_customer (customer_id_customer bigint not null, certificates_customer_id_certificate bigint not null) engine=InnoDB
create table customer_courses_customer (customer_id_customer bigint not null, courses_customer_id_course bigint not null) engine=InnoDB
create table customer_message_enties_customer (customer_id_customer bigint not null, message_enties_customer_id_message bigint not null) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_cv_id_customer bigint, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id_company bigint, customer_id_customer bigint, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id_survey bigint, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), advertisement_search_id_advertisement bigint, primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_survey_nip bigint, primary key (id_survey)) engine=InnoDB
create table survey_advertisements_survey (survey_id_survey bigint not null, advertisements_survey_id_advertisement bigint not null) engine=InnoDB
create table survey_questions_survey (survey_id_survey bigint not null, questions_survey_id_question bigint not null) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, company_user_nip bigint, customer_user_id_customer bigint, primary key (id_user)) engine=InnoDB
alter table advertisement_applications_advertisement add constraint UK_t9vmg93l6xvdk2oq8td9tcccy unique (applications_advertisement_id_application)
alter table company_advertisement_company add constraint UK_h5xvl2jc3lf9xsx7374upl517 unique (advertisement_company_id_advertisement)
alter table company_applications_company add constraint UK_hkt9mvu1s15qbncx00u4fohdj unique (applications_company_id_application)
alter table company_message_enties_company add constraint UK_bsh08l0m3eq0gkuht1wtuwh73 unique (message_enties_company_id_message)
alter table customer_applications_customer add constraint UK_phgoowicafg3nojh1fgx02bk1 unique (applications_customer_id_application)
alter table customer_certificates_customer add constraint UK_2j79g8838r8j5aq86tcunqstd unique (certificates_customer_id_certificate)
alter table customer_courses_customer add constraint UK_a2dox4sstw7ja05uo28vnrkjg unique (courses_customer_id_course)
alter table customer_message_enties_customer add constraint UK_p1j68rgs6aeimw5wl0dstwu2k unique (message_enties_customer_id_message)
alter table survey_advertisements_survey add constraint UK_6yxayavbjgfwqbgosarhvk9g3 unique (advertisements_survey_id_advertisement)
alter table survey_questions_survey add constraint UK_kplcsv1b2cunaahmwyyv6rdke unique (questions_survey_id_question)
alter table advertisement add constraint FKgiunmpba4cimjk8llgubfe6ul foreign key (archive_advertisement_id_archives) references archives (id_archives)
alter table advertisement add constraint FKqdmy4ppepvyvhprfm7tp4ci41 foreign key (company_id_company) references company (nip)
alter table advertisement add constraint FKoy7utu8iquefodt8gwnplm9on foreign key (search_advertisement_id_categories_of_search) references search (id_categories_of_search)
alter table advertisement add constraint FK6b5b0ngkb7g0q8v1y5jlyr1ar foreign key (survey_id_survey) references survey (id_survey)
alter table advertisement_applications_advertisement add constraint FKc4s9vvwd7tv8o6f3gnn7s8jh8 foreign key (applications_advertisement_id_application) references application (id_application)
alter table advertisement_applications_advertisement add constraint FKgqf2f0tv2y5cflamvh9p4skre foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK62wp7g2o7xn6aidvwedc25atk foreign key (id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK5m64be5ht8ngb1wji5trm2tku foreign key (company_id_company) references company (nip)
alter table application add constraint FKklsb5byveiajqob9jpcqx37ce foreign key (customer_id_customer) references customer (id_customer)
alter table archives add constraint FKthem932fgxbj48wsdbx3ccnq foreign key (advertisement_archives_id_advertisement) references advertisement (id_advertisement)
alter table certificate add constraint FK5k2f727vigkmpjvbalfy41rqa foreign key (customer_id_customer) references customer (id_customer)
alter table company add constraint FK8b5u4qxvyixxmtbrcniuajgyt foreign key (survey_company_id_survey) references survey (id_survey)
alter table company add constraint FKjrrfp81vg6l6mfmwvr8wwk73k foreign key (user_company_id_user) references user (id_user)
alter table company_advertisement_company add constraint FK6uxpm7x410lw4qscjd2su3wce foreign key (advertisement_company_id_advertisement) references advertisement (id_advertisement)
alter table company_advertisement_company add constraint FKra6ropf3ni6y03ea3x6r3wuli foreign key (company_nip) references company (nip)
alter table company_applications_company add constraint FK1j3yr7se7ermskwkixtn6oa8n foreign key (applications_company_id_application) references application (id_application)
alter table company_applications_company add constraint FKfxqkr3cw4dllk2e98suufeebv foreign key (company_nip) references company (nip)
alter table company_message_enties_company add constraint FKi9pg89k3dt1msbn84ixos180e foreign key (message_enties_company_id_message) references message (id_message)
alter table company_message_enties_company add constraint FK8imux87k5is85fmw60dc8r9i0 foreign key (company_nip) references company (nip)
alter table course add constraint FKgxng2xf3os0e1g01yh74hqj7u foreign key (customer_id_customer) references customer (id_customer)
alter table customer add constraint FK10v30i0mmylpqt626liiimlwu foreign key (cv_customer_idcv) references cv (idcv)
alter table customer add constraint FKrlw2al5r2uvqfqejg8hnprx2v foreign key (user_customer_id_user) references user (id_user)
alter table customer_applications_customer add constraint FKq0k60bi2ucc3ifahhb5sna455 foreign key (applications_customer_id_application) references application (id_application)
alter table customer_applications_customer add constraint FKyndklb0401rg1t3rbhou45v1 foreign key (customer_id_customer) references customer (id_customer)
alter table customer_certificates_customer add constraint FKq3lln1ft0x652lf61uyavcfyf foreign key (certificates_customer_id_certificate) references certificate (id_certificate)
alter table customer_certificates_customer add constraint FKg5xmilyon2rt9w84g1xkc0v7e foreign key (customer_id_customer) references customer (id_customer)
alter table customer_courses_customer add constraint FKlv20r7wn7ea3ko61fdchlvxx7 foreign key (courses_customer_id_course) references course (id_course)
alter table customer_courses_customer add constraint FKhb89tu4g9juwomglh5o4ildkc foreign key (customer_id_customer) references customer (id_customer)
alter table customer_message_enties_customer add constraint FK87qk9mvnhk6icpj02qduw8iid foreign key (message_enties_customer_id_message) references message (id_message)
alter table customer_message_enties_customer add constraint FKk577gek8jgi7latljoc1wu4vd foreign key (customer_id_customer) references customer (id_customer)
alter table cv add constraint FKa7pc74ut0qecqa1q6mqk0dseh foreign key (customer_cv_id_customer) references customer (id_customer)
alter table message add constraint FKqoj0iksnxuy71t0d7vqnpk260 foreign key (company_id_company) references company (nip)
alter table message add constraint FK1904gs1f8a39vpqpd4j0v2nuo foreign key (customer_id_customer) references customer (id_customer)
alter table question add constraint FK322vu14ev6wxov2dfsqkpxnl4 foreign key (survey_id_survey) references survey (id_survey)
alter table search add constraint FKpqchuntykbw6f2dowv9mfjail foreign key (advertisement_search_id_advertisement) references advertisement (id_advertisement)
alter table survey add constraint FKa3is5ghk0lo9udagkinrv4v9v foreign key (company_survey_nip) references company (nip)
alter table survey_advertisements_survey add constraint FKc9moy3goxk1f3rpyg8w7ar8tl foreign key (advertisements_survey_id_advertisement) references advertisement (id_advertisement)
alter table survey_advertisements_survey add constraint FKjpax6hmj6lkrwhx3u1yghkykw foreign key (survey_id_survey) references survey (id_survey)
alter table survey_questions_survey add constraint FKadxkmy2ncqpq90bcdo8rnx7s5 foreign key (questions_survey_id_question) references question (id_question)
alter table survey_questions_survey add constraint FKgxo63ukoi0sga3gfw7smijnf3 foreign key (survey_id_survey) references survey (id_survey)
alter table user add constraint FKearmmhtje53d5oqwixkfmuyky foreign key (company_user_nip) references company (nip)
alter table user add constraint FKq248jm9qs5dxdka1bj4aewju4 foreign key (customer_user_id_customer) references customer (id_customer)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), company_id_company bigint, search_advertisement_id_categories_of_search bigint, survey_id_survey bigint, primary key (id_advertisement)) engine=InnoDB
create table advertisement_applications_advertisement (advertisement_id_advertisement bigint not null, applications_advertisement_id_application bigint not null) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, id_advertisement bigint not null, company_id_company bigint, customer_id_customer bigint, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, survey_company_id_survey bigint, user_company_id_user bigint, primary key (nip)) engine=InnoDB
create table company_advertisement_company (company_nip bigint not null, advertisement_company_id_advertisement bigint not null) engine=InnoDB
create table company_applications_company (company_nip bigint not null, applications_company_id_application bigint not null) engine=InnoDB
create table company_message_enties_company (company_nip bigint not null, message_enties_company_id_message bigint not null) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, cv_customer_idcv bigint, user_customer_id_user bigint, primary key (id_customer)) engine=InnoDB
create table customer_applications_customer (customer_id_customer bigint not null, applications_customer_id_application bigint not null) engine=InnoDB
create table customer_certificates_customer (customer_id_customer bigint not null, certificates_customer_id_certificate bigint not null) engine=InnoDB
create table customer_courses_customer (customer_id_customer bigint not null, courses_customer_id_course bigint not null) engine=InnoDB
create table customer_message_enties_customer (customer_id_customer bigint not null, message_enties_customer_id_message bigint not null) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_cv_id_customer bigint, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id_company bigint, customer_id_customer bigint, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id_survey bigint, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), advertisement_search_id_advertisement bigint, primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_survey_nip bigint, primary key (id_survey)) engine=InnoDB
create table survey_advertisements_survey (survey_id_survey bigint not null, advertisements_survey_id_advertisement bigint not null) engine=InnoDB
create table survey_questions_survey (survey_id_survey bigint not null, questions_survey_id_question bigint not null) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, company_user_nip bigint, customer_user_id_customer bigint, primary key (id_user)) engine=InnoDB
alter table advertisement_applications_advertisement add constraint UK_t9vmg93l6xvdk2oq8td9tcccy unique (applications_advertisement_id_application)
alter table company_advertisement_company add constraint UK_h5xvl2jc3lf9xsx7374upl517 unique (advertisement_company_id_advertisement)
alter table company_applications_company add constraint UK_hkt9mvu1s15qbncx00u4fohdj unique (applications_company_id_application)
alter table company_message_enties_company add constraint UK_bsh08l0m3eq0gkuht1wtuwh73 unique (message_enties_company_id_message)
alter table customer_applications_customer add constraint UK_phgoowicafg3nojh1fgx02bk1 unique (applications_customer_id_application)
alter table customer_certificates_customer add constraint UK_2j79g8838r8j5aq86tcunqstd unique (certificates_customer_id_certificate)
alter table customer_courses_customer add constraint UK_a2dox4sstw7ja05uo28vnrkjg unique (courses_customer_id_course)
alter table customer_message_enties_customer add constraint UK_p1j68rgs6aeimw5wl0dstwu2k unique (message_enties_customer_id_message)
alter table survey_advertisements_survey add constraint UK_6yxayavbjgfwqbgosarhvk9g3 unique (advertisements_survey_id_advertisement)
alter table survey_questions_survey add constraint UK_kplcsv1b2cunaahmwyyv6rdke unique (questions_survey_id_question)
alter table advertisement add constraint FKqdmy4ppepvyvhprfm7tp4ci41 foreign key (company_id_company) references company (nip)
alter table advertisement add constraint FKoy7utu8iquefodt8gwnplm9on foreign key (search_advertisement_id_categories_of_search) references search (id_categories_of_search)
alter table advertisement add constraint FK6b5b0ngkb7g0q8v1y5jlyr1ar foreign key (survey_id_survey) references survey (id_survey)
alter table advertisement_applications_advertisement add constraint FKc4s9vvwd7tv8o6f3gnn7s8jh8 foreign key (applications_advertisement_id_application) references application (id_application)
alter table advertisement_applications_advertisement add constraint FKgqf2f0tv2y5cflamvh9p4skre foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK62wp7g2o7xn6aidvwedc25atk foreign key (id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK5m64be5ht8ngb1wji5trm2tku foreign key (company_id_company) references company (nip)
alter table application add constraint FKklsb5byveiajqob9jpcqx37ce foreign key (customer_id_customer) references customer (id_customer)
alter table certificate add constraint FK5k2f727vigkmpjvbalfy41rqa foreign key (customer_id_customer) references customer (id_customer)
alter table company add constraint FK8b5u4qxvyixxmtbrcniuajgyt foreign key (survey_company_id_survey) references survey (id_survey)
alter table company add constraint FKjrrfp81vg6l6mfmwvr8wwk73k foreign key (user_company_id_user) references user (id_user)
alter table company_advertisement_company add constraint FK6uxpm7x410lw4qscjd2su3wce foreign key (advertisement_company_id_advertisement) references advertisement (id_advertisement)
alter table company_advertisement_company add constraint FKra6ropf3ni6y03ea3x6r3wuli foreign key (company_nip) references company (nip)
alter table company_applications_company add constraint FK1j3yr7se7ermskwkixtn6oa8n foreign key (applications_company_id_application) references application (id_application)
alter table company_applications_company add constraint FKfxqkr3cw4dllk2e98suufeebv foreign key (company_nip) references company (nip)
alter table company_message_enties_company add constraint FKi9pg89k3dt1msbn84ixos180e foreign key (message_enties_company_id_message) references message (id_message)
alter table company_message_enties_company add constraint FK8imux87k5is85fmw60dc8r9i0 foreign key (company_nip) references company (nip)
alter table course add constraint FKgxng2xf3os0e1g01yh74hqj7u foreign key (customer_id_customer) references customer (id_customer)
alter table customer add constraint FK10v30i0mmylpqt626liiimlwu foreign key (cv_customer_idcv) references cv (idcv)
alter table customer add constraint FKrlw2al5r2uvqfqejg8hnprx2v foreign key (user_customer_id_user) references user (id_user)
alter table customer_applications_customer add constraint FKq0k60bi2ucc3ifahhb5sna455 foreign key (applications_customer_id_application) references application (id_application)
alter table customer_applications_customer add constraint FKyndklb0401rg1t3rbhou45v1 foreign key (customer_id_customer) references customer (id_customer)
alter table customer_certificates_customer add constraint FKq3lln1ft0x652lf61uyavcfyf foreign key (certificates_customer_id_certificate) references certificate (id_certificate)
alter table customer_certificates_customer add constraint FKg5xmilyon2rt9w84g1xkc0v7e foreign key (customer_id_customer) references customer (id_customer)
alter table customer_courses_customer add constraint FKlv20r7wn7ea3ko61fdchlvxx7 foreign key (courses_customer_id_course) references course (id_course)
alter table customer_courses_customer add constraint FKhb89tu4g9juwomglh5o4ildkc foreign key (customer_id_customer) references customer (id_customer)
alter table customer_message_enties_customer add constraint FK87qk9mvnhk6icpj02qduw8iid foreign key (message_enties_customer_id_message) references message (id_message)
alter table customer_message_enties_customer add constraint FKk577gek8jgi7latljoc1wu4vd foreign key (customer_id_customer) references customer (id_customer)
alter table cv add constraint FKa7pc74ut0qecqa1q6mqk0dseh foreign key (customer_cv_id_customer) references customer (id_customer)
alter table message add constraint FKqoj0iksnxuy71t0d7vqnpk260 foreign key (company_id_company) references company (nip)
alter table message add constraint FK1904gs1f8a39vpqpd4j0v2nuo foreign key (customer_id_customer) references customer (id_customer)
alter table question add constraint FK322vu14ev6wxov2dfsqkpxnl4 foreign key (survey_id_survey) references survey (id_survey)
alter table search add constraint FKpqchuntykbw6f2dowv9mfjail foreign key (advertisement_search_id_advertisement) references advertisement (id_advertisement)
alter table survey add constraint FKa3is5ghk0lo9udagkinrv4v9v foreign key (company_survey_nip) references company (nip)
alter table survey_advertisements_survey add constraint FKc9moy3goxk1f3rpyg8w7ar8tl foreign key (advertisements_survey_id_advertisement) references advertisement (id_advertisement)
alter table survey_advertisements_survey add constraint FKjpax6hmj6lkrwhx3u1yghkykw foreign key (survey_id_survey) references survey (id_survey)
alter table survey_questions_survey add constraint FKadxkmy2ncqpq90bcdo8rnx7s5 foreign key (questions_survey_id_question) references question (id_question)
alter table survey_questions_survey add constraint FKgxo63ukoi0sga3gfw7smijnf3 foreign key (survey_id_survey) references survey (id_survey)
alter table user add constraint FKearmmhtje53d5oqwixkfmuyky foreign key (company_user_nip) references company (nip)
alter table user add constraint FKq248jm9qs5dxdka1bj4aewju4 foreign key (customer_user_id_customer) references customer (id_customer)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), company_id_company bigint, search_advertisement_id_categories_of_search bigint, survey_id_survey bigint, primary key (id_advertisement)) engine=InnoDB
create table advertisement_applications_advertisement (advertisement_id_advertisement bigint not null, applications_advertisement_id_application bigint not null) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, id_advertisement bigint not null, company_id_company bigint, customer_id_customer bigint, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, survey_company_id_survey bigint, user_company_id_user bigint, primary key (nip)) engine=InnoDB
create table company_advertisement_company (company_nip bigint not null, advertisement_company_id_advertisement bigint not null) engine=InnoDB
create table company_applications_company (company_nip bigint not null, applications_company_id_application bigint not null) engine=InnoDB
create table company_message_enties_company (company_nip bigint not null, message_enties_company_id_message bigint not null) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, cv_customer_idcv bigint, user_customer_id_user bigint, primary key (id_customer)) engine=InnoDB
create table customer_applications_customer (customer_id_customer bigint not null, applications_customer_id_application bigint not null) engine=InnoDB
create table customer_certificates_customer (customer_id_customer bigint not null, certificates_customer_id_certificate bigint not null) engine=InnoDB
create table customer_courses_customer (customer_id_customer bigint not null, courses_customer_id_course bigint not null) engine=InnoDB
create table customer_message_enties_customer (customer_id_customer bigint not null, message_enties_customer_id_message bigint not null) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_cv_id_customer bigint, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id_company bigint, customer_id_customer bigint, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id_survey bigint, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), advertisement_search_id_advertisement bigint, primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_survey_nip bigint, primary key (id_survey)) engine=InnoDB
create table survey_advertisements_survey (survey_id_survey bigint not null, advertisements_survey_id_advertisement bigint not null) engine=InnoDB
create table survey_questions_survey (survey_id_survey bigint not null, questions_survey_id_question bigint not null) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, company_user_nip bigint, customer_user_id_customer bigint, primary key (id_user)) engine=InnoDB
alter table advertisement_applications_advertisement add constraint UK_t9vmg93l6xvdk2oq8td9tcccy unique (applications_advertisement_id_application)
alter table company_advertisement_company add constraint UK_h5xvl2jc3lf9xsx7374upl517 unique (advertisement_company_id_advertisement)
alter table company_applications_company add constraint UK_hkt9mvu1s15qbncx00u4fohdj unique (applications_company_id_application)
alter table company_message_enties_company add constraint UK_bsh08l0m3eq0gkuht1wtuwh73 unique (message_enties_company_id_message)
alter table customer_applications_customer add constraint UK_phgoowicafg3nojh1fgx02bk1 unique (applications_customer_id_application)
alter table customer_certificates_customer add constraint UK_2j79g8838r8j5aq86tcunqstd unique (certificates_customer_id_certificate)
alter table customer_courses_customer add constraint UK_a2dox4sstw7ja05uo28vnrkjg unique (courses_customer_id_course)
alter table customer_message_enties_customer add constraint UK_p1j68rgs6aeimw5wl0dstwu2k unique (message_enties_customer_id_message)
alter table survey_advertisements_survey add constraint UK_6yxayavbjgfwqbgosarhvk9g3 unique (advertisements_survey_id_advertisement)
alter table survey_questions_survey add constraint UK_kplcsv1b2cunaahmwyyv6rdke unique (questions_survey_id_question)
alter table advertisement add constraint FKqdmy4ppepvyvhprfm7tp4ci41 foreign key (company_id_company) references company (nip)
alter table advertisement add constraint FKoy7utu8iquefodt8gwnplm9on foreign key (search_advertisement_id_categories_of_search) references search (id_categories_of_search)
alter table advertisement add constraint FK6b5b0ngkb7g0q8v1y5jlyr1ar foreign key (survey_id_survey) references survey (id_survey)
alter table advertisement_applications_advertisement add constraint FKc4s9vvwd7tv8o6f3gnn7s8jh8 foreign key (applications_advertisement_id_application) references application (id_application)
alter table advertisement_applications_advertisement add constraint FKgqf2f0tv2y5cflamvh9p4skre foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK62wp7g2o7xn6aidvwedc25atk foreign key (id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK5m64be5ht8ngb1wji5trm2tku foreign key (company_id_company) references company (nip)
alter table application add constraint FKklsb5byveiajqob9jpcqx37ce foreign key (customer_id_customer) references customer (id_customer)
alter table certificate add constraint FK5k2f727vigkmpjvbalfy41rqa foreign key (customer_id_customer) references customer (id_customer)
alter table company add constraint FK8b5u4qxvyixxmtbrcniuajgyt foreign key (survey_company_id_survey) references survey (id_survey)
alter table company add constraint FKjrrfp81vg6l6mfmwvr8wwk73k foreign key (user_company_id_user) references user (id_user)
alter table company_advertisement_company add constraint FK6uxpm7x410lw4qscjd2su3wce foreign key (advertisement_company_id_advertisement) references advertisement (id_advertisement)
alter table company_advertisement_company add constraint FKra6ropf3ni6y03ea3x6r3wuli foreign key (company_nip) references company (nip)
alter table company_applications_company add constraint FK1j3yr7se7ermskwkixtn6oa8n foreign key (applications_company_id_application) references application (id_application)
alter table company_applications_company add constraint FKfxqkr3cw4dllk2e98suufeebv foreign key (company_nip) references company (nip)
alter table company_message_enties_company add constraint FKi9pg89k3dt1msbn84ixos180e foreign key (message_enties_company_id_message) references message (id_message)
alter table company_message_enties_company add constraint FK8imux87k5is85fmw60dc8r9i0 foreign key (company_nip) references company (nip)
alter table course add constraint FKgxng2xf3os0e1g01yh74hqj7u foreign key (customer_id_customer) references customer (id_customer)
alter table customer add constraint FK10v30i0mmylpqt626liiimlwu foreign key (cv_customer_idcv) references cv (idcv)
alter table customer add constraint FKrlw2al5r2uvqfqejg8hnprx2v foreign key (user_customer_id_user) references user (id_user)
alter table customer_applications_customer add constraint FKq0k60bi2ucc3ifahhb5sna455 foreign key (applications_customer_id_application) references application (id_application)
alter table customer_applications_customer add constraint FKyndklb0401rg1t3rbhou45v1 foreign key (customer_id_customer) references customer (id_customer)
alter table customer_certificates_customer add constraint FKq3lln1ft0x652lf61uyavcfyf foreign key (certificates_customer_id_certificate) references certificate (id_certificate)
alter table customer_certificates_customer add constraint FKg5xmilyon2rt9w84g1xkc0v7e foreign key (customer_id_customer) references customer (id_customer)
alter table customer_courses_customer add constraint FKlv20r7wn7ea3ko61fdchlvxx7 foreign key (courses_customer_id_course) references course (id_course)
alter table customer_courses_customer add constraint FKhb89tu4g9juwomglh5o4ildkc foreign key (customer_id_customer) references customer (id_customer)
alter table customer_message_enties_customer add constraint FK87qk9mvnhk6icpj02qduw8iid foreign key (message_enties_customer_id_message) references message (id_message)
alter table customer_message_enties_customer add constraint FKk577gek8jgi7latljoc1wu4vd foreign key (customer_id_customer) references customer (id_customer)
alter table cv add constraint FKa7pc74ut0qecqa1q6mqk0dseh foreign key (customer_cv_id_customer) references customer (id_customer)
alter table message add constraint FKqoj0iksnxuy71t0d7vqnpk260 foreign key (company_id_company) references company (nip)
alter table message add constraint FK1904gs1f8a39vpqpd4j0v2nuo foreign key (customer_id_customer) references customer (id_customer)
alter table question add constraint FK322vu14ev6wxov2dfsqkpxnl4 foreign key (survey_id_survey) references survey (id_survey)
alter table search add constraint FKpqchuntykbw6f2dowv9mfjail foreign key (advertisement_search_id_advertisement) references advertisement (id_advertisement)
alter table survey add constraint FKa3is5ghk0lo9udagkinrv4v9v foreign key (company_survey_nip) references company (nip)
alter table survey_advertisements_survey add constraint FKc9moy3goxk1f3rpyg8w7ar8tl foreign key (advertisements_survey_id_advertisement) references advertisement (id_advertisement)
alter table survey_advertisements_survey add constraint FKjpax6hmj6lkrwhx3u1yghkykw foreign key (survey_id_survey) references survey (id_survey)
alter table survey_questions_survey add constraint FKadxkmy2ncqpq90bcdo8rnx7s5 foreign key (questions_survey_id_question) references question (id_question)
alter table survey_questions_survey add constraint FKgxo63ukoi0sga3gfw7smijnf3 foreign key (survey_id_survey) references survey (id_survey)
alter table user add constraint FKearmmhtje53d5oqwixkfmuyky foreign key (company_user_nip) references company (nip)
alter table user add constraint FKq248jm9qs5dxdka1bj4aewju4 foreign key (customer_user_id_customer) references customer (id_customer)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), company_id_company bigint, search_advertisement_id_categories_of_search bigint, survey_id_survey bigint, primary key (id_advertisement)) engine=InnoDB
create table advertisement_applications_advertisement (advertisement_id_advertisement bigint not null, applications_advertisement_id_application bigint not null) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, id_advertisement bigint not null, company_id_company bigint, customer_id_customer bigint, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, survey_company_id_survey bigint, user_company_id_user bigint, primary key (nip)) engine=InnoDB
create table company_advertisement_company (company_nip bigint not null, advertisement_company_id_advertisement bigint not null) engine=InnoDB
create table company_applications_company (company_nip bigint not null, applications_company_id_application bigint not null) engine=InnoDB
create table company_message_enties_company (company_nip bigint not null, message_enties_company_id_message bigint not null) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, cv_customer_idcv bigint, user_customer_id_user bigint, primary key (id_customer)) engine=InnoDB
create table customer_applications_customer (customer_id_customer bigint not null, applications_customer_id_application bigint not null) engine=InnoDB
create table customer_certificates_customer (customer_id_customer bigint not null, certificates_customer_id_certificate bigint not null) engine=InnoDB
create table customer_courses_customer (customer_id_customer bigint not null, courses_customer_id_course bigint not null) engine=InnoDB
create table customer_message_enties_customer (customer_id_customer bigint not null, message_enties_customer_id_message bigint not null) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_cv_id_customer bigint, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id_company bigint, customer_id_customer bigint, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id_survey bigint, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), advertisement_search_id_advertisement bigint, primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_survey_nip bigint, primary key (id_survey)) engine=InnoDB
create table survey_advertisements_survey (survey_id_survey bigint not null, advertisements_survey_id_advertisement bigint not null) engine=InnoDB
create table survey_questions_survey (survey_id_survey bigint not null, questions_survey_id_question bigint not null) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, company_user_nip bigint, customer_user_id_customer bigint, primary key (id_user)) engine=InnoDB
alter table advertisement_applications_advertisement add constraint UK_t9vmg93l6xvdk2oq8td9tcccy unique (applications_advertisement_id_application)
alter table company_advertisement_company add constraint UK_h5xvl2jc3lf9xsx7374upl517 unique (advertisement_company_id_advertisement)
alter table company_applications_company add constraint UK_hkt9mvu1s15qbncx00u4fohdj unique (applications_company_id_application)
alter table company_message_enties_company add constraint UK_bsh08l0m3eq0gkuht1wtuwh73 unique (message_enties_company_id_message)
alter table customer_applications_customer add constraint UK_phgoowicafg3nojh1fgx02bk1 unique (applications_customer_id_application)
alter table customer_certificates_customer add constraint UK_2j79g8838r8j5aq86tcunqstd unique (certificates_customer_id_certificate)
alter table customer_courses_customer add constraint UK_a2dox4sstw7ja05uo28vnrkjg unique (courses_customer_id_course)
alter table customer_message_enties_customer add constraint UK_p1j68rgs6aeimw5wl0dstwu2k unique (message_enties_customer_id_message)
alter table survey_advertisements_survey add constraint UK_6yxayavbjgfwqbgosarhvk9g3 unique (advertisements_survey_id_advertisement)
alter table survey_questions_survey add constraint UK_kplcsv1b2cunaahmwyyv6rdke unique (questions_survey_id_question)
alter table advertisement add constraint FKqdmy4ppepvyvhprfm7tp4ci41 foreign key (company_id_company) references company (nip)
alter table advertisement add constraint FKoy7utu8iquefodt8gwnplm9on foreign key (search_advertisement_id_categories_of_search) references search (id_categories_of_search)
alter table advertisement add constraint FK6b5b0ngkb7g0q8v1y5jlyr1ar foreign key (survey_id_survey) references survey (id_survey)
alter table advertisement_applications_advertisement add constraint FKc4s9vvwd7tv8o6f3gnn7s8jh8 foreign key (applications_advertisement_id_application) references application (id_application)
alter table advertisement_applications_advertisement add constraint FKgqf2f0tv2y5cflamvh9p4skre foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK62wp7g2o7xn6aidvwedc25atk foreign key (id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK5m64be5ht8ngb1wji5trm2tku foreign key (company_id_company) references company (nip)
alter table application add constraint FKklsb5byveiajqob9jpcqx37ce foreign key (customer_id_customer) references customer (id_customer)
alter table certificate add constraint FK5k2f727vigkmpjvbalfy41rqa foreign key (customer_id_customer) references customer (id_customer)
alter table company add constraint FK8b5u4qxvyixxmtbrcniuajgyt foreign key (survey_company_id_survey) references survey (id_survey)
alter table company add constraint FKjrrfp81vg6l6mfmwvr8wwk73k foreign key (user_company_id_user) references user (id_user)
alter table company_advertisement_company add constraint FK6uxpm7x410lw4qscjd2su3wce foreign key (advertisement_company_id_advertisement) references advertisement (id_advertisement)
alter table company_advertisement_company add constraint FKra6ropf3ni6y03ea3x6r3wuli foreign key (company_nip) references company (nip)
alter table company_applications_company add constraint FK1j3yr7se7ermskwkixtn6oa8n foreign key (applications_company_id_application) references application (id_application)
alter table company_applications_company add constraint FKfxqkr3cw4dllk2e98suufeebv foreign key (company_nip) references company (nip)
alter table company_message_enties_company add constraint FKi9pg89k3dt1msbn84ixos180e foreign key (message_enties_company_id_message) references message (id_message)
alter table company_message_enties_company add constraint FK8imux87k5is85fmw60dc8r9i0 foreign key (company_nip) references company (nip)
alter table course add constraint FKgxng2xf3os0e1g01yh74hqj7u foreign key (customer_id_customer) references customer (id_customer)
alter table customer add constraint FK10v30i0mmylpqt626liiimlwu foreign key (cv_customer_idcv) references cv (idcv)
alter table customer add constraint FKrlw2al5r2uvqfqejg8hnprx2v foreign key (user_customer_id_user) references user (id_user)
alter table customer_applications_customer add constraint FKq0k60bi2ucc3ifahhb5sna455 foreign key (applications_customer_id_application) references application (id_application)
alter table customer_applications_customer add constraint FKyndklb0401rg1t3rbhou45v1 foreign key (customer_id_customer) references customer (id_customer)
alter table customer_certificates_customer add constraint FKq3lln1ft0x652lf61uyavcfyf foreign key (certificates_customer_id_certificate) references certificate (id_certificate)
alter table customer_certificates_customer add constraint FKg5xmilyon2rt9w84g1xkc0v7e foreign key (customer_id_customer) references customer (id_customer)
alter table customer_courses_customer add constraint FKlv20r7wn7ea3ko61fdchlvxx7 foreign key (courses_customer_id_course) references course (id_course)
alter table customer_courses_customer add constraint FKhb89tu4g9juwomglh5o4ildkc foreign key (customer_id_customer) references customer (id_customer)
alter table customer_message_enties_customer add constraint FK87qk9mvnhk6icpj02qduw8iid foreign key (message_enties_customer_id_message) references message (id_message)
alter table customer_message_enties_customer add constraint FKk577gek8jgi7latljoc1wu4vd foreign key (customer_id_customer) references customer (id_customer)
alter table cv add constraint FKa7pc74ut0qecqa1q6mqk0dseh foreign key (customer_cv_id_customer) references customer (id_customer)
alter table message add constraint FKqoj0iksnxuy71t0d7vqnpk260 foreign key (company_id_company) references company (nip)
alter table message add constraint FK1904gs1f8a39vpqpd4j0v2nuo foreign key (customer_id_customer) references customer (id_customer)
alter table question add constraint FK322vu14ev6wxov2dfsqkpxnl4 foreign key (survey_id_survey) references survey (id_survey)
alter table search add constraint FKpqchuntykbw6f2dowv9mfjail foreign key (advertisement_search_id_advertisement) references advertisement (id_advertisement)
alter table survey add constraint FKa3is5ghk0lo9udagkinrv4v9v foreign key (company_survey_nip) references company (nip)
alter table survey_advertisements_survey add constraint FKc9moy3goxk1f3rpyg8w7ar8tl foreign key (advertisements_survey_id_advertisement) references advertisement (id_advertisement)
alter table survey_advertisements_survey add constraint FKjpax6hmj6lkrwhx3u1yghkykw foreign key (survey_id_survey) references survey (id_survey)
alter table survey_questions_survey add constraint FKadxkmy2ncqpq90bcdo8rnx7s5 foreign key (questions_survey_id_question) references question (id_question)
alter table survey_questions_survey add constraint FKgxo63ukoi0sga3gfw7smijnf3 foreign key (survey_id_survey) references survey (id_survey)
alter table user add constraint FKearmmhtje53d5oqwixkfmuyky foreign key (company_user_nip) references company (nip)
alter table user add constraint FKq248jm9qs5dxdka1bj4aewju4 foreign key (customer_user_id_customer) references customer (id_customer)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), company_id_company bigint, search_advertisement_id_categories_of_search bigint, survey_id_survey bigint, primary key (id_advertisement)) engine=InnoDB
create table advertisement_applications_advertisement (advertisement_id_advertisement bigint not null, applications_advertisement_id_application bigint not null) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, id_advertisement bigint not null, company_id_company bigint, customer_id_customer bigint, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, survey_company_id_survey bigint, user_company_id_user bigint, primary key (nip)) engine=InnoDB
create table company_advertisement_company (company_nip bigint not null, advertisement_company_id_advertisement bigint not null) engine=InnoDB
create table company_applications_company (company_nip bigint not null, applications_company_id_application bigint not null) engine=InnoDB
create table company_message_enties_company (company_nip bigint not null, message_enties_company_id_message bigint not null) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, cv_customer_idcv bigint, user_customer_id_user bigint, primary key (id_customer)) engine=InnoDB
create table customer_applications_customer (customer_id_customer bigint not null, applications_customer_id_application bigint not null) engine=InnoDB
create table customer_certificates_customer (customer_id_customer bigint not null, certificates_customer_id_certificate bigint not null) engine=InnoDB
create table customer_courses_customer (customer_id_customer bigint not null, courses_customer_id_course bigint not null) engine=InnoDB
create table customer_message_enties_customer (customer_id_customer bigint not null, message_enties_customer_id_message bigint not null) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_cv_id_customer bigint, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id_company bigint, customer_id_customer bigint, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id_survey bigint, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), advertisement_search_id_advertisement bigint, primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_survey_nip bigint, primary key (id_survey)) engine=InnoDB
create table survey_advertisements_survey (survey_id_survey bigint not null, advertisements_survey_id_advertisement bigint not null) engine=InnoDB
create table survey_questions_survey (survey_id_survey bigint not null, questions_survey_id_question bigint not null) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, company_user_nip bigint, customer_user_id_customer bigint, primary key (id_user)) engine=InnoDB
alter table advertisement_applications_advertisement add constraint UK_t9vmg93l6xvdk2oq8td9tcccy unique (applications_advertisement_id_application)
alter table company_advertisement_company add constraint UK_h5xvl2jc3lf9xsx7374upl517 unique (advertisement_company_id_advertisement)
alter table company_applications_company add constraint UK_hkt9mvu1s15qbncx00u4fohdj unique (applications_company_id_application)
alter table company_message_enties_company add constraint UK_bsh08l0m3eq0gkuht1wtuwh73 unique (message_enties_company_id_message)
alter table customer_applications_customer add constraint UK_phgoowicafg3nojh1fgx02bk1 unique (applications_customer_id_application)
alter table customer_certificates_customer add constraint UK_2j79g8838r8j5aq86tcunqstd unique (certificates_customer_id_certificate)
alter table customer_courses_customer add constraint UK_a2dox4sstw7ja05uo28vnrkjg unique (courses_customer_id_course)
alter table customer_message_enties_customer add constraint UK_p1j68rgs6aeimw5wl0dstwu2k unique (message_enties_customer_id_message)
alter table survey_advertisements_survey add constraint UK_6yxayavbjgfwqbgosarhvk9g3 unique (advertisements_survey_id_advertisement)
alter table survey_questions_survey add constraint UK_kplcsv1b2cunaahmwyyv6rdke unique (questions_survey_id_question)
alter table advertisement add constraint FKqdmy4ppepvyvhprfm7tp4ci41 foreign key (company_id_company) references company (nip)
alter table advertisement add constraint FKoy7utu8iquefodt8gwnplm9on foreign key (search_advertisement_id_categories_of_search) references search (id_categories_of_search)
alter table advertisement add constraint FK6b5b0ngkb7g0q8v1y5jlyr1ar foreign key (survey_id_survey) references survey (id_survey)
alter table advertisement_applications_advertisement add constraint FKc4s9vvwd7tv8o6f3gnn7s8jh8 foreign key (applications_advertisement_id_application) references application (id_application)
alter table advertisement_applications_advertisement add constraint FKgqf2f0tv2y5cflamvh9p4skre foreign key (advertisement_id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK62wp7g2o7xn6aidvwedc25atk foreign key (id_advertisement) references advertisement (id_advertisement)
alter table application add constraint FK5m64be5ht8ngb1wji5trm2tku foreign key (company_id_company) references company (nip)
alter table application add constraint FKklsb5byveiajqob9jpcqx37ce foreign key (customer_id_customer) references customer (id_customer)
alter table certificate add constraint FK5k2f727vigkmpjvbalfy41rqa foreign key (customer_id_customer) references customer (id_customer)
alter table company add constraint FK8b5u4qxvyixxmtbrcniuajgyt foreign key (survey_company_id_survey) references survey (id_survey)
alter table company add constraint FKjrrfp81vg6l6mfmwvr8wwk73k foreign key (user_company_id_user) references user (id_user)
alter table company_advertisement_company add constraint FK6uxpm7x410lw4qscjd2su3wce foreign key (advertisement_company_id_advertisement) references advertisement (id_advertisement)
alter table company_advertisement_company add constraint FKra6ropf3ni6y03ea3x6r3wuli foreign key (company_nip) references company (nip)
alter table company_applications_company add constraint FK1j3yr7se7ermskwkixtn6oa8n foreign key (applications_company_id_application) references application (id_application)
alter table company_applications_company add constraint FKfxqkr3cw4dllk2e98suufeebv foreign key (company_nip) references company (nip)
alter table company_message_enties_company add constraint FKi9pg89k3dt1msbn84ixos180e foreign key (message_enties_company_id_message) references message (id_message)
alter table company_message_enties_company add constraint FK8imux87k5is85fmw60dc8r9i0 foreign key (company_nip) references company (nip)
alter table course add constraint FKgxng2xf3os0e1g01yh74hqj7u foreign key (customer_id_customer) references customer (id_customer)
alter table customer add constraint FK10v30i0mmylpqt626liiimlwu foreign key (cv_customer_idcv) references cv (idcv)
alter table customer add constraint FKrlw2al5r2uvqfqejg8hnprx2v foreign key (user_customer_id_user) references user (id_user)
alter table customer_applications_customer add constraint FKq0k60bi2ucc3ifahhb5sna455 foreign key (applications_customer_id_application) references application (id_application)
alter table customer_applications_customer add constraint FKyndklb0401rg1t3rbhou45v1 foreign key (customer_id_customer) references customer (id_customer)
alter table customer_certificates_customer add constraint FKq3lln1ft0x652lf61uyavcfyf foreign key (certificates_customer_id_certificate) references certificate (id_certificate)
alter table customer_certificates_customer add constraint FKg5xmilyon2rt9w84g1xkc0v7e foreign key (customer_id_customer) references customer (id_customer)
alter table customer_courses_customer add constraint FKlv20r7wn7ea3ko61fdchlvxx7 foreign key (courses_customer_id_course) references course (id_course)
alter table customer_courses_customer add constraint FKhb89tu4g9juwomglh5o4ildkc foreign key (customer_id_customer) references customer (id_customer)
alter table customer_message_enties_customer add constraint FK87qk9mvnhk6icpj02qduw8iid foreign key (message_enties_customer_id_message) references message (id_message)
alter table customer_message_enties_customer add constraint FKk577gek8jgi7latljoc1wu4vd foreign key (customer_id_customer) references customer (id_customer)
alter table cv add constraint FKa7pc74ut0qecqa1q6mqk0dseh foreign key (customer_cv_id_customer) references customer (id_customer)
alter table message add constraint FKqoj0iksnxuy71t0d7vqnpk260 foreign key (company_id_company) references company (nip)
alter table message add constraint FK1904gs1f8a39vpqpd4j0v2nuo foreign key (customer_id_customer) references customer (id_customer)
alter table question add constraint FK322vu14ev6wxov2dfsqkpxnl4 foreign key (survey_id_survey) references survey (id_survey)
alter table search add constraint FKpqchuntykbw6f2dowv9mfjail foreign key (advertisement_search_id_advertisement) references advertisement (id_advertisement)
alter table survey add constraint FKa3is5ghk0lo9udagkinrv4v9v foreign key (company_survey_nip) references company (nip)
alter table survey_advertisements_survey add constraint FKc9moy3goxk1f3rpyg8w7ar8tl foreign key (advertisements_survey_id_advertisement) references advertisement (id_advertisement)
alter table survey_advertisements_survey add constraint FKjpax6hmj6lkrwhx3u1yghkykw foreign key (survey_id_survey) references survey (id_survey)
alter table survey_questions_survey add constraint FKadxkmy2ncqpq90bcdo8rnx7s5 foreign key (questions_survey_id_question) references question (id_question)
alter table survey_questions_survey add constraint FKgxo63ukoi0sga3gfw7smijnf3 foreign key (survey_id_survey) references survey (id_survey)
alter table user add constraint FKearmmhtje53d5oqwixkfmuyky foreign key (company_user_nip) references company (nip)
alter table user add constraint FKq248jm9qs5dxdka1bj4aewju4 foreign key (customer_user_id_customer) references customer (id_customer)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), company_id bigint not null, survey_id bigint not null, primary key (id_advertisement)) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, company_id_company bigint, customer_id_customer bigint, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, survey_company_id_survey bigint, user_company_id_user bigint, primary key (nip)) engine=InnoDB
create table company_applications_company (company_nip bigint not null, applications_company_id_application bigint not null) engine=InnoDB
create table company_message_enties_company (company_nip bigint not null, message_enties_company_id_message bigint not null) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, cv_customer_idcv bigint, user_customer_id_user bigint, primary key (id_customer)) engine=InnoDB
create table customer_applications_customer (customer_id_customer bigint not null, applications_customer_id_application bigint not null) engine=InnoDB
create table customer_certificates_customer (customer_id_customer bigint not null, certificates_customer_id_certificate bigint not null) engine=InnoDB
create table customer_courses_customer (customer_id_customer bigint not null, courses_customer_id_course bigint not null) engine=InnoDB
create table customer_message_enties_customer (customer_id_customer bigint not null, message_enties_customer_id_message bigint not null) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_cv_id_customer bigint, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id_company bigint, customer_id_customer bigint, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id_survey bigint, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), advertisement_search_id_advertisement bigint, primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_survey_nip bigint, primary key (id_survey)) engine=InnoDB
create table survey_questions_survey (survey_id_survey bigint not null, questions_survey_id_question bigint not null) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, company_user_nip bigint, customer_user_id_customer bigint, primary key (id_user)) engine=InnoDB
alter table company_applications_company add constraint UK_hkt9mvu1s15qbncx00u4fohdj unique (applications_company_id_application)
alter table company_message_enties_company add constraint UK_bsh08l0m3eq0gkuht1wtuwh73 unique (message_enties_company_id_message)
alter table customer_applications_customer add constraint UK_phgoowicafg3nojh1fgx02bk1 unique (applications_customer_id_application)
alter table customer_certificates_customer add constraint UK_2j79g8838r8j5aq86tcunqstd unique (certificates_customer_id_certificate)
alter table customer_courses_customer add constraint UK_a2dox4sstw7ja05uo28vnrkjg unique (courses_customer_id_course)
alter table customer_message_enties_customer add constraint UK_p1j68rgs6aeimw5wl0dstwu2k unique (message_enties_customer_id_message)
alter table survey_questions_survey add constraint UK_kplcsv1b2cunaahmwyyv6rdke unique (questions_survey_id_question)
alter table advertisement add constraint FKosjshkro6r0jfxjanm58alfmf foreign key (company_id) references company (nip)
alter table advertisement add constraint FK7bqxdh5qhiwywfha1csbibdg foreign key (survey_id) references survey (id_survey)
alter table application add constraint FK5m64be5ht8ngb1wji5trm2tku foreign key (company_id_company) references company (nip)
alter table application add constraint FKklsb5byveiajqob9jpcqx37ce foreign key (customer_id_customer) references customer (id_customer)
alter table certificate add constraint FK5k2f727vigkmpjvbalfy41rqa foreign key (customer_id_customer) references customer (id_customer)
alter table company add constraint FK8b5u4qxvyixxmtbrcniuajgyt foreign key (survey_company_id_survey) references survey (id_survey)
alter table company add constraint FKjrrfp81vg6l6mfmwvr8wwk73k foreign key (user_company_id_user) references user (id_user)
alter table company_applications_company add constraint FK1j3yr7se7ermskwkixtn6oa8n foreign key (applications_company_id_application) references application (id_application)
alter table company_applications_company add constraint FKfxqkr3cw4dllk2e98suufeebv foreign key (company_nip) references company (nip)
alter table company_message_enties_company add constraint FKi9pg89k3dt1msbn84ixos180e foreign key (message_enties_company_id_message) references message (id_message)
alter table company_message_enties_company add constraint FK8imux87k5is85fmw60dc8r9i0 foreign key (company_nip) references company (nip)
alter table course add constraint FKgxng2xf3os0e1g01yh74hqj7u foreign key (customer_id_customer) references customer (id_customer)
alter table customer add constraint FK10v30i0mmylpqt626liiimlwu foreign key (cv_customer_idcv) references cv (idcv)
alter table customer add constraint FKrlw2al5r2uvqfqejg8hnprx2v foreign key (user_customer_id_user) references user (id_user)
alter table customer_applications_customer add constraint FKq0k60bi2ucc3ifahhb5sna455 foreign key (applications_customer_id_application) references application (id_application)
alter table customer_applications_customer add constraint FKyndklb0401rg1t3rbhou45v1 foreign key (customer_id_customer) references customer (id_customer)
alter table customer_certificates_customer add constraint FKq3lln1ft0x652lf61uyavcfyf foreign key (certificates_customer_id_certificate) references certificate (id_certificate)
alter table customer_certificates_customer add constraint FKg5xmilyon2rt9w84g1xkc0v7e foreign key (customer_id_customer) references customer (id_customer)
alter table customer_courses_customer add constraint FKlv20r7wn7ea3ko61fdchlvxx7 foreign key (courses_customer_id_course) references course (id_course)
alter table customer_courses_customer add constraint FKhb89tu4g9juwomglh5o4ildkc foreign key (customer_id_customer) references customer (id_customer)
alter table customer_message_enties_customer add constraint FK87qk9mvnhk6icpj02qduw8iid foreign key (message_enties_customer_id_message) references message (id_message)
alter table customer_message_enties_customer add constraint FKk577gek8jgi7latljoc1wu4vd foreign key (customer_id_customer) references customer (id_customer)
alter table cv add constraint FKa7pc74ut0qecqa1q6mqk0dseh foreign key (customer_cv_id_customer) references customer (id_customer)
alter table message add constraint FKqoj0iksnxuy71t0d7vqnpk260 foreign key (company_id_company) references company (nip)
alter table message add constraint FK1904gs1f8a39vpqpd4j0v2nuo foreign key (customer_id_customer) references customer (id_customer)
alter table question add constraint FK322vu14ev6wxov2dfsqkpxnl4 foreign key (survey_id_survey) references survey (id_survey)
alter table search add constraint FKpqchuntykbw6f2dowv9mfjail foreign key (advertisement_search_id_advertisement) references advertisement (id_advertisement)
alter table survey add constraint FKa3is5ghk0lo9udagkinrv4v9v foreign key (company_survey_nip) references company (nip)
alter table survey_questions_survey add constraint FKadxkmy2ncqpq90bcdo8rnx7s5 foreign key (questions_survey_id_question) references question (id_question)
alter table survey_questions_survey add constraint FKgxo63ukoi0sga3gfw7smijnf3 foreign key (survey_id_survey) references survey (id_survey)
alter table user add constraint FKearmmhtje53d5oqwixkfmuyky foreign key (company_user_nip) references company (nip)
alter table user add constraint FKq248jm9qs5dxdka1bj4aewju4 foreign key (customer_user_id_customer) references customer (id_customer)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), company_id bigint not null, survey_id bigint not null, primary key (id_advertisement)) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, company_id_company bigint, customer_id_customer bigint, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, survey_company_id_survey bigint, user_company_id_user bigint, primary key (nip)) engine=InnoDB
create table company_applications_company (company_nip bigint not null, applications_company_id_application bigint not null) engine=InnoDB
create table company_message_enties_company (company_nip bigint not null, message_enties_company_id_message bigint not null) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id_customer bigint, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, cv_customer_idcv bigint, user_customer_id_user bigint, primary key (id_customer)) engine=InnoDB
create table customer_applications_customer (customer_id_customer bigint not null, applications_customer_id_application bigint not null) engine=InnoDB
create table customer_certificates_customer (customer_id_customer bigint not null, certificates_customer_id_certificate bigint not null) engine=InnoDB
create table customer_courses_customer (customer_id_customer bigint not null, courses_customer_id_course bigint not null) engine=InnoDB
create table customer_message_enties_customer (customer_id_customer bigint not null, message_enties_customer_id_message bigint not null) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_cv_id_customer bigint, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id_company bigint, customer_id_customer bigint, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id_survey bigint, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), advertisement_search_id_advertisement bigint, primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_survey_nip bigint, primary key (id_survey)) engine=InnoDB
create table survey_questions_survey (survey_id_survey bigint not null, questions_survey_id_question bigint not null) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, company_user_nip bigint, customer_user_id_customer bigint, primary key (id_user)) engine=InnoDB
alter table company_applications_company add constraint UK_hkt9mvu1s15qbncx00u4fohdj unique (applications_company_id_application)
alter table company_message_enties_company add constraint UK_bsh08l0m3eq0gkuht1wtuwh73 unique (message_enties_company_id_message)
alter table customer_applications_customer add constraint UK_phgoowicafg3nojh1fgx02bk1 unique (applications_customer_id_application)
alter table customer_certificates_customer add constraint UK_2j79g8838r8j5aq86tcunqstd unique (certificates_customer_id_certificate)
alter table customer_courses_customer add constraint UK_a2dox4sstw7ja05uo28vnrkjg unique (courses_customer_id_course)
alter table customer_message_enties_customer add constraint UK_p1j68rgs6aeimw5wl0dstwu2k unique (message_enties_customer_id_message)
alter table survey_questions_survey add constraint UK_kplcsv1b2cunaahmwyyv6rdke unique (questions_survey_id_question)
alter table advertisement add constraint FKosjshkro6r0jfxjanm58alfmf foreign key (company_id) references company (nip)
alter table advertisement add constraint FK7bqxdh5qhiwywfha1csbibdg foreign key (survey_id) references survey (id_survey)
alter table application add constraint FK5m64be5ht8ngb1wji5trm2tku foreign key (company_id_company) references company (nip)
alter table application add constraint FKklsb5byveiajqob9jpcqx37ce foreign key (customer_id_customer) references customer (id_customer)
alter table certificate add constraint FK5k2f727vigkmpjvbalfy41rqa foreign key (customer_id_customer) references customer (id_customer)
alter table company add constraint FK8b5u4qxvyixxmtbrcniuajgyt foreign key (survey_company_id_survey) references survey (id_survey)
alter table company add constraint FKjrrfp81vg6l6mfmwvr8wwk73k foreign key (user_company_id_user) references user (id_user)
alter table company_applications_company add constraint FK1j3yr7se7ermskwkixtn6oa8n foreign key (applications_company_id_application) references application (id_application)
alter table company_applications_company add constraint FKfxqkr3cw4dllk2e98suufeebv foreign key (company_nip) references company (nip)
alter table company_message_enties_company add constraint FKi9pg89k3dt1msbn84ixos180e foreign key (message_enties_company_id_message) references message (id_message)
alter table company_message_enties_company add constraint FK8imux87k5is85fmw60dc8r9i0 foreign key (company_nip) references company (nip)
alter table course add constraint FKgxng2xf3os0e1g01yh74hqj7u foreign key (customer_id_customer) references customer (id_customer)
alter table customer add constraint FK10v30i0mmylpqt626liiimlwu foreign key (cv_customer_idcv) references cv (idcv)
alter table customer add constraint FKrlw2al5r2uvqfqejg8hnprx2v foreign key (user_customer_id_user) references user (id_user)
alter table customer_applications_customer add constraint FKq0k60bi2ucc3ifahhb5sna455 foreign key (applications_customer_id_application) references application (id_application)
alter table customer_applications_customer add constraint FKyndklb0401rg1t3rbhou45v1 foreign key (customer_id_customer) references customer (id_customer)
alter table customer_certificates_customer add constraint FKq3lln1ft0x652lf61uyavcfyf foreign key (certificates_customer_id_certificate) references certificate (id_certificate)
alter table customer_certificates_customer add constraint FKg5xmilyon2rt9w84g1xkc0v7e foreign key (customer_id_customer) references customer (id_customer)
alter table customer_courses_customer add constraint FKlv20r7wn7ea3ko61fdchlvxx7 foreign key (courses_customer_id_course) references course (id_course)
alter table customer_courses_customer add constraint FKhb89tu4g9juwomglh5o4ildkc foreign key (customer_id_customer) references customer (id_customer)
alter table customer_message_enties_customer add constraint FK87qk9mvnhk6icpj02qduw8iid foreign key (message_enties_customer_id_message) references message (id_message)
alter table customer_message_enties_customer add constraint FKk577gek8jgi7latljoc1wu4vd foreign key (customer_id_customer) references customer (id_customer)
alter table cv add constraint FKa7pc74ut0qecqa1q6mqk0dseh foreign key (customer_cv_id_customer) references customer (id_customer)
alter table message add constraint FKqoj0iksnxuy71t0d7vqnpk260 foreign key (company_id_company) references company (nip)
alter table message add constraint FK1904gs1f8a39vpqpd4j0v2nuo foreign key (customer_id_customer) references customer (id_customer)
alter table question add constraint FK322vu14ev6wxov2dfsqkpxnl4 foreign key (survey_id_survey) references survey (id_survey)
alter table search add constraint FKpqchuntykbw6f2dowv9mfjail foreign key (advertisement_search_id_advertisement) references advertisement (id_advertisement)
alter table survey add constraint FKa3is5ghk0lo9udagkinrv4v9v foreign key (company_survey_nip) references company (nip)
alter table survey_questions_survey add constraint FKadxkmy2ncqpq90bcdo8rnx7s5 foreign key (questions_survey_id_question) references question (id_question)
alter table survey_questions_survey add constraint FKgxo63ukoi0sga3gfw7smijnf3 foreign key (survey_id_survey) references survey (id_survey)
alter table user add constraint FKearmmhtje53d5oqwixkfmuyky foreign key (company_user_nip) references company (nip)
alter table user add constraint FKq248jm9qs5dxdka1bj4aewju4 foreign key (customer_user_id_customer) references customer (id_customer)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), company_id bigint not null, search_id bigint not null, survey_id bigint not null, primary key (id_advertisement)) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id bigint not null, company_id bigint not null, customer_id bigint not null, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, user_id bigint not null, primary key (nip)) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, user_id bigint not null, primary key (id_customer)) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_id bigint not null, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id bigint not null, customer_id bigint not null, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id bigint not null, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_id bigint not null, primary key (id_survey)) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, primary key (id_user)) engine=InnoDB
alter table advertisement add constraint UK_14egs4qm8u08xlrdcp24gacpo unique (search_id)
alter table application add constraint UK_soj9nie0qdj6b3jdwel6wwnuk unique (advertisement_id)
alter table company add constraint UK_g82ixrst2tc542u5s214ggpdf unique (user_id)
alter table customer add constraint UK_j7ja2xvrxudhvssosd4nu1o92 unique (user_id)
alter table cv add constraint UK_7nsstl9x9nrjxv264fx1ngx0m unique (customer_id)
alter table survey add constraint UK_6hettjbyknyxu85xaehqlk1jq unique (company_id)
alter table advertisement add constraint FKosjshkro6r0jfxjanm58alfmf foreign key (company_id) references company (nip)
alter table advertisement add constraint FKixeuwtd60vpirxbnr0j2kswp7 foreign key (search_id) references search (id_categories_of_search)
alter table advertisement add constraint FK7bqxdh5qhiwywfha1csbibdg foreign key (survey_id) references survey (id_survey)
alter table application add constraint FK5wwcphcwd1u08fenhtbvyg14p foreign key (advertisement_id) references advertisement (id_advertisement)
alter table application add constraint FKjm4svmen8mv59grpbgjp5v1ml foreign key (company_id) references company (nip)
alter table application add constraint FKdih65y3ywnh2g5ddjae3ud4kw foreign key (customer_id) references customer (id_customer)
alter table certificate add constraint FKbin167gb15lctd21ocemxja99 foreign key (customer_id) references customer (id_customer)
alter table company add constraint FKdy4v2yb46hefqicjpyj7b7e4s foreign key (user_id) references user (id_user)
alter table course add constraint FK418pvmlvhrll9ilj6uprdchp6 foreign key (customer_id) references customer (id_customer)
alter table customer add constraint FKj8dlm21j202cadsbfkoem0s58 foreign key (user_id) references user (id_user)
alter table cv add constraint FKaejxs9ixrvnawdyag0kmsp8sf foreign key (customer_id) references customer (id_customer)
alter table message add constraint FKcwsjctg2caabo17bol1qv7iff foreign key (company_id) references company (nip)
alter table message add constraint FKg2pmh6bgwe0dqobetgwdrv47d foreign key (customer_id) references customer (id_customer)
alter table question add constraint FK65ro96jafjvulbqu8ia0pb254 foreign key (survey_id) references survey (id_survey)
alter table survey add constraint FKo5sdismkcu0pgey32yc98eo12 foreign key (company_id) references company (nip)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), company_id bigint not null, search_id bigint not null, survey_id bigint not null, primary key (id_advertisement)) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id bigint not null, company_id bigint not null, customer_id bigint not null, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, user_id bigint not null, primary key (nip)) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, user_id bigint not null, primary key (id_customer)) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_id bigint not null, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id bigint not null, customer_id bigint not null, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id bigint not null, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_id bigint not null, primary key (id_survey)) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, primary key (id_user)) engine=InnoDB
alter table advertisement add constraint UK_14egs4qm8u08xlrdcp24gacpo unique (search_id)
alter table application add constraint UK_soj9nie0qdj6b3jdwel6wwnuk unique (advertisement_id)
alter table company add constraint UK_g82ixrst2tc542u5s214ggpdf unique (user_id)
alter table customer add constraint UK_j7ja2xvrxudhvssosd4nu1o92 unique (user_id)
alter table cv add constraint UK_7nsstl9x9nrjxv264fx1ngx0m unique (customer_id)
alter table survey add constraint UK_6hettjbyknyxu85xaehqlk1jq unique (company_id)
alter table advertisement add constraint FKosjshkro6r0jfxjanm58alfmf foreign key (company_id) references company (nip)
alter table advertisement add constraint FKixeuwtd60vpirxbnr0j2kswp7 foreign key (search_id) references search (id_categories_of_search)
alter table advertisement add constraint FK7bqxdh5qhiwywfha1csbibdg foreign key (survey_id) references survey (id_survey)
alter table application add constraint FK5wwcphcwd1u08fenhtbvyg14p foreign key (advertisement_id) references advertisement (id_advertisement)
alter table application add constraint FKjm4svmen8mv59grpbgjp5v1ml foreign key (company_id) references company (nip)
alter table application add constraint FKdih65y3ywnh2g5ddjae3ud4kw foreign key (customer_id) references customer (id_customer)
alter table certificate add constraint FKbin167gb15lctd21ocemxja99 foreign key (customer_id) references customer (id_customer)
alter table company add constraint FKdy4v2yb46hefqicjpyj7b7e4s foreign key (user_id) references user (id_user)
alter table course add constraint FK418pvmlvhrll9ilj6uprdchp6 foreign key (customer_id) references customer (id_customer)
alter table customer add constraint FKj8dlm21j202cadsbfkoem0s58 foreign key (user_id) references user (id_user)
alter table cv add constraint FKaejxs9ixrvnawdyag0kmsp8sf foreign key (customer_id) references customer (id_customer)
alter table message add constraint FKcwsjctg2caabo17bol1qv7iff foreign key (company_id) references company (nip)
alter table message add constraint FKg2pmh6bgwe0dqobetgwdrv47d foreign key (customer_id) references customer (id_customer)
alter table question add constraint FK65ro96jafjvulbqu8ia0pb254 foreign key (survey_id) references survey (id_survey)
alter table survey add constraint FKo5sdismkcu0pgey32yc98eo12 foreign key (company_id) references company (nip)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), company_id bigint not null, search_id bigint not null, survey_id bigint not null, primary key (id_advertisement)) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id bigint not null, company_id bigint not null, customer_id bigint not null, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, user_id bigint not null, primary key (nip)) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, user_id bigint not null, primary key (id_customer)) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_id bigint not null, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id bigint not null, customer_id bigint not null, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id bigint not null, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_id bigint not null, primary key (id_survey)) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, primary key (id_user)) engine=InnoDB
alter table advertisement add constraint UK_14egs4qm8u08xlrdcp24gacpo unique (search_id)
alter table application add constraint UK_soj9nie0qdj6b3jdwel6wwnuk unique (advertisement_id)
alter table company add constraint UK_g82ixrst2tc542u5s214ggpdf unique (user_id)
alter table customer add constraint UK_j7ja2xvrxudhvssosd4nu1o92 unique (user_id)
alter table cv add constraint UK_7nsstl9x9nrjxv264fx1ngx0m unique (customer_id)
alter table survey add constraint UK_6hettjbyknyxu85xaehqlk1jq unique (company_id)
alter table advertisement add constraint FKosjshkro6r0jfxjanm58alfmf foreign key (company_id) references company (nip)
alter table advertisement add constraint FKixeuwtd60vpirxbnr0j2kswp7 foreign key (search_id) references search (id_categories_of_search)
alter table advertisement add constraint FK7bqxdh5qhiwywfha1csbibdg foreign key (survey_id) references survey (id_survey)
alter table application add constraint FK5wwcphcwd1u08fenhtbvyg14p foreign key (advertisement_id) references advertisement (id_advertisement)
alter table application add constraint FKjm4svmen8mv59grpbgjp5v1ml foreign key (company_id) references company (nip)
alter table application add constraint FKdih65y3ywnh2g5ddjae3ud4kw foreign key (customer_id) references customer (id_customer)
alter table certificate add constraint FKbin167gb15lctd21ocemxja99 foreign key (customer_id) references customer (id_customer)
alter table company add constraint FKdy4v2yb46hefqicjpyj7b7e4s foreign key (user_id) references user (id_user)
alter table course add constraint FK418pvmlvhrll9ilj6uprdchp6 foreign key (customer_id) references customer (id_customer)
alter table customer add constraint FKj8dlm21j202cadsbfkoem0s58 foreign key (user_id) references user (id_user)
alter table cv add constraint FKaejxs9ixrvnawdyag0kmsp8sf foreign key (customer_id) references customer (id_customer)
alter table message add constraint FKcwsjctg2caabo17bol1qv7iff foreign key (company_id) references company (nip)
alter table message add constraint FKg2pmh6bgwe0dqobetgwdrv47d foreign key (customer_id) references customer (id_customer)
alter table question add constraint FK65ro96jafjvulbqu8ia0pb254 foreign key (survey_id) references survey (id_survey)
alter table survey add constraint FKo5sdismkcu0pgey32yc98eo12 foreign key (company_id) references company (nip)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), company_id bigint not null, search_id bigint not null, survey_id bigint not null, primary key (id_advertisement)) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id bigint not null, company_id bigint not null, customer_id bigint not null, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, user_id bigint not null, primary key (nip)) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, user_id bigint not null, primary key (id_customer)) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_id bigint not null, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id bigint not null, customer_id bigint not null, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id bigint not null, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_id bigint not null, primary key (id_survey)) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, primary key (id_user)) engine=InnoDB
alter table advertisement add constraint UK_14egs4qm8u08xlrdcp24gacpo unique (search_id)
alter table application add constraint UK_soj9nie0qdj6b3jdwel6wwnuk unique (advertisement_id)
alter table company add constraint UK_g82ixrst2tc542u5s214ggpdf unique (user_id)
alter table customer add constraint UK_j7ja2xvrxudhvssosd4nu1o92 unique (user_id)
alter table cv add constraint UK_7nsstl9x9nrjxv264fx1ngx0m unique (customer_id)
alter table survey add constraint UK_6hettjbyknyxu85xaehqlk1jq unique (company_id)
alter table advertisement add constraint FKosjshkro6r0jfxjanm58alfmf foreign key (company_id) references company (nip)
alter table advertisement add constraint FKixeuwtd60vpirxbnr0j2kswp7 foreign key (search_id) references search (id_categories_of_search)
alter table advertisement add constraint FK7bqxdh5qhiwywfha1csbibdg foreign key (survey_id) references survey (id_survey)
alter table application add constraint FK5wwcphcwd1u08fenhtbvyg14p foreign key (advertisement_id) references advertisement (id_advertisement)
alter table application add constraint FKjm4svmen8mv59grpbgjp5v1ml foreign key (company_id) references company (nip)
alter table application add constraint FKdih65y3ywnh2g5ddjae3ud4kw foreign key (customer_id) references customer (id_customer)
alter table certificate add constraint FKbin167gb15lctd21ocemxja99 foreign key (customer_id) references customer (id_customer)
alter table company add constraint FKdy4v2yb46hefqicjpyj7b7e4s foreign key (user_id) references user (id_user)
alter table course add constraint FK418pvmlvhrll9ilj6uprdchp6 foreign key (customer_id) references customer (id_customer)
alter table customer add constraint FKj8dlm21j202cadsbfkoem0s58 foreign key (user_id) references user (id_user)
alter table cv add constraint FKaejxs9ixrvnawdyag0kmsp8sf foreign key (customer_id) references customer (id_customer)
alter table message add constraint FKcwsjctg2caabo17bol1qv7iff foreign key (company_id) references company (nip)
alter table message add constraint FKg2pmh6bgwe0dqobetgwdrv47d foreign key (customer_id) references customer (id_customer)
alter table question add constraint FK65ro96jafjvulbqu8ia0pb254 foreign key (survey_id) references survey (id_survey)
alter table survey add constraint FKo5sdismkcu0pgey32yc98eo12 foreign key (company_id) references company (nip)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), company_id bigint not null, search_id bigint not null, survey_id bigint not null, primary key (id_advertisement)) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id bigint not null, company_id bigint not null, customer_id bigint not null, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, user_id bigint not null, primary key (nip)) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, user_id bigint not null, primary key (id_customer)) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_id bigint not null, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id bigint not null, customer_id bigint not null, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id bigint not null, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_id bigint not null, primary key (id_survey)) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, primary key (id_user)) engine=InnoDB
alter table advertisement add constraint UK_14egs4qm8u08xlrdcp24gacpo unique (search_id)
alter table application add constraint UK_soj9nie0qdj6b3jdwel6wwnuk unique (advertisement_id)
alter table company add constraint UK_g82ixrst2tc542u5s214ggpdf unique (user_id)
alter table customer add constraint UK_j7ja2xvrxudhvssosd4nu1o92 unique (user_id)
alter table cv add constraint UK_7nsstl9x9nrjxv264fx1ngx0m unique (customer_id)
alter table survey add constraint UK_6hettjbyknyxu85xaehqlk1jq unique (company_id)
alter table advertisement add constraint FKosjshkro6r0jfxjanm58alfmf foreign key (company_id) references company (nip)
alter table advertisement add constraint FKixeuwtd60vpirxbnr0j2kswp7 foreign key (search_id) references search (id_categories_of_search)
alter table advertisement add constraint FK7bqxdh5qhiwywfha1csbibdg foreign key (survey_id) references survey (id_survey)
alter table application add constraint FK5wwcphcwd1u08fenhtbvyg14p foreign key (advertisement_id) references advertisement (id_advertisement)
alter table application add constraint FKjm4svmen8mv59grpbgjp5v1ml foreign key (company_id) references company (nip)
alter table application add constraint FKdih65y3ywnh2g5ddjae3ud4kw foreign key (customer_id) references customer (id_customer)
alter table certificate add constraint FKbin167gb15lctd21ocemxja99 foreign key (customer_id) references customer (id_customer)
alter table company add constraint FKdy4v2yb46hefqicjpyj7b7e4s foreign key (user_id) references user (id_user)
alter table course add constraint FK418pvmlvhrll9ilj6uprdchp6 foreign key (customer_id) references customer (id_customer)
alter table customer add constraint FKj8dlm21j202cadsbfkoem0s58 foreign key (user_id) references user (id_user)
alter table cv add constraint FKaejxs9ixrvnawdyag0kmsp8sf foreign key (customer_id) references customer (id_customer)
alter table message add constraint FKcwsjctg2caabo17bol1qv7iff foreign key (company_id) references company (nip)
alter table message add constraint FKg2pmh6bgwe0dqobetgwdrv47d foreign key (customer_id) references customer (id_customer)
alter table question add constraint FK65ro96jafjvulbqu8ia0pb254 foreign key (survey_id) references survey (id_survey)
alter table survey add constraint FKo5sdismkcu0pgey32yc98eo12 foreign key (company_id) references company (nip)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), company_id bigint not null, search_id bigint not null, survey_id bigint not null, primary key (id_advertisement)) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id bigint not null, company_id bigint not null, customer_id bigint not null, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, user_id bigint not null, primary key (nip)) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, user_id bigint not null, primary key (id_customer)) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_id bigint not null, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id bigint not null, customer_id bigint not null, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id bigint not null, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_id bigint not null, primary key (id_survey)) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, primary key (id_user)) engine=InnoDB
alter table advertisement add constraint UK_14egs4qm8u08xlrdcp24gacpo unique (search_id)
alter table application add constraint UK_soj9nie0qdj6b3jdwel6wwnuk unique (advertisement_id)
alter table company add constraint UK_g82ixrst2tc542u5s214ggpdf unique (user_id)
alter table customer add constraint UK_j7ja2xvrxudhvssosd4nu1o92 unique (user_id)
alter table cv add constraint UK_7nsstl9x9nrjxv264fx1ngx0m unique (customer_id)
alter table survey add constraint UK_6hettjbyknyxu85xaehqlk1jq unique (company_id)
alter table advertisement add constraint FKosjshkro6r0jfxjanm58alfmf foreign key (company_id) references company (nip)
alter table advertisement add constraint FKixeuwtd60vpirxbnr0j2kswp7 foreign key (search_id) references search (id_categories_of_search)
alter table advertisement add constraint FK7bqxdh5qhiwywfha1csbibdg foreign key (survey_id) references survey (id_survey)
alter table application add constraint FK5wwcphcwd1u08fenhtbvyg14p foreign key (advertisement_id) references advertisement (id_advertisement)
alter table application add constraint FKjm4svmen8mv59grpbgjp5v1ml foreign key (company_id) references company (nip)
alter table application add constraint FKdih65y3ywnh2g5ddjae3ud4kw foreign key (customer_id) references customer (id_customer)
alter table certificate add constraint FKbin167gb15lctd21ocemxja99 foreign key (customer_id) references customer (id_customer)
alter table company add constraint FKdy4v2yb46hefqicjpyj7b7e4s foreign key (user_id) references user (id_user)
alter table course add constraint FK418pvmlvhrll9ilj6uprdchp6 foreign key (customer_id) references customer (id_customer)
alter table customer add constraint FKj8dlm21j202cadsbfkoem0s58 foreign key (user_id) references user (id_user)
alter table cv add constraint FKaejxs9ixrvnawdyag0kmsp8sf foreign key (customer_id) references customer (id_customer)
alter table message add constraint FKcwsjctg2caabo17bol1qv7iff foreign key (company_id) references company (nip)
alter table message add constraint FKg2pmh6bgwe0dqobetgwdrv47d foreign key (customer_id) references customer (id_customer)
alter table question add constraint FK65ro96jafjvulbqu8ia0pb254 foreign key (survey_id) references survey (id_survey)
alter table survey add constraint FKo5sdismkcu0pgey32yc98eo12 foreign key (company_id) references company (nip)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), company_id bigint not null, search_id bigint not null, survey_id bigint not null, primary key (id_advertisement)) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id bigint not null, company_id bigint not null, customer_id bigint not null, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, user_id_user bigint not null, primary key (nip)) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, user_id bigint not null, primary key (id_customer)) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_id bigint not null, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id bigint not null, customer_id bigint not null, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id bigint not null, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_id bigint not null, primary key (id_survey)) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, primary key (id_user)) engine=InnoDB
alter table advertisement add constraint UK_14egs4qm8u08xlrdcp24gacpo unique (search_id)
alter table application add constraint UK_soj9nie0qdj6b3jdwel6wwnuk unique (advertisement_id)
alter table company add constraint UK_3xbfcaugdxxm5gfpydp7x58ml unique (user_id_user)
alter table customer add constraint UK_j7ja2xvrxudhvssosd4nu1o92 unique (user_id)
alter table cv add constraint UK_7nsstl9x9nrjxv264fx1ngx0m unique (customer_id)
alter table survey add constraint UK_6hettjbyknyxu85xaehqlk1jq unique (company_id)
alter table advertisement add constraint FKosjshkro6r0jfxjanm58alfmf foreign key (company_id) references company (nip)
alter table advertisement add constraint FKixeuwtd60vpirxbnr0j2kswp7 foreign key (search_id) references search (id_categories_of_search)
alter table advertisement add constraint FK7bqxdh5qhiwywfha1csbibdg foreign key (survey_id) references survey (id_survey)
alter table application add constraint FK5wwcphcwd1u08fenhtbvyg14p foreign key (advertisement_id) references advertisement (id_advertisement)
alter table application add constraint FKjm4svmen8mv59grpbgjp5v1ml foreign key (company_id) references company (nip)
alter table application add constraint FKdih65y3ywnh2g5ddjae3ud4kw foreign key (customer_id) references customer (id_customer)
alter table certificate add constraint FKbin167gb15lctd21ocemxja99 foreign key (customer_id) references customer (id_customer)
alter table company add constraint FK2myk4ewa1oemi5hwab5vwhnol foreign key (user_id_user) references user (id_user)
alter table course add constraint FK418pvmlvhrll9ilj6uprdchp6 foreign key (customer_id) references customer (id_customer)
alter table customer add constraint FKj8dlm21j202cadsbfkoem0s58 foreign key (user_id) references user (id_user)
alter table cv add constraint FKaejxs9ixrvnawdyag0kmsp8sf foreign key (customer_id) references customer (id_customer)
alter table message add constraint FKcwsjctg2caabo17bol1qv7iff foreign key (company_id) references company (nip)
alter table message add constraint FKg2pmh6bgwe0dqobetgwdrv47d foreign key (customer_id) references customer (id_customer)
alter table question add constraint FK65ro96jafjvulbqu8ia0pb254 foreign key (survey_id) references survey (id_survey)
alter table survey add constraint FKo5sdismkcu0pgey32yc98eo12 foreign key (company_id) references company (nip)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), company_id bigint not null, search_id bigint not null, survey_id bigint not null, primary key (id_advertisement)) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id bigint not null, company_id bigint not null, customer_id bigint not null, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, user_id_user bigint not null, primary key (nip)) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, user_id bigint not null, primary key (id_customer)) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_id bigint not null, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id bigint not null, customer_id bigint not null, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id bigint not null, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_id bigint not null, primary key (id_survey)) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, primary key (id_user)) engine=InnoDB
alter table advertisement add constraint UK_14egs4qm8u08xlrdcp24gacpo unique (search_id)
alter table application add constraint UK_soj9nie0qdj6b3jdwel6wwnuk unique (advertisement_id)
alter table company add constraint UK_3xbfcaugdxxm5gfpydp7x58ml unique (user_id_user)
alter table customer add constraint UK_j7ja2xvrxudhvssosd4nu1o92 unique (user_id)
alter table cv add constraint UK_7nsstl9x9nrjxv264fx1ngx0m unique (customer_id)
alter table survey add constraint UK_6hettjbyknyxu85xaehqlk1jq unique (company_id)
alter table advertisement add constraint FKosjshkro6r0jfxjanm58alfmf foreign key (company_id) references company (nip)
alter table advertisement add constraint FKixeuwtd60vpirxbnr0j2kswp7 foreign key (search_id) references search (id_categories_of_search)
alter table advertisement add constraint FK7bqxdh5qhiwywfha1csbibdg foreign key (survey_id) references survey (id_survey)
alter table application add constraint FK5wwcphcwd1u08fenhtbvyg14p foreign key (advertisement_id) references advertisement (id_advertisement)
alter table application add constraint FKjm4svmen8mv59grpbgjp5v1ml foreign key (company_id) references company (nip)
alter table application add constraint FKdih65y3ywnh2g5ddjae3ud4kw foreign key (customer_id) references customer (id_customer)
alter table certificate add constraint FKbin167gb15lctd21ocemxja99 foreign key (customer_id) references customer (id_customer)
alter table company add constraint FK2myk4ewa1oemi5hwab5vwhnol foreign key (user_id_user) references user (id_user)
alter table course add constraint FK418pvmlvhrll9ilj6uprdchp6 foreign key (customer_id) references customer (id_customer)
alter table customer add constraint FKj8dlm21j202cadsbfkoem0s58 foreign key (user_id) references user (id_user)
alter table cv add constraint FKaejxs9ixrvnawdyag0kmsp8sf foreign key (customer_id) references customer (id_customer)
alter table message add constraint FKcwsjctg2caabo17bol1qv7iff foreign key (company_id) references company (nip)
alter table message add constraint FKg2pmh6bgwe0dqobetgwdrv47d foreign key (customer_id) references customer (id_customer)
alter table question add constraint FK65ro96jafjvulbqu8ia0pb254 foreign key (survey_id) references survey (id_survey)
alter table survey add constraint FKo5sdismkcu0pgey32yc98eo12 foreign key (company_id) references company (nip)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), company_id bigint not null, search_id bigint not null, survey_id bigint not null, primary key (id_advertisement)) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id bigint not null, company_id bigint not null, customer_id bigint not null, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, user_id_user bigint not null, primary key (nip)) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, user_id bigint not null, primary key (id_customer)) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_id bigint not null, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id bigint not null, customer_id bigint not null, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id bigint not null, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_id bigint not null, primary key (id_survey)) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, primary key (id_user)) engine=InnoDB
alter table advertisement add constraint UK_14egs4qm8u08xlrdcp24gacpo unique (search_id)
alter table application add constraint UK_soj9nie0qdj6b3jdwel6wwnuk unique (advertisement_id)
alter table company add constraint UK_3xbfcaugdxxm5gfpydp7x58ml unique (user_id_user)
alter table customer add constraint UK_j7ja2xvrxudhvssosd4nu1o92 unique (user_id)
alter table cv add constraint UK_7nsstl9x9nrjxv264fx1ngx0m unique (customer_id)
alter table survey add constraint UK_6hettjbyknyxu85xaehqlk1jq unique (company_id)
alter table advertisement add constraint FKosjshkro6r0jfxjanm58alfmf foreign key (company_id) references company (nip)
alter table advertisement add constraint FKixeuwtd60vpirxbnr0j2kswp7 foreign key (search_id) references search (id_categories_of_search)
alter table advertisement add constraint FK7bqxdh5qhiwywfha1csbibdg foreign key (survey_id) references survey (id_survey)
alter table application add constraint FK5wwcphcwd1u08fenhtbvyg14p foreign key (advertisement_id) references advertisement (id_advertisement)
alter table application add constraint FKjm4svmen8mv59grpbgjp5v1ml foreign key (company_id) references company (nip)
alter table application add constraint FKdih65y3ywnh2g5ddjae3ud4kw foreign key (customer_id) references customer (id_customer)
alter table certificate add constraint FKbin167gb15lctd21ocemxja99 foreign key (customer_id) references customer (id_customer)
alter table company add constraint FK2myk4ewa1oemi5hwab5vwhnol foreign key (user_id_user) references user (id_user)
alter table course add constraint FK418pvmlvhrll9ilj6uprdchp6 foreign key (customer_id) references customer (id_customer)
alter table customer add constraint FKj8dlm21j202cadsbfkoem0s58 foreign key (user_id) references user (id_user)
alter table cv add constraint FKaejxs9ixrvnawdyag0kmsp8sf foreign key (customer_id) references customer (id_customer)
alter table message add constraint FKcwsjctg2caabo17bol1qv7iff foreign key (company_id) references company (nip)
alter table message add constraint FKg2pmh6bgwe0dqobetgwdrv47d foreign key (customer_id) references customer (id_customer)
alter table question add constraint FK65ro96jafjvulbqu8ia0pb254 foreign key (survey_id) references survey (id_survey)
alter table survey add constraint FKo5sdismkcu0pgey32yc98eo12 foreign key (company_id) references company (nip)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), company_id bigint not null, search_id bigint not null, survey_id bigint not null, primary key (id_advertisement)) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id bigint not null, company_id bigint not null, customer_id bigint not null, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, user_id_user bigint not null, primary key (nip)) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, user_id bigint not null, primary key (id_customer)) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_id bigint not null, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id bigint not null, customer_id bigint not null, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id bigint not null, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_id bigint not null, primary key (id_survey)) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, primary key (id_user)) engine=InnoDB
alter table advertisement add constraint UK_14egs4qm8u08xlrdcp24gacpo unique (search_id)
alter table application add constraint UK_soj9nie0qdj6b3jdwel6wwnuk unique (advertisement_id)
alter table company add constraint UK_3xbfcaugdxxm5gfpydp7x58ml unique (user_id_user)
alter table customer add constraint UK_j7ja2xvrxudhvssosd4nu1o92 unique (user_id)
alter table cv add constraint UK_7nsstl9x9nrjxv264fx1ngx0m unique (customer_id)
alter table survey add constraint UK_6hettjbyknyxu85xaehqlk1jq unique (company_id)
alter table advertisement add constraint FKosjshkro6r0jfxjanm58alfmf foreign key (company_id) references company (nip)
alter table advertisement add constraint FKixeuwtd60vpirxbnr0j2kswp7 foreign key (search_id) references search (id_categories_of_search)
alter table advertisement add constraint FK7bqxdh5qhiwywfha1csbibdg foreign key (survey_id) references survey (id_survey)
alter table application add constraint FK5wwcphcwd1u08fenhtbvyg14p foreign key (advertisement_id) references advertisement (id_advertisement)
alter table application add constraint FKjm4svmen8mv59grpbgjp5v1ml foreign key (company_id) references company (nip)
alter table application add constraint FKdih65y3ywnh2g5ddjae3ud4kw foreign key (customer_id) references customer (id_customer)
alter table certificate add constraint FKbin167gb15lctd21ocemxja99 foreign key (customer_id) references customer (id_customer)
alter table company add constraint FK2myk4ewa1oemi5hwab5vwhnol foreign key (user_id_user) references user (id_user)
alter table course add constraint FK418pvmlvhrll9ilj6uprdchp6 foreign key (customer_id) references customer (id_customer)
alter table customer add constraint FKj8dlm21j202cadsbfkoem0s58 foreign key (user_id) references user (id_user)
alter table cv add constraint FKaejxs9ixrvnawdyag0kmsp8sf foreign key (customer_id) references customer (id_customer)
alter table message add constraint FKcwsjctg2caabo17bol1qv7iff foreign key (company_id) references company (nip)
alter table message add constraint FKg2pmh6bgwe0dqobetgwdrv47d foreign key (customer_id) references customer (id_customer)
alter table question add constraint FK65ro96jafjvulbqu8ia0pb254 foreign key (survey_id) references survey (id_survey)
alter table survey add constraint FKo5sdismkcu0pgey32yc98eo12 foreign key (company_id) references company (nip)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), company_id bigint not null, search_id bigint not null, survey_id bigint not null, primary key (id_advertisement)) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id bigint not null, company_id bigint not null, customer_id bigint not null, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, user_id_user bigint not null, primary key (nip)) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, user_id bigint not null, primary key (id_customer)) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_id bigint not null, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id bigint not null, customer_id bigint not null, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id bigint not null, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_id bigint not null, primary key (id_survey)) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, primary key (id_user)) engine=InnoDB
alter table advertisement add constraint UK_14egs4qm8u08xlrdcp24gacpo unique (search_id)
alter table application add constraint UK_soj9nie0qdj6b3jdwel6wwnuk unique (advertisement_id)
alter table company add constraint UK_3xbfcaugdxxm5gfpydp7x58ml unique (user_id_user)
alter table customer add constraint UK_j7ja2xvrxudhvssosd4nu1o92 unique (user_id)
alter table cv add constraint UK_7nsstl9x9nrjxv264fx1ngx0m unique (customer_id)
alter table survey add constraint UK_6hettjbyknyxu85xaehqlk1jq unique (company_id)
alter table advertisement add constraint FKosjshkro6r0jfxjanm58alfmf foreign key (company_id) references company (nip)
alter table advertisement add constraint FKixeuwtd60vpirxbnr0j2kswp7 foreign key (search_id) references search (id_categories_of_search)
alter table advertisement add constraint FK7bqxdh5qhiwywfha1csbibdg foreign key (survey_id) references survey (id_survey)
alter table application add constraint FK5wwcphcwd1u08fenhtbvyg14p foreign key (advertisement_id) references advertisement (id_advertisement)
alter table application add constraint FKjm4svmen8mv59grpbgjp5v1ml foreign key (company_id) references company (nip)
alter table application add constraint FKdih65y3ywnh2g5ddjae3ud4kw foreign key (customer_id) references customer (id_customer)
alter table certificate add constraint FKbin167gb15lctd21ocemxja99 foreign key (customer_id) references customer (id_customer)
alter table company add constraint FK2myk4ewa1oemi5hwab5vwhnol foreign key (user_id_user) references user (id_user)
alter table course add constraint FK418pvmlvhrll9ilj6uprdchp6 foreign key (customer_id) references customer (id_customer)
alter table customer add constraint FKj8dlm21j202cadsbfkoem0s58 foreign key (user_id) references user (id_user)
alter table cv add constraint FKaejxs9ixrvnawdyag0kmsp8sf foreign key (customer_id) references customer (id_customer)
alter table message add constraint FKcwsjctg2caabo17bol1qv7iff foreign key (company_id) references company (nip)
alter table message add constraint FKg2pmh6bgwe0dqobetgwdrv47d foreign key (customer_id) references customer (id_customer)
alter table question add constraint FK65ro96jafjvulbqu8ia0pb254 foreign key (survey_id) references survey (id_survey)
alter table survey add constraint FKo5sdismkcu0pgey32yc98eo12 foreign key (company_id) references company (nip)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), company_id bigint not null, search_id bigint not null, survey_id bigint not null, primary key (id_advertisement)) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id bigint not null, company_id bigint not null, customer_id bigint not null, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, user_id_user bigint not null, primary key (nip)) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, user_id bigint not null, primary key (id_customer)) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_id bigint not null, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id bigint not null, customer_id bigint not null, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id bigint not null, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_id bigint not null, primary key (id_survey)) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, primary key (id_user)) engine=InnoDB
alter table advertisement add constraint UK_14egs4qm8u08xlrdcp24gacpo unique (search_id)
alter table application add constraint UK_soj9nie0qdj6b3jdwel6wwnuk unique (advertisement_id)
alter table company add constraint UK_3xbfcaugdxxm5gfpydp7x58ml unique (user_id_user)
alter table customer add constraint UK_j7ja2xvrxudhvssosd4nu1o92 unique (user_id)
alter table cv add constraint UK_7nsstl9x9nrjxv264fx1ngx0m unique (customer_id)
alter table survey add constraint UK_6hettjbyknyxu85xaehqlk1jq unique (company_id)
alter table advertisement add constraint FKosjshkro6r0jfxjanm58alfmf foreign key (company_id) references company (nip)
alter table advertisement add constraint FKixeuwtd60vpirxbnr0j2kswp7 foreign key (search_id) references search (id_categories_of_search)
alter table advertisement add constraint FK7bqxdh5qhiwywfha1csbibdg foreign key (survey_id) references survey (id_survey)
alter table application add constraint FK5wwcphcwd1u08fenhtbvyg14p foreign key (advertisement_id) references advertisement (id_advertisement)
alter table application add constraint FKjm4svmen8mv59grpbgjp5v1ml foreign key (company_id) references company (nip)
alter table application add constraint FKdih65y3ywnh2g5ddjae3ud4kw foreign key (customer_id) references customer (id_customer)
alter table certificate add constraint FKbin167gb15lctd21ocemxja99 foreign key (customer_id) references customer (id_customer)
alter table company add constraint FK2myk4ewa1oemi5hwab5vwhnol foreign key (user_id_user) references user (id_user)
alter table course add constraint FK418pvmlvhrll9ilj6uprdchp6 foreign key (customer_id) references customer (id_customer)
alter table customer add constraint FKj8dlm21j202cadsbfkoem0s58 foreign key (user_id) references user (id_user)
alter table cv add constraint FKaejxs9ixrvnawdyag0kmsp8sf foreign key (customer_id) references customer (id_customer)
alter table message add constraint FKcwsjctg2caabo17bol1qv7iff foreign key (company_id) references company (nip)
alter table message add constraint FKg2pmh6bgwe0dqobetgwdrv47d foreign key (customer_id) references customer (id_customer)
alter table question add constraint FK65ro96jafjvulbqu8ia0pb254 foreign key (survey_id) references survey (id_survey)
alter table survey add constraint FKo5sdismkcu0pgey32yc98eo12 foreign key (company_id) references company (nip)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), company_id bigint not null, search_id bigint not null, survey_id bigint not null, primary key (id_advertisement)) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id bigint not null, company_id bigint not null, customer_id bigint not null, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, user_id_user bigint not null, primary key (nip)) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, user_id bigint not null, primary key (id_customer)) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_id bigint not null, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id bigint not null, customer_id bigint not null, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id bigint not null, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_id bigint not null, primary key (id_survey)) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, primary key (id_user)) engine=InnoDB
alter table advertisement add constraint UK_14egs4qm8u08xlrdcp24gacpo unique (search_id)
alter table application add constraint UK_soj9nie0qdj6b3jdwel6wwnuk unique (advertisement_id)
alter table company add constraint UK_3xbfcaugdxxm5gfpydp7x58ml unique (user_id_user)
alter table customer add constraint UK_j7ja2xvrxudhvssosd4nu1o92 unique (user_id)
alter table cv add constraint UK_7nsstl9x9nrjxv264fx1ngx0m unique (customer_id)
alter table survey add constraint UK_6hettjbyknyxu85xaehqlk1jq unique (company_id)
alter table advertisement add constraint FKosjshkro6r0jfxjanm58alfmf foreign key (company_id) references company (nip)
alter table advertisement add constraint FKixeuwtd60vpirxbnr0j2kswp7 foreign key (search_id) references search (id_categories_of_search)
alter table advertisement add constraint FK7bqxdh5qhiwywfha1csbibdg foreign key (survey_id) references survey (id_survey)
alter table application add constraint FK5wwcphcwd1u08fenhtbvyg14p foreign key (advertisement_id) references advertisement (id_advertisement)
alter table application add constraint FKjm4svmen8mv59grpbgjp5v1ml foreign key (company_id) references company (nip)
alter table application add constraint FKdih65y3ywnh2g5ddjae3ud4kw foreign key (customer_id) references customer (id_customer)
alter table certificate add constraint FKbin167gb15lctd21ocemxja99 foreign key (customer_id) references customer (id_customer)
alter table company add constraint FK2myk4ewa1oemi5hwab5vwhnol foreign key (user_id_user) references user (id_user)
alter table course add constraint FK418pvmlvhrll9ilj6uprdchp6 foreign key (customer_id) references customer (id_customer)
alter table customer add constraint FKj8dlm21j202cadsbfkoem0s58 foreign key (user_id) references user (id_user)
alter table cv add constraint FKaejxs9ixrvnawdyag0kmsp8sf foreign key (customer_id) references customer (id_customer)
alter table message add constraint FKcwsjctg2caabo17bol1qv7iff foreign key (company_id) references company (nip)
alter table message add constraint FKg2pmh6bgwe0dqobetgwdrv47d foreign key (customer_id) references customer (id_customer)
alter table question add constraint FK65ro96jafjvulbqu8ia0pb254 foreign key (survey_id) references survey (id_survey)
alter table survey add constraint FKo5sdismkcu0pgey32yc98eo12 foreign key (company_id) references company (nip)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), company_id bigint not null, search_id bigint not null, survey_id bigint not null, primary key (id_advertisement)) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id bigint not null, company_id bigint not null, customer_id bigint not null, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, primary key (nip)) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, user_id bigint not null, primary key (id_customer)) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_id bigint not null, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id bigint not null, customer_id bigint not null, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id bigint not null, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_id bigint not null, primary key (id_survey)) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, primary key (id_user)) engine=InnoDB
alter table advertisement add constraint UK_14egs4qm8u08xlrdcp24gacpo unique (search_id)
alter table application add constraint UK_soj9nie0qdj6b3jdwel6wwnuk unique (advertisement_id)
alter table customer add constraint UK_j7ja2xvrxudhvssosd4nu1o92 unique (user_id)
alter table cv add constraint UK_7nsstl9x9nrjxv264fx1ngx0m unique (customer_id)
alter table survey add constraint UK_6hettjbyknyxu85xaehqlk1jq unique (company_id)
alter table advertisement add constraint FKosjshkro6r0jfxjanm58alfmf foreign key (company_id) references company (nip)
alter table advertisement add constraint FKixeuwtd60vpirxbnr0j2kswp7 foreign key (search_id) references search (id_categories_of_search)
alter table advertisement add constraint FK7bqxdh5qhiwywfha1csbibdg foreign key (survey_id) references survey (id_survey)
alter table application add constraint FK5wwcphcwd1u08fenhtbvyg14p foreign key (advertisement_id) references advertisement (id_advertisement)
alter table application add constraint FKjm4svmen8mv59grpbgjp5v1ml foreign key (company_id) references company (nip)
alter table application add constraint FKdih65y3ywnh2g5ddjae3ud4kw foreign key (customer_id) references customer (id_customer)
alter table certificate add constraint FKbin167gb15lctd21ocemxja99 foreign key (customer_id) references customer (id_customer)
alter table course add constraint FK418pvmlvhrll9ilj6uprdchp6 foreign key (customer_id) references customer (id_customer)
alter table customer add constraint FKj8dlm21j202cadsbfkoem0s58 foreign key (user_id) references user (id_user)
alter table cv add constraint FKaejxs9ixrvnawdyag0kmsp8sf foreign key (customer_id) references customer (id_customer)
alter table message add constraint FKcwsjctg2caabo17bol1qv7iff foreign key (company_id) references company (nip)
alter table message add constraint FKg2pmh6bgwe0dqobetgwdrv47d foreign key (customer_id) references customer (id_customer)
alter table question add constraint FK65ro96jafjvulbqu8ia0pb254 foreign key (survey_id) references survey (id_survey)
alter table survey add constraint FKo5sdismkcu0pgey32yc98eo12 foreign key (company_id) references company (nip)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), company_id bigint not null, search_id bigint not null, survey_id bigint not null, primary key (id_advertisement)) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id bigint not null, company_id bigint not null, customer_id bigint not null, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, user_id_user bigint not null, primary key (nip)) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, primary key (id_customer)) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_id bigint not null, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id bigint not null, customer_id bigint not null, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id bigint not null, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_id bigint not null, primary key (id_survey)) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, primary key (id_user)) engine=InnoDB
alter table advertisement add constraint UK_14egs4qm8u08xlrdcp24gacpo unique (search_id)
alter table application add constraint UK_soj9nie0qdj6b3jdwel6wwnuk unique (advertisement_id)
alter table company add constraint UK_3xbfcaugdxxm5gfpydp7x58ml unique (user_id_user)
alter table cv add constraint UK_7nsstl9x9nrjxv264fx1ngx0m unique (customer_id)
alter table survey add constraint UK_6hettjbyknyxu85xaehqlk1jq unique (company_id)
alter table advertisement add constraint FKosjshkro6r0jfxjanm58alfmf foreign key (company_id) references company (nip)
alter table advertisement add constraint FKixeuwtd60vpirxbnr0j2kswp7 foreign key (search_id) references search (id_categories_of_search)
alter table advertisement add constraint FK7bqxdh5qhiwywfha1csbibdg foreign key (survey_id) references survey (id_survey)
alter table application add constraint FK5wwcphcwd1u08fenhtbvyg14p foreign key (advertisement_id) references advertisement (id_advertisement)
alter table application add constraint FKjm4svmen8mv59grpbgjp5v1ml foreign key (company_id) references company (nip)
alter table application add constraint FKdih65y3ywnh2g5ddjae3ud4kw foreign key (customer_id) references customer (id_customer)
alter table certificate add constraint FKbin167gb15lctd21ocemxja99 foreign key (customer_id) references customer (id_customer)
alter table company add constraint FK2myk4ewa1oemi5hwab5vwhnol foreign key (user_id_user) references user (id_user)
alter table course add constraint FK418pvmlvhrll9ilj6uprdchp6 foreign key (customer_id) references customer (id_customer)
alter table cv add constraint FKaejxs9ixrvnawdyag0kmsp8sf foreign key (customer_id) references customer (id_customer)
alter table message add constraint FKcwsjctg2caabo17bol1qv7iff foreign key (company_id) references company (nip)
alter table message add constraint FKg2pmh6bgwe0dqobetgwdrv47d foreign key (customer_id) references customer (id_customer)
alter table question add constraint FK65ro96jafjvulbqu8ia0pb254 foreign key (survey_id) references survey (id_survey)
alter table survey add constraint FKo5sdismkcu0pgey32yc98eo12 foreign key (company_id) references company (nip)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), company_id bigint not null, search_id bigint not null, survey_id bigint not null, primary key (id_advertisement)) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id bigint not null, company_id bigint not null, customer_id bigint not null, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, primary key (nip)) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, primary key (id_customer)) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_id bigint not null, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id bigint not null, customer_id bigint not null, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id bigint not null, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_id bigint not null, primary key (id_survey)) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, primary key (id_user)) engine=InnoDB
alter table advertisement add constraint UK_14egs4qm8u08xlrdcp24gacpo unique (search_id)
alter table application add constraint UK_soj9nie0qdj6b3jdwel6wwnuk unique (advertisement_id)
alter table cv add constraint UK_7nsstl9x9nrjxv264fx1ngx0m unique (customer_id)
alter table survey add constraint UK_6hettjbyknyxu85xaehqlk1jq unique (company_id)
alter table advertisement add constraint FKosjshkro6r0jfxjanm58alfmf foreign key (company_id) references company (nip)
alter table advertisement add constraint FKixeuwtd60vpirxbnr0j2kswp7 foreign key (search_id) references search (id_categories_of_search)
alter table advertisement add constraint FK7bqxdh5qhiwywfha1csbibdg foreign key (survey_id) references survey (id_survey)
alter table application add constraint FK5wwcphcwd1u08fenhtbvyg14p foreign key (advertisement_id) references advertisement (id_advertisement)
alter table application add constraint FKjm4svmen8mv59grpbgjp5v1ml foreign key (company_id) references company (nip)
alter table application add constraint FKdih65y3ywnh2g5ddjae3ud4kw foreign key (customer_id) references customer (id_customer)
alter table certificate add constraint FKbin167gb15lctd21ocemxja99 foreign key (customer_id) references customer (id_customer)
alter table course add constraint FK418pvmlvhrll9ilj6uprdchp6 foreign key (customer_id) references customer (id_customer)
alter table cv add constraint FKaejxs9ixrvnawdyag0kmsp8sf foreign key (customer_id) references customer (id_customer)
alter table message add constraint FKcwsjctg2caabo17bol1qv7iff foreign key (company_id) references company (nip)
alter table message add constraint FKg2pmh6bgwe0dqobetgwdrv47d foreign key (customer_id) references customer (id_customer)
alter table question add constraint FK65ro96jafjvulbqu8ia0pb254 foreign key (survey_id) references survey (id_survey)
alter table survey add constraint FKo5sdismkcu0pgey32yc98eo12 foreign key (company_id) references company (nip)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), company_id bigint not null, search_id bigint not null, survey_id bigint not null, primary key (id_advertisement)) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id bigint not null, company_id bigint not null, customer_id bigint not null, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, primary key (nip)) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, primary key (id_customer)) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_id bigint not null, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id bigint not null, customer_id bigint not null, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id bigint not null, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_id bigint not null, primary key (id_survey)) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, user_company bigint not null, user_customer bigint not null, primary key (id_user)) engine=InnoDB
alter table advertisement add constraint UK_14egs4qm8u08xlrdcp24gacpo unique (search_id)
alter table application add constraint UK_soj9nie0qdj6b3jdwel6wwnuk unique (advertisement_id)
alter table cv add constraint UK_7nsstl9x9nrjxv264fx1ngx0m unique (customer_id)
alter table survey add constraint UK_6hettjbyknyxu85xaehqlk1jq unique (company_id)
alter table user add constraint UK_3km89wn6ad6dbtb79l2qwl91g unique (user_company)
alter table user add constraint UK_aky4lo8jrmw3wd1eiakdgijdd unique (user_customer)
alter table advertisement add constraint FKosjshkro6r0jfxjanm58alfmf foreign key (company_id) references company (nip)
alter table advertisement add constraint FKixeuwtd60vpirxbnr0j2kswp7 foreign key (search_id) references search (id_categories_of_search)
alter table advertisement add constraint FK7bqxdh5qhiwywfha1csbibdg foreign key (survey_id) references survey (id_survey)
alter table application add constraint FK5wwcphcwd1u08fenhtbvyg14p foreign key (advertisement_id) references advertisement (id_advertisement)
alter table application add constraint FKjm4svmen8mv59grpbgjp5v1ml foreign key (company_id) references company (nip)
alter table application add constraint FKdih65y3ywnh2g5ddjae3ud4kw foreign key (customer_id) references customer (id_customer)
alter table certificate add constraint FKbin167gb15lctd21ocemxja99 foreign key (customer_id) references customer (id_customer)
alter table course add constraint FK418pvmlvhrll9ilj6uprdchp6 foreign key (customer_id) references customer (id_customer)
alter table cv add constraint FKaejxs9ixrvnawdyag0kmsp8sf foreign key (customer_id) references customer (id_customer)
alter table message add constraint FKcwsjctg2caabo17bol1qv7iff foreign key (company_id) references company (nip)
alter table message add constraint FKg2pmh6bgwe0dqobetgwdrv47d foreign key (customer_id) references customer (id_customer)
alter table question add constraint FK65ro96jafjvulbqu8ia0pb254 foreign key (survey_id) references survey (id_survey)
alter table survey add constraint FKo5sdismkcu0pgey32yc98eo12 foreign key (company_id) references company (nip)
alter table user add constraint FKkipuxj1llue3f5qji152117yb foreign key (user_company) references company (nip)
alter table user add constraint FKrm2bkw3tt1ea39ywmkucmqkd6 foreign key (user_customer) references customer (id_customer)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), company_id bigint not null, search_id bigint not null, survey_id bigint not null, primary key (id_advertisement)) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id bigint not null, company_id bigint not null, customer_id bigint not null, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, primary key (nip)) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, user_id bigint not null, primary key (id_customer)) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_id bigint not null, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id bigint not null, customer_id bigint not null, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id bigint not null, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_id bigint not null, primary key (id_survey)) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, primary key (id_user)) engine=InnoDB
alter table advertisement add constraint UK_14egs4qm8u08xlrdcp24gacpo unique (search_id)
alter table application add constraint UK_soj9nie0qdj6b3jdwel6wwnuk unique (advertisement_id)
alter table customer add constraint UK_j7ja2xvrxudhvssosd4nu1o92 unique (user_id)
alter table cv add constraint UK_7nsstl9x9nrjxv264fx1ngx0m unique (customer_id)
alter table survey add constraint UK_6hettjbyknyxu85xaehqlk1jq unique (company_id)
alter table advertisement add constraint FKosjshkro6r0jfxjanm58alfmf foreign key (company_id) references company (nip)
alter table advertisement add constraint FKixeuwtd60vpirxbnr0j2kswp7 foreign key (search_id) references search (id_categories_of_search)
alter table advertisement add constraint FK7bqxdh5qhiwywfha1csbibdg foreign key (survey_id) references survey (id_survey)
alter table application add constraint FK5wwcphcwd1u08fenhtbvyg14p foreign key (advertisement_id) references advertisement (id_advertisement)
alter table application add constraint FKjm4svmen8mv59grpbgjp5v1ml foreign key (company_id) references company (nip)
alter table application add constraint FKdih65y3ywnh2g5ddjae3ud4kw foreign key (customer_id) references customer (id_customer)
alter table certificate add constraint FKbin167gb15lctd21ocemxja99 foreign key (customer_id) references customer (id_customer)
alter table course add constraint FK418pvmlvhrll9ilj6uprdchp6 foreign key (customer_id) references customer (id_customer)
alter table customer add constraint FKj8dlm21j202cadsbfkoem0s58 foreign key (user_id) references user (id_user)
alter table cv add constraint FKaejxs9ixrvnawdyag0kmsp8sf foreign key (customer_id) references customer (id_customer)
alter table message add constraint FKcwsjctg2caabo17bol1qv7iff foreign key (company_id) references company (nip)
alter table message add constraint FKg2pmh6bgwe0dqobetgwdrv47d foreign key (customer_id) references customer (id_customer)
alter table question add constraint FK65ro96jafjvulbqu8ia0pb254 foreign key (survey_id) references survey (id_survey)
alter table survey add constraint FKo5sdismkcu0pgey32yc98eo12 foreign key (company_id) references company (nip)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), company_id bigint not null, search_id bigint not null, survey_id bigint not null, primary key (id_advertisement)) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id bigint not null, company_id bigint not null, customer_id bigint not null, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, primary key (nip)) engine=InnoDB
create table course (id_course bigint not null, id_customer integer, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, user_id bigint not null, primary key (id_customer)) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), id_customer integer, personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_id bigint not null, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id bigint not null, customer_id bigint not null, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id bigint not null, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_id bigint not null, primary key (id_survey)) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, primary key (id_user)) engine=InnoDB
alter table advertisement add constraint UK_14egs4qm8u08xlrdcp24gacpo unique (search_id)
alter table application add constraint UK_soj9nie0qdj6b3jdwel6wwnuk unique (advertisement_id)
alter table customer add constraint UK_j7ja2xvrxudhvssosd4nu1o92 unique (user_id)
alter table cv add constraint UK_7nsstl9x9nrjxv264fx1ngx0m unique (customer_id)
alter table survey add constraint UK_6hettjbyknyxu85xaehqlk1jq unique (company_id)
alter table advertisement add constraint FKosjshkro6r0jfxjanm58alfmf foreign key (company_id) references company (nip)
alter table advertisement add constraint FKixeuwtd60vpirxbnr0j2kswp7 foreign key (search_id) references search (id_categories_of_search)
alter table advertisement add constraint FK7bqxdh5qhiwywfha1csbibdg foreign key (survey_id) references survey (id_survey)
alter table application add constraint FK5wwcphcwd1u08fenhtbvyg14p foreign key (advertisement_id) references advertisement (id_advertisement)
alter table application add constraint FKjm4svmen8mv59grpbgjp5v1ml foreign key (company_id) references company (nip)
alter table application add constraint FKdih65y3ywnh2g5ddjae3ud4kw foreign key (customer_id) references customer (id_customer)
alter table certificate add constraint FKbin167gb15lctd21ocemxja99 foreign key (customer_id) references customer (id_customer)
alter table course add constraint FK418pvmlvhrll9ilj6uprdchp6 foreign key (customer_id) references customer (id_customer)
alter table customer add constraint FKj8dlm21j202cadsbfkoem0s58 foreign key (user_id) references user (id_user)
alter table cv add constraint FKaejxs9ixrvnawdyag0kmsp8sf foreign key (customer_id) references customer (id_customer)
alter table message add constraint FKcwsjctg2caabo17bol1qv7iff foreign key (company_id) references company (nip)
alter table message add constraint FKg2pmh6bgwe0dqobetgwdrv47d foreign key (customer_id) references customer (id_customer)
alter table question add constraint FK65ro96jafjvulbqu8ia0pb254 foreign key (survey_id) references survey (id_survey)
alter table survey add constraint FKo5sdismkcu0pgey32yc98eo12 foreign key (company_id) references company (nip)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), company_id bigint not null, survey_id bigint not null, primary key (id_advertisement)) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id bigint not null, company_id bigint not null, customer_id bigint not null, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, primary key (nip)) engine=InnoDB
create table course (id_course bigint not null, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, user_id bigint not null, primary key (id_customer)) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_id bigint not null, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id bigint not null, customer_id bigint not null, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id bigint not null, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), search_id bigint not null, primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_id bigint not null, primary key (id_survey)) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, primary key (id_user)) engine=InnoDB
alter table application add constraint UK_soj9nie0qdj6b3jdwel6wwnuk unique (advertisement_id)
alter table customer add constraint UK_j7ja2xvrxudhvssosd4nu1o92 unique (user_id)
alter table cv add constraint UK_7nsstl9x9nrjxv264fx1ngx0m unique (customer_id)
alter table search add constraint UK_ase6p7naljjcit3tqqxub21dt unique (search_id)
alter table survey add constraint UK_6hettjbyknyxu85xaehqlk1jq unique (company_id)
alter table advertisement add constraint FKosjshkro6r0jfxjanm58alfmf foreign key (company_id) references company (nip)
alter table advertisement add constraint FK7bqxdh5qhiwywfha1csbibdg foreign key (survey_id) references survey (id_survey)
alter table application add constraint FK5wwcphcwd1u08fenhtbvyg14p foreign key (advertisement_id) references advertisement (id_advertisement)
alter table application add constraint FKjm4svmen8mv59grpbgjp5v1ml foreign key (company_id) references company (nip)
alter table application add constraint FKdih65y3ywnh2g5ddjae3ud4kw foreign key (customer_id) references customer (id_customer)
alter table certificate add constraint FKbin167gb15lctd21ocemxja99 foreign key (customer_id) references customer (id_customer)
alter table course add constraint FK418pvmlvhrll9ilj6uprdchp6 foreign key (customer_id) references customer (id_customer)
alter table customer add constraint FKj8dlm21j202cadsbfkoem0s58 foreign key (user_id) references user (id_user)
alter table cv add constraint FKaejxs9ixrvnawdyag0kmsp8sf foreign key (customer_id) references customer (id_customer)
alter table message add constraint FKcwsjctg2caabo17bol1qv7iff foreign key (company_id) references company (nip)
alter table message add constraint FKg2pmh6bgwe0dqobetgwdrv47d foreign key (customer_id) references customer (id_customer)
alter table question add constraint FK65ro96jafjvulbqu8ia0pb254 foreign key (survey_id) references survey (id_survey)
alter table search add constraint FK2vnr9pofue637m9wwwugb041l foreign key (search_id) references advertisement (id_advertisement)
alter table survey add constraint FKo5sdismkcu0pgey32yc98eo12 foreign key (company_id) references company (nip)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), company_id bigint not null, survey_id bigint not null, primary key (id_advertisement)) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id bigint not null, company_id bigint not null, customer_id bigint not null, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, user_id_user bigint not null, primary key (nip)) engine=InnoDB
create table course (id_course bigint not null, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, user_id bigint not null, primary key (id_customer)) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_id bigint not null, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id bigint not null, customer_id bigint not null, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id bigint not null, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), search_id bigint not null, primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_id bigint not null, primary key (id_survey)) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, primary key (id_user)) engine=InnoDB
alter table application add constraint UK_soj9nie0qdj6b3jdwel6wwnuk unique (advertisement_id)
alter table company add constraint UK_3xbfcaugdxxm5gfpydp7x58ml unique (user_id_user)
alter table customer add constraint UK_j7ja2xvrxudhvssosd4nu1o92 unique (user_id)
alter table cv add constraint UK_7nsstl9x9nrjxv264fx1ngx0m unique (customer_id)
alter table search add constraint UK_ase6p7naljjcit3tqqxub21dt unique (search_id)
alter table survey add constraint UK_6hettjbyknyxu85xaehqlk1jq unique (company_id)
alter table advertisement add constraint FKosjshkro6r0jfxjanm58alfmf foreign key (company_id) references company (nip)
alter table advertisement add constraint FK7bqxdh5qhiwywfha1csbibdg foreign key (survey_id) references survey (id_survey)
alter table application add constraint FK5wwcphcwd1u08fenhtbvyg14p foreign key (advertisement_id) references advertisement (id_advertisement)
alter table application add constraint FKjm4svmen8mv59grpbgjp5v1ml foreign key (company_id) references company (nip)
alter table application add constraint FKdih65y3ywnh2g5ddjae3ud4kw foreign key (customer_id) references customer (id_customer)
alter table certificate add constraint FKbin167gb15lctd21ocemxja99 foreign key (customer_id) references customer (id_customer)
alter table company add constraint FK2myk4ewa1oemi5hwab5vwhnol foreign key (user_id_user) references user (id_user)
alter table course add constraint FK418pvmlvhrll9ilj6uprdchp6 foreign key (customer_id) references customer (id_customer)
alter table customer add constraint FKj8dlm21j202cadsbfkoem0s58 foreign key (user_id) references user (id_user)
alter table cv add constraint FKaejxs9ixrvnawdyag0kmsp8sf foreign key (customer_id) references customer (id_customer)
alter table message add constraint FKcwsjctg2caabo17bol1qv7iff foreign key (company_id) references company (nip)
alter table message add constraint FKg2pmh6bgwe0dqobetgwdrv47d foreign key (customer_id) references customer (id_customer)
alter table question add constraint FK65ro96jafjvulbqu8ia0pb254 foreign key (survey_id) references survey (id_survey)
alter table search add constraint FK2vnr9pofue637m9wwwugb041l foreign key (search_id) references advertisement (id_advertisement)
alter table survey add constraint FKo5sdismkcu0pgey32yc98eo12 foreign key (company_id) references company (nip)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), company_id bigint not null, survey_id bigint not null, primary key (id_advertisement)) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id bigint not null, company_id bigint not null, customer_id bigint not null, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, user_id_user bigint not null, primary key (nip)) engine=InnoDB
create table course (id_course bigint not null, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, user_id bigint not null, primary key (id_customer)) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_id bigint not null, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id bigint not null, customer_id bigint not null, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id bigint not null, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), search_id bigint not null, primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_id bigint not null, primary key (id_survey)) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, primary key (id_user)) engine=InnoDB
alter table application add constraint UK_soj9nie0qdj6b3jdwel6wwnuk unique (advertisement_id)
alter table company add constraint UK_3xbfcaugdxxm5gfpydp7x58ml unique (user_id_user)
alter table customer add constraint UK_j7ja2xvrxudhvssosd4nu1o92 unique (user_id)
alter table cv add constraint UK_7nsstl9x9nrjxv264fx1ngx0m unique (customer_id)
alter table search add constraint UK_ase6p7naljjcit3tqqxub21dt unique (search_id)
alter table survey add constraint UK_6hettjbyknyxu85xaehqlk1jq unique (company_id)
alter table advertisement add constraint FKosjshkro6r0jfxjanm58alfmf foreign key (company_id) references company (nip)
alter table advertisement add constraint FK7bqxdh5qhiwywfha1csbibdg foreign key (survey_id) references survey (id_survey)
alter table application add constraint FK5wwcphcwd1u08fenhtbvyg14p foreign key (advertisement_id) references advertisement (id_advertisement)
alter table application add constraint FKjm4svmen8mv59grpbgjp5v1ml foreign key (company_id) references company (nip)
alter table application add constraint FKdih65y3ywnh2g5ddjae3ud4kw foreign key (customer_id) references customer (id_customer)
alter table certificate add constraint FKbin167gb15lctd21ocemxja99 foreign key (customer_id) references customer (id_customer)
alter table company add constraint FK2myk4ewa1oemi5hwab5vwhnol foreign key (user_id_user) references user (id_user)
alter table course add constraint FK418pvmlvhrll9ilj6uprdchp6 foreign key (customer_id) references customer (id_customer)
alter table customer add constraint FKj8dlm21j202cadsbfkoem0s58 foreign key (user_id) references user (id_user)
alter table cv add constraint FKaejxs9ixrvnawdyag0kmsp8sf foreign key (customer_id) references customer (id_customer)
alter table message add constraint FKcwsjctg2caabo17bol1qv7iff foreign key (company_id) references company (nip)
alter table message add constraint FKg2pmh6bgwe0dqobetgwdrv47d foreign key (customer_id) references customer (id_customer)
alter table question add constraint FK65ro96jafjvulbqu8ia0pb254 foreign key (survey_id) references survey (id_survey)
alter table search add constraint FK2vnr9pofue637m9wwwugb041l foreign key (search_id) references advertisement (id_advertisement)
alter table survey add constraint FKo5sdismkcu0pgey32yc98eo12 foreign key (company_id) references company (nip)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), company_id bigint not null, survey_id bigint not null, primary key (id_advertisement)) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id bigint not null, company_id bigint not null, customer_id bigint not null, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail integer, postalcode integer, user_id_user bigint not null, primary key (nip)) engine=InnoDB
create table course (id_course bigint not null, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, user_id bigint not null, primary key (id_customer)) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_id bigint not null, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id bigint not null, customer_id bigint not null, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id bigint not null, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), search_id bigint not null, primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_id bigint not null, primary key (id_survey)) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, primary key (id_user)) engine=InnoDB
alter table application add constraint UK_soj9nie0qdj6b3jdwel6wwnuk unique (advertisement_id)
alter table company add constraint UK_3xbfcaugdxxm5gfpydp7x58ml unique (user_id_user)
alter table customer add constraint UK_j7ja2xvrxudhvssosd4nu1o92 unique (user_id)
alter table cv add constraint UK_7nsstl9x9nrjxv264fx1ngx0m unique (customer_id)
alter table search add constraint UK_ase6p7naljjcit3tqqxub21dt unique (search_id)
alter table survey add constraint UK_6hettjbyknyxu85xaehqlk1jq unique (company_id)
alter table advertisement add constraint FKosjshkro6r0jfxjanm58alfmf foreign key (company_id) references company (nip)
alter table advertisement add constraint FK7bqxdh5qhiwywfha1csbibdg foreign key (survey_id) references survey (id_survey)
alter table application add constraint FK5wwcphcwd1u08fenhtbvyg14p foreign key (advertisement_id) references advertisement (id_advertisement)
alter table application add constraint FKjm4svmen8mv59grpbgjp5v1ml foreign key (company_id) references company (nip)
alter table application add constraint FKdih65y3ywnh2g5ddjae3ud4kw foreign key (customer_id) references customer (id_customer)
alter table certificate add constraint FKbin167gb15lctd21ocemxja99 foreign key (customer_id) references customer (id_customer)
alter table company add constraint FK2myk4ewa1oemi5hwab5vwhnol foreign key (user_id_user) references user (id_user)
alter table course add constraint FK418pvmlvhrll9ilj6uprdchp6 foreign key (customer_id) references customer (id_customer)
alter table customer add constraint FKj8dlm21j202cadsbfkoem0s58 foreign key (user_id) references user (id_user)
alter table cv add constraint FKaejxs9ixrvnawdyag0kmsp8sf foreign key (customer_id) references customer (id_customer)
alter table message add constraint FKcwsjctg2caabo17bol1qv7iff foreign key (company_id) references company (nip)
alter table message add constraint FKg2pmh6bgwe0dqobetgwdrv47d foreign key (customer_id) references customer (id_customer)
alter table question add constraint FK65ro96jafjvulbqu8ia0pb254 foreign key (survey_id) references survey (id_survey)
alter table search add constraint FK2vnr9pofue637m9wwwugb041l foreign key (search_id) references advertisement (id_advertisement)
alter table survey add constraint FKo5sdismkcu0pgey32yc98eo12 foreign key (company_id) references company (nip)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), company_id bigint not null, survey_id bigint not null, primary key (id_advertisement)) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id bigint not null, company_id bigint not null, customer_id bigint not null, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail varchar(255), postalcode integer, user_id_user bigint not null, primary key (nip)) engine=InnoDB
create table course (id_course bigint not null, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, user_id bigint not null, primary key (id_customer)) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_id bigint not null, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id bigint not null, customer_id bigint not null, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id bigint not null, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), search_id bigint not null, primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_id bigint not null, primary key (id_survey)) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, primary key (id_user)) engine=InnoDB
alter table application add constraint UK_soj9nie0qdj6b3jdwel6wwnuk unique (advertisement_id)
alter table company add constraint UK_3xbfcaugdxxm5gfpydp7x58ml unique (user_id_user)
alter table customer add constraint UK_j7ja2xvrxudhvssosd4nu1o92 unique (user_id)
alter table cv add constraint UK_7nsstl9x9nrjxv264fx1ngx0m unique (customer_id)
alter table search add constraint UK_ase6p7naljjcit3tqqxub21dt unique (search_id)
alter table survey add constraint UK_6hettjbyknyxu85xaehqlk1jq unique (company_id)
alter table advertisement add constraint FKosjshkro6r0jfxjanm58alfmf foreign key (company_id) references company (nip)
alter table advertisement add constraint FK7bqxdh5qhiwywfha1csbibdg foreign key (survey_id) references survey (id_survey)
alter table application add constraint FK5wwcphcwd1u08fenhtbvyg14p foreign key (advertisement_id) references advertisement (id_advertisement)
alter table application add constraint FKjm4svmen8mv59grpbgjp5v1ml foreign key (company_id) references company (nip)
alter table application add constraint FKdih65y3ywnh2g5ddjae3ud4kw foreign key (customer_id) references customer (id_customer)
alter table certificate add constraint FKbin167gb15lctd21ocemxja99 foreign key (customer_id) references customer (id_customer)
alter table company add constraint FK2myk4ewa1oemi5hwab5vwhnol foreign key (user_id_user) references user (id_user)
alter table course add constraint FK418pvmlvhrll9ilj6uprdchp6 foreign key (customer_id) references customer (id_customer)
alter table customer add constraint FKj8dlm21j202cadsbfkoem0s58 foreign key (user_id) references user (id_user)
alter table cv add constraint FKaejxs9ixrvnawdyag0kmsp8sf foreign key (customer_id) references customer (id_customer)
alter table message add constraint FKcwsjctg2caabo17bol1qv7iff foreign key (company_id) references company (nip)
alter table message add constraint FKg2pmh6bgwe0dqobetgwdrv47d foreign key (customer_id) references customer (id_customer)
alter table question add constraint FK65ro96jafjvulbqu8ia0pb254 foreign key (survey_id) references survey (id_survey)
alter table search add constraint FK2vnr9pofue637m9wwwugb041l foreign key (search_id) references advertisement (id_advertisement)
alter table survey add constraint FKo5sdismkcu0pgey32yc98eo12 foreign key (company_id) references company (nip)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), company_id bigint not null, survey_id bigint not null, primary key (id_advertisement)) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id bigint not null, company_id bigint not null, customer_id bigint not null, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail varchar(255), postalcode integer, user_id_user bigint not null, primary key (nip)) engine=InnoDB
create table course (id_course bigint not null, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, user_id bigint not null, primary key (id_customer)) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_id bigint not null, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id bigint not null, customer_id bigint not null, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id bigint not null, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), search_id bigint not null, primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_id bigint not null, primary key (id_survey)) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, primary key (id_user)) engine=InnoDB
alter table application add constraint UK_soj9nie0qdj6b3jdwel6wwnuk unique (advertisement_id)
alter table company add constraint UK_3xbfcaugdxxm5gfpydp7x58ml unique (user_id_user)
alter table customer add constraint UK_j7ja2xvrxudhvssosd4nu1o92 unique (user_id)
alter table cv add constraint UK_7nsstl9x9nrjxv264fx1ngx0m unique (customer_id)
alter table search add constraint UK_ase6p7naljjcit3tqqxub21dt unique (search_id)
alter table survey add constraint UK_6hettjbyknyxu85xaehqlk1jq unique (company_id)
alter table advertisement add constraint FKosjshkro6r0jfxjanm58alfmf foreign key (company_id) references company (nip)
alter table advertisement add constraint FK7bqxdh5qhiwywfha1csbibdg foreign key (survey_id) references survey (id_survey)
alter table application add constraint FK5wwcphcwd1u08fenhtbvyg14p foreign key (advertisement_id) references advertisement (id_advertisement)
alter table application add constraint FKjm4svmen8mv59grpbgjp5v1ml foreign key (company_id) references company (nip)
alter table application add constraint FKdih65y3ywnh2g5ddjae3ud4kw foreign key (customer_id) references customer (id_customer)
alter table certificate add constraint FKbin167gb15lctd21ocemxja99 foreign key (customer_id) references customer (id_customer)
alter table company add constraint FK2myk4ewa1oemi5hwab5vwhnol foreign key (user_id_user) references user (id_user)
alter table course add constraint FK418pvmlvhrll9ilj6uprdchp6 foreign key (customer_id) references customer (id_customer)
alter table customer add constraint FKj8dlm21j202cadsbfkoem0s58 foreign key (user_id) references user (id_user)
alter table cv add constraint FKaejxs9ixrvnawdyag0kmsp8sf foreign key (customer_id) references customer (id_customer)
alter table message add constraint FKcwsjctg2caabo17bol1qv7iff foreign key (company_id) references company (nip)
alter table message add constraint FKg2pmh6bgwe0dqobetgwdrv47d foreign key (customer_id) references customer (id_customer)
alter table question add constraint FK65ro96jafjvulbqu8ia0pb254 foreign key (survey_id) references survey (id_survey)
alter table search add constraint FK2vnr9pofue637m9wwwugb041l foreign key (search_id) references advertisement (id_advertisement)
alter table survey add constraint FKo5sdismkcu0pgey32yc98eo12 foreign key (company_id) references company (nip)
create table advertisement (id_advertisement bigint not null, city varchar(255), company varchar(255), contract_type varchar(255), date_added varchar(255), industry varchar(255), period_of_validity varchar(255), salary integer, title varchar(255), company_id bigint not null, survey_id bigint not null, primary key (id_advertisement)) engine=InnoDB
create table application (id_application bigint not null, address varchar(255), first_name varchar(255), last_name varchar(255), mail varchar(255), phone_number integer, advertisement_id bigint not null, company_id bigint not null, customer_id bigint not null, primary key (id_application)) engine=InnoDB
create table archives (id_archives bigint not null, author varchar(255), date datetime, title integer, primary key (id_archives)) engine=InnoDB
create table certificate (id_certificate bigint not null, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_certificate)) engine=InnoDB
create table company (nip bigint not null, krs integer, regon integer, address varchar(255), city varchar(255), company_name varchar(255), mail varchar(255), postalcode integer, user_id_user bigint not null, primary key (nip)) engine=InnoDB
create table course (id_course bigint not null, title varchar(255), type varchar(255), customer_id bigint not null, primary key (id_course)) engine=InnoDB
create table customer (id_customer bigint not null, address varchar(255), certificate bit, course bit, cv bit, first_name varchar(255), last_name varchar(255), pesel integer, phonenumber integer, user_id bigint not null, primary key (id_customer)) engine=InnoDB
create table cv (idcv bigint not null, education varchar(255), hobbies varchar(255), personal_data varchar(255), skills varchar(255), work_experience varchar(255), customer_id bigint not null, primary key (idcv)) engine=InnoDB
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
create table message (id_message bigint not null, mail_consignee varchar(255), mail_sender varchar(255), particulars_consignee varchar(255), particulars_sender varchar(255), text_message varchar(255), title varchar(255), company_id bigint not null, customer_id bigint not null, primary key (id_message)) engine=InnoDB
create table question (id_question bigint not null, answer_correct varchar(255), answer_one varchar(255), answer_three varchar(255), answer_two varchar(255), id_survey varchar(255), title varchar(255), survey_id bigint not null, primary key (id_question)) engine=InnoDB
create table search (id_categories_of_search bigint not null, industry varchar(255), position varchar(255), specyfication varchar(255), search_id bigint not null, primary key (id_categories_of_search)) engine=InnoDB
create table survey (id_survey bigint not null, idauthor integer, numberofquestions integer, title varchar(255), company_id bigint not null, primary key (id_survey)) engine=InnoDB
create table user (id_user bigint not null, active bit, login varchar(255), mail varchar(255), password varchar(255), usertype integer, primary key (id_user)) engine=InnoDB
alter table application add constraint UK_soj9nie0qdj6b3jdwel6wwnuk unique (advertisement_id)
alter table company add constraint UK_3xbfcaugdxxm5gfpydp7x58ml unique (user_id_user)
alter table customer add constraint UK_j7ja2xvrxudhvssosd4nu1o92 unique (user_id)
alter table cv add constraint UK_7nsstl9x9nrjxv264fx1ngx0m unique (customer_id)
alter table search add constraint UK_ase6p7naljjcit3tqqxub21dt unique (search_id)
alter table survey add constraint UK_6hettjbyknyxu85xaehqlk1jq unique (company_id)
alter table advertisement add constraint FKosjshkro6r0jfxjanm58alfmf foreign key (company_id) references company (nip)
alter table advertisement add constraint FK7bqxdh5qhiwywfha1csbibdg foreign key (survey_id) references survey (id_survey)
alter table application add constraint FK5wwcphcwd1u08fenhtbvyg14p foreign key (advertisement_id) references advertisement (id_advertisement)
alter table application add constraint FKjm4svmen8mv59grpbgjp5v1ml foreign key (company_id) references company (nip)
alter table application add constraint FKdih65y3ywnh2g5ddjae3ud4kw foreign key (customer_id) references customer (id_customer)
alter table certificate add constraint FKbin167gb15lctd21ocemxja99 foreign key (customer_id) references customer (id_customer)
alter table company add constraint FK2myk4ewa1oemi5hwab5vwhnol foreign key (user_id_user) references user (id_user)
alter table course add constraint FK418pvmlvhrll9ilj6uprdchp6 foreign key (customer_id) references customer (id_customer)
alter table customer add constraint FKj8dlm21j202cadsbfkoem0s58 foreign key (user_id) references user (id_user)
alter table cv add constraint FKaejxs9ixrvnawdyag0kmsp8sf foreign key (customer_id) references customer (id_customer)
alter table message add constraint FKcwsjctg2caabo17bol1qv7iff foreign key (company_id) references company (nip)
alter table message add constraint FKg2pmh6bgwe0dqobetgwdrv47d foreign key (customer_id) references customer (id_customer)
alter table question add constraint FK65ro96jafjvulbqu8ia0pb254 foreign key (survey_id) references survey (id_survey)
alter table search add constraint FK2vnr9pofue637m9wwwugb041l foreign key (search_id) references advertisement (id_advertisement)
alter table survey add constraint FKo5sdismkcu0pgey32yc98eo12 foreign key (company_id) references company (nip)
