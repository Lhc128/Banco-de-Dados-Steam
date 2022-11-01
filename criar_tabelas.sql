/*Criar tabelas do banco de dados da steam*/

CREATE TABLE Usuário
(
	UsuárioID VARCHAR(30) NOT NULL,
	NomePerfil VARCHAR(30) NOT NULL,
	NomeReal VARCHAR(30) NOT NULL,
	Município VARCHAR(30),
	Estado VARCHAR(30),
	País VARCHAR(30),
	FotoDePerfil VARCHAR(300),
	Resumo VARCHAR(300),
	PRIMARY KEY (UsuárioID)
);

CREATE TABLE Categoria
(
	CategoriaID VARCHAR(30) NOT NULL,
	NomeCategoria VARCHAR(30) NOT NULL,
	PRIMARY KEY (CategoriaID)
);

CREATE TABLE Conteúdo
(
	ConteúdoID VARCHAR(30) NOT NULL,
	ConteúdoTítulo VARCHAR(30) NOT NULL,
	ConteúdoTamanho VARCHAR(30) NOT NULL,
	NumVisualizações VARCHAR(300),
	PRIMARY KEY (ConteúdoID)
);

CREATE TABLE Curte
(
	UsuárioID VARCHAR(30) NOT NULL,
	ConteúdoID VARCHAR(30) NOT NULL,
	PRIMARY KEY (UsuárioID, ConteúdoID),
	FOREIGN KEY (UsuárioID) REFERENCES Usuário(UsuárioID),
	FOREIGN KEY (ConteúdoID) REFERENCES Conteúdo(ConteúdoID)
);

CREATE TABLE Jogo
(
	JogoID VARCHAR(30) NOT NULL,
	PreçoJogo FLOAT NOT NULL,
	Descrição VARCHAR(300) NOT NULL,
	NomeJogo VARCHAR(30) NOT NULL,
	DataDeLançamento DATE	NOT NULL,
	Requisitos VARCHAR(30) NOT NULL,
	ClassificaçãoIndicativa INT NOT NULL,
	PRIMARY KEY (JogoID) 
);

CREATE TABLE BibliotecaDeJogos
(
	UsuárioID VARCHAR(30) NOT NULL,
	JogoID VARCHAR(30) NOT NULL,
	PRIMARY KEY (UsuárioID, JogoID),
	FOREIGN KEY (UsuárioID) REFERENCES Usuário(UsuárioID),
	FOREIGN KEY (JogoID) REFERENCES Jogo(JogoID)
);

CREATE TABLE ListaDeDesejos
(
	UsuárioID VARCHAR(30) NOT NULL,
	JogoID VARCHAR(30) NOT NULL,
	PRIMARY KEY (UsuárioID, JogoID),
	FOREIGN KEY (UsuárioID) REFERENCES Usuário(UsuárioID),
	FOREIGN KEY (JogoID) REFERENCES Jogo(JogoID)
);

CREATE TABLE Empresa
(
	EmpresaID VARCHAR(30) NOT NULL,
	NomeEmpresa VARCHAR(30) NOT NULL,
	NumSeguidores INT,
	PRIMARY KEY (EmpresaID)
);

CREATE TABLE ItemJogo
(
	ItemID VARCHAR(30) NOT NULL,
	ValorItem INT NOT NULL,
	NomeItem VARCHAR(30) NOT NULL,
	PRIMARY KEY (ItemID)
);

CREATE TABLE Notícia
(
	NotíciaID VARCHAR(30) NOT NULL,
	Assunto VARCHAR(30) NOT NULL,
	NotíciaAssunto VARCHAR(30) NOT NULL,
	NumInterações INT NOT NULL,
	DataPublicação DATE NOT NULL
	PRIMARY KEY (NotíciaID)
);

/*CREATE TABLE Avaliação
(
	AvaliaçãoConteúdo VARCHAR(30) NOT NULL,
	DataAvaliação DATE NOT NULL,
	InteraçõesPositivas INT,
	InteraçõesNegativas INT
);*/

CREATE TABLE Aquisição
(
	AquisiçãoID VARCHAR(30) NOT NULL,
	PreçoAquisição FLOAT NOT NULL,
	DataAquisição DATE NOT NULL,
	Desconto FLOAT,
	PRIMARY KEY (AquisiçãoID)
);

CREATE TABLE Gênero
(	GêneroID VARCHAR(30) NOT NULL,
	GêneroNome VARCHAR(30) NOT NULL,
	PRIMARY KEY (GêneroID)
);

CREATE TABLE Fórum
(
	FórumID VARCHAR(30) NOT NULL,
	NumMembros INT NOT NULL,
	NomeFórum VARCHAR(30) NOT NULL,
	DataCriação DATE NOT NULL,
	NomeDoCriador VARCHAR(30) NOT NULL,
	PRIMARY KEY (FórumID)
);

CREATE TABLE Comentário
(
	FórumID	VARCHAR(30) NOT NULL,
	ComentárioID VARCHAR(30) NOT NULL,
	NomeAutor VARCHAR(30) NOT NULL,
	DataPublicação DATE NOT NULL,
	Comentário VARCHAR(300)	NOT NULL,
	PRIMARY KEY(Comentário),
	FOREIGN KEY (FórumID) REFERENCES Fórum(FórumID)
);

CREATE TABLE InterageEm
(
	UsuárioID VARCHAR(30) NOT NULL,
	FórumID VARCHAR(30),
	PRIMARY KEY (UsuárioID, FórumID),
	FOREIGN KEY (UsuárioID) REFERENCES Usuário(UsuárioID),
	FOREIGN KEY (FórumID) REFERENCES Fórum(FórumID)
);

CREATE TABLE Suporte
(
	UsuárioID VARCHAR(30) NOT NULL,
	SuporteID VARCHAR(30) NOT NULL,
	NomeSuporte VARCHAR(30) NOT NULL,
	Comentário VARCHAR(300),
	PRIMARY KEY (SuporteID),
	FOREIGN KEY (UsuárioID) REFERENCES Usuário(UsuárioID)
);

CREATE TABLE Lê
(
	UsuárioID VARCHAR(30) NOT NULL,
	NotíciaID VARCHAR(30) NOT NULL,
	PRIMARY KEY (UsuárioID, NotíciaID),
	FOREIGN KEY (UsuárioID) REFERENCES Usuário(UsuárioID),
	FOREIGN KEY (NotíciaID) REFERENCES Notícia(NotíciaID)
);