CREATE TABLE public.sys_stores (
	id int8 NOT NULL,
	"name" varchar(500) NOT NULL,
	date_updated timestamp NOT NULL,
	active int4 NOT NULL DEFAULT 1,
	store_type varchar(1) NOT NULL,
	CONSTRAINT sys_stores_pkey PRIMARY KEY (id)
);
INSERT INTO public.sys_stores (id,"name",date_updated,active,store_type) VALUES 
(95,'0.837200548499823','2020-07-16 06:21:39.539',1,'1')
,(94,'0.89638842176646','2020-07-16 06:21:39.539',1,'1')
,(93,'0.522015844006091','2020-07-16 06:21:39.539',1,'1')
,(92,'0.981999666895717','2020-07-16 06:21:39.539',1,'1')
,(91,'0.860317185055465','2020-07-16 06:21:39.539',1,'1')
,(90,'0.0940366457216442','2020-07-16 06:21:39.539',1,'1')
;


CREATE TABLE public.sys_users (
	id varchar(40) NOT NULL,
	user_created varchar(40) NOT NULL,
	"name" varchar(100) NOT NULL,
	"password" varchar(500) NULL,
	photo bytea NULL,
	change_password int4 NOT NULL DEFAULT 1,
	email varchar(200) NULL,
	isadmin int4 NOT NULL DEFAULT 1,
	date_updated timestamp NOT NULL,
	active int4 NOT NULL DEFAULT 1,
	store_id int8 NOT NULL,
	CONSTRAINT sys_users_pkey PRIMARY KEY (id),
	CONSTRAINT sys_users_unique_email UNIQUE (email),
	CONSTRAINT sys_stores_sys_users FOREIGN KEY (store_id) REFERENCES sys_stores(id) ON UPDATE RESTRICT ON DELETE RESTRICT
);
CREATE INDEX fk_sys_stores_sys_users ON public.sys_users USING btree (store_id);
INSERT INTO public.sys_users (id,user_created,"name","password",photo,change_password,email,isadmin,date_updated,active,store_id) VALUES 
('434204','1','0.290598300751299','$2b$11$K/kxWOmL0ukJrFZvMbBHlO0YT2jv/2Tss6O7nNY9TgqCPyXYKsZIO',NULL,1,'434204@zonesoft.org',1,'2020-07-16 07:22:38.568',1,95)
,('491015','1','0.00717520108446479','$2b$11$K/kxWOmL0ukJrFZvMbBHlO0YT2jv/2Tss6O7nNY9TgqCPyXYKsZIO',NULL,1,'491015@zonesoft.org',1,'2020-07-16 07:22:38.568',1,93)
,('492818','1','0.432072543539107','$2b$11$K/kxWOmL0ukJrFZvMbBHlO0YT2jv/2Tss6O7nNY9TgqCPyXYKsZIO',NULL,1,'492818@zonesoft.org',1,'2020-07-16 07:22:38.568',1,93)
,('453664','1','0.853666870389134','$2b$11$K/kxWOmL0ukJrFZvMbBHlO0YT2jv/2Tss6O7nNY9TgqCPyXYKsZIO',NULL,1,'453664@zonesoft.org',1,'2020-07-16 07:22:38.568',1,93)
,('94143','1','0.232730551622808','$2b$11$K/kxWOmL0ukJrFZvMbBHlO0YT2jv/2Tss6O7nNY9TgqCPyXYKsZIO',NULL,1,'94143@zonesoft.org',1,'2020-07-16 07:22:38.568',1,91)
,('494466','1','0.954361299984157','$2b$11$K/kxWOmL0ukJrFZvMbBHlO0YT2jv/2Tss6O7nNY9TgqCPyXYKsZIO',NULL,1,'494466@zonesoft.org',1,'2020-07-16 07:22:38.568',1,92)
,('96784','1','0.734563007485121','$2b$11$K/kxWOmL0ukJrFZvMbBHlO0YT2jv/2Tss6O7nNY9TgqCPyXYKsZIO',NULL,1,'96784@zonesoft.org',1,'2020-07-16 07:22:38.568',1,93)
,('438287','1','0.551174749620259','$2b$11$K/kxWOmL0ukJrFZvMbBHlO0YT2jv/2Tss6O7nNY9TgqCPyXYKsZIO',NULL,1,'438287@zonesoft.org',1,'2020-07-16 07:22:38.568',1,95)
,('7086','1','0.989703394472599','$2b$11$K/kxWOmL0ukJrFZvMbBHlO0YT2jv/2Tss6O7nNY9TgqCPyXYKsZIO',NULL,1,'7086@zonesoft.org',1,'2020-07-16 07:22:38.568',1,91)
,('76523','1','0.086285313591361','$2b$11$K/kxWOmL0ukJrFZvMbBHlO0YT2jv/2Tss6O7nNY9TgqCPyXYKsZIO',NULL,1,'76523@zonesoft.org',1,'2020-07-16 07:22:38.568',1,93)
;