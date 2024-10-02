CREATE DATABASE FARMA_MED;
USE farma_med;
CREATE TABLE FORNECEDORES (id_fornecedor INT PRIMARY KEY,nome_fornecedor VARCHAR(15));
INSERT INTO FORNECEDORES (id_fornecedor,nome_fornecedor) VALUES (1, 'Laboratório A'), 
(2, 'Pharma B'),
 (3, 'Medicus C'),
 (4, 'HealthPlus');
 CREATE TABLE MEDICAMENTOS (id_medicamento INT PRIMARY KEY,nome_medicamento VARCHAR(50),id_fornecedor INT,FOREIGN KEY (id_fornecedor) REFERENCES fornecedores(id_fornecedor));
INSERT INTO MEDICAMENTOS (id_medicamento,nome_medicamento,id_fornecedor) VALUES (1, 'Paracetamol', 1),
 (2, 'Ibuprofeno', 2), 
 (3, 'Amoxicilina', 1), 
 (4, 'Dipirona', NULL);
SELECT f.nome_fornecedor, m.nome_medicamento
FROM fornecedores 
RIGHT JOIN medicamentos ON f.id_fornecedor = m.id_fornecedor;
