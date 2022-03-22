CREATE DATABASE plano_saude; 


CREATE TABLE cliente (id_cliente serial CONSTRAINT pk_id_cliente PRIMARY KEY NOT NULL,
                    nome varchar(255) NOT NULL,
                    dt_nasc date NOT NULL, 
                    email varchar(255) NOT NULL);


INSERT INTO cliente (nome,
                    dt_nasc,
                    email) VALUES ('Hannah',
                                    '07-04-1995',
                                    'hannahcassia@gmail.com');

INSERT INTO cliente (nome,
                    dt_nasc,
                    email) VALUES ('Beatriz',
                                    '28-05-1999',
                                    'beatrizmirandaliv@outlook.com');

SELECT * FROM cliente; 


CREATE TABLE dependente (id_dependente serial CONSTRAINT pk_id_dependente PRIMARY KEY NOT NULL,
                        cliente int NOT NULL,
                        dependente int NOT NULL,
                        CONSTRAINT fk_cliente FOREIGN KEY (cliente) REFERENCES cliente(id_cliente),
                        CONSTRAINT fk_dependente FOREIGN KEY (dependente) REFERENCES cliente(id_cliente));


INSERT INTO dependente (cliente, 
                        dependente) VALUES (1,
                                            2);

SELECT * FROM dependente; 
