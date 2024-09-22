USE portal_db;

CREATE TABLE `portal_users` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL UNIQUE,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL,
  `modified_at` timestamp NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE portal_roles (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL UNIQUE,
  `description` varchar(255) NULL,
  `created_at` timestamp NOT NULL,
  `modified_at` timestamp NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE portal_profiles (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL UNIQUE,
  `description` varchar(255) NULL,
  `created_at` timestamp NOT NULL,
  `modified_at` timestamp NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE portal_roles_profiles (
  `id_role` bigint(11) NOT NULL,
  `id_profile` bigint(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `modified_at` timestamp NULL,
  FOREIGN KEY (`id_role`) REFERENCES portal_roles(id),
  FOREIGN KEY (`id_profile`) REFERENCES portal_profiles(id),
  PRIMARY KEY (`id_role`, `id_profile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE portal_users_profiles (
  `id_user` bigint(11) NOT NULL,
  `id_profile` bigint(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `modified_at` timestamp NULL,
  FOREIGN KEY (`id_user`) REFERENCES portal_users(id),
  FOREIGN KEY (`id_profile`) REFERENCES portal_profiles(id),
  PRIMARY KEY (`id_user`, `id_profile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/* JSON API CHILE https://apis.digital.gob.cl/dpa/regiones */
CREATE TABLE regions_states (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  latitude  DECIMAL(9, 6),
  longitude DECIMAL(9, 6),
  `created_at` timestamp NOT NULL,
  `modified_at` timestamp NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/* JSON API CHILE https://apis.digital.gob.cl/dpa/provincias */
CREATE TABLE provinces_townships (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  latitude DECIMAL(9, 6),
  longitude DECIMAL(9, 6),
  regions_states_id INT,
  `created_at` timestamp NOT NULL,
  `modified_at` timestamp NULL,  
  FOREIGN KEY (regions_states_id) REFERENCES regions_states(id)  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/* JSON API CHILE https://apis.digital.gob.cl/dpa/comunas */
CREATE TABLE communes_towns (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  latitude DECIMAL(9, 6),
  longitude DECIMAL(9, 6),
  provinces_townships_id INT,
  `created_at` timestamp NOT NULL,
  `modified_at` timestamp NULL,  
  FOREIGN KEY (provinces_townships_id) REFERENCES provinces_townships(id) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
