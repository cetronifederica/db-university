use db_university;


-- inserisco valori nella tabella dipartimenti
insert into dipartimenti(nome, rettore, sede, email_di_riferimento)
values ('Economia', 'Fabio Ciao', 'San Pietro', 'sanpietro.economia@gmailcom');
insert into dipartimenti(nome, rettore, sede, email_di_riferimento)
values ('Psicologia', 'Fabio Ciao', 'Cinecittà', 'cinecitta.psicologia@gmai.com');

-- inserisco valori nella tabella corsi_di_laurea
insert into corsi_di_laurea(nome, durata_corso, descrizione, dipartimento_id)
values ('Economia e Management', 5, 'Il Corso fornisce i modelli, le tecniche 
e le metodologie fondamentali per la comprensione del sistema economico, dei mercati, delle 
dinamiche competitive ed evolutive delle aziende di produzione di beni e servizi. Inoltre, 
offre le conoscenze di base per la gestione e il controllo dei processi di innovazione 
che interessano grandi imprese, PMI, aziende e pubbliche amministrazioni', 1);
insert into corsi_di_laurea (nome, durata_corso, descrizione, dipartimento_id)
values ('Scienze Psicologiche', 3, 'Il Corso fornisce i modelli, le tecniche 
e le metodologie fondamentali per la comprensione del sistema psicologico', 2);

-- inserisco valori nella tabella piano_degli_studi
insert into piano_degli_studi (nome_materia, cfu, prof_di_riferimento, corso_di_laurea_id)
values ('Economia Aziendale', 18, 'Francesca Tia', 1);

insert into piano_degli_studi (nome_materia, cfu, prof_di_riferimento, corso_di_laurea_id)
values ('Psicobiologia', 12, 'Franco Pizzi', 2);


-- inserisco valori nella tabella professori 
insert into professori (nome, cognome, materia)
values ('Francesca', 'Tia', 'Economia Aziendale');

insert into professori (nome, cognome, materia)
values ('Franco', 'Pizzi', 'Psicobiologia');


-- INSERISCO VALORI NELLA TABELLA PONTE PROFESSORI_CORSI

insert into professori_corsi(professori_id, corsi_id)
values (1, 2);