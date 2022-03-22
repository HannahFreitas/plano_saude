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


