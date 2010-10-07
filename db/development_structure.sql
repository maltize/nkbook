CREATE TABLE "feedbacks" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "username" varchar(255), "message" text, "status" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "profiles" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "login" varchar(255), "nk_id" varchar(255), "url" varchar(255), "email" varchar(255), "tos" boolean, "status" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "spots" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "profile_id" integer, "duration" integer, "position" integer, "valid_from" datetime, "valid_to" datetime, "status" integer, "created_at" datetime, "updated_at" datetime);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20101004212935');

INSERT INTO schema_migrations (version) VALUES ('20101004213055');

INSERT INTO schema_migrations (version) VALUES ('20101004213024');