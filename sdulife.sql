SQLite format 3   @                                                                             �    �� {
� �!!�ctableauth_groupauth_groupCREATE TABLE "auth_group" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(80) NOT NULL UNIQUE
)3G! indexsqlite_autoindex_auth_group_1auth_group�99�Utableauth_group_permissionsauth_group_permissionsCREATE TABLE "auth_group_permissions" (
    "id" integer NOT NULL PRIMARY KEY,
    "group_id" integer NOT NULL,
    "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"),
    UNIQUE ("group_id", "permission_id")
)K_9 indexsqlite_autoindex_auth_group_permissions_1auth_group_permissions�++�Stableauth_permissionauth_permissionCREATE TABLE "auth_permission" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(50) NOT NULL,
    "content_type_id" integer NOT NULL,
    "codename" varchar(100) NOT NULL,
    UNIQUE ("content_type_id", "codename")
)=Q+ indexsqlite_autoindex_auth_permission_1auth_permi   
   
   B ��|^:���g?����kB                                                                                                                                                                                                                                                                                      ' 3)Can delete sd udentdelete_sdudent' 3)Can change sd udentchange_sdudent! -#Can add sd udentadd_sdudent  +#Can delete sitedelete_site  +#Can change sitechange_site %Can add siteadd_site& 1)Can delete sessiondelete_session& 1)Can change sessionchange_session 
 +#Can add sessionadd_session/	 ;1Can delete content typedelete_contenttype/ ;1Can change content typechange_contenttype) 5+Can add content typeadd_contenttype" -%Can delete groupdelete_group" -%Can change groupchange_group 'Can add groupadd_group, 7/Can delete permissiondelete_permission, 7/Can change permissionchange_permission& 1)Can add permissionadd_permission
   � ������oV=+������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      )delete_sdudent)change_sdudent#add_sdudent#delete_site#change_siteadd_site)delete_session)change_session#add_session
1delete_contenttype	1change_contenttype+add_contenttype%delete_group%change_groupadd_group/delete_permission/change_permission)add_permission                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 T ����qT                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 sd udentsdulifesdudent sitesitessite sessionsessionssession( %%#content typecontenttypescontenttype groupauthgroup !!permissionauthpermission
   � ������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    sdulifesdudentsitessitesessionssession%#contenttypescontenttypeauthgroup!authpermission    �  ��$q���!!�ctableauth_groupauth�++�Stableauth_permissionauth_permissionCREATE TABLE "auth_permission" (
    "id" integer NOT NULL PRIMARY KEY,
    "name"�++�Stableauth_permissionauth_permissionCREATE TABLE "auth_permission" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(50) NOT NULL,
    "content_type_id" integer NOT NULL,
    "codename" varchar(100) NOT NULL,
    UNIQUE ("content_type_id", "codename")
)=Q+ indexsqlite_autoindex_auth_permission_1auth_permission�99�Utableauth_group_permissionsauth_group_permissionsCREATE TABLE "auth_group_permissions" (
    "id" integer NOT NULL PRIMARY KEY,
    "group_id" integer NOT NULL,
    "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"),
    UNIQUE ("group_id", "permission_id")
)K_9 indexsqlite_autoindex_auth_group_permissions_1auth_group_permissions�!!�ctableauth_groupauth_groupCREATE TABLE "auth_group" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(80) NOT NULL UNIQUE
)   o o����Q } }                                                                                                     =Q+ indexsqlite_autoindex_sdulife_sdudent_1sdulife_sdudent   3G! indexsqlite_autoindex_auth_group_1auth_group�33�Ctabledjango_content_typedjango_content_typeCREATE TABLE "django_content_type" (
    "id" integer NOT NULL PRIMA3G! indexsqlite_autoindex_auth_group_1auth_group�33�Ctabledjango_content_typedjango_content_typeCREATE TABLE "django_content_type" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(100) NOT NULL,
    "app_label" varchar(100) NOT NULL,
    "model" varchar(100) NOT NULL,
    UNIQUE ("app_label", "model")
)EY3 indexsqlite_autoindex_django_content_type_1django_content_type	�D	))�Ctabledjango_sessiondjango_sessionCREATE TABLE "django_session" (
    "session_key" varchar(40) NOT NULL PRIMARY KEY,
    "session_data" text NOT NULL,
    "expire_date" datetime NOT NULL
);
O) indexsqlite_autoindex_django_session_1django_session                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  �,##�tabledjango_sitedjango_siteCREATE TABLE "django_site" (
    "id" integer NOT NULL PRIMARY KEY,
    "domain" varchar(100) NOT NULL,
    "name" varchar(50) NOT NULL
)�++�Utablesdulife_sdudentsdulife_sdudentCREATE TABLE "sdulife_sdudent" (
    "id" integer NOT NULL PRIMARY KEY,
    "password" varchar(128) NOT NULL,
    "last_login" datetime NOT NULL,
    "phone_number" varchar(10) NOT NULL,
    "email" varchar(75) NOT NULL UNIQUE
)=Q+ indexsqlite_autoindex_sdulife_sdudent_1sdulife_sdudent