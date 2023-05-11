BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "pessoa " (
	"cpf"	INTEGER,
	"nome"	TEXT,
	"cargo"	TEXT,
	PRIMARY KEY("cpf" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "personalidade" (
	"cpf"	INTEGER,
	"descrição "	TEXT,
	"ref"	TEXT,
	PRIMARY KEY("cpf"),
	FOREIGN KEY("ref") REFERENCES "informações"("cpf")
);
CREATE TABLE IF NOT EXISTS "habilidade" (
	"cpf"	INTEGER,
	"descrição"	TEXT,
	"ref"	BLOB,
	PRIMARY KEY("cpf"),
	FOREIGN KEY("ref") REFERENCES "informações"("cpf")
);
CREATE TABLE IF NOT EXISTS "formação" (
	"cpf"	INTEGER,
	"diploma"	TEXT,
	"curso"	NUMERIC,
	"ano"	NUMERIC,
	"instituição"	TEXT,
	"ref"	TEXT,
	PRIMARY KEY("cpf"),
	FOREIGN KEY("ref") REFERENCES "pessoa"("cpf")
);
CREATE TABLE IF NOT EXISTS "realizações" (
	"cpf"	INTEGER,
	"data"	NUMERIC,
	"descrição"	TEXT,
	""	INTEGER,
	"ref"	TEXT,
	PRIMARY KEY("cpf"),
	FOREIGN KEY("ref") REFERENCES "pessoa"("cpf")
);
CREATE TABLE IF NOT EXISTS "experiência" (
	"nome"	INTEGER,
	"empresa"	TEXT,
	"ano"	TEXT,
	"cargo"	TEXT,
	"ref"	TEXT,
	PRIMARY KEY("nome"),
	FOREIGN KEY("ref") REFERENCES "pessoa"("cpf")
);
CREATE TABLE IF NOT EXISTS "informações" (
	"cpf"	INTEGER,
	"endereço"	TEXT,
	"telefone"	INTEGER,
	"email"	TEXT,
	"ref"	INTEGER,
	PRIMARY KEY("cpf"),
	FOREIGN KEY("ref") REFERENCES "pessoa"("cpf")
);
COMMIT;
