INSERT INTO tb_user (name, email, password) VALUES ('Lucas Galvao', 'lucas@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Ana Galvao', 'ana@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Antonia', 'antonia@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp Quarkus', 'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_1280.jpg', 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Switch-course-book-grey.svg');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2023-06-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-11-20T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2023-06-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-12-20T03:00:00Z', 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha Quarkus', 'Trilha principal do curso', 1, 'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_1280.jpg', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha AWS', 'Tire suas dúvidas sobre AWS', 2, 'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_1280.jpg', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha CHATBOTS', 'Lives exclusivas para a turma', 3, 'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_1280.jpg', 0, 1);

INSERT INTO tb_notification (text, route, moment, read, user_id) VALUES ('Nova atualização no módulo 1 aula 3 do bootcamp Quarkus', 'http://dslearn.com.br/1/quarkus/3', TIMESTAMP WITH TIME ZONE '2023-06-20T09:15:00Z', true, 1);
INSERT INTO tb_notification (text, route, moment, read, user_id) VALUES ('Nova atualização no módulo 2 aula 5 do bootcamp Quarkus', 'http://dslearn.com.br/2/quarkus/5', TIMESTAMP WITH TIME ZONE '2023-06-20T09:15:00Z', false, 1);
INSERT INTO tb_notification (text, route, moment, read, user_id) VALUES ('Nova atualização no módulo 3 aula 2 do bootcamp Quarkus', 'http://dslearn.com.br/3/quarkus/2', TIMESTAMP WITH TIME ZONE '2023-06-20T09:15:00Z', true, 1);
INSERT INTO tb_notification (text, route, moment, read, user_id) VALUES ('Nova atualização no módulo 1 aula 3 do bootcamp Quarkus', 'http://dslearn.com.br/1/quarkus/3', TIMESTAMP WITH TIME ZONE '2023-06-20T09:15:00Z', true, 2);
INSERT INTO tb_notification (text, route, moment, read, user_id) VALUES ('Nova atualização no módulo 2 aula 5 do bootcamp Quarkus', 'http://dslearn.com.br/2/quarkus/5', TIMESTAMP WITH TIME ZONE '2023-06-20T09:15:00Z', false, 2);
INSERT INTO tb_notification (text, route, moment, read, user_id) VALUES ('Nova atualização no módulo 3 aula 2 do bootcamp Quarkus', 'http://dslearn.com.br/3/quarkus/2', TIMESTAMP WITH TIME ZONE '2023-06-20T09:15:00Z', true, 2);
INSERT INTO tb_notification (text, route, moment, read, user_id) VALUES ('Nova atualização no módulo 1 aula 3 do bootcamp Quarkus', 'http://dslearn.com.br/1/quarkus/3', TIMESTAMP WITH TIME ZONE '2023-06-20T09:15:00Z', false, 3);
INSERT INTO tb_notification (text, route, moment, read, user_id) VALUES ('Nova atualização no módulo 2 aula 5 do bootcamp Quarkus', 'http://dslearn.com.br/2/quarkus/5', TIMESTAMP WITH TIME ZONE '2023-06-20T09:15:00Z', true, 3);
INSERT INTO tb_notification (text, route, moment, read, user_id) VALUES ('Nova atualização no módulo 3 aula 2 do bootcamp Quarkus', 'http://dslearn.com.br/3/quarkus/2', TIMESTAMP WITH TIME ZONE '2023-06-20T09:15:00Z', false, 3);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 1', 'Neste capítulo abordaremos os conceitos iniciais sobre Quarkus', 1, 'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_1280.jpg', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 2', 'Neste capítulo vamos praticar os conceitos abordados no capítulo 1', 2, 'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_1280.jpg', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 3', 'Neste capítulo iremos ver em projetos reais a aplicabilidade dos conceitos aprendidos', 3, 'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_1280.jpg', 1, 2);


INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2023-06-20T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2023-06-20T13:00:00Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do capítulo 1', 1, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (1, 'Material de apoio: Quarkus', 'https://www.youtube.com/watch?v=Ba-3gSzT83w');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do capítulo 1', 2, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (2, '', 'https://www.youtube.com/watch?v=tAGnKpE4NCI&list=RDBa-3gSzT83w&index=5');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 do capítulo 1', 3, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (3, '', 'https://www.youtube.com/watch?v=o-0ygW-B_gI&list=RDBa-3gSzT83w&index=10');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do capítulo 1', 4, 1);
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES (4, 'Agora na prática...', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2023-06-25T13:00:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);

INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id) VALUES ('https://github.com/lucasengcomp/dslearn', TIMESTAMP WITH TIME ZONE '2023-06-27T10:00:00Z', 0, null, null, 4, 1, 1);

INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Conceitos iniciais 1', 'Demonstraremos os conceitos básicos para iniciar em programação', TIMESTAMP WITH TIME ZONE '2023-06-12T13:00:00Z', 1, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Conceitos computacionais 2', 'Demonstraremos os conceitos intermediários para iniciar em programação', TIMESTAMP WITH TIME ZONE '2023-06-13T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Arquitetura com Quarkus 1', 'Vamos abordar sobre arquitetura básica em Quarkus', TIMESTAMP WITH TIME ZONE '2023-06-14T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Arquitetura com Quarkus 2', 'Tópicos fundamentais usando tecnologia web', TIMESTAMP WITH TIME ZONE '2023-06-15T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Arquitetura com Quarkus 3', 'Veremos a aplicabilidade dos conceitos 1 e 2', TIMESTAMP WITH TIME ZONE '2023-06-16T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Tópicos avançados', 'Nesse momento, iremos abordar sobre tópicos mais avançados de Quarkus', TIMESTAMP WITH TIME ZONE '2023-06-17T13:00:00Z', 2, 1, 3);

INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (1, 2);
INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (2, 1);