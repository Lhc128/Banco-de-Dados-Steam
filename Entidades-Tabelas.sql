CREATE TABLE  Jogo
(
JogoID						VARCHAR(30)			NOT NULL,
Pre�oJogo					FLOAT				NOT NULL,
Descri��o					VARCHAR (300)		NOT NULL,
NomeJogo					VARCHAR (30)		NOT NULL,
DataDeLan�amento			DATE				NOT NULL,
Requisitos					VARCHAR (30)		NOT NULL,
Classifica��oIndicativa		INT					NOT NULL,
An�liseRecente				VARCHAR(300)		NOT NULL,
An�liseGeral				VARCHAR(300)		NOT NULL,
PRIMARY KEY (JogoID) 
);

CREATE TABLE Empresa
(
EmpresaID VARCHAR (30) NOT NULL,
NomeEmpresa VARCHAR (30) NOT NULL,
NumSeguidores INT,
PRIMARY KEY (EmpresaID)
);

CREATE TABLE ItemJogo
(
ItemID				VARCHAR (30)		NOT NULL,
ValorItem			INT					NOT NULL,
NomeItem			VARCHAR (30)		NOT NULL,
PRIMARY KEY (ItemID)
);

CREATE TABLE Not�cia
(
Not�ciaID					VARCHAR (30)		NOT NULL,
Assunto						VARCHAR (30)		NOT NULL,
Not�ciaAssunto				VARCHAR (30)		NOT NULL,
NumIntera��es				INT					NOT NULL,
DataPublica��o				DATE				NOT NULL
PRIMARY KEY (Not�ciaID)
);

CREATE TABLE Avalia��o
(
Avalia��oConte�do			VARCHAR(30)			NOT NULL,
DataAvalia��o				DATE				NOT NULL,
Intera��esPositivas			INT,
Intera��esNegativas			INT
);

CREATE TABLE AQUISI��O
(
Aquisi��oID				VARCHAR(30)			NOT NULL,
Pre�oAquisi��o			FLOAT				NOT NULL,
DataAquisi��o			DATE				NOT NULL,
Desconto				FLOAT,
PRIMARY KEY (Aquisi��oID)
)

CREATE TABLE G�nero
(
G�neroID		VARCHAR(30)		NOT NULL,
G�neroNome		VARCHAR(30)		NOT NULL,
PRIMARY KEY (G�neroID)

)