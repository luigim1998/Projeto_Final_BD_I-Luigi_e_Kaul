CREATE TABLE Endereco (
    Rua VARCHAR,
    Bairro VARCHAR,
    Complemento VARCHAR,
    CEP INTEGER PRIMARY KEY
);

CREATE TABLE Tipo (
    Nome VARCHAR,
    ID INTEGER PRIMARY KEY
);

CREATE TABLE Evento (
    Nome VARCHAR,
    Data_inicio DATE,
    Data_termino DATE,
    Horario_inicio TIME,
    Horario_termino TIME,
    Descricao VARCHAR,
    ID INTEGER PRIMARY KEY,
    Taxa FLOAT,
    fk_Endereco_CEP INTEGER,
    Num_endereco INTEGER,
    fk_Tipo_ID INTEGER
);
 
ALTER TABLE Evento ADD CONSTRAINT FK_Evento_2
    FOREIGN KEY (fk_Endereco_CEP)
    REFERENCES Endereco (CEP)
    ON DELETE CASCADE;
 
ALTER TABLE Evento ADD CONSTRAINT FK_Evento_3
    FOREIGN KEY (fk_Tipo_ID)
    REFERENCES Tipo (ID)
    ON DELETE RESTRICT;
	
CREATE TABLE Competicao (
    ID INTEGER PRIMARY KEY,
    Descricao VARCHAR,
    Max_time INTEGER,
    Taxa FLOAT,
    fk_Evento_ID INTEGER
);
 
ALTER TABLE Competicao ADD CONSTRAINT FK_Competicao_2
    FOREIGN KEY (fk_Evento_ID)
    REFERENCES Evento (ID)
    ON DELETE CASCADE;
	
CREATE TABLE Palestra (
    ID INTEGER PRIMARY KEY,
    Nome VARCHAR,
    Descricao VARCHAR,
    Vagas INTEGER,
    Data_inicio DATE,
    Data_termino DATE,
    Hora_inicio TIME,
    Hora_termino TIME,
    fk_Evento_ID INTEGER
);
 
ALTER TABLE Palestra ADD CONSTRAINT FK_Palestra_2
    FOREIGN KEY (fk_Evento_ID)
    REFERENCES Evento (ID)
    ON DELETE CASCADE;	
	
CREATE TABLE Palestrante (
    Nome VARCHAR,
    Descricao VARCHAR,
    Hora_inicio TIME,
    Hora_final TIME,
    ID INTEGER PRIMARY KEY,
    fk_Palestra_ID INTEGER
);
 
ALTER TABLE Palestrante ADD CONSTRAINT FK_Palestrante_2
    FOREIGN KEY (fk_Palestra_ID)
    REFERENCES Palestra (ID)
    ON DELETE RESTRICT;

CREATE TABLE Usuario_Login (
    Nome VARCHAR,
    Genero CHAR,
    CPF VARCHAR PRIMARY KEY,
    Telefone INTEGER,
    Email VARCHAR,
    Username VARCHAR,
    Senha VARCHAR,
    fk_Endereco_CEP INTEGER,
    Num_endereco INTEGER
);
 
ALTER TABLE Usuario_Login ADD CONSTRAINT FK_Usuario_Login_2
    FOREIGN KEY (fk_Endereco_CEP)
    REFERENCES Endereco (CEP)
    ON DELETE CASCADE;

CREATE TABLE Time (
    ID INTEGER PRIMARY KEY,
    ID_responsavel VARCHAR,
    Nome VARCHAR
);
 
ALTER TABLE Time ADD CONSTRAINT FK_Time_2
    FOREIGN KEY (ID_responsavel)
    REFERENCES Usuario_Login (CPF);
	
CREATE TABLE Competidor (
    fk_Competicao_ID INTEGER,
    fk_Time_ID INTEGER,
    PRIMARY KEY (fk_Competicao_ID, fk_Time_ID)
);
 
ALTER TABLE Competidor ADD CONSTRAINT FK_Competidor_1
    FOREIGN KEY (fk_Competicao_ID)
    REFERENCES Competicao (ID)
    ON DELETE SET NULL;
 
ALTER TABLE Competidor ADD CONSTRAINT FK_Competidor_2
    FOREIGN KEY (fk_Time_ID)
    REFERENCES Time (ID)
    ON DELETE SET NULL;	

CREATE TABLE Componente_time (
    fk_Usuario_Login VARCHAR,
    fk_Time_ID INTEGER,
    PRIMARY KEY (fk_Time_ID, fk_Usuario_Login)
);
 
ALTER TABLE Componente_time ADD CONSTRAINT FK_Componente_time_1
    FOREIGN KEY (fk_Usuario_Login)
    REFERENCES Usuario_Login (CPF)
    ON DELETE RESTRICT;
 
ALTER TABLE Componente_time ADD CONSTRAINT FK_Componente_time_2
    FOREIGN KEY (fk_Time_ID)
    REFERENCES Time (ID)
    ON DELETE SET NULL;	
	
