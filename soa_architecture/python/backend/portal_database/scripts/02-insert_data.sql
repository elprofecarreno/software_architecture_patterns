USE portal_db;
/* sha256 4Dm1n.P0rTaL */
INSERT INTO portal_users (username, password, email, created_at) VALUES ('administrator', sha2('4Dm1n.P0rTaL', 256), 'admin@admin.cl', now());
/* ROLES */
/* CRUD USERS */
INSERT INTO portal_roles (name, created_at) VALUES ('create_user', now());
INSERT INTO portal_roles (name, created_at) VALUES ('update_user', now());
INSERT INTO portal_roles (name, created_at) VALUES ('delete_user', now());
INSERT INTO portal_roles (name, created_at) VALUES ('view_user', now());
/* CRUD PROFILES */
INSERT INTO portal_roles (name, created_at) VALUES ('create_profile', now());
INSERT INTO portal_roles (name, created_at) VALUES ('update_profile', now());
INSERT INTO portal_roles (name, created_at) VALUES ('delete_profile', now());
INSERT INTO portal_roles (name, created_at) VALUES ('view_profile', now());
/* CRUD ROLES */
INSERT INTO portal_roles (name, created_at) VALUES ('create_role', now());
INSERT INTO portal_roles (name, created_at) VALUES ('update_role', now());
INSERT INTO portal_roles (name, created_at) VALUES ('delete_role', now());
INSERT INTO portal_roles (name, created_at) VALUES ('view_role', now());
/* CRUD REGIONS */
INSERT INTO portal_roles (name, created_at) VALUES ('create_regions', now());
INSERT INTO portal_roles (name, created_at) VALUES ('update_regions', now());
INSERT INTO portal_roles (name, created_at) VALUES ('delete_regions', now());
INSERT INTO portal_roles (name, created_at) VALUES ('view_regions', now());
/* CRUD PROVINCES */
INSERT INTO portal_roles (name, created_at) VALUES ('create_provinces', now());
INSERT INTO portal_roles (name, created_at) VALUES ('update_provinces', now());
INSERT INTO portal_roles (name, created_at) VALUES ('delete_provinces', now());
INSERT INTO portal_roles (name, created_at) VALUES ('view_provinces', now());
/* CRUD COMMUNES */
INSERT INTO portal_roles (name, created_at) VALUES ('create_communes', now());
INSERT INTO portal_roles (name, created_at) VALUES ('update_communes', now());
INSERT INTO portal_roles (name, created_at) VALUES ('delete_communes', now());
INSERT INTO portal_roles (name, created_at) VALUES ('view_communes', now());
/* PROFILE */
INSERT INTO portal_profiles (name, created_at) VALUES ('admin', now());
/* PROFILE ROLES */
/* CRUD USERS */
INSERT INTO portal_roles_profiles (id_role, id_profile, created_at) 
VALUES ((SELECT id FROM portal_roles WHERE name = 'create_user'), 
		(SELECT id FROM portal_profiles WHERE name = 'admin'),
        now());
INSERT INTO portal_roles_profiles (id_role, id_profile, created_at) 
VALUES ((SELECT id FROM portal_roles WHERE name = 'update_user'), 
		(SELECT id FROM portal_profiles WHERE name = 'admin'),
        now());
INSERT INTO portal_roles_profiles (id_role, id_profile, created_at) 
VALUES ((SELECT id FROM portal_roles WHERE name = 'delete_user'), 
		(SELECT id FROM portal_profiles WHERE name = 'admin'),
        now());
INSERT INTO portal_roles_profiles (id_role, id_profile, created_at) 
VALUES ((SELECT id FROM portal_roles WHERE name = 'view_user'), 
		(SELECT id FROM portal_profiles WHERE name = 'admin'),
        now());
/* CRUD PROFILES */
INSERT INTO portal_roles_profiles (id_role, id_profile, created_at) 
VALUES ((SELECT id FROM portal_roles WHERE name = 'create_profile'), 
		(SELECT id FROM portal_profiles WHERE name = 'admin'),
        now());
INSERT INTO portal_roles_profiles (id_role, id_profile, created_at) 
VALUES ((SELECT id FROM portal_roles WHERE name = 'update_profile'), 
		(SELECT id FROM portal_profiles WHERE name = 'admin'),
        now());
INSERT INTO portal_roles_profiles (id_role, id_profile, created_at) 
VALUES ((SELECT id FROM portal_roles WHERE name = 'delete_profile'), 
		(SELECT id FROM portal_profiles WHERE name = 'admin'),
        now());
INSERT INTO portal_roles_profiles (id_role, id_profile, created_at) 
VALUES ((SELECT id FROM portal_roles WHERE name = 'view_profile'), 
		(SELECT id FROM portal_profiles WHERE name = 'admin'),
        now());
