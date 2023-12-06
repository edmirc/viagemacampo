CREATE TABLE acampoviagem.cidades (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  estado VARCHAR(2) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX nome_UNIQUE (nome ASC) VISIBLE);

CREATE TABLE acampo.tipos (
	id INT NOT NULL AUTO_INCREMENT,
	tipos VARCHAR(45) NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE acampo.carros (
  id INT NOT NULL AUTO_INCREMENT,
  placa VARCHAR(7) NULL,
  modelo VARCHAR(45) NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX placa_UNIQUE (placa ASC) VISIBLE
  );

CREATE TABLE acampo.pagamentos (
	iD INT NOT NULL AUTO_INCREMENT,
	tipo VARCHAR(40) NOT NULL,
	PRIMARY KEY(id),
	UNIQUE INDEX tipo_UNIQUE (tipo ASC) VISIBLE
);

CREATE TABLE acampo.km (
	id INT NOT NULL AUTO_INCREMENT,
	data DATE NOT NULL,
	kmInicial INT NOT NULL,
	kmFinal INT NOT NULL,
	kmRodado INT NOT NULL,
	consumo DECIMAL(4,2) NOT NULL,
	idCidade INT NOT NULL,
	PRIMARY KEY(id),
	CONSTRAINT kmcidade	FOREIGN KEY(idCidade) REFERENCES acampo.cidades(id)
   );

CREATE TABLE acampo.dados (
	id INT NOT NULL AUTO_INCREMENT,
	codIdLite INT NOT NULL UNIQUE,
	data DATE NOT NULL,
	idTipo INT NOT NULL,
	qnt decimal(5,2),
	valor decimal(10,2) NOT NULL,
	idKm INT,
	idCarro INT,
	idPagamento INT NOT NULL,
	ref VARCHAR(8) NOT NULL,
	PRIMARY KEY(id),
	CONSTRAINT dadosPagamento FOREIGN KEY(idPagamento) 
	REFERENCES acampo.pagamentos(id),
	CONSTRAINT dadosKM FOREIGN KEY(idKm) REFERENCES acampo.km(id),
	CONSTRAINT dadosTipos FOREIGN KEY(idTipo) REFERENCES acampo.tipos(id),
	CONSTRAINT dadosCarros FOREIGN KEY(idCarro) REFERENCES acampo.carros(id)
);

CREATE TABLE acampo.representantes (
	id INT NOT NULL AUTO_INCREMENT,
	refSis INT UNIQUE,
	razao VARCHAR(100) NOT NULL,
	fantasia VARCHAR(100) NOT NULL,
	endereco VARCHAR(130) NOT NULL,
	telefone VARCHAR(40) ,
	celular VARCHAR(40) NOT NULL,
	idCidade INT,
	atividade VARCHAR(15),
	PRIMARY KEY (id),
	CONSTRAINT repreCidade FOREIGN KEY (idCidade) REFERENCES cidades(id),
    CONSTRAINT ATIVIDADES check(atividade = 'Ativo' or atividade = 'Inativo')
);



CREATE TABLE acampo.variedades (
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL UNIQUE,
	familia VARCHAR(20) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE acampo.pedido(
	id INT NOT NULL AUTO_INCREMENT,
	idRepresentante INT,
	safra VARCHAR(6),
	idCliente INT,
	controle INT,
	pedido INT,
	data date NOT NULL,
	total DECIMAL(15,2),
	PRIMARY KEY (id),
	CONSTRAINT pedidoRepres FOREIGN KEY (idRepresentante) REFERENCES representantes(id),
	CONSTRAINT pedidoCliente FOREIGN KEY (idCliente) REFERENCES clientes(id),
	UNIQUE INDEX controle_UNIQUE (controle ASC) VISIBLE,
	UNIQUE INDEX pedido_UNIQUE (pedido ASC) VISIBLE
);

CREATE TABLE acampo.vendaProdutos(
	id INT NOT NULL AUTO_INCREMENT,
	idPedido INT,
	pedido INT,
	idVariedade INT,
	qnt INT,
	valor DECIMAL(15,2),
	total DECIMAL(15,2),
	PRIMARY KEY (id),
	CONSTRAINT vendaVariedades FOREIGN KEY (idVariedade) REFERENCES variedades(id),
	CONSTRAINT vendaPedidos FOREIGN KEY (idPedido) REFERENCES pedido(id)
);

CREATE TABLE acampo.teste(
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(5),
    idCidade int,
    PRIMARY KEY(id),
    CONSTRAINT EDE FOREIGN KEY (idCidade) REFERENCES acampo.cidades(id)
);

CREATE TABLE acampoviagem.nomeviagem(
    id INT NOT NULL AUTO_INCREMENT,
    viagem VARCHAR(150),
    inicio DATE,
    final DATE,
    uso BOOLEAN,
    PRIMARY KEY(id)
);