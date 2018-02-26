--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 10.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

--
-- Data for Name: accounts_user; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('pbkdf2_sha256$36000$Qyv5qZgDmlPV$41d1qn16wAMKho0CQ+UrV5xHMQ4koNmDnVwJktg7JsM=', NULL, false, 'c4bf092a-4398-4cae-9958-5924c4b69659', 'billy', 'bob', 'what@blah123.com', 'M', false, false, true, '2018-02-08 19:57:51.258764+00', 'ad26a81c-a1c1-4f13-9f44-ca1d181b6b3a', '2018-02-08 19:57:51.47939+00', 'a3cf98d7e3741c39381f86680c1456ba6ceca3ba', 'd9024f3c6f25a5222347ed0202bac5b4cf994f1d');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('pbkdf2_sha256$20000$fSnaTbagnHiD$lZ5k1ZHDNM4oZir2IrWIrcRh0bEh4wYu+uuhh4ZZ9ZQ=', '2015-12-29 00:57:23.201+00', true, '7c32d60d-6312-42f6-a73a-22da56b07374', 'FirstName', 'LastName', 'a@a.com', 'M', false, true, true, '2015-12-29 00:57:23.201+00', '64f5b041-81ed-4251-bf62-54b9c0a14848', '2015-12-29 00:57:23.201+00', '', '');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('pbkdf2_sha256$36000$BBDlWim9b1ti$U847VW+pwPCMTxXEzhdIvj+uVJBlaMM4O5nWDZrUdYU=', NULL, false, 'f513414b-02ee-4c1d-b27a-ff5af6ea8155', 'bubble', 'cat', 'awesome@email.com', 'M', false, false, true, '2018-02-10 12:54:43.887352+00', '5bdb036a-2154-4380-aa3c-aa3d370f01a3', '2018-02-10 12:54:43.953264+00', '8c32a04605d74ef84f77b7a5001978eb7ecf886d', '52fe75d5e584d2aaa3ad0362216b01147394f255');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('pbkdf2_sha256$36000$AJw9wIKHzSaW$w+cee7yxcYSPFxV/VnfSZSi8V248IWAkT83VNsGwAXY=', NULL, false, '0a565f30-6822-4168-8ce9-c0c5bccfbe0c', 'George', 'Anderson', 'george@anderson.com', 'M', false, false, true, '2018-02-11 12:50:23.218043+00', '34c2d17f-adce-428c-8b8c-90569163f973', '2018-02-11 12:50:23.293397+00', '2f82bebdc2de49d1dc42d7d2c61ff2c2139d8811', 'f6371849ff93dcf2f1745b1d1e7978a850858870');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('password', NULL, false, 'a88f34b2-e123-4123-b90e-ab1377accbba', 'George', 'Anderson', 'sick1@email.com', 'M', false, false, true, '2018-01-30 21:25:45.592585+00', 'e493f5f0-729f-47b9-9741-9d4ff36b511f', '2018-01-30 21:25:45.592612+00', 'blah', 'bah');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('password', NULL, false, '958f7294-7fcb-4deb-828f-5c17dc22c1e6', 'George', 'Anderson', 'sexy@sex.com', 'M', false, false, true, '2018-01-30 21:44:51.675679+00', 'a96dcb97-7bf5-41f9-838e-4b59d260100f', '2018-01-30 21:44:51.675706+00', 'blah', 'bah');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('password', NULL, false, '8ca6efab-9f2b-47ce-bbcf-7e355c9dcc84', 'Orber', 'Jesus', 'orber@email.com', 'M', false, false, true, '2018-01-31 13:37:09.888178+00', 'a2bfe327-643d-448d-9bf5-3c93b3cb5e1e', '2018-01-31 13:37:09.8882+00', 'blah', 'bah');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('password', NULL, false, '80f9e214-743a-41a7-a079-9051089baae9', 'George', 'Anderson', 'sexy@sex1.com', 'M', false, false, true, '2018-01-31 16:06:48.560254+00', '0211f14b-cd11-4621-a53d-1a6eb45e9a8d', '2018-01-31 16:06:48.560281+00', 'blah', 'bah');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('password', NULL, false, '228b4a2c-79c8-47e7-8151-7b85d2f0dfc2', 'Orber', 'Soaresasdasd', 'asdasd@asdad.com', 'M', false, false, true, '2018-01-31 22:07:14.533079+00', '4fb9332c-357c-4a26-b860-4f9737ea0ae4', '2018-01-31 22:07:14.533101+00', 'blah', 'bah');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('password', NULL, false, 'b58f0e0c-78fd-4a51-954b-6d55ae148103', 'abcd', 'abcd', 'abcd@abcd.com', 'M', false, false, true, '2018-01-31 22:15:28.972426+00', '0be0e952-6829-4a72-9271-ab95f8b42bc5', '2018-01-31 22:15:28.972451+00', 'blah', 'bah');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('password', NULL, false, '1bc620ea-1a89-4070-92fc-112f317d8603', 'abcd', 'abcd', 'abccd@abcd.com', 'M', false, false, true, '2018-01-31 22:32:16.225177+00', '750e2dd6-375b-422d-b450-9457a6b4ed02', '2018-01-31 22:32:16.225201+00', 'blah', 'bah');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('password', NULL, false, '53eafd41-4344-4e93-b6aa-68a1ed0ef592', 'Abcd', 'Abcd', 'abcccd@abcd.com', 'M', false, false, true, '2018-01-31 22:52:38.417723+00', '0a997c43-470a-4fd6-a0a4-cb068e462547', '2018-01-31 22:52:38.417748+00', 'blah', 'bah');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('password', NULL, false, '01089cb4-a88c-4cd3-b6c6-3f77af7030b3', 'Abcd', 'Abcd', 'abcdd@hotmail.com', 'M', false, false, true, '2018-01-31 23:07:29.076273+00', 'ffec9d93-310e-4944-9097-aca6bcb9a9c8', '2018-01-31 23:07:29.076297+00', 'blah', 'bah');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('password', NULL, false, '1583f87f-1e0e-4af3-9430-81be43689eeb', 'Orber', 'Jesus', 'orbser@email.com', 'M', false, false, true, '2018-01-31 23:10:52.066273+00', '906c4aa6-47a5-4d21-be65-a3b568c9a6ad', '2018-01-31 23:10:52.066293+00', 'blah', 'bah');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('password', NULL, false, 'a577571e-523c-43a9-8b3f-de7e556fa814', 'Orber', 'Orber', 'orber@hotmails.com', 'M', false, false, true, '2018-01-31 23:28:55.069191+00', '1f55034f-c9e7-4e50-a55d-9c48240c30ed', '2018-01-31 23:28:55.069218+00', 'blah', 'bah');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('password', NULL, false, '01ce92a3-ec68-477a-82d4-6973346f9def', 'Orber', 'Orber', 'orber@hi.com', 'M', false, false, true, '2018-01-31 23:30:57.364588+00', '5e811868-adb9-4cd8-9123-53d743e96a6a', '2018-01-31 23:30:57.364612+00', 'blah', 'bah');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('password', NULL, false, '2c9cc20a-32fc-4edb-9172-4043ef179515', 'Orber', 'Orber', 'hi@bye.com', 'M', false, false, true, '2018-01-31 23:32:37.6653+00', 'e4eeeec4-52dc-4302-b632-17d0229b5121', '2018-01-31 23:32:37.665321+00', 'blah', 'bah');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('password', NULL, false, '60c44efe-c6c6-4bf5-a699-82ec150a4bd9', '123', '123', '123@123.com', 'M', false, false, true, '2018-01-31 23:44:03.902325+00', '8967ba32-4f3b-4809-8a0e-a4214e452bd3', '2018-01-31 23:44:03.902346+00', 'blah', 'bah');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('1', NULL, false, 'acf2441d-790d-4906-a368-a1376ff49cf4', '1', '1', '1@1.com', 'M', false, false, true, '2018-01-31 23:48:59.48948+00', '1c74ca8d-86c8-443a-97b0-7cff8f3a58ca', '2018-01-31 23:48:59.489502+00', 'blah', 'bah');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('password', NULL, false, '9da65aae-fe81-4361-abaa-394fb5c87ad5', '2', '22', '222@222.com', 'M', false, false, true, '2018-01-31 23:58:21.099153+00', 'f94c4744-3c59-4af6-9ef2-a226c80d9444', '2018-01-31 23:58:21.099197+00', 'blah', 'bah');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('password', NULL, false, '4e0c2a19-2b1e-4d7c-b5f4-aa04e27ae4ef', '333', '333', '333@333.com', 'M', false, false, true, '2018-02-01 00:02:10.406894+00', 'f84502f5-4fea-4027-b7c9-fa388cf65eb2', '2018-02-01 00:02:10.406919+00', 'blah', 'bah');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('pbkdf2_sha256$36000$DCqaQt1xPeez$W92boNDz4NhaU6/uxqjbVAOXiUhbgqY6twjKgech9Ss=', NULL, false, '17102244-d489-43a1-a039-c306629318ec', 'the', 'dude', 'super@email.com', 'M', false, false, true, '2018-02-01 10:36:51.805123+00', '73ee831c-124a-4c63-8418-915219f7a911', '2018-02-01 10:36:51.84213+00', '42ddea29a7373418cd53a01bd56b774dd2717a4a', '5ea8809ee499dccbd762fd99e217971c6b32c46a');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('pbkdf2_sha256$36000$exe46qlhbseH$mWw4ok2kBiXw4+ABGlYLb3jiQYpW5NOZkJlJPmDUKEk=', NULL, false, '22ffee70-1949-4c39-af2f-250a73932138', 'the', 'dude', 'best111@email.com', 'M', false, false, true, '2018-02-01 11:55:43.351946+00', 'f9770c91-21a4-4629-bf00-dec8a03b64b1', '2018-02-01 11:55:43.450614+00', 'e747313f9acac39a8318ba5a5276f5dab9025f2d', '8c313930fa105aafc703ea1a99930bf4f5bf84e4');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('pbkdf2_sha256$36000$kw7ruea2o68h$2BkrLGX/ZU8l/rvRiD0mgjDmERjTMgSfEBRILvuHEY8=', NULL, false, '19768bab-08da-431a-945d-0150beb8a137', 'test', 'mctest', 'kolevv@protonmail.com', 'M', false, false, true, '2018-02-01 13:30:27.92093+00', '930677c0-2ce9-45ad-993f-5e2e3e4e1d64', '2018-02-01 13:30:27.958002+00', '01bdbaa839d80f4559237549da1c442de126aa3d', '5a9dd1971b14848ac210afe8c42cdcbe130dc0fa');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('pbkdf2_sha256$36000$FpG24eaNcgZQ$1dFD9iamBpQ5pjB1zq6VXr8H5SfjJERBLj6fghOLlRc=', NULL, false, '65ee0594-6d5f-4b0d-bf8c-78c7b92775e3', 'demo', 'demo', 'nomad519@abv.bg', 'M', false, false, true, '2018-02-01 13:38:28.361597+00', '34a83181-a026-47fb-a545-53eea539603e', '2018-02-01 13:38:28.398703+00', 'a08db898d493523093a7471df8298b3297f836ca', '34b4348239de0ee7db1da5aeb7f1652d0286ebd6');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('pbkdf2_sha256$36000$4l5OxiuM7d7W$CsdEsFUGVrUXA6j+jssO8BMDylmGh3YVPV5DXzlkMdc=', NULL, false, '3afd7691-173e-45f4-99ec-f1a9a68354de', 'the', 'dude', 'best1131@email.com', 'M', false, false, true, '2018-02-01 14:30:02.070603+00', 'cdb9f95e-2f42-4350-9db2-72a5b303bf19', '2018-02-01 14:30:02.1101+00', 'd4bbfc615372798929b6eff74ac1275275093bc8', '34255845ce6c1964ad991a501c47ff94c0f5fd50');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('pbkdf2_sha256$36000$0Y77kecAt1Eu$+PeWkRWAkr9ojybpxSypHUXu0A7Yj7L+j9/0SfMLPFc=', NULL, false, 'cb33f9b2-75b1-48e6-bf62-7d57ad2d0008', 'rrkrjfj', 'jdjgn', 'kale@gmail.com', 'M', false, false, true, '2018-02-01 14:36:27.139297+00', 'd63c6a72-9954-4ed5-83f8-3091ef604fe6', '2018-02-01 14:36:27.17801+00', '5f4f108f550079c946c1753e85ae3601163a531b', '588af6e0d684e9f0287da4e9c6e9f3fd7975b518');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('pbkdf2_sha256$36000$4PWlcx3byqMp$unzL6Kz5by5FuuhK/L+V4KrCdRfh47+NXZGr+bQyjhw=', NULL, false, '7334b038-a02b-4f40-9b78-f300d7a49c60', 'Orber', 'Soeares', 'orber@west.com', 'M', false, false, true, '2018-02-04 10:32:08.659269+00', '4f5107fb-1fc2-4354-985e-fca84707d7b6', '2018-02-04 10:32:08.697606+00', '44d6168a108e3b3fa55380f9eedf4a902e97b248', '3eb630dd1c98c5df82557381cfc0a8a241ef1f83');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('pbkdf2_sha256$36000$YKTNlpVaRc2R$I+EymE1rzVCo7zgFRQls2iLSFq1HEIxU7gCoHBrLst0=', NULL, false, 'f159ac6a-2999-4cf3-a4cb-4cdcbcb00594', 'Orber', 'Jesus', 'rebro@email.com', 'M', false, false, true, '2018-02-04 12:22:40.741609+00', '5a24c26b-0af6-45c1-b5c9-18fe87ae5c01', '2018-02-04 12:22:40.779963+00', 'de2cf7219093b81d1ef7e167a3a258d89fa52ecb', '957c3aaecac79aaf920a41dda645ed57fae18454');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('pbkdf2_sha256$36000$w0eKfTd8Uxjp$C1oBP3QQQpzjfCUX2h8oRks0ce6N+u+7lnz/dae29JI=', NULL, false, '564974ae-251b-46c3-b1af-f7767e608276', 'Hello', 'World', 'hello@world.com', 'M', false, false, true, '2018-02-04 16:44:02.355291+00', '0d62d905-a3a8-49c0-983a-40432b39204d', '2018-02-04 16:44:02.394208+00', '79b87c850d4e22443f290c201b72636478357f3d', '933dcafeb1b207e0c209cfb04fde430a9693e5b2');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('pbkdf2_sha256$36000$FNqpVA8w7KGl$YURiRM1FlLIGXQa+B7wzbRKn/jIqCfhVvIhVSg0xhUU=', NULL, false, 'c3a99af0-3784-45a6-a079-048c2919b0c9', 'Foo', 'Bar', 'foo@bar.com', 'M', false, false, true, '2018-02-04 20:23:41.921637+00', '0d11c0ed-6ff7-4e63-a379-c1db197f94e6', '2018-02-04 20:23:41.959638+00', 'ea578066ccbe23e19645164a176bd08fd6b76178', 'd23cc940cf185c5f9f346dccc4a477c2914d48f9');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('pbkdf2_sha256$36000$E2WkcCakOM8x$9gk2CbjXC8FPKVeLCoFOQrgI+jLfPZsdOS/ISF5VORE=', NULL, false, 'b28714ee-021d-40d3-8afb-c2076ca4061b', 'mmmm', 'mmmm', 'blunt@gmail.com', 'M', false, false, true, '2018-02-05 16:35:43.211502+00', 'ea66474e-e56a-4998-9106-434a0fbc4182', '2018-02-05 16:35:43.248907+00', 'b1c9f7bcfd58f62e517f7ae143e2558a1b995f66', '4a1b92346b918a6d6569a41bedd373e7936b04b2');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('pbkdf2_sha256$36000$3N0iIW7bzNSX$nvwVAOP513DAsShAwhmNJgevu9O5ek52mJnWfpI342Y=', NULL, false, '473ae343-ec98-4b63-b6a7-2b0a725083b5', 'rooster', 'rooster', 'rooster@gmail.com', 'M', false, false, true, '2018-02-06 17:47:18.420913+00', '8a9f5d07-76b9-468c-8773-bdb28204edc1', '2018-02-06 17:47:18.460088+00', 'e3f9019e48eb1242c38aba9823b30b4a9e53ed50', 'df6eb809c95d4bfc1eb730d7bfb080e9a886c06d');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('pbkdf2_sha256$36000$gO1XebtAUGML$lHe/b4acpSGHmamIwSJ2yN4MarhVeZ4e/ZE8iXAdeSk=', NULL, false, '7e495599-9400-4ede-840c-2de96a2390b1', 'Bar', 'Foo', 'bar@foo.com', 'M', false, false, true, '2018-02-07 00:12:36.507573+00', '9902e68c-4a68-4418-b561-8d486e3a696c', '2018-02-07 00:12:36.576867+00', '404655aef059cedf5e5efd3c11d46ee0cb4dcc0c', '88ffd266b26ea5954386dab9d97ff9479127d1a6');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('pbkdf2_sha256$36000$WY1hFnRaZNXE$CzJs6UqlpkNLetxpufLLtNVkB75zXinFKkC04WcQTQs=', NULL, false, '1db5836b-7167-43fc-81b2-1c38751c39ab', 'Citizen', 'Four', 'snowden@gmail.com', 'M', false, false, true, '2018-02-08 14:56:20.875397+00', '135a2d7f-37ac-4311-a255-44306527ce66', '2018-02-08 14:56:20.913449+00', '786436ff9fa5fd74a147c07ff02894ffbb87e77b', '57305ec03c87879286b58c25abff1310300c9d57');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('pbkdf2_sha256$36000$gmRzJ0bkZ4kA$kd79H0YI2+98k4Q3ypoUjJt53wI7N47CDwHXPJfi3bU=', NULL, false, '143b1fa2-1261-413b-aed9-6f4a60b8ddaf', 'end', 'mylife', 'end@gmail.com', 'M', false, false, true, '2018-02-08 15:32:05.491995+00', 'db1ec11e-ef57-4fd1-896b-61ad36dcf4c4', '2018-02-08 15:32:05.530474+00', '56d442bd96d9414ae87922a76036ebefe8f0792e', 'da519c45100be6e511d912df5100c071ffa6ea5a');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('pbkdf2_sha256$36000$6IrjJQiFNwud$TotQ7VjyRcRx1kN2W+0R3M4NDdcm3UIfJVE7UVvGcfE=', NULL, false, '7ce7e75f-6285-488e-a285-a3dc3d5098da', 'dot', 'dot', 'dot@gmail.com', 'M', false, false, true, '2018-02-08 16:15:31.021342+00', '777e39df-3a2d-41cf-8f9e-1c965c96fc23', '2018-02-08 16:15:31.060468+00', '21c39763a7eb387610f00823310f989a1042348d', '1b4fa673b749b91913155c718e1ce40393ab23ab');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('pbkdf2_sha256$36000$lZk29nhgKAVh$OS9mKbtt6cFyXveNZ14adDmwqy3y1LxNoFlWr37yB7s=', NULL, false, 'c370c7ef-49d0-4a43-91ec-6bc3e90bcd35', 'meme', 'meme', 'meme@gmail.com', 'M', false, false, true, '2018-02-08 16:18:01.657226+00', 'b7f9f13c-5933-494c-8d61-a2a674e56f18', '2018-02-08 16:18:01.695618+00', '5bef5e59e124388aa9aa153747e94f37b87f888b', 'bd18afb3710f24b312e7bd9df071114750ae1f3b');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('pbkdf2_sha256$36000$Ic3rQdgwoUui$SzJURjTx4sMmidqmn/LR15vAV5s/wLWomTX02mgHBLg=', NULL, false, '6a1fae25-5dff-42a3-a914-099b57ca1087', 'Orber', 'Jesus', 'zzzz@email.com', 'M', false, false, true, '2018-02-08 16:19:12.863479+00', '63779247-7bf0-4507-949e-d48e4c962494', '2018-02-08 16:19:12.901942+00', 'e0c5473bb786c089a6ca0dce0adc443386ce322f', 'f61ae01c73cf3550d477ca6aa529726c95dea9b2');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('pbkdf2_sha256$36000$sSviBsOz5KwY$3DTJctzBjheXyznzLmO9OPgii1cRVnbLJmbYDrJ8G9A=', NULL, false, 'e59b1571-14b9-4d22-a8db-991941fe0950', 'fast', 'boi', 'fast@gmail.com', 'M', false, false, true, '2018-02-08 16:24:03.163071+00', '5d3f85e0-fba0-43e7-be58-457fd5c528b2', '2018-02-08 16:24:03.201969+00', '4e466282b22d7e27e683084454ea62e09708485f', 'f0af858f6e929b31d49d1881c6ec521785cb05c0');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('pbkdf2_sha256$36000$3pIQP0R6Ofvy$czOrgAoGpve+6dCA6h1r5d/smKdPm1NT3Scpqf/C7bU=', NULL, false, '70816b37-fa53-4d02-8899-ee4bbf95ffcf', 'Foofoo', 'Barbar', 'foofoo@barbar.com', 'M', false, false, true, '2018-02-08 16:41:27.364013+00', '0b62edec-6686-435b-875e-526675ef87ed', '2018-02-08 16:41:27.404471+00', 'ceb8ba80b4e463888b0cb9b0aac20a89f4404165', 'fcc7f43883fca20eaa14fbb324dca920cd9cf93b');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('pbkdf2_sha256$36000$3QAD6mbAxvyt$rct0EftTULh793LWnnkLNvkG8xa+PysA2Lr2tl8uOro=', NULL, false, '042c8584-18ff-4780-9969-88f1d825e0a3', 'Poop', 'Poop', 'poop@email.com', 'M', false, false, true, '2018-02-08 16:56:35.837706+00', '8fb2eac9-47b2-4182-9425-5c38afe671cb', '2018-02-08 16:56:35.874578+00', 'de12dbe2c696b2d3ac0b101fac04db358f90f84d', '8c795056b2bc7b1d8bb0ef885c7b5d6284a3b613');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('pbkdf2_sha256$36000$JmIj4R74TLXq$nt1h5f5x46tlX6XfLVNQ0KLsFQiHsirFDdKft5qQXEE=', NULL, false, 'f0f2d2b5-efe2-4711-a25d-3b1f16de7a73', 'Demo', 'User', 'test@demo.com', 'M', false, false, true, '2018-02-08 23:15:34.482092+00', '5d2a0561-df9e-4612-b0b6-4b093b13751e', '2018-02-08 23:15:34.518526+00', '3d70546870896f2cf19a636163370fb33ac5c1e6', 'b4c14c46b7fa2ebeb6fc98879966d436cf2d40a3');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('pbkdf2_sha256$36000$9FMdpyybDzPY$HHQdL62pFOZZG17u1yNw/TzH0n3wNk9y0Cr8yd+r684=', NULL, false, '6b3de4c4-6ed8-45e0-b712-efb25c766a7b', 'bubble', 'cat', 'awesomeone@email.com', 'M', false, false, true, '2018-02-10 13:50:32.32635+00', '1f3248b0-015a-4805-8019-9a5e51181e4d', '2018-02-10 13:50:32.375035+00', '3d54c6a3978aa1d24295395a314e8e994607db0f', '06dc8ef975e59b677738da9bb134a2e80e97cac3');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('pbkdf2_sha256$36000$yZlZlI7sehlt$gPiRHPEYQgACwyuNB6X4t7tvRBOrPoLtl3dQ0ZIYHIY=', NULL, false, '5246d09b-adf1-45ce-b96f-53d1e2ae76e3', 'Cristian', 'Chistol', 'tst@email.com', 'M', false, false, true, '2018-02-10 14:18:24.607061+00', '938c77e7-7edb-4664-836c-5514d1a9ddb5', '2018-02-10 14:18:24.76439+00', '4e3a877fee40026d1ab33058bb86e5bbd1a83f98', 'cf20383f61f1a82d6a1bb1e6f7c6153c5fa4cc65');
INSERT INTO accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) VALUES ('pbkdf2_sha256$36000$vrJ8hjs4ChvM$LUv91AHDFJ9ygbVvA1AhaBRrnuYqxfp8e0I55XZPjSA=', NULL, false, '2b78309f-22bd-4aa0-bfcf-224a2e12065d', 'Steve', 'Jobs', 'jobs@afterlife.com', 'M', false, false, true, '2018-02-12 17:08:27.241998+00', 'b787b77d-600e-4880-99dd-41d67e8fa0bd', '2018-02-12 17:08:27.344709+00', 'dca55e2cd945f6715428665922b6889e34bd2d2d', '4a08cf2f00aa9e546fb11f8b13cb61c5f4f4a77f');


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--



