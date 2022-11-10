CREATE TABLE pacient(
    pacienteID int PRIMARY KEY,
    email varchar(20) unique NOT NULL,
    primeiroNome varchar(50) NOT NULL,
    ultimoNome varchar(50) NOT NULL,
    endereco varchar(100),
    FOREIGN KEY (endereco) REFERENCES address(cep)
    
);

CREATE TABLE address(
    cep  varchar(50) NOT NULL PRIMARY KEY,
    rua varchar(50),    
    numero varchar(10),
    bairro varchar(50),
    cidade varchar(50)   
);