/* CRUD ROLES */
INSERT INTO portal_roles_profiles (id_role, id_profile, created_at) 
VALUES ((SELECT id FROM portal_roles WHERE name = 'create_role'), 
		(SELECT id FROM portal_profiles WHERE name = 'admin'),
        now());
INSERT INTO portal_roles_profiles (id_role, id_profile, created_at) 
VALUES ((SELECT id FROM portal_roles WHERE name = 'update_role'), 
		(SELECT id FROM portal_profiles WHERE name = 'admin'),
        now());
INSERT INTO portal_roles_profiles (id_role, id_profile, created_at) 
VALUES ((SELECT id FROM portal_roles WHERE name = 'delete_role'), 
		(SELECT id FROM portal_profiles WHERE name = 'admin'),
        now());
INSERT INTO portal_roles_profiles (id_role, id_profile, created_at) 
VALUES ((SELECT id FROM portal_roles WHERE name = 'view_role'), 
		(SELECT id FROM portal_profiles WHERE name = 'admin'),
        now());
/* CRUD REGIONS */
INSERT INTO portal_roles_profiles (id_role, id_profile, created_at) 
VALUES ((SELECT id FROM portal_roles WHERE name = 'create_regions'), 
		(SELECT id FROM portal_profiles WHERE name = 'admin'),
        now());
INSERT INTO portal_roles_profiles (id_role, id_profile, created_at) 
VALUES ((SELECT id FROM portal_roles WHERE name = 'update_regions'), 
		(SELECT id FROM portal_profiles WHERE name = 'admin'),
        now());
INSERT INTO portal_roles_profiles (id_role, id_profile, created_at) 
VALUES ((SELECT id FROM portal_roles WHERE name = 'delete_regions'), 
		(SELECT id FROM portal_profiles WHERE name = 'admin'),
        now());
INSERT INTO portal_roles_profiles (id_role, id_profile, created_at) 
VALUES ((SELECT id FROM portal_roles WHERE name = 'view_regions'), 
		(SELECT id FROM portal_profiles WHERE name = 'admin'),
        now());
/* CRUD PROVINCES */
INSERT INTO portal_roles_profiles (id_role, id_profile, created_at) 
VALUES ((SELECT id FROM portal_roles WHERE name = 'create_provinces'), 
		(SELECT id FROM portal_profiles WHERE name = 'admin'),
        now());
INSERT INTO portal_roles_profiles (id_role, id_profile, created_at) 
VALUES ((SELECT id FROM portal_roles WHERE name = 'update_provinces'), 
		(SELECT id FROM portal_profiles WHERE name = 'admin'),
        now());
INSERT INTO portal_roles_profiles (id_role, id_profile, created_at) 
VALUES ((SELECT id FROM portal_roles WHERE name = 'delete_provinces'), 
		(SELECT id FROM portal_profiles WHERE name = 'admin'),
        now());
INSERT INTO portal_roles_profiles (id_role, id_profile, created_at) 
VALUES ((SELECT id FROM portal_roles WHERE name = 'view_provinces'), 
		(SELECT id FROM portal_profiles WHERE name = 'admin'),
        now());
/* CRUD PROVINCES */
INSERT INTO portal_roles_profiles (id_role, id_profile, created_at) 
VALUES ((SELECT id FROM portal_roles WHERE name = 'create_communes'), 
		(SELECT id FROM portal_profiles WHERE name = 'admin'),
        now());
INSERT INTO portal_roles_profiles (id_role, id_profile, created_at) 
VALUES ((SELECT id FROM portal_roles WHERE name = 'update_communes'), 
		(SELECT id FROM portal_profiles WHERE name = 'admin'),
        now());
INSERT INTO portal_roles_profiles (id_role, id_profile, created_at) 
VALUES ((SELECT id FROM portal_roles WHERE name = 'delete_communes'), 
		(SELECT id FROM portal_profiles WHERE name = 'admin'),
        now());
INSERT INTO portal_roles_profiles (id_role, id_profile, created_at) 
VALUES ((SELECT id FROM portal_roles WHERE name = 'view_communes'), 
		(SELECT id FROM portal_profiles WHERE name = 'admin'),
        now());
/* PROFILE USERS */
/* ADMIN */
INSERT INTO portal_users_profiles (id_user, id_profile, created_at) 
VALUES ((SELECT id FROM portal_users WHERE username = 'administrator'), 
		(SELECT id FROM portal_profiles WHERE name = 'admin'),
        now());
