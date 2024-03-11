DROP TABLE IF EXISTS usuario_atividade;
DROP TABLE IF EXISTS usuario;
DROP TABLE IF EXISTS atividade;

CREATE TABLE usuario(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    
	CONSTRAINT PK_id PRIMARY KEY(id)
);

CREATE TABLE atividade(
	id INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(80) NOT null,
    descricao TEXT,
    data_limite DATE NOT NULL,
    
    CONSTRAINT PK_id PRIMARY KEY(id)
);

CREATE TABLE usuario_atividade(
	usuario_id INT NOT NULL,
    atividade_id INT NOT NULL,
    data_entrega DATE NOT NULL,
    nota DECIMAL(2,2) NOT NULL,
    
    CONSTRAINT PK_usuario_atividade PRIMARY KEY(usuario_id, atividade_id),
    CONSTRAINT FK_usuario FOREIGN KEY(usuario_id) REFERENCES usuario(id),
    CONSTRAINT FK_atividade FOREIGN KEY(atividade_id) REFERENCES atividade(id)
);

