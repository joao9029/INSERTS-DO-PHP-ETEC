CREATE DATABASE ETEC;
USE ETEC;


CREATE TABLE ALUNOS (
    cd_aluno INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nm_aluno VARCHAR(80) NOT NULL,
    ds_matricula VARCHAR(20) NOT NULL,
    ds_email VARCHAR(80) NOT NULL
);


CREATE TABLE MATERIAS (
    cd_materia INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nm_materia VARCHAR(80) NOT NULL
);


CREATE TABLE PROFESSORES (
    cd_professor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nm_professor VARCHAR(80) NOT NULL,
    ds_email VARCHAR(80) NOT NULL
);


CREATE TABLE PROFESSOR_MATERIA (
    cd_professor INT NOT NULL,
    cd_materia INT NOT NULL,
    PRIMARY KEY (cd_professor, cd_materia),
    FOREIGN KEY (cd_professor) REFERENCES PROFESSORES(cd_professor),
    FOREIGN KEY (cd_materia) REFERENCES MATERIAS(cd_materia)
);




/* insert dos alunos */
INSERT INTO ALUNOS (nm_aluno, ds_matricula, ds_email) VALUES ("Levi", "25094", "levi.antoniassi@gmail.com"); 

INSERT INTO ALUNOS (nm_aluno, ds_matricula, ds_email) VALUES("Giovanna", "25208", "borgesdesouzasantosgi@gmail.com"); 

INSERT INTO ALUNOS (nm_aluno, ds_matricula, ds_email) VALUES("Matheus_Vittoretti_Amoroso_da_Costa", "25185", "matheus.costa35@aluno.cps.sp.gov.br"); 

INSERT INTO ALUNOS (nm_aluno, ds_matricula,  ds_email) VALUES("Thiago Camilo", "25064", "thiagodscamilo@gmail.com"); 

INSERT INTO ALUNOS (nm_aluno, ds_matricula, ds_email) VALUES("kaio", "25056", "kaionovais27@gmail.com"); 

INSERT INTO ALUNOS (nm_aluno, ds_matricula, ds_email) VALUES ("Matheus Rocha Silva", "25090", "matheus.rocha.silva.2010@gmail.com"); 

INSERT INTO ALUNOS (nm_aluno, ds_matricula, ds_email) VALUES("Marco", "25105", "marco.pinho@aluno.cps.sp.gov.br"); 

INSERT INTO ALUNOS (nm_aluno, ds_matricula, ds_email) VALUES("João Victor Rodrigues", "25182", "joegao121@gmail.com"); 

INSERT INTO ALUNOS (nm_aluno, ds_matricula, ds_email) VALUES("Luccas Santos Barbosa","25191","Luccas.barbosa@aluno.cps.sp.gov.br"); 

INSERT INTO ALUNOS (nm_aluno, ds_matricula, ds_email)  VALUES("Ricard", "25163", "ricardhenriqu@gmail.com"); 

INSERT INTO ALUNOS (nm_aluno, ds_matricula, ds_email) VALUES ("Lucas de lorena lima", "25199", "lucaslorenalima892@gmail"); 

INSERT INTO ALUNOS (nm_aluno, ds_matricula, ds_email) VALUES("joao Barbosa","25191","Luccas.barbosa@aluno.cps.sp.gov.br"); 

INSERT INTO ALUNOS (nm_aluno, ds_matricula, ds_email) VALUES("Bruno","25212","Bruno.conceicao01@aluno.cps.sp.gov.br"); 

INSERT INTO ALUNOS (nm_aluno, ds_matricula, ds_email) VALUES ("murilo", "26230", "murilodeoliveirachaga@gmail.com"); 

INSERT INTO ALUNOS (nm_aluno, ds_matricula, ds_email) VALUES ("arthur", "25213", "arthur.paixao01@aluno.cps.sp.gov.br");  

INSERT INTO ALUNOS (nm_aluno, ds_matricula, ds_email) VALUES ("Guilherme_mendes", "25172", "guilherme.oliveira142@aluno.cps.sp.gov.br"); 



/* insert dos professores */
INSERT INTO PROFESSORES (nm_professor, ds_email) VALUES ("Matheus Calixto","calixto.matheus@professor.cps.sp.gov.br"); 

INSERT INTO PROFESSORES (nm_professor, ds_email) VALUES ("Oswaldo","Oswaldo@professor.cps.sp.gov.br"); 

INSERT INTO PROFESSORES (nm_professor, ds_email) VALUES ("bananinha","bananinha@professor.cps.sp.gov.br"); 

/* insert da materia */
INSERT INTO MATERIAS (nm_materia) VALUES ("Banco de dados - BD"); 

INSERT INTO MATERIAS (nm_materia) VALUES ("Desenvolvimento de sistema - DS"); 

INSERT INTO MATERIAS (nm_materia) VALUES ("Programação web - PW"); 

INSERT INTO MATERIAS (nm_materia) VALUES ("Programação MOBILE - PAM"); 


/* Inserts ASSOCIATIVO */
INSERT INTO PROFESSOR_MATERIA (cd_professor, cd_materia) 
VALUES (1, 1),
       (1, 2),
       (1, 3),
       (1, 4),
       (2, 1),
       (2, 2),
       (2, 3),
       (3, 4);



       