--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

INSERT INTO django_content_type (id, app_label, model) VALUES (1, 'auth', 'group');
INSERT INTO django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO django_content_type (id, app_label, model) VALUES (3, 'contenttypes', 'contenttype');
INSERT INTO django_content_type (id, app_label, model) VALUES (4, 'sessions', 'session');
INSERT INTO django_content_type (id, app_label, model) VALUES (5, 'admin', 'logentry');
INSERT INTO django_content_type (id, app_label, model) VALUES (6, 'knox', 'authtoken');
INSERT INTO django_content_type (id, app_label, model) VALUES (7, 'accounts', 'user');
INSERT INTO django_content_type (id, app_label, model) VALUES (8, 'devices', 'tempreading');
INSERT INTO django_content_type (id, app_label, model) VALUES (9, 'devices', 'devicetype');
INSERT INTO django_content_type (id, app_label, model) VALUES (10, 'devices', 'movementreading');
INSERT INTO django_content_type (id, app_label, model) VALUES (11, 'devices', 'amblightreading');
INSERT INTO django_content_type (id, app_label, model) VALUES (12, 'devices', 'humreading');
INSERT INTO django_content_type (id, app_label, model) VALUES (13, 'devices', 'device');
INSERT INTO django_content_type (id, app_label, model) VALUES (14, 'devices', 'devicetypefunc');
INSERT INTO django_content_type (id, app_label, model) VALUES (15, 'devices', 'devicegroup');
INSERT INTO django_content_type (id, app_label, model) VALUES (16, 'devices', 'devicegrouptype');
INSERT INTO django_content_type (id, app_label, model) VALUES (17, 'devices', 'devicegrouptypestate');
INSERT INTO django_content_type (id, app_label, model) VALUES (18, 'devices', 'devicegrouptypevariable');


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (1, 'Can add group', 1, 'add_group');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (2, 'Can change group', 1, 'change_group');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (3, 'Can delete group', 1, 'delete_group');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (4, 'Can add permission', 2, 'add_permission');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (5, 'Can change permission', 2, 'change_permission');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (6, 'Can delete permission', 2, 'delete_permission');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (7, 'Can add content type', 3, 'add_contenttype');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (8, 'Can change content type', 3, 'change_contenttype');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (9, 'Can delete content type', 3, 'delete_contenttype');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (10, 'Can add session', 4, 'add_session');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (11, 'Can change session', 4, 'change_session');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (12, 'Can delete session', 4, 'delete_session');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (13, 'Can add log entry', 5, 'add_logentry');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (14, 'Can change log entry', 5, 'change_logentry');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (15, 'Can delete log entry', 5, 'delete_logentry');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (16, 'Can add auth token', 6, 'add_authtoken');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (17, 'Can change auth token', 6, 'change_authtoken');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (18, 'Can delete auth token', 6, 'delete_authtoken');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (19, 'Can add user', 7, 'add_user');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (20, 'Can change user', 7, 'change_user');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (21, 'Can delete user', 7, 'delete_user');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (22, 'Can add temp reading', 8, 'add_tempreading');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (23, 'Can change temp reading', 8, 'change_tempreading');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (24, 'Can delete temp reading', 8, 'delete_tempreading');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (25, 'Can add device type', 9, 'add_devicetype');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (26, 'Can change device type', 9, 'change_devicetype');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (27, 'Can delete device type', 9, 'delete_devicetype');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (28, 'Can add movement reading', 10, 'add_movementreading');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (29, 'Can change movement reading', 10, 'change_movementreading');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (30, 'Can delete movement reading', 10, 'delete_movementreading');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (31, 'Can add amb light reading', 11, 'add_amblightreading');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (32, 'Can change amb light reading', 11, 'change_amblightreading');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (33, 'Can delete amb light reading', 11, 'delete_amblightreading');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (34, 'Can add hum reading', 12, 'add_humreading');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (35, 'Can change hum reading', 12, 'change_humreading');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (36, 'Can delete hum reading', 12, 'delete_humreading');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (37, 'Can add device', 13, 'add_device');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (38, 'Can change device', 13, 'change_device');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (39, 'Can delete device', 13, 'delete_device');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (40, 'Can add device type func', 14, 'add_devicetypefunc');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (41, 'Can change device type func', 14, 'change_devicetypefunc');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (42, 'Can delete device type func', 14, 'delete_devicetypefunc');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (43, 'Can add device group', 15, 'add_devicegroup');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (44, 'Can change device group', 15, 'change_devicegroup');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (45, 'Can delete device group', 15, 'delete_devicegroup');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (46, 'Can add device group type', 16, 'add_devicegrouptype');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (47, 'Can change device group type', 16, 'change_devicegrouptype');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (48, 'Can delete device group type', 16, 'delete_devicegrouptype');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (49, 'Can add device group type state', 17, 'add_devicegrouptypestate');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (50, 'Can change device group type state', 17, 'change_devicegrouptypestate');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (51, 'Can delete device group type state', 17, 'delete_devicegrouptypestate');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (52, 'Can add device group type variable', 18, 'add_devicegrouptypevariable');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (53, 'Can change device group type variable', 18, 'change_devicegrouptypevariable');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (54, 'Can delete device group type variable', 18, 'delete_devicegrouptypevariable');


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--



