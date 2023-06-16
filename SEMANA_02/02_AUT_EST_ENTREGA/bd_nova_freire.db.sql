BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "registro" (
	"id_registro"	INTEGER NOT NULL,
	"id_turma"	INTEGER NOT NULL,
	"id_aluno"	INTEGER NOT NULL,
	FOREIGN KEY("id_aluno") REFERENCES "aluno"("id_aluno"),
	FOREIGN KEY("id_turma") REFERENCES "turma"("id_turma"),
	PRIMARY KEY("id_registro" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "desempenho" (
	"id_desempenho"	INTEGER NOT NULL,
	"valor_desempenho"	INTEGER NOT NULL,
	"id_aluno"	INTEGER NOT NULL,
	"id_habilidade"	INTEGER NOT NULL,
	FOREIGN KEY("id_habilidade") REFERENCES "habilidade"("id_habilidade"),
	FOREIGN KEY("id_aluno") REFERENCES "aluno"("id_aluno"),
	PRIMARY KEY("id_desempenho" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "professor" (
	"id_professor"	INTEGER NOT NULL,
	"nome_professor"	TEXT,
	"email"	TEXT,
	"senha"	INTEGER,
	"cargo"	TEXT,
	"celular"	INTEGER,
	"cep"	INTEGER,
	"idade"	INTEGER,
	PRIMARY KEY("id_professor" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "alocacao" (
	"id_alocacao"	INTEGER NOT NULL,
	"id_professor"	INTEGER NOT NULL,
	"id_escola"	INTEGER NOT NULL,
	"id_turma"	INTEGER NOT NULL,
	FOREIGN KEY("id_turma") REFERENCES "turma"("id_turma"),
	FOREIGN KEY("id_escola") REFERENCES "escola"("id_escola"),
	FOREIGN KEY("id_professor") REFERENCES "professor"("id_professor"),
	PRIMARY KEY("id_alocacao" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "habilidade" (
	"id_habilidade"	INTEGER NOT NULL,
	"tipo_habilidade"	TEXT NOT NULL,
	"ano_habilidade"	INTEGER NOT NULL,
	PRIMARY KEY("id_habilidade" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "questao_habilidade" (
	"id_questao"	INTEGER NOT NULL,
	"id_habilidade"	INTEGER NOT NULL,
	"id_questao_habilidade"	INTEGER NOT NULL,
	FOREIGN KEY("id_habilidade") REFERENCES "habilidade"("id_habilidade"),
	FOREIGN KEY("id_questao") REFERENCES "questao"("id_questao"),
	PRIMARY KEY("id_questao_habilidade")
);
CREATE TABLE IF NOT EXISTS "nota" (
	"id_nota"	INTEGER NOT NULL,
	"valor_nota"	INTEGER NOT NULL,
	"id_aluno"	INTEGER NOT NULL,
	"id_questao"	INTEGER NOT NULL,
	FOREIGN KEY("id_aluno") REFERENCES "aluno"("id_aluno"),
	FOREIGN KEY("id_questao") REFERENCES "questao"("id_questao"),
	PRIMARY KEY("id_nota" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "escola" (
	"id_escola"	INTEGER NOT NULL,
	"nome_escola"	TEXT NOT NULL,
	PRIMARY KEY("id_escola" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "turma" (
	"id_turma"	INTEGER NOT NULL,
	"nome_turma"	TEXT NOT NULL,
	"ano_turma"	INTEGER NOT NULL,
	PRIMARY KEY("id_turma" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "aluno" (
	"id_aluno"	INTEGER NOT NULL,
	"nome_aluno"	TEXT NOT NULL,
	PRIMARY KEY("id_aluno" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "avaliacao" (
	"id_avaliacao"	INTEGER NOT NULL,
	"id_turma"	INTEGER NOT NULL,
	"nome_avaliacao"	TEXT NOT NULL,
	"data"	INTEGER NOT NULL,
	FOREIGN KEY("id_turma") REFERENCES "turma"("id_turma"),
	PRIMARY KEY("id_avaliacao" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "questao" (
	"id_questao"	INTEGER NOT NULL,
	"id_avaliacao"	INTEGER,
	"numero"	INTEGER NOT NULL,
	FOREIGN KEY("id_avaliacao") REFERENCES "avaliacao"("id_avaliacao"),
	PRIMARY KEY("id_questao" AUTOINCREMENT)
);
INSERT INTO "registro" VALUES (1,1,3);
INSERT INTO "registro" VALUES (2,2,5);
INSERT INTO "registro" VALUES (3,1,6);
INSERT INTO "registro" VALUES (4,3,7);
INSERT INTO "registro" VALUES (5,1,8);
INSERT INTO "registro" VALUES (6,1,9);
INSERT INTO "professor" VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "professor" VALUES (2,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "professor" VALUES (3,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "professor" VALUES (4,NULL,'teste@teste.com',1234,NULL,NULL,NULL,NULL);
INSERT INTO "professor" VALUES (5,NULL,'teste@teste.com',1234,NULL,NULL,NULL,NULL);
INSERT INTO "professor" VALUES (6,'João Nunes Nogueira','joaonunesnogueira432@gmail.com','@joao*43243','Professor',1198760665,23443234,48);
INSERT INTO "professor" VALUES (7,'Pedro Souza','pedrosouza.nyrt@gmail.com','pedro#487','Professor',119876565,64787896,61);
INSERT INTO "professor" VALUES (8,'Maria Célia de Almeida','maria.almeida@gmail.com','@minhasenha04349','Professor',119854399,89432092,41);
INSERT INTO "professor" VALUES (9,'Maria Célia de Almeida','maria.almeida@gmail.com','@minhasenha04349','Professor',119854399,89432092,41);
INSERT INTO "habilidade" VALUES (1,'EF05MA1',5);
INSERT INTO "habilidade" VALUES (2,'EF05MA2',5);
INSERT INTO "habilidade" VALUES (3,'EF05MA3',5);
INSERT INTO "habilidade" VALUES (4,'EF05MA4',5);
INSERT INTO "habilidade" VALUES (5,'EF05MA5',5);
INSERT INTO "habilidade" VALUES (6,'EF05MA6',5);
INSERT INTO "habilidade" VALUES (7,'EF05MA7',5);
INSERT INTO "habilidade" VALUES (8,'EF05MA8',5);
INSERT INTO "habilidade" VALUES (9,'EF05MA9',5);
INSERT INTO "habilidade" VALUES (10,'EF05MA10',5);
INSERT INTO "habilidade" VALUES (11,'EF05MA11',5);
INSERT INTO "habilidade" VALUES (12,'EF05MA12',5);
INSERT INTO "habilidade" VALUES (13,'EF05MA13',5);
INSERT INTO "habilidade" VALUES (14,'EF05MA14',5);
INSERT INTO "habilidade" VALUES (15,'EF05MA15',5);
INSERT INTO "habilidade" VALUES (16,'EF05MA16',5);
INSERT INTO "habilidade" VALUES (17,'EF05MA17',5);
INSERT INTO "habilidade" VALUES (18,'EF05MA18',5);
INSERT INTO "habilidade" VALUES (19,'EF05MA19',5);
INSERT INTO "habilidade" VALUES (20,'EF05MA20',5);
INSERT INTO "habilidade" VALUES (21,'EF05MA21',5);
INSERT INTO "habilidade" VALUES (22,'EF05MA22',5);
INSERT INTO "habilidade" VALUES (23,'EF05MA23',5);
INSERT INTO "habilidade" VALUES (24,'EF05MA24',5);
INSERT INTO "habilidade" VALUES (25,'EF05MA25',5);
INSERT INTO "questao_habilidade" VALUES (1,11,1);
INSERT INTO "questao_habilidade" VALUES (1,9,2);
INSERT INTO "questao_habilidade" VALUES (2,4,3);
INSERT INTO "questao_habilidade" VALUES (3,5,4);
INSERT INTO "questao_habilidade" VALUES (4,1,5);
INSERT INTO "questao_habilidade" VALUES (4,2,6);
INSERT INTO "questao_habilidade" VALUES (5,10,7);
INSERT INTO "nota" VALUES (1,8,3,1);
INSERT INTO "nota" VALUES (2,9,6,1);
INSERT INTO "nota" VALUES (3,6,3,2);
INSERT INTO "nota" VALUES (4,5,6,2);
INSERT INTO "nota" VALUES (5,10,3,3);
INSERT INTO "nota" VALUES (6,9,6,3);
INSERT INTO "nota" VALUES (7,3,3,4);
INSERT INTO "nota" VALUES (8,2,6,4);
INSERT INTO "nota" VALUES (9,1,3,5);
INSERT INTO "nota" VALUES (10,5,6,5);
INSERT INTO "turma" VALUES (1,'5A',5);
INSERT INTO "turma" VALUES (2,'5B',5);
INSERT INTO "turma" VALUES (3,'5C',5);
INSERT INTO "aluno" VALUES (3,'Gabriela Martins');
INSERT INTO "aluno" VALUES (5,'João Oliveira');
INSERT INTO "aluno" VALUES (6,'Maria Santos');
INSERT INTO "aluno" VALUES (7,'Pedro Silva');
INSERT INTO "aluno" VALUES (8,'Carlos Junior');
INSERT INTO "aluno" VALUES (9,'Antonio França');
INSERT INTO "avaliacao" VALUES (1,1,'Avaliação 1','05/06/23');
INSERT INTO "avaliacao" VALUES (2,1,'Avaliação 2','11/06/23');
INSERT INTO "avaliacao" VALUES (3,1,'Avaliação 3','13/06/23');
INSERT INTO "avaliacao" VALUES (4,1,'Avaliação 4','15/06/23');
INSERT INTO "questao" VALUES (1,1,1);
INSERT INTO "questao" VALUES (2,1,2);
INSERT INTO "questao" VALUES (3,2,1);
INSERT INTO "questao" VALUES (4,3,1);
INSERT INTO "questao" VALUES (5,4,0);
COMMIT;
