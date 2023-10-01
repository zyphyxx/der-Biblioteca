create database sistema_biblioteca;
use sistema_biblioteca;

CREATE TABLE  aluno (
										ra INT AUTO_INCREMENT PRIMARY KEY,
										nome VARCHAR(50) NOT NULL,
										email VARCHAR(50),
										telefone VARCHAR(11) NOT NULL,
										sexo ENUM('M','F')
										);
                                        
                                        desc aluno;
                                        select * from aluno;
                                        

CREATE TABLE if not exists Livro (
										isbn VARCHAR(13) PRIMARY KEY,
										nome VARCHAR(255),
										autor VARCHAR(255),
										paginas INT
										);
										
                                        desc livro;
                                        select * from livro;
                                        
CREATE TABLE if not exists Colaborador (
										cpf VARCHAR(14) PRIMARY KEY,
										nome VARCHAR(255),
										email VARCHAR(255),
										cargo VARCHAR(255)
										);
                                        
                                        desc colaborador;
                                        select * from colaborador;
                                        
CREATE TABLE if not exists Emprestimo (
										ra_id INT AUTO_INCREMENT PRIMARY KEY,
										dataEmprestimo DATE,
										dataDevolucao DATE,
										livroIsbn VARCHAR(13),
										colaboradorCpf VARCHAR(14),
										alunoRa INT,
										FOREIGN KEY (livroIsbn) REFERENCES Livro(isbn),
										FOREIGN KEY (colaboradorCpf) REFERENCES Colaborador(cpf),
										FOREIGN KEY (alunoRa) REFERENCES Aluno(ra_id)
										);
                                        
                                        desc emprestimo;
                                        select * from  emprestimo;

