/*modelagem basica*/

/*CRIANDO BANCO*/

CREATE DATABASE PROJETO;

/*CONECTAR*/

USE PROJETO;

/*CRIANDO TABELA EM PROJETO*/
CREATE TABLE CLIENTE(
	NOME VARCHAR(30),
	SEXO CHAR(1),
	EMAIL VARCHAR(30),
	CPF INT(11),
	TELEFONE VARCHAR(30),
	ENDEREÇO VARCHAR(100)
);

/*EXIBE TABELAS DE UM BANCO*/
SHOW TABLES;

/*EXIBE A ESTRUTURA DE UMA TABELA SELECIONADA*/
DESC CLIENTE;

/*INSERÇÃO DE DADOS*/

/*FORMA 1*/
INSERT INTO CLIENTE VALUES('JOAO','M','JOAO@GMAIL.COM',988638273,'22923110','MARIA LACERDA - ESTÁCIO - RIO DE JANEIRO - RJ');
INSERT INTO CLIENTE VALUES('CELIA','F','CELIA@GMAIL.COM',541521456,'25078869','RIACHUELO - CENTRO - RIO DE JANEIRO - RJ');
INSERT INTO CLIENTE VALUES('JORGE','M',NULL,885755896,'58748895','OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG');

/*FORMA 2*/
INSERT INTO CLIENTE(NOME, SEXO, ENDEREÇO, TELEFONE, CPF) VALUES('LILIAN','F','SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ','947785696',887485693);

/*FORMA 3 (ONLY ON MY SQL)*/
INSERT INTO CLIENTE VALUES('ANA','F','ANA@GLOBO.COM',855489652,'548556985','PRES ANTONIO CARLOS - CENTRO - SAO PAULO - SP'),
						  ('CARLA','F','CARLA@TERATI.COM.BR',774582058,'66587458','SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG');


INSERT INTO CLIENTE VALUES('TULIO','M','TULIOF210@GMAIL.COM',016177016,'92687974','CIBIPURUNA - MONTE AZUL - BELO HORIZONTE - MG'),
						  ('LETICIA','F','LETICIA@OUTLOOK.COM',456822157,'45617888','FLORES - PINDORAMA - BELO HORIZONTE - MG'),
						  ('GUSTAVO','M','DAVYJONES@GMAIL.COM',788796123,'66547812','PAULISTA - OSASCO - SAO PAULO - SP'),
						  ('MARIZA','F','MRZSILVA.FERREIRA@GMAIL.COM',023795436,'88542933','ENGENHEIROS - GABIROBA - ITABIRA - MG'),
						  ('EDMAR','M','EDMAR7644@GMAIL.COM',452163988,'86280419','CAMBUÍ - GUARANI - BELO HORIZONTE - MG');


/*SELECTS*/

/*HORA DO SISTEMA*/ SELECT NOW();

/*NAO RECOMENDADO POR SER MUITO CUSTOSO*/
/*SELECIONAR TUDO*/ SELECT * FROM CLIENTE;

/*SELECIONAR ATRIBUTOS*/ SELECT NOME, SEXO FROM CLIENTE;
/*SELECT CONDICIONAL*/ SELECT NOME, CPF FROM CLIENTE WHERE SEXO = 'F';


SELECT NOME, CPF, EMAIL FROM CLIENTE WHERE ENDEREÇO LIKE '%RJ';
/*O "%' É UM CARACTER CORINGA*/
/*NO CASO "%RJ" SERIA ALGO COMO "QUALQUER COISA COM FIM RJ"*/
/*SE FOSSE "RJ%" SERIA ALGOM QUE COMEÇA COM RJ E ACABA COM QUALQUER COISA*/
/*SE O PARAMETRO ESTIVER ENTRE O TEXTO USAR "%RJ%"*/


/*WHERE COM DUPLA CONDICIONAL*/
SELECT NOME, CPF FROM CLIENTE WHERE ENDEREÇO LIKE '%MG' AND SEXO = 'M';


/*PARA CONTAR QUANTOS REGISTROS HÁ NUMA TABELA*/
SELECT COUNT(*) FROM CLIENTE;

/*COUNT GERALMENTE EH USADO COMO RELATORIO
LOGO UMA PLANILHA COM "COUNT(*)" COMO TITULO NÃO É O ADEQUADO
POR TANTO EH COMUM USAR A PALAVRA 'AS'
*/
SELECT COUNT(*) AS 'QUANTIDADE' FROM CLIENTE;

/*EXEMPLO DE GROUP BY*/
/*USADO PARA AGRUPAR QUANTIDADES (CADA QUANTIDADE ESPECIFICA)*/
/*DE TIPOS DE REGISTROS*/
/*O EXEMPLO NO CASO RETORNA A QUANTIDADE DE OCORRENCIA DE CADA TIPO DE SEXO*/
SELECT SEXO, COUNT(*) AS 'QUANTIDADE'
FROM CLIENTE
GROUP BY SEXO;
/*SAIDA: 

+------+------------+
| SEXO | QUANTIDADE |
+------+------------+
| M    | 5          |
| F    | 6          |
+------+------------+
*/


/*RETORNO DE ALGUM VALOR NULL*/
SELECT NOME, SEXO, TELEFONE
FROM CLIENTE
WHERE EMAIL IS NULL;

/*NAO NULL*/
SELECT NOME, SEXO, TELEFONE
FROM CLIENTE
WHERE EMAIL IS NOT NULL;