/* VIEW PROFILES USER*/
CREATE OR REPLACE VIEW PROFILES_USER AS 
SELECT pp.name
FROM portal_users pu
JOIN portal_users_profiles pup on pup.id_user = pu.id
JOIN portal_profiles pp on pp.id = pup.id_profile;
/* VIEW ROLES USER*/
CREATE OR REPLACE VIEW ROLES_USER AS 
SELECT pr.name
FROM portal_users pu
JOIN portal_users_profiles pup on pup.id_user = pu.id
JOIN portal_roles_profiles prp on prp.id_profile = pup.id_profile
JOIN portal_roles pr on pr.id = prp.id_role;
/* REGIONS STATES */
INSERT INTO regions_states (name, latitude, longitude, created_at) VALUES ('Tarapacá',-20.164,-69.5541, now());
INSERT INTO regions_states (name, latitude, longitude, created_at) VALUES ('Antofagasta',-23.7503,-69.6, now());
INSERT INTO regions_states (name, latitude, longitude, created_at) VALUES ('Atacama',-27.5276,-70.2494, now());
INSERT INTO regions_states (name, latitude, longitude, created_at) VALUES ('Coquimbo',-30.8301,-70.9816, now());
INSERT INTO regions_states (name, latitude, longitude, created_at) VALUES ('Valparaíso',-32.9039,-71.0262, now());
INSERT INTO regions_states (name, latitude, longitude, created_at) VALUES ('Del Libertador Gral. Bernardo O''Higgins', -34.4294, -71.0393, now());
INSERT INTO regions_states (name, latitude, longitude, created_at) VALUES ('Del Maule',-35.5892,-71.5007, now());
INSERT INTO regions_states (name, latitude, longitude, created_at) VALUES ('Del Biobío',-37.2442,-72.4661, now());
INSERT INTO regions_states (name, latitude, longitude, created_at) VALUES ('De la Araucanía',-38.5505,-72.4382, now());
INSERT INTO regions_states (name, latitude, longitude, created_at) VALUES ('De los Lagos',-42.1071,-72.6425, now());
INSERT INTO regions_states (name, latitude, longitude, created_at) VALUES ('Aysén del Gral. Carlos Ibáñez del Campo',-46.2772,-73.6628, now());
INSERT INTO regions_states (name, latitude, longitude, created_at) VALUES ('Magallanes y de la Antártica Chilena',-54.3551,-70.5284, now());
INSERT INTO regions_states (name, latitude, longitude, created_at) VALUES ('Metropolitana de Santiago',-33.4417,-70.6541, now());
INSERT INTO regions_states (name, latitude, longitude, created_at) VALUES ('De los Ríos',-39.9086,-72.7034, now());
INSERT INTO regions_states (name, latitude, longitude, created_at) VALUES ('Arica y Parinacota',-18.5075,-69.6451, now());
INSERT INTO regions_states (name, latitude, longitude, created_at) VALUES ('Ñuble',-366.191,-720.182, now());
/* PROVINCES TOWNSHIPS */
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (11,"Iquique",-20.8011,-70.0963,1, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (14,"Tamarugal",-39.8567,-72.6089,1, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (21,"Antofagasta",-24.5646,-69.2877,2, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (22,"El Loa",-22.3196,-68.5107,2, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (23,"Tocopilla",-22.2306,-69.4666,2, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (31,"Copiapó",-27.5765,-70.0269,2, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (32,"Chañaral",-26.3599,-70.5981,2, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (33,"Huasco",-28.5604,-70.6146,2, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (41,"Elqui",-29.8335,-70.8014,4, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (42,"Choapa",-31.8006,-70.9827,4, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (43,"Limarí",-30.7342,-70.9957,4, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (52,"Isla de Pascua",-27.1212,-109.366,5, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (51,"Valparaíso",-33.1381,-71.5617,5, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (53,"Los Andes",-32.9544,-70.3163,5, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (54,"Petorca",-32.1965,-70.8318,5, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (55,"Quillota",-32.9009,-71.2947,5, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (56,"San Antonio",-33.6648,-71.4597,5, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (57,"San Felipe de Aconcagua",-32.7464,-70.7489,5, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (58,"Marga Marga",-33.065,-71.3711,5, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (61,"Cachapoal",-36.45,-71.7333,6, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (62,"Cardenal Caro",-34.2812,-71.8571,6, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (63,"Colchagua",-34.6761,-71.0973,6, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (71,"Talca",-35.3921,-71.6125,7, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (72,"Cauquenes",-35.9738,-72.3142,7, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (73,"Curicó",-35.1704,-70.8954,7, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (74,"Linares",-35.8495,-71.585,7, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (81,"Concepción",-36.8148,-73.0293,8, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (82,"Arauco",-37.7277,-73.3075,8, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (83,"Biobío",-37.4739,-72.1572,8, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (91,"Cautín",-38.727,-72.5989,9, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (92,"Malleco",-37.803,-72.7017,9, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (101,"Llanquihue",-41.453,-72.6135,10, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (102,"Chiloé",-43.117,-73.9984,10, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (103,"Osorno",-40.7369,-72.9849,10, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (104,"Palena",-43.4449,-72.0923,10, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (111,"Coihaique",-45.2865,-71.7792,11, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (112,"Aysén",-46.3848,-72.2955,11, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (113,"Capitán Prat",-47.9232,-72.9245,11, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (114,"General Carrera",-46.557,-72.4123,11, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (122,"Antártica Chilena",-55.028,-67.6318,12, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (121,"Magallanes",-53.6316,-71.5924,12, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (123,"Tierra del Fuego",-53.7422,-69.2249,12, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (124,"Última Esperanza",-51.0163,-73.4285,12, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (131,"Santiago",-33.4417,-70.6541,13, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (132,"Cordillera",-33.6984,-70.1682,13, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (133,"Chacabuco",-33.1503,-70.7132,13, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (134,"Maipo",-33.7963,-70.7353,13, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (135,"Melipilla",-33.7369,-71.1743,13, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (136,"Talagante",-33.6665,-70.9331,13, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (141,"Valdivia",-39.7811,-72.5098,14, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (142,"Ranco",-40.4114,-72.4988,14, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (151,"Arica",-18.7139,-69.7522,15, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (152,"Parinacota",-18.3135,-69.3788,15, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (161,"Diguillín",-366.197,-721.014,16, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (162,"Itata",-367.639,-724.491,16, now());
INSERT INTO provinces_townships (id, name, latitude, longitude,regions_states_id, created_at) VALUES (163,"Punilla",-364.261,-719.708,16, now());
/* COMMUNES TOWNS */
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5602,"Algarrobo",-33.3332,-71.6023,56, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13502,"Alhué",-34.0355,-71.028,135, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(8314,"Alto Biobío",-37.8708,-71.6106,83, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(3302,"Alto del Carmen",-28.7508,-70.4883,33, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(01107,"Alto Hospicio",-20.2677,-70.1007,11, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(10202,"Ancud",-41.8657,-73.8336,102, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(4103,"Andacollo",-30.2357,-71.0828,41, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(9201,"Angol",-37.803,-72.7017,92, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(12202,"Antártica",-64.3589,-60.8203,122, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(2101,"Antofagasta",-23.6499,-70.4069,21, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(8302,"Antuco",-37.3273,-71.6775,83, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(8202,"Arauco",-37.257,-73.2839,82, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(15101,"Arica",-18.477,-70.3221,151, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(11201,"Aysén",-45.3975,-72.6993,112, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13402,"Buin",-33.754,-70.7163,134, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(16102,"Bulnes",-36.7422,-72.3018,161, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5402,"Cabildo",-32.4095,-71.0798,54, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(12201,"Cabo de Hornos",-54.9352,-67.6041,122, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(8303,"Cabrero",-37.0374,-72.4057,83, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(2201,"Calama",-22.4542,-68.9337,22, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(10102,"Calbuco",-41.7775,-73.1415,101, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(3102,"Caldera",-27.0668,-70.817,31, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5502,"Calera",-32.7837,-71.1586,55, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13403,"Calera de Tango",-33.6326,-70.7821,134, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5302,"Calle Larga",-32.9514,-70.5524,53, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(15102,"Camarones",-19.0089,-69.9074,151, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(01402,"Camiña",-19.3118,-69.4264,14, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(4202,"Canela",-31.3935,-71.4578,42, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(8203,"Cañete",-37.8039,-73.4016,82, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(9102,"Carahue",-38.7116,-73.1651,91, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5603,"Cartagena",-33.5341,-71.4628,56, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5102,"Casablanca",-33.3262,-71.3983,51, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(10201,"Castro",-42.48,-73.7625,102, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5702,"Catemu",-32.6981,-70.956,57, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(7201,"Cauquenes",-35.9738,-72.3142,72, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13102,"Cerrillos",-33.497,-70.7112,131, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13103,"Cerro Navia",-33.4267,-70.7434,131, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(10401,"Chaitén",-42.9168,-72.7164,104, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(3201,"Chañaral",-26.3425,-70.6107,32, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(7202,"Chanco",-35.7337,-72.5333,72, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(6302,"Chépica",-34.7303,-71.2688,63, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(8103,"Chiguayante",-36.9046,-73.0164,81, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(11401,"Chile Chico",-46.5401,-71.7218,114, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(16101,"Chillán",-36.6013,-72.1093,161, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(16103,"Chillán Viejo",-36.6333,-72.1404,161, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(6303,"Chimbarongo",-34.7552,-70.9753,63, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(9121,"Cholchol",-38.596,-72.8445,91, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(10203,"Chonchi",-42.6232,-73.7739,102, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(11202,"Cisnes",-44.728,-72.6828,112, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(16202,"Cobquecura",-36.1318,-72.7911,162, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(10103,"Cochamó",-41.488,-72.3038,101, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(11301,"Cochrane",-47.2494,-72.5784,113, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(6102,"Codegua",-34.0442,-70.5131,61, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(16203,"Coelemu",-36.4877,-72.7022,162, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(11101,"Coihaique",-45.5758,-72.0621,111, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(16302,"Coihueco",-36.6166,-71.8344,163, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(6103,"Coinco",-34.2918,-70.9706,61, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(7402,"Colbún",-35.6927,-71.4067,74, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(01403,"Colchane",-19.2787,-68.6343,14, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13301,"Colina",-33.1996,-70.6702,133, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(9202,"Collipulli",-37.9528,-72.4323,92, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(6104,"Coltauco",-34.2498,-71.0791,61, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(4302,"Combarbalá",-31.1764,-70.9978,43, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(8101,"Concepción",-36.8148,-73.0293,81, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13104,"Conchalí",-33.3862,-70.6727,131, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5103,"Concón",-32.9305,-71.5191,51, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(7102,"Constitución",-35.3309,-72.4139,71, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(8204,"Contulmo",-38.026,-73.2581,82, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(3101,"Copiapó",-27.3654,-70.3314,31, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(4102,"Coquimbo",-29.968,-71.337,41, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(8102,"Coronel",-37.0265,-73.1498,81, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(14102,"Corral",-39.8892,-73.433,141, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(9103,"Cunco",-38.9307,-72.0264,91, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(9203,"Curacautín",-38.4317,-71.8898,92, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13503,"Curacaví",-33.4063,-71.1333,135, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(10204,"Curaco de Vélez",-42.4404,-73.6037,102, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(8205,"Curanilahue",-37.4759,-73.353,82, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(9104,"Curarrehue",-39.3592,-71.5881,91, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(7103,"Curepto",-35.091,-72.0216,71, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(7301,"Curicó",-34.9756,-71.2235,73, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(10205,"Dalcahue",-42.3776,-73.6521,102, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(3202,"Diego de Almagro",-26.3771,-70.0488,32, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(6105,"Doñihue",-34.2024,-70.9325,61, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13105,"El Bosque",-33.5638,-70.6714,131, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(16104,"El Carmen",-36.8964,-72.0218,161, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13602,"El Monte",-33.6662,-71.0294,136, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5604,"El Quisco",-33.4156,-71.6556,56, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5605,"El Tabo",-33.4847,-71.5862,56, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(7104,"Empedrado",-35.6213,-72.2473,71, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(9204,"Ercilla",-38.0587,-72.358,92, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13106,"Estación Central",-33.4503,-70.6751,131, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(8104,"Florida",-36.8209,-72.6621,81, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(9105,"Freire",-38.9538,-72.6219,91, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(3303,"Freirina",-28.5001,-71.076,33, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(10104,"Fresia",-41.1542,-73.4224,101, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(10105,"Frutillar",-41.1167,-73.05,101, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(10402,"Futaleufú",-43.1859,-71.8666,104, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(14202,"Futrono",-40.1243,-72.393,142, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(9106,"Galvarino",-38.4085,-72.7804,91, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(15202,"General Lagos",-17.8324,-69.6094,152, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(9107,"Gorbea",-39.0948,-72.6722,91, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(6106,"Graneros",-34.0709,-70.7501,61, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(11203,"Guaitecas",-43.8781,-73.7485,112, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5503,"Hijuelas",-32.8671,-71.0929,55, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(10403,"Hualaihué",-42.0967,-72.4044,104, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(7302,"Hualañé",-34.9762,-71.8043,73, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(8112,"Hualpén",-36.7827,-73.1454,81, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(8105,"Hualqui",-37.0145,-72.8662,81, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(01404,"Huara",-19.9963,-69.7718,14, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(3304,"Huasco",-28.4518,-71.2244,33, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13107,"Huechuraba",-33.3665,-70.6315,131, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(4201,"Illapel",-31.6242,-71.1626,42, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13108,"Independencia",-33.4196,-70.6627,131, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(01101,"Iquique",-20.2232,-70.1463,11, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13603,"Isla de Maipo",-33.7536,-70.8862,136, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5201,"Isla de Pascua",-27.1504,-109.423,52, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5104,"Juan Fernández",-33.6167,-78.8667,51, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13109,"La Cisterna",-33.538,-70.6612,131, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5504,"La Cruz",-32.8258,-71.2592,55, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(6202,"La Estrella",-34.2037,-71.6073,62, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13110,"La Florida",-33.5225,-70.5952,131, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13111,"La Granja",-33.5373,-70.6188,131, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(4104,"La Higuera",-29.497,-71.2656,41, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5401,"La Ligua",-32.449,-71.2309,54, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13112,"La Pintana",-33.5902,-70.6322,131, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13113,"La Reina",-33.4565,-70.5349,131, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(4101,"La Serena",-29.8966,-71.2422,41, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(14201,"La Unión",-40.2951,-73.0829,142, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(14203,"Lago Ranco",-40.312,-72.5002,142, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(11102,"Lago Verde",-44.2236,-71.8396,111, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(12102,"Laguna Blanca",-52.3001,-71.1612,121, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(8304,"Laja",-37.2768,-72.7171,83, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13302,"Lampa",-33.2863,-70.8789,133, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(14103,"Lanco",-39.4522,-72.7747,141, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(6107,"Las Cabras",-34.2945,-71.3066,61, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13114,"Las Condes",-33.4154,-70.5837,131, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(9108,"Lautaro",-38.5286,-72.427,91, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(8201,"Lebu",-37.6079,-73.6508,82, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(7303,"Licantén",-34.9591,-72.0269,73, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5802,"Limache",-33.0035,-71.2613,58, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(7401,"Linares",-35.8495,-71.585,74, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(6203,"Litueche",-34.1069,-71.7204,62, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5703,"Llaillay",-32.8899,-70.8942,57, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(10107,"Llanquihue",-41.2574,-73.0054,101, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13115,"Lo Barnechea",-33.2993,-70.3748,131, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13116,"Lo Espejo",-33.5247,-70.6916,131, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13117,"Lo Prado",-33.4489,-70.721,131, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(6304,"Lolol",-34.7689,-71.6453,63, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(9109,"Loncoche",-39.3681,-72.6315,91, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(7403,"Longaví",-35.9657,-71.6816,74, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(9205,"Lonquimay",-38.4501,-71.374,92, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(8206,"Los álamos",-37.6747,-73.3896,82, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5301,"Los Andes",-32.8347,-70.5971,53, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(8301,"Los ángeles",-37.473,-72.3507,83, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(14104,"Los Lagos",-39.8636,-72.8124,141, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(10106,"Los Muermos",-41.3997,-73.4651,101, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(9206,"Los Sauces",-37.9754,-72.8288,92, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(4203,"Los Vilos",-31.9157,-71.5107,42, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(8106,"Lota",-37.0906,-73.1547,81, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(9207,"Lumaco",-38.1636,-72.8918,92, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(6108,"Machalí",-34.2938,-70.3371,61, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13118,"Macul",-33.492,-70.5968,131, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(14105,"Máfil",-39.6654,-72.9575,141, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13119,"Maipú",-33.5213,-70.7572,131, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(6109,"Malloa",-34.4455,-70.9449,61, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(6204,"Marchihue",-34.3979,-71.6144,62, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(2302,"María Elena",-22.1639,-69.4171,23, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13504,"María Pinto",-33.5154,-71.1191,135, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(14106,"Mariquina",-39.5399,-72.9621,141, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(7105,"Maule",-35.5057,-71.7069,71, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(10108,"Maullín",-41.6172,-73.5956,101, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(2102,"Mejillones",-23.0962,-70.4498,21, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(9110,"Melipeuco",-38.8429,-71.6871,91, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13501,"Melipilla",-33.6866,-71.2139,135, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(7304,"Molina",-35.0896,-71.2788,73, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(4303,"Monte Patria",-30.8291,-70.6984,43, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(6110,"Mostazal",-33.9772,-70.7092,61, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(8305,"Mulchén",-37.7147,-72.2394,83, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(8306,"Nacimiento",-37.5011,-72.6763,83, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(6305,"Nancagua",-34.6615,-71.1749,63, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(12401,"Natales",-51.7219,-72.5208,124, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(6205,"Navidad",-34.0068,-71.8101,62, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(8307,"Negrete",-37.5974,-72.5646,83, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(16204,"Ninhue",-36.4011,-72.397,162, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(16303,"Ñiquén",-36.2848,-71.8994,163, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5506,"Nogales",-32.6923,-71.1894,55, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(9111,"Nueva Imperial",-38.7445,-72.9482,91, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13120,"Ñuñoa",-33.4607,-70.5927,131, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(6111,"Olivar",-34.2186,-70.8355,61, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(2202,"Ollagüe",-21.2238,-68.2529,22, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5803,"Olmué",-33.0132,-71.1525,58, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(10301,"Osorno",-40.5747,-73.1319,103, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(4301,"Ovalle",-30.5942,-71.1983,43, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(11302,"O'Higgins",-48.4643,-72.5613,113, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13604,"Padre Hurtado",-33.5761,-70.8003,136, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(9112,"Padre las Casas",-38.7658,-72.5929,91, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(4105,"Paiguano",-30.2496,-70.3832,41, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(14107,"Paillaco",-40.0707,-72.8708,141, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13404,"Paine",-33.8673,-70.7303,134, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(10404,"Palena",-43.6162,-71.8176,104, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(6306,"Palmilla",-34.6042,-71.3583,63, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(14108,"Panguipulli",-39.6436,-72.3365,141, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5704,"Panquehue",-32.8079,-70.8428,57, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5403,"Papudo",-32.4699,-71.3842,54, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(6206,"Paredones",-34.6972,-71.8978,62, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(7404,"Parral",-36.14,-71.8244,74, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13121,"Pedro Aguirre Cerda",-33.4891,-70.6729,131, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(7106,"Pelarco",-35.3723,-71.3278,71, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(7203,"Pelluhue",-35.8145,-72.5736,72, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(16105,"Pemuco",-36.9865,-72.0191,161, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13605,"Peñaflor",-33.6141,-70.8876,136, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13122,"Peñalolén",-33.4904,-70.5105,131, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(7107,"Pencahue",-35.3051,-71.8284,71, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(8107,"Penco",-36.7423,-72.998,81, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(6307,"Peralillo",-34.4593,-71.5,63, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(9113,"Perquenco",-38.4154,-72.3725,91, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5404,"Petorca",-32.1965,-70.8318,54, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(6112,"Peumo",-34.3798,-71.1687,61, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(01405,"Pica",-20.4889,-69.3289,14, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(6113,"Pichidegua",-34.3758,-71.3469,61, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(6201,"Pichilemu",-34.3869,-72.0032,62, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(16106,"Pinto",-36.6978,-71.8934,161, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13202,"Pirque",-33.7384,-70.4914,132, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(9114,"Pitrufquén",-38.9829,-72.6429,91, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(6308,"Placilla",-34.6135,-71.0951,63, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(16205,"Portezuelo",-36.529,-72.433,162, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(12301,"Porvenir",-53.2898,-70.3633,123, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(01401,"Pozo Almonte",-20.2532,-69.7848,14, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(12302,"Primavera",-52.7122,-69.2496,123, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13123,"Providencia",-33.4214,-70.6033,131, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5105,"Puchuncaví",-32.7499,-71.396,51, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(9115,"Pucón",-39.2824,-71.9545,91, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13124,"Pudahuel",-33.4184,-70.8324,131, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13201,"Puente Alto",-33.6079,-70.5778,132, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(10101,"Puerto Montt",-41.4633,-72.9314,101, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(10302,"Puerto Octay",-40.9755,-72.8833,103, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(10109,"Puerto Varas",-41.316,-72.9836,101, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(6309,"Pumanque",-34.6052,-71.6443,63, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(4304,"Punitaqui",-30.8256,-71.2585,43, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(12101,"Punta Arenas",-53.1641,-70.9305,121, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(10206,"Puqueldón",-42.6015,-73.6714,102, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(9208,"Purén",-38.0326,-73.0728,92, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(10303,"Purranque",-40.9085,-73.1653,103, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5705,"Putaendo",-32.6279,-70.7165,57, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(15201,"Putre",-18.1798,-69.5544,152, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(10304,"Puyehue",-40.6806,-72.599,103, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(10207,"Queilén",-42.9001,-73.4827,102, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(10208,"Quellón",-43.1156,-73.6172,102, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(10209,"Quemchi",-42.1426,-73.475,102, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(8308,"Quilaco",-37.6799,-72.0074,83, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13125,"Quilicura",-33.3551,-70.7278,131, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(8309,"Quilleco",-37.4335,-71.8761,83, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(16107,"Quillón",-36.7383,-72.469,161, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5501,"Quillota",-32.8793,-71.2508,55, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5801,"Quilpué",-33.0492,-71.4435,58, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(10210,"Quinchao",-42.472,-73.4898,102, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(6114,"Quinta de Tilcoco",-34.367,-71.0096,61, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13126,"Quinta Normal",-33.428,-70.6964,131, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5107,"Quintero",-32.7872,-71.5274,51, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(16201,"Quirihue",-36.2839,-72.5414,162, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(6101,"Rancagua",-34.162,-70.741,61, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(16206,"Ránquil",-36.6485,-72.6064,162, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(7305,"Rauco",-34.9295,-71.3111,73, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13127,"Recoleta",-33.4173,-70.6303,131, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(9209,"Renaico",-37.6654,-72.5687,92, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13128,"Renca",-33.4141,-70.7129,131, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(6115,"Rengo",-34.4017,-70.8561,61, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(6116,"Requínoa",-34.3533,-70.6797,61, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(7405,"Retiro",-36.0458,-71.7591,74, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5303,"Rinconada",-32.8765,-70.7085,53, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(14204,"Río Bueno",-40.333,-72.9513,142, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(7108,"Río Claro",-35.2827,-71.2665,71, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(4305,"Río Hurtado",-30.2603,-70.6668,43, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(11402,"Río Ibáñez",-46.2938,-71.9357,114, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(10305,"Río Negro",-40.7829,-73.2319,103, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(12103,"Río Verde",-52.5814,-71.5128,121, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(7306,"Romeral",-34.9634,-71.1205,73, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(9116,"Saavedra",-38.7803,-73.3897,91, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(7307,"Sagrada Familia",-34.9949,-71.3798,73, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(4204,"Salamanca",-31.7737,-70.9717,42, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5601,"San Antonio",-33.5812,-71.613,56, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13401,"San Bernardo",-33.5913,-70.702,134, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(16301,"San Carlos",-36.4221,-71.9594,163, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(7109,"San Clemente",-35.534,-71.4865,71, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5304,"San Esteban",-32.693,-70.3703,53, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(16304,"San Fabián",-36.5538,-71.5487,163, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5701,"San Felipe",-32.7464,-70.7489,57, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(6301,"San Fernando",-34.584,-70.9874,63, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(12104,"San Gregorio",-52.3135,-69.6842,121, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(16108,"San Ignacio",-36.8186,-71.9883,161, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(7406,"San Javier",-35.6035,-71.7362,74, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13129,"San Joaquín",-33.4961,-70.6245,131, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13203,"San José de Maipo",-33.6921,-70.1325,132, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(10306,"San Juan de la Costa",-40.5156,-73.3997,103, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13130,"San Miguel",-33.5017,-70.6489,131, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(16305,"San Nicolás",-36.4996,-72.2126,163, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(10307,"San Pablo",-40.4118,-73.0102,103, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13505,"San Pedro",-33.8779,-71.4609,135, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(2203,"San Pedro de Atacama",-22.9157,-68.2004,22, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(8108,"San Pedro de la Paz",-36.8635,-73.1085,81, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(7110,"San Rafael",-35.2942,-71.5254,71, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13131,"San Ramón",-33.5349,-70.6392,131, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(8310,"San Rosendo",-37.2021,-72.748,83, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(6117,"San Vicente",-34.4381,-71.0792,61, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(8311,"Santa Bárbara",-37.6627,-72.0184,83, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(6310,"Santa Cruz",-34.6383,-71.367,63, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(8109,"Santa Juana",-37.1726,-72.9352,81, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5706,"Santa María",-32.7446,-70.654,57, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13101,"Santiago Centro",-33.4417,-70.6541,131, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5606,"Santo Domingo",-33.7076,-71.6301,56, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(2103,"Sierra Gorda",-22.8921,-69.3203,21, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13601,"Talagante",-33.6643,-70.9296,136, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(7101,"Talca",-35.4288,-71.6607,71, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(8110,"Talcahuano",-36.7364,-73.1047,81, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(2104,"Taltal",-25.4054,-70.4826,21, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(9101,"Temuco",-38.7362,-72.5989,91, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(7308,"Teno",-34.8701,-71.0895,73, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(9117,"Teodoro Schmidt",-38.9989,-73.093,91, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(3103,"Tierra Amarilla",-27.4877,-70.2696,31, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13303,"Tiltil",-33.0655,-70.8465,133, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(12303,"Timaukel",-54.2877,-69.1644,123, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(8207,"Tirúa",-38.3315,-73.3794,82, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(2301,"Tocopilla",-22.0858,-70.193,23, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(9118,"Toltén",-39.2022,-73.2004,91, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(8111,"Tomé",-36.6177,-72.9579,81, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(12402,"Torres del Paine",-50.9896,-73.0893,124, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(11303,"Tortel",-47.8242,-73.5645,113, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(9210,"Traiguén",-38.2509,-72.6647,92, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(16207,"Treguaco",-36.4095,-72.6603,162, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(8312,"Tucapel",-37.2901,-71.9491,83, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(14101,"Valdivia",-39.8201,-73.2457,141, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(3301,"Vallenar",-28.5777,-70.7566,33, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5101,"Valparaíso",-33.0436,-71.6231,51, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(7309,"Vichuquén",-34.8594,-72.0074,73, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(9211,"Victoria",-38.2336,-72.3329,92, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(4106,"Vicuña",-30.0287,-70.7108,41, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(9119,"Vilcún",-38.6701,-72.2238,91, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(7407,"Villa Alegre",-35.6868,-71.6704,74, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5804,"Villa Alemana",-33.0429,-71.3724,58, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(9120,"Villarrica",-39.2803,-72.2182,91, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5109,"Viña del Mar",-33.0445,-71.5224,51, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(13132,"Vitacura",-33.3863,-70.5698,131, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(7408,"Yerbas Buenas",-35.6882,-71.5636,74, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(8313,"Yumbel",-37.0964,-72.5562,83, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(16109,"Yungay",-37.122,-72.0132,161, now());
INSERT INTO communes_towns (id, name, latitude, longitude, provinces_townships_id, created_at) VALUES(5405,"Zapallar",-32.5933,-71.3686,54, now());