CREATE TABLE Minicurso (
    Nome VARCHAR,
    Descricao VARCHAR,
    Vagas INTEGER,
    Data_inicio DATE,
    Data_termino DATE,
    Hora_inicio TIME,
    Hora_termino TIME,
    ID INTEGER PRIMARY KEY,
    fk_Evento_ID INTEGER
);
 
ALTER TABLE Minicurso ADD CONSTRAINT FK_Minicurso_2
    FOREIGN KEY (fk_Evento_ID)
    REFERENCES Evento (ID)
    ON DELETE CASCADE;

CREATE TABLE Instrutor (
    ID INTEGER PRIMARY KEY,
    Nome VARCHAR,
    fk_Minicurso_ID INTEGER
);
 
ALTER TABLE Instrutor ADD CONSTRAINT FK_Instrutor_2
    FOREIGN KEY (fk_Minicurso_ID)
    REFERENCES Minicurso (ID)
    ON DELETE RESTRICT;

CREATE TABLE Inscricao_minicurso (
    fk_Usuario_Login VARCHAR,
    fk_Minicurso_ID INTEGER,
    PRIMARY KEY (fk_Usuario_Login, fk_Minicurso_ID)
);
 
ALTER TABLE Inscricao_minicurso ADD CONSTRAINT FK_Inscricao_minicurso_1
    FOREIGN KEY (fk_Usuario_Login)
    REFERENCES Usuario_Login (CPF)
    ON DELETE SET NULL;
 
ALTER TABLE Inscricao_minicurso ADD CONSTRAINT FK_Inscricao_minicurso_2
    FOREIGN KEY (fk_Minicurso_ID)
    REFERENCES Minicurso (ID)
    ON DELETE SET NULL;
	
CREATE TABLE Inscricao_palestra (
    fk_Palestra_ID INTEGER,
    fk_Usuario_Login VARCHAR,
    PRIMARY KEY (fk_Palestra_ID, fk_Usuario_Login)
);
 
ALTER TABLE Inscricao_palestra ADD CONSTRAINT FK_Inscricao_palestra_1
    FOREIGN KEY (fk_Palestra_ID)
    REFERENCES Palestra (ID)
    ON DELETE SET NULL;
 
ALTER TABLE Inscricao_palestra ADD CONSTRAINT FK_Inscricao_palestra_2
    FOREIGN KEY (fk_Usuario_Login)
    REFERENCES Usuario_Login (CPF)
    ON DELETE SET NULL;	
	
CREATE TABLE Apresentação_artigo (
    Nome_artigo VARCHAR,
    Data DATE,
    Hora_inicio TIME,
    Hora_termino TIME,
    Vagas INTEGER,
    ID INTEGER PRIMARY KEY,
    fk_Evento_ID INTEGER,
    fk_Usuario_Login VARCHAR
);
 
ALTER TABLE Apresentação_artigo ADD CONSTRAINT FK_Apresentação_artigo_2
    FOREIGN KEY (fk_Evento_ID)
    REFERENCES Evento (ID)
    ON DELETE CASCADE;
 
ALTER TABLE Apresentação_artigo ADD CONSTRAINT FK_Apresentação_artigo_3
    FOREIGN KEY (fk_Usuario_Login)
    REFERENCES Usuario_Login (CPF)
    ON DELETE CASCADE;	
	
CREATE TABLE Inscricao_artigo (
    fk_Apresentação_artigo_ID INTEGER,
    fk_Usuario_Login VARCHAR,
    PRIMARY KEY (fk_Apresentação_artigo_ID, fk_Usuario_Login)
);
 
ALTER TABLE Inscricao_artigo ADD CONSTRAINT FK_Inscricao_artigo_1
    FOREIGN KEY (fk_Apresentação_artigo_ID)
    REFERENCES Apresentação_artigo (ID)
    ON DELETE SET NULL;
 
ALTER TABLE Inscricao_artigo ADD CONSTRAINT FK_Inscricao_artigo_2
    FOREIGN KEY (fk_Usuario_Login)
    REFERENCES Usuario_Login (CPF)
    ON DELETE SET NULL;

CREATE TABLE Funcao (
    ID INTEGER PRIMARY KEY,
    Nome VARCHAR
);

CREATE TABLE Participante (
    fk_Usuario_Login VARCHAR,
    fk_Evento_ID INTEGER,
    fk_Funcao_ID INTEGER,
    PRIMARY KEY (fk_Usuario_Login, fk_Evento_ID, fk_Funcao_ID)
);
 
ALTER TABLE Participante ADD CONSTRAINT FK_Participante_2
    FOREIGN KEY (fk_Usuario_Login)
    REFERENCES Usuario_Login (CPF)
    ON DELETE CASCADE;
 
ALTER TABLE Participante ADD CONSTRAINT FK_Participante_3
    FOREIGN KEY (fk_Evento_ID)
    REFERENCES Evento (ID)
    ON DELETE CASCADE;	
	
ALTER TABLE Participante ADD CONSTRAINT FK_Participante_4
    FOREIGN KEY (fk_Funcao_ID)
    REFERENCES Funcao (ID);	
	