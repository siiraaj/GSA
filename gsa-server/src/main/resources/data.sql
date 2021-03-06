-- team --
insert into team (team_id, team_name) values (1, 'WOCKHARDT LIMITED');
insert into team (team_id, team_name) values (2, 'Newton Laboratories, Inc.');
insert into team (team_id, team_name) values (3, 'Safeway');
insert into team (team_id, team_name) values (4, 'Salix Pharmaceuticals, Inc.');
insert into team (team_id, team_name) values (5, 'Walgreen Company');
insert into team (team_id, team_name) values (6, 'NorthStar Rx LLC');
insert into team (team_id, team_name) values (7, 'West-Ward Pharmaceutical Corp');
insert into team (team_id, team_name) values (8, 'Dr. Fresh, Inc.');
insert into team (team_id, team_name) values (9, 'Boggs Gases div. Boggs Fire Equipment');
-- species --
insert into species (species_name) values ('MONKEY');
insert into species (species_name) values ('DONKEY');
insert into species (species_name) values ('WOLF');
insert into species (species_name) values ('SPIDER');
insert into species (species_name) values ('GOAT');
insert into species (species_name) values ('SHARK');
-- product --
insert into product (target_pk, source_pk) values ('SHARK', 'WOLF');
insert into product (target_pk, source_pk) values ('WOLF', 'GOAT');
insert into product (target_pk, source_pk) values ('SPIDER', 'WOLF');
insert into product (target_pk, source_pk) values ('MONKEY', 'DONKEY');
insert into product (target_pk, source_pk) values ('MONKEY', 'WOLF');
insert into product (target_pk, source_pk) values ('MONKEY', 'SPIDER');
insert into product (target_pk, source_pk) values ('MONKEY', 'GOAT');
insert into product (target_pk, source_pk) values ('MONKEY', 'SHARK');
-- aliquots --
insert into aliquot (aliquotnlot, aliquot_expiration_date, aliquot_price, aliquot_quantity_hidden_stock, aliquot_quantity_visible_stock, provider, target, source) values (1, '2019-02-11 00:00:00', 0.167879443, 2,2, 'Dynabox', 'SHARK', 'WOLF');
insert into aliquot (aliquotnlot, aliquot_expiration_date, aliquot_price, aliquot_quantity_hidden_stock, aliquot_quantity_visible_stock, provider, target, source) values (2, '2019-02-11 00:00:00', 0.4369044297, 2,6, 'Linktype', 'SHARK', 'WOLF');
insert into aliquot (aliquotnlot, aliquot_expiration_date, aliquot_price, aliquot_quantity_hidden_stock, aliquot_quantity_visible_stock, provider, target, source) values (3, '2019-02-11 00:00:00', 2.0824829339, 0,0, 'Flipbug', 'SPIDER', 'WOLF');
insert into aliquot (aliquotnlot, aliquot_expiration_date, aliquot_price, aliquot_quantity_hidden_stock, aliquot_quantity_visible_stock, provider, target, source) values (4, '2019-02-11 00:00:00', 0.167879443, 2,2, 'Dynabox', 'MONKEY', 'DONKEY');
insert into aliquot (aliquotnlot, aliquot_expiration_date, aliquot_price, aliquot_quantity_hidden_stock, aliquot_quantity_visible_stock, provider, target, source) values (5, '2020-02-11 00:00:00', 0.4369044297, 2,6, 'Linktype', 'MONKEY', 'WOLF');
insert into aliquot (aliquotnlot, aliquot_expiration_date, aliquot_price, aliquot_quantity_hidden_stock, aliquot_quantity_visible_stock, provider, target, source) values (6, '2020-02-11 00:00:00', 2.0824829339, 13,14, 'Flipbug', 'MONKEY', 'SPIDER');
insert into aliquot (aliquotnlot, aliquot_expiration_date, aliquot_price, aliquot_quantity_hidden_stock, aliquot_quantity_visible_stock, provider, target, source) values (7, '2020-02-11 00:00:00', 0.167879443, 2,2, 'Dynabox', 'MONKEY', 'GOAT');
insert into aliquot (aliquotnlot, aliquot_expiration_date, aliquot_price, aliquot_quantity_hidden_stock, aliquot_quantity_visible_stock, provider, target, source) values (8, '2020-02-11 00:00:00', 0.4369044297, 2,6, 'Linktype', 'MONKEY', 'SHARK');
-- transaction --
SET FOREIGN_KEY_CHECKS = 0;
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (1, '2019-04-10 08:00:01', 'TEAM_WITHDRAW', 1, 'WITHDRAW', 1, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (2, '2019-11-11 21:04:54', 'TEAM_WITHDRAW', 1, 'WITHDRAW', 1, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (3, '2019-11-30 02:44:59', 'TEAM_WITHDRAW', 4, 'WITHDRAW', 1, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (4, '2019-11-23 17:52:49', 'TEAM_WITHDRAW', 5, 'WITHDRAW', 1, 2);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (5, '2019-08-18 01:42:44', 'TEAM_WITHDRAW', 3, 'WITHDRAW', 1, 2);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (6, '2019-04-09 14:41:44', 'TEAM_WITHDRAW', 2, 'WITHDRAW', 1, 2);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (7, '2019-12-29 03:29:57', 'TEAM_WITHDRAW', 2, 'WITHDRAW', 1, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (8, '2019-04-02 05:17:56', 'TEAM_WITHDRAW', 1, 'WITHDRAW', 1, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (9, '2019-09-03 19:29:12', 'TEAM_WITHDRAW', 2, 'WITHDRAW', 1, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (10, '2019-09-05 14:36:28', 'TEAM_WITHDRAW', 3, 'WITHDRAW', 1, 2);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (11, '2019-10-30 15:41:45', 'TEAM_WITHDRAW', 3, 'WITHDRAW', 1, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (12, '2019-04-14 08:40:04', 'TEAM_WITHDRAW', 3, 'WITHDRAW', 1, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (13, '2019-11-10 00:28:40', 'TEAM_WITHDRAW', 5, 'WITHDRAW', 1, 2);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (14, '2019-10-25 06:09:49', 'TEAM_WITHDRAW', 5, 'WITHDRAW', 1, 2);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (15, '2019-02-02 05:16:52', 'TEAM_WITHDRAW', 2, 'WITHDRAW', 1, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (16, '2019-01-07 23:59:51', 'TEAM_WITHDRAW', 3, 'WITHDRAW', 1, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (17, '2019-09-13 03:18:26', 'TEAM_WITHDRAW', 3, 'WITHDRAW', 1, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (18, '2019-03-06 22:35:43', 'TEAM_WITHDRAW', 2, 'WITHDRAW', 1, 2);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (19, '2019-02-19 00:33:26', 'TEAM_WITHDRAW', 3, 'WITHDRAW', 1, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (20, '2019-07-01 02:55:17', 'TEAM_WITHDRAW', 1, 'WITHDRAW', 1, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (21, '2019-02-04 14:23:48', 'TEAM_WITHDRAW', 2, 'WITHDRAW', 1, 2);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (22, '2019-04-18 23:08:57', 'TEAM_WITHDRAW', 5, 'WITHDRAW', 1, 2);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (23, '2019-08-21 12:09:47', 'TEAM_WITHDRAW', 5, 'WITHDRAW', 1, 2);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (24, '2019-03-05 08:56:22', 'TEAM_WITHDRAW', 1, 'WITHDRAW', 1, 2);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (25, '2019-03-22 04:48:38', 'TEAM_WITHDRAW', 2, 'WITHDRAW', 1, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (26, '2019-06-05 13:48:45', 'TEAM_WITHDRAW', 5, 'WITHDRAW', 1, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (27, '2019-10-08 23:40:51', 'TEAM_WITHDRAW', 4, 'WITHDRAW', 1, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (28, '2019-02-03 21:48:04', 'TEAM_WITHDRAW', 2, 'WITHDRAW', 1, 2);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (29, '2019-05-08 19:19:17', 'TEAM_WITHDRAW', 2, 'WITHDRAW', 1, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (30, '2019-04-23 04:56:15', 'TEAM_WITHDRAW', 2, 'WITHDRAW', 1, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (31, '2019-04-05 14:32:29', 'TEAM_WITHDRAW', 2, 'WITHDRAW', 1, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (32, '2019-12-01 02:55:01', 'TEAM_WITHDRAW', 2, 'WITHDRAW', 1, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (33, '2019-04-03 09:18:55', 'TEAM_WITHDRAW', 3, 'WITHDRAW', 1, 2);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (34, '2019-12-20 10:20:55', 'TEAM_WITHDRAW', 1, 'WITHDRAW', 1, 2);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (35, '2019-01-26 08:32:14', 'TEAM_WITHDRAW', 1, 'WITHDRAW', 1, 2);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (36, '2019-07-22 16:39:08', 'TEAM_WITHDRAW', 1, 'WITHDRAW', 1, 2);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (37, '2019-10-26 01:26:56', 'TEAM_WITHDRAW', 4, 'WITHDRAW', 1, 2);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (38, '2019-05-22 16:55:03', 'TEAM_WITHDRAW', 1, 'WITHDRAW', 1, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (39, '2019-03-25 20:21:37', 'TEAM_WITHDRAW', 2, 'WITHDRAW', 1, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (40, '2019-08-03 23:56:44', 'TEAM_WITHDRAW', 2, 'WITHDRAW', 1, 2);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (41, '2019-08-29 10:20:48', 'TEAM_WITHDRAW', 5, 'WITHDRAW', 1, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (42, '2019-02-19 17:02:05', 'TEAM_WITHDRAW', 4, 'WITHDRAW', 1, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (43, '2019-06-09 21:25:49', 'TEAM_WITHDRAW', 2, 'WITHDRAW', 1, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (44, '2019-12-12 04:12:19', 'TEAM_WITHDRAW', 4, 'WITHDRAW', 1, 2);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (45, '2019-02-27 23:53:11', 'TEAM_WITHDRAW', 3, 'WITHDRAW', 1, 2);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (46, '2019-06-26 06:03:55', 'TEAM_WITHDRAW', 2, 'WITHDRAW', 1, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (47, '2019-05-11 23:07:27', 'TEAM_WITHDRAW', 3, 'WITHDRAW', 1, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (48, '2019-01-11 08:08:44', 'TEAM_WITHDRAW', 4, 'WITHDRAW', 1, 2);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (49, '2019-06-26 13:48:41', 'TEAM_WITHDRAW', 5, 'WITHDRAW', 1, 2);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (50, '2019-11-14 02:24:41', 'TEAM_WITHDRAW', 3, 'WITHDRAW', 1, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (51, '2018-11-14 02:24:41', 'TEAM_WITHDRAW', 3, 'WITHDRAW', 1, 1);


insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (52, '2018-12-12', 'TEAM_WITHDRAW', 5, 'WITHDRAW', 1, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (53, '2018-11-27', 'TEAM_WITHDRAW', 3, 'WITHDRAW', 2, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (54, '2018-10-26', 'TEAM_WITHDRAW', 2, 'WITHDRAW', 2, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (55, '2018-12-11', 'TEAM_WITHDRAW', 3, 'WITHDRAW', 1, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (56, '2018-12-11', 'TEAM_WITHDRAW', 4, 'WITHDRAW', 3, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (57, '2018-10-26', 'TEAM_WITHDRAW', 5, 'WITHDRAW', 1, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (58, '2018-11-14', 'TEAM_WITHDRAW', 1, 'WITHDRAW', 3, 1);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (59, '2018-11-14', 'TEAM_WITHDRAW', 3, 'WITHDRAW', 2, 1);


insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (60, '2018-12-14', 'OUTDATED', 3, 'WITHDRAW', 2, null);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (61, '2018-12-14', 'OUTDATED', 3, 'WITHDRAW', 2, null);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (62, '2018-10-14', 'INVENTORY', 3, 'WITHDRAW', 2, null);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (63, '2018-11-14', 'INVENTORY', 3, 'WITHDRAW', 3, null);
insert into transaction (transaction_id, transaction_date, transaction_motif, transaction_quantity, transaction_type, aliquot_id, member_id) values (64, '2018-09-14', 'INVENTORY', 3, 'WITHDRAW', 3, null);

SET FOREIGN_KEY_CHECKS = 1;
DELETE FROM `transaction` WHERE (transaction_date > '2019-04-30 00:00:00' AND transaction_date < '2019-06-01 00:00:00');
INSERT INTO `alert`(`alert_type`, `seuil`, `source`, `target`) VALUES ('VISIBLE_STOCK', 10, 'WOLF', 'SHARK');
INSERT INTO `alert`(`alert_type`, `seuil`, `source`, `target`) VALUES ('HIDDEN_STOCK', 10, 'WOLF', 'SHARK');
INSERT INTO `alert`(`alert_type`, `seuil`, `source`, `target`) VALUES ('GENERAL', 20, 'WOLF', 'SHARK');
INSERT INTO `alert`(`alert_type`, `seuil`, `source`, `target`) VALUES ('GENERAL', 10, 'WOLF', 'SPIDER');
INSERT INTO `alert`(`alert_type`, `seuil`, `source`, `target`) VALUES ('GENERAL', 10, 'GOAT', 'WOLF');