--
-- Data for Name: devices_devicegrouptype; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

INSERT INTO devices_devicegrouptype (id, name) VALUES (1, 'Burglar Alarm');


--
-- Data for Name: devices_devicegrouptypestate; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

INSERT INTO devices_devicegrouptypestate (id, state, devicegrouptype_id) VALUES (1, 'ARMED', 1);
INSERT INTO devices_devicegrouptypestate (id, state, devicegrouptype_id) VALUES (2, 'DISARMED', 1);


--
-- Data for Name: devices_devicegroup; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

INSERT INTO devices_devicegroup (id, name, description, user_id, "groupType_id", state_id) VALUES (2, 'My Burglar Alarm', NULL, '2b78309f-22bd-4aa0-bfcf-224a2e12065d', 1, 1);


--
-- Data for Name: devices_devicetype; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

INSERT INTO devices_devicetype (id, name, description, "firmwareVersion") VALUES (3, 'Blinky', NULL, 1);
INSERT INTO devices_devicetype (id, name, description, "firmwareVersion") VALUES (1, 'Tinker', NULL, 2);


--
-- Data for Name: devices_device; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

INSERT INTO devices_device (id, "deviceId", date, "deviceType_id", user_id, "deviceName", group_id) VALUES (6, 'testId', '2018-02-13 15:16:16.52227+00', 1, '0a565f30-6822-4168-8ce9-c0c5bccfbe0c', 'sexy new Name', NULL);
INSERT INTO devices_device (id, "deviceId", date, "deviceType_id", user_id, "deviceName", group_id) VALUES (1, 'asd123', '2018-02-01 10:40:06.180475+00', 1, '17102244-d489-43a1-a039-c306629318ec', 'Allen!', NULL);
INSERT INTO devices_device (id, "deviceId", date, "deviceType_id", user_id, "deviceName", group_id) VALUES (2, 'askdhbadsasd', '2018-02-06 16:52:14.852613+00', 1, 'f159ac6a-2999-4cf3-a4cb-4cdcbcb00594', NULL, NULL);
INSERT INTO devices_device (id, "deviceId", date, "deviceType_id", user_id, "deviceName", group_id) VALUES (3, 'orber', '2018-02-06 22:48:21.315386+00', 1, 'f159ac6a-2999-4cf3-a4cb-4cdcbcb00594', NULL, NULL);
INSERT INTO devices_device (id, "deviceId", date, "deviceType_id", user_id, "deviceName", group_id) VALUES (4, 'newDev', '2018-02-06 23:13:04.870015+00', 1, 'c3a99af0-3784-45a6-a079-048c2919b0c9', NULL, NULL);
INSERT INTO devices_device (id, "deviceId", date, "deviceType_id", user_id, "deviceName", group_id) VALUES (5, 'newDe313v', '2018-02-06 23:17:07.770316+00', 1, 'c3a99af0-3784-45a6-a079-048c2919b0c9', NULL, NULL);
INSERT INTO devices_device (id, "deviceId", date, "deviceType_id", user_id, "deviceName", group_id) VALUES (7, 'sa', '2018-02-09 12:46:00.293163+00', 1, 'f0f2d2b5-efe2-4711-a25d-3b1f16de7a73', NULL, NULL);
INSERT INTO devices_device (id, "deviceId", date, "deviceType_id", user_id, "deviceName", group_id) VALUES (8, 'sasa', '2018-02-11 15:39:53.712091+00', 1, 'f0f2d2b5-efe2-4711-a25d-3b1f16de7a73', 'popp', NULL);
INSERT INTO devices_device (id, "deviceId", date, "deviceType_id", user_id, "deviceName", group_id) VALUES (10, '1c0036001447343433313338', '2018-02-12 18:32:42.825977+00', 3, '2b78309f-22bd-4aa0-bfcf-224a2e12065d', NULL, 2);
INSERT INTO devices_device (id, "deviceId", date, "deviceType_id", user_id, "deviceName", group_id) VALUES (9, '4e001f001951363036373538', '2018-02-12 18:02:24.698901+00', 3, '2b78309f-22bd-4aa0-bfcf-224a2e12065d', 'demosensorboard', 2);


