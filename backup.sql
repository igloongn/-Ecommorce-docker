--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1 (Debian 14.1-1.pgdg110+1)
-- Dumped by pg_dump version 14.1 (Debian 14.1-1.pgdg110+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: accounts_account; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.accounts_account (id, password, first_name, last_name, username, email, phone_number, date_joined, last_login, is_admin, is_staff, is_active, is_superadmin) VALUES (1, 'pbkdf2_sha256$320000$8aZIPsDYjGypoKMvKVclnR$7lRUSdIvSVKiOiHyy7eqFb4K9triHGZ8quf3YdJY/Mk=', 'Temitope', 'qqqq', 'q', 'q@q.com', '', '2022-01-22 21:59:40.883468+00', '2022-01-22 22:24:55.179215+00', true, true, true, false);


--
-- Data for Name: accounts_userprofile; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (5, 'sessions', 'session');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (6, 'category', 'category');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (7, 'accounts', 'account');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (8, 'accounts', 'userprofile');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (9, 'store', 'product');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (10, 'store', 'variation');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (11, 'store', 'reviewrating');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (12, 'carts', 'cart');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (13, 'carts', 'cartitem');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (14, 'orders', 'order');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (15, 'orders', 'orderproduct');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (16, 'payments', 'payment');


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (21, 'Can add category', 6, 'add_category');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (22, 'Can change category', 6, 'change_category');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (23, 'Can delete category', 6, 'delete_category');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (24, 'Can view category', 6, 'view_category');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (25, 'Can add account', 7, 'add_account');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (26, 'Can change account', 7, 'change_account');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (27, 'Can delete account', 7, 'delete_account');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (28, 'Can view account', 7, 'view_account');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (29, 'Can add user profile', 8, 'add_userprofile');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (30, 'Can change user profile', 8, 'change_userprofile');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (31, 'Can delete user profile', 8, 'delete_userprofile');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (32, 'Can view user profile', 8, 'view_userprofile');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (33, 'Can add product', 9, 'add_product');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (34, 'Can change product', 9, 'change_product');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (35, 'Can delete product', 9, 'delete_product');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (36, 'Can view product', 9, 'view_product');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (37, 'Can add variation', 10, 'add_variation');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (38, 'Can change variation', 10, 'change_variation');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (39, 'Can delete variation', 10, 'delete_variation');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (40, 'Can view variation', 10, 'view_variation');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (41, 'Can add review rating', 11, 'add_reviewrating');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (42, 'Can change review rating', 11, 'change_reviewrating');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (43, 'Can delete review rating', 11, 'delete_reviewrating');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (44, 'Can view review rating', 11, 'view_reviewrating');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (45, 'Can add cart', 12, 'add_cart');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (46, 'Can change cart', 12, 'change_cart');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (47, 'Can delete cart', 12, 'delete_cart');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (48, 'Can view cart', 12, 'view_cart');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (49, 'Can add cart item', 13, 'add_cartitem');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (50, 'Can change cart item', 13, 'change_cartitem');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (51, 'Can delete cart item', 13, 'delete_cartitem');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (52, 'Can view cart item', 13, 'view_cartitem');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (53, 'Can add order', 14, 'add_order');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (54, 'Can change order', 14, 'change_order');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (55, 'Can delete order', 14, 'delete_order');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (56, 'Can view order', 14, 'view_order');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (57, 'Can add order product', 15, 'add_orderproduct');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (58, 'Can change order product', 15, 'change_orderproduct');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (59, 'Can delete order product', 15, 'delete_orderproduct');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (60, 'Can view order product', 15, 'view_orderproduct');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (61, 'Can add payment', 16, 'add_payment');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (62, 'Can change payment', 16, 'change_payment');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (63, 'Can delete payment', 16, 'delete_payment');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (64, 'Can view payment', 16, 'view_payment');


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: carts_cart; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: category_category; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: store_product; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: carts_cartitem; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: store_variation; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: carts_cartitem_variations; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_migrations (id, app, name, applied) VALUES (1, 'accounts', '0001_initial', '2022-01-22 21:20:16.766976+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (2, 'accounts', '0002_auto_20220101_2115', '2022-01-22 21:20:19.170073+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (3, 'accounts', '0003_alter_account_id', '2022-01-22 21:20:20.336996+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (4, 'accounts', '0004_userprofile', '2022-01-22 21:20:21.799214+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (5, 'accounts', '0005_alter_userprofile_user', '2022-01-22 21:20:24.181829+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (6, 'accounts', '0006_alter_userprofile_user', '2022-01-22 21:20:24.374168+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (7, 'accounts', '0007_userprofile_connect', '2022-01-22 21:20:24.506321+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (8, 'accounts', '0008_alter_userprofile_about_yourself_and_more', '2022-01-22 21:20:24.889914+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (9, 'contenttypes', '0001_initial', '2022-01-22 21:20:25.114527+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (10, 'admin', '0001_initial', '2022-01-22 21:20:25.937874+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (11, 'admin', '0002_logentry_remove_auto_add', '2022-01-22 21:20:26.004742+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (12, 'admin', '0003_logentry_add_action_flag_choices', '2022-01-22 21:20:26.100757+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (13, 'contenttypes', '0002_remove_content_type_name', '2022-01-22 21:20:26.168728+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (14, 'auth', '0001_initial', '2022-01-22 21:20:27.772586+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (15, 'auth', '0002_alter_permission_name_max_length', '2022-01-22 21:20:27.822147+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (16, 'auth', '0003_alter_user_email_max_length', '2022-01-22 21:20:27.858451+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (17, 'auth', '0004_alter_user_username_opts', '2022-01-22 21:20:27.904462+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (18, 'auth', '0005_alter_user_last_login_null', '2022-01-22 21:20:27.949319+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (19, 'auth', '0006_require_contenttypes_0002', '2022-01-22 21:20:27.986223+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (20, 'auth', '0007_alter_validators_add_error_messages', '2022-01-22 21:20:28.024824+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (21, 'auth', '0008_alter_user_username_max_length', '2022-01-22 21:20:28.071668+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (22, 'auth', '0009_alter_user_last_name_max_length', '2022-01-22 21:20:28.113976+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (23, 'auth', '0010_alter_group_name_max_length', '2022-01-22 21:20:28.246215+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (24, 'auth', '0011_update_proxy_permissions', '2022-01-22 21:20:28.297443+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (25, 'auth', '0012_alter_user_first_name_max_length', '2022-01-22 21:20:28.337197+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (26, 'category', '0001_initial', '2022-01-22 21:20:29.227657+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (27, 'store', '0001_initial', '2022-01-22 21:20:29.866631+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (28, 'store', '0002_variation', '2022-01-22 21:20:30.251177+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (29, 'carts', '0001_initial', '2022-01-22 21:20:30.646803+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (30, 'carts', '0002_cartitem_variation', '2022-01-22 21:20:30.986182+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (31, 'carts', '0003_rename_variation_cartitem_variations', '2022-01-22 21:20:31.071055+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (32, 'carts', '0004_cartitem_user_alter_cartitem_cart', '2022-01-22 21:20:31.323898+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (33, 'carts', '0005_auto_20220101_2115', '2022-01-22 21:20:33.229904+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (34, 'carts', '0006_alter_cart_id_alter_cartitem_id', '2022-01-22 21:20:34.793672+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (35, 'category', '0002_auto_20220101_2115', '2022-01-22 21:20:36.620945+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (36, 'category', '0003_alter_category_id', '2022-01-22 21:20:38.01457+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (37, 'store', '0003_auto_20220101_2115', '2022-01-22 21:20:41.172533+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (38, 'store', '0004_alter_product_id_alter_variation_id', '2022-01-22 21:20:45.68782+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (39, 'payments', '0001_initial', '2022-01-22 21:20:46.737214+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (40, 'payments', '0002_alter_payment_id', '2022-01-22 21:20:47.654354+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (41, 'orders', '0001_initial', '2022-01-22 21:20:53.099593+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (42, 'orders', '0002_auto_20220101_2115', '2022-01-22 21:20:58.194388+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (43, 'orders', '0003_alter_order_id_alter_orderproduct_id_and_more', '2022-01-22 21:21:02.022552+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (44, 'orders', '0004_alter_order_payment_alter_orderproduct_payment_and_more', '2022-01-22 21:21:02.53131+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (45, 'orders', '0005_rename_payment_order_paymentid', '2022-01-22 21:21:02.822414+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (46, 'orders', '0006_alter_order_paymentid', '2022-01-22 21:21:03.039644+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (47, 'orders', '0007_remove_orderproduct_color_remove_orderproduct_size_and_more', '2022-01-22 21:21:03.78507+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (48, 'sessions', '0001_initial', '2022-01-22 21:21:04.293814+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (49, 'store', '0005_reviewrating', '2022-01-22 21:21:04.707603+00');


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('4ilhlxzkpt94t77tg4tn3lpcua1dzm1b', '.eJxVjDsOwyAQBe9CHSGWNQa7TJ8zoOUXk8Q4MriKcvfEkhu3b2beh9kaa81LsbnkZlueY200vy0boe-kMUYPhhvQQhh1YZa2NtmtxtXmwEYG7LQ58s9YdhAeVO4L90tpa3Z8V_hBK78tIb6uh3s6mKhO_zpp6SX24FAnj10XhNJJKk8O-04ZB1HJMAzJQQiEKA2BB8QgBgSNpNn3BwXDRcg:1nBOQQ:7c-1ggNerS3koRMZ5hX9BmCkVIj_O43QmZa_qOb2JHo', '2022-02-05 21:59:58.906658+00');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('ofanh1ho73pxaigyjfgw5qv4ycvfjzyz', '.eJxVjDsOwyAQBe9CHSEvC8a4TJ8zoOXjmCSGyOAqyt0TS27cvpl5H2ZrrDWVbFNOzba0xNpoeVs2Qi_FYDqFgiuptUFzYZa2NtutxtWmwEYG7LQ58s-YdxAelO-F-5LbmhzfFX7Qym8lxNf1cE8HM9X5X09aeIE9ONSTRylDp_QklCeHvVSDg6hEMGZyEAIhioHAA2LoDIJG0uz7AwEURcI:1nBOsO:r7nG0n2NzZVSjTI4A1Ek8BKUAN_9kCnloVF__s5xYS0', '2022-02-05 22:28:52.684119+00');


--
-- Data for Name: orders_order; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: payments_payment; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: orders_orderproduct; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: orders_orderproduct_variation; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: store_reviewrating; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: accounts_account_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.accounts_account_id_seq', 1, true);


--
-- Name: accounts_userprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.accounts_userprofile_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 64, true);


--
-- Name: carts_cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.carts_cart_id_seq', 1, false);


--
-- Name: carts_cartitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.carts_cartitem_id_seq', 1, false);


--
-- Name: carts_cartitem_variation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.carts_cartitem_variation_id_seq', 1, false);


--
-- Name: category_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_category_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 16, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 49, true);


--
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_order_id_seq', 1, false);


--
-- Name: orders_orderproduct_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_orderproduct_id_seq', 1, false);


--
-- Name: orders_orderproduct_variation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_orderproduct_variation_id_seq', 1, false);


--
-- Name: payments_payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payments_payment_id_seq', 1, false);


--
-- Name: store_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.store_product_id_seq', 1, false);


--
-- Name: store_reviewrating_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.store_reviewrating_id_seq', 1, false);


--
-- Name: store_variation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.store_variation_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