--
-- Data for Name: devices_amblightreading; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--



--
-- Data for Name: devices_devicegrouptypevariable; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

INSERT INTO devices_devicegrouptypevariable (id, variable, devicegrouptype_id, "variableType") VALUES (4, 'light', 1, '');
INSERT INTO devices_devicegrouptypevariable (id, variable, devicegrouptype_id, "variableType") VALUES (5, 'sound', 1, '');
INSERT INTO devices_devicegrouptypevariable (id, variable, devicegrouptype_id, "variableType") VALUES (6, 'motion', 1, '');


--
-- Data for Name: devices_devicetypefunc; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--



--
-- Data for Name: devices_humreading; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--



--
-- Data for Name: devices_movementreading; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--



--
-- Data for Name: devices_tempreading; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--



--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--



--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

INSERT INTO django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2018-02-08 19:55:10.044018+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2018-02-08 19:55:10.078438+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (3, 'auth', '0001_initial', '2018-02-08 19:55:10.181747+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2018-02-08 19:55:10.206741+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (5, 'auth', '0003_alter_user_email_max_length', '2018-02-08 19:55:10.236293+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (6, 'auth', '0004_alter_user_username_opts', '2018-02-08 19:55:10.259587+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (7, 'auth', '0005_alter_user_last_login_null', '2018-02-08 19:55:10.283889+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (8, 'auth', '0006_require_contenttypes_0002', '2018-02-08 19:55:10.290882+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (9, 'accounts', '0001_initial', '2018-02-08 19:55:10.41741+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (10, 'accounts', '0002_clean_user_model', '2018-02-08 19:55:10.534297+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (11, 'accounts', '0003_auto_20180131_0003', '2018-02-08 19:55:10.602449+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (12, 'admin', '0001_initial', '2018-02-08 19:55:10.649876+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (13, 'admin', '0002_logentry_remove_auto_add', '2018-02-08 19:55:10.67968+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (14, 'auth', '0007_alter_validators_add_error_messages', '2018-02-08 19:55:10.706714+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (15, 'auth', '0008_alter_user_username_max_length', '2018-02-08 19:55:10.734419+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (16, 'devices', '0001_initial', '2018-02-08 19:55:10.917239+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (17, 'devices', '0002_device_devicename', '2018-02-08 19:55:10.944176+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (18, 'devices', '0003_auto_20180201_0930', '2018-02-08 19:55:10.991537+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (19, 'devices', '0004_auto_20180201_0931', '2018-02-08 19:55:11.026157+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (20, 'knox', '0001_initial', '2018-02-08 19:55:11.08681+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (21, 'knox', '0002_auto_20150916_1425', '2018-02-08 19:55:11.148754+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (22, 'knox', '0003_auto_20150916_1526', '2018-02-08 19:55:11.221374+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (23, 'knox', '0004_authtoken_expires', '2018-02-08 19:55:11.268898+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (24, 'knox', '0005_authtoken_token_key', '2018-02-08 19:55:11.326497+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (25, 'knox', '0006_auto_20160818_0932', '2018-02-08 19:55:11.463304+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (26, 'sessions', '0001_initial', '2018-02-08 19:55:11.521069+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (27, 'devices', '0005_auto_20180211_1254', '2018-02-11 12:58:49.535693+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (28, 'devices', '0006_auto_20180211_1943', '2018-02-11 19:46:20.30749+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (29, 'devices', '0007_auto_20180212_1323', '2018-02-12 13:23:25.294793+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (30, 'devices', '0008_devicegroup_state', '2018-02-12 13:45:29.066723+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (31, 'devices', '0009_auto_20180213_1448', '2018-02-13 14:49:27.005402+00');


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--



--
-- Data for Name: knox_authtoken; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

INSERT INTO knox_authtoken (digest, salt, created, user_id, expires, token_key) VALUES ('a1e2fb16edee9fa2aa7ae5d97081a6dc6b7a4446a6339fecaabd4b2d3e6ae8f1fb3e114efae41428d7594526a7e076312a2ab4c102ddf182b63da57407bd6cb9', '5f8ec6815ddcb56a', '2018-02-10 12:55:14.265017+00', 'f513414b-02ee-4c1d-b27a-ff5af6ea8155', '2018-02-10 22:55:14.263403+00', '5ed0d26d');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expires, token_key) VALUES ('2c95ca4bd082aa761ebc89a68231768198922355c152993a6739adf25e5a4c55bf1ef4df95eb08183b5a4a9fff31bedf732e768b41a0d98b7f77ae4eb4a8ce56', '99694c70f9d63e21', '2018-02-13 14:52:11.587227+00', '0a565f30-6822-4168-8ce9-c0c5bccfbe0c', '2018-02-14 00:52:11.586591+00', '77b3b594');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expires, token_key) VALUES ('42546486094159e19273da756bab2785a71da3e2289a720b1d1ddc1b637abb74063a34b00c865e30cb1d4f36da199c1961e0b44c44d160b715609c5cd5c37e65', 'd229b850a31b7246', '2018-02-01 10:37:32.616245+00', '17102244-d489-43a1-a039-c306629318ec', '2018-02-01 20:37:32.615828+00', 'cf285ccb');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expires, token_key) VALUES ('d291754e2ade1bf86ab7cf27b006cf03df8328a56d3e406b33593d67295ec53a531737877097152787cd402bbfcc07fc127199e734302cf6dbafcf2851cf93a0', '712dd5ccae991607', '2018-02-11 11:39:42.002663+00', '5246d09b-adf1-45ce-b96f-53d1e2ae76e3', '2018-02-11 21:39:42.001362+00', '9103b585');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expires, token_key) VALUES ('5758c93b6474212f88e07973c4fa3b7b6160fbcd374913e8bbee0fcedaaf445025e679ba42116e311b579a089e9c669248aee84d1823cee72e5ce83a801542ed', 'bffb08ec2056ae94', '2018-02-11 15:40:38.311602+00', '1db5836b-7167-43fc-81b2-1c38751c39ab', '2018-02-12 01:40:38.31077+00', 'facc1791');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expires, token_key) VALUES ('7ad2ddf5fb4d36153fb8388726916cac8caa2765d72b7ae18ec44a7004601f0f7135d6fe6290342554b948e454dd8302ccd13e471b0b10ebb7903eda31bec3e7', '9d9a1ea1fd3ffc3a', '2018-02-11 17:15:00.937744+00', '1db5836b-7167-43fc-81b2-1c38751c39ab', '2018-02-12 03:15:00.936954+00', '00e73089');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expires, token_key) VALUES ('02385247afebe3c772408ca0decb915d91f916dd3200ea734a2f8d2d1a73ae9b39bab3b47237f1f4ee9d575954d91b4799bc58560bbdee16b846c378f8c8ce1a', '7fd0da76db3d5aa2', '2018-02-04 17:25:28.24921+00', '564974ae-251b-46c3-b1af-f7767e608276', '2018-02-05 03:25:28.248804+00', '7edf4eae');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expires, token_key) VALUES ('1eec41a36ac5e2c780858552a6687e91a2ae75de8c7e9fb1397b62653f1edb0f38cd8f754b69581b805db3cfac263094fc1d03583d1478eb11892b60eb782089', '49f142c5eca5700f', '2018-02-04 17:54:56.030123+00', '564974ae-251b-46c3-b1af-f7767e608276', '2018-02-05 03:54:56.029708+00', '12ad5c94');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expires, token_key) VALUES ('a4813181f7f3999ff694012aa9ddcfe4d4548bd59d8214d3a6e451cf85bfd29806af7c356cb05c9962fcadb13a43f97f7aa625e1bd22ace10371014bbe853cc6', '95a7ff7dd7b46c1a', '2018-02-04 17:59:57.837829+00', '564974ae-251b-46c3-b1af-f7767e608276', '2018-02-05 03:59:57.837474+00', 'b547ae19');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expires, token_key) VALUES ('e2ca7f255282e4ccb4d759ba4a215061a9ddeb1c7cb08c9ec7a77b4102fc5795fb4ad9c767c3b2edb1f27bdec2d89170c6d80367db67ec9fbf262a628f19e165', '663b3307c83c06dc', '2018-02-04 18:04:04.7351+00', '564974ae-251b-46c3-b1af-f7767e608276', '2018-02-05 04:04:04.734711+00', '9b76ed4d');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expires, token_key) VALUES ('1807170ceae27825cf0386974896e3008dd795fad5a4486f370da2e2645c3c3e797471593ecacbc46eb34906a9939d1149f63adb7ce843474592d32d90fd9f3c', '4b389a69ee2459cc', '2018-02-11 21:16:47.887798+00', '5246d09b-adf1-45ce-b96f-53d1e2ae76e3', '2018-02-12 07:16:47.886891+00', '91c9d375');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expires, token_key) VALUES ('15259d1c48bc7e1c077e5a03a828e147e5a5d583a18a7a8b8c1c7f1768ae4f01c93a048744a259d4ab061e4c646188eb671d4077d01e5cb92621dc64c44c7cee', 'd81205d6c69a9f73', '2018-02-05 17:04:05.216777+00', 'b28714ee-021d-40d3-8afb-c2076ca4061b', '2018-02-06 03:04:05.216491+00', '1a5797bc');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expires, token_key) VALUES ('4b41d4944d1cba3ddfc34e4682b86e41f70225f1ca3107b51efa6adf38b737a566a5f7225c30874f0f12d98123e29b104d607975c7e988ca2516d9a253259efc', '0d32bafcbb9bed4b', '2018-02-07 00:12:45.289283+00', '7e495599-9400-4ede-840c-2de96a2390b1', '2018-02-07 10:12:45.288971+00', '17937063');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expires, token_key) VALUES ('a4b7d47d94eddbb7aa65d714ebc8f3efbe17586fc103d3ca850321d50050699f1ae0e7d3ee35c01a0f91c9d156fcc9e385176d52e9b36dfe92014fe432e2c0b0', '7df7aa44f2572acd', '2018-02-13 11:00:48.121912+00', 'f0f2d2b5-efe2-4711-a25d-3b1f16de7a73', '2018-02-13 21:00:48.121013+00', 'd619a393');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expires, token_key) VALUES ('ee7b3f5033154638ed76f7c8d0e0394587eae522cfe3c952e19bd9de899596d3985f98ec730414cbd2bc041ef1f4129838dfc2c2798426ad0317b9ecaf005bb6', 'ecceae05ef10c53d', '2018-02-13 11:06:05.73115+00', 'f0f2d2b5-efe2-4711-a25d-3b1f16de7a73', '2018-02-13 21:06:05.730393+00', 'dc20e899');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expires, token_key) VALUES ('88ad0fe9d488ca5eecb4cc9710df6a064c90ab44fdd2c131581ff04e8be9ab5390432768d807603e7b6ae968fe895513a6be45c6b95d3daaa5987e311a1eba4a', '3489fdaca8d932df', '2018-02-08 16:07:48.202152+00', '65ee0594-6d5f-4b0d-bf8c-78c7b92775e3', '2018-02-09 02:07:48.201829+00', 'c5a8f0f3');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expires, token_key) VALUES ('27d712321c9de9cd7d1bdcbf97c43dccfb0934a109de0e8feb45319cf4ea1ba9a22083569f80a0f993aa259a95c9effe88acb35b711b8242303397b04d014973', '207ed96b0732a4b2', '2018-02-08 16:15:38.699361+00', '7ce7e75f-6285-488e-a285-a3dc3d5098da', '2018-02-09 02:15:38.69907+00', '3d623048');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expires, token_key) VALUES ('527e8afc2f8110316b5fdc65facfbd0c9d49bf56855887c313ca2eb124f1f49cf2a70953158ef8a6153f7776145c229e03fff247db7ee805cbdd70b2551bde41', 'a1b469c81adb74ca', '2018-02-08 16:18:09.177095+00', 'c370c7ef-49d0-4a43-91ec-6bc3e90bcd35', '2018-02-09 02:18:09.17679+00', 'ef2f7b9e');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expires, token_key) VALUES ('67fd51e4847445c032df3cc83257e3692485c3b879fbde7a63e76f0fbfda30ba395086f9781c300fff11f05196b4f076aa0f5f54c151eb951ec9865882744257', '347f76854faaf4e1', '2018-02-08 16:24:19.147151+00', 'e59b1571-14b9-4d22-a8db-991941fe0950', '2018-02-09 02:24:19.14687+00', '3307c7ef');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expires, token_key) VALUES ('7c8c0c3a3f59df5f6ad6e25eb865186c0c60b0dd08710a035f289c0dae58c5d4fc071a5aab355586000c6dd77c9e8f22b844bf7ac863c94aa043f5b4908bda01', 'e584ced3ac14d236', '2018-02-08 16:41:35.732731+00', '70816b37-fa53-4d02-8899-ee4bbf95ffcf', '2018-02-09 02:41:35.732421+00', 'fb19d19f');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expires, token_key) VALUES ('67f9c0ada01a2f422e70adefd4a61bbb7feee495f25ef423570253ea0f8984fe9127075937db72938c2bf8f6bbd18591ca07034ddb5fa81f372159d303df200e', '942cf0cdbd88d596', '2018-02-08 16:56:54.626368+00', '042c8584-18ff-4780-9969-88f1d825e0a3', '2018-02-09 02:56:54.62609+00', 'd11161c3');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expires, token_key) VALUES ('ca71bbe0ad74dfb184c890819f1532b516c28ef567c7784eded947516ec9ec319b2bf33c15070478027440050181591bf921a97469aa19a7ec6601d6e5a62058', 'eab62556093c4c5a', '2018-02-13 16:12:12.462229+00', '2b78309f-22bd-4aa0-bfcf-224a2e12065d', '2018-02-14 02:12:12.461052+00', 'e3f9bfca');


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('auth_permission_id_seq', 51, true);


--
-- Name: devices_amblightreading_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('devices_amblightreading_id_seq', 1, false);


--
-- Name: devices_device_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('devices_device_id_seq', 10, true);


--
-- Name: devices_devicegroup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('devices_devicegroup_id_seq', 2, true);


--
-- Name: devices_devicegrouptype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('devices_devicegrouptype_id_seq', 1, true);


--
-- Name: devices_devicegrouptypestate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('devices_devicegrouptypestate_id_seq', 2, true);


--
-- Name: devices_devicegrouptypevariable_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('devices_devicegrouptypevariable_id_seq', 6, true);


--
-- Name: devices_devicetype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('devices_devicetype_id_seq', 3, true);


--
-- Name: devices_devicetypefunc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('devices_devicetypefunc_id_seq', 1, false);


--
-- Name: devices_humreading_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('devices_humreading_id_seq', 1, false);


--
-- Name: devices_movementreading_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('devices_movementreading_id_seq', 1, false);


--
-- Name: devices_tempreading_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('devices_tempreading_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('django_content_type_id_seq', 17, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('django_migrations_id_seq', 28, true);


--
-- PostgreSQL database dump complete
--

