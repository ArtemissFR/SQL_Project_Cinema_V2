#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: FILMS
#------------------------------------------------------------

CREATE TABLE FILMS(
        film_id        Int NOT NULL ,
        film_titre     Varchar (255) NOT NULL ,
        film_annee     Year NOT NULL ,
        genre_id       Int NOT NULL ,
        realisateur_id Int NOT NULL ,
        acteur_id      Int NOT NULL ,
        theme_id       Int NOT NULL
	,CONSTRAINT FILMS_PK PRIMARY KEY (film_id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: ACTEURS
#------------------------------------------------------------

CREATE TABLE ACTEURS(
        acteur_id             Int NOT NULL ,
        acteur_nom            Varchar (50) NOT NULL ,
        acteur_prenom         Varchar (50) NOT NULL ,
        acteur_date_naissance Date NOT NULL
	,CONSTRAINT ACTEURS_PK PRIMARY KEY (acteur_id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: REALISATEUR
#------------------------------------------------------------

CREATE TABLE REALISATEUR(
        realisateur_id             Int NOT NULL ,
        realisateur_nom            Varchar (50) NOT NULL ,
        realisateur_prenom         Varchar (50) NOT NULL ,
        realisateur_date_naissance Date NOT NULL
	,CONSTRAINT REALISATEUR_PK PRIMARY KEY (realisateur_id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: GENRES
#------------------------------------------------------------

CREATE TABLE GENRES(
        genre_id  Int NOT NULL ,
        genre_nom Varchar (30) NOT NULL
	,CONSTRAINT GENRES_PK PRIMARY KEY (genre_id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: SALLES
#------------------------------------------------------------

CREATE TABLE SALLES(
        salle_id       Int NOT NULL ,
        salle_nom      Varchar (50) NOT NULL ,
        salle_capacite Int NOT NULL
	,CONSTRAINT SALLES_PK PRIMARY KEY (salle_id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: PROJECTIONS
#------------------------------------------------------------

CREATE TABLE PROJECTIONS(
        projection_id         Int NOT NULL ,
        film_id               Int NOT NULL ,
        salle_id              Int NOT NULL ,
        projection_date_heure Datetime NOT NULL
	,CONSTRAINT PROJECTIONS_PK PRIMARY KEY (projection_id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: THEME
#------------------------------------------------------------

CREATE TABLE THEME(
        theme_id  Int NOT NULL ,
        theme_nom Varchar (50) NOT NULL
	,CONSTRAINT THEME_PK PRIMARY KEY (theme_id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: PERSONNEL
#------------------------------------------------------------

CREATE TABLE PERSONNEL(
        realisateur_id Int NOT NULL ,
        acteur_id      Int NOT NULL ,
        film_id        Int NOT NULL ,
        effectif       Int NOT NULL
	,CONSTRAINT PERSONNEL_PK PRIMARY KEY (realisateur_id,acteur_id,film_id)

	,CONSTRAINT PERSONNEL_REALISATEUR_FK FOREIGN KEY (realisateur_id) REFERENCES REALISATEUR(realisateur_id)
	,CONSTRAINT PERSONNEL_ACTEURS0_FK FOREIGN KEY (acteur_id) REFERENCES ACTEURS(acteur_id)
	,CONSTRAINT PERSONNEL_FILMS1_FK FOREIGN KEY (film_id) REFERENCES FILMS(film_id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: SEANCE
#------------------------------------------------------------

CREATE TABLE SEANCE(
        salle_id      Int NOT NULL ,
        projection_id Int NOT NULL ,
        film_id       Int NOT NULL ,
        reservation   Int NOT NULL
	,CONSTRAINT SEANCE_PK PRIMARY KEY (salle_id,projection_id,film_id)

	,CONSTRAINT SEANCE_SALLES_FK FOREIGN KEY (salle_id) REFERENCES SALLES(salle_id)
	,CONSTRAINT SEANCE_PROJECTIONS0_FK FOREIGN KEY (projection_id) REFERENCES PROJECTIONS(projection_id)
	,CONSTRAINT SEANCE_FILMS1_FK FOREIGN KEY (film_id) REFERENCES FILMS(film_id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: SCENARIO
#------------------------------------------------------------

CREATE TABLE SCENARIO(
        genre_id Int NOT NULL ,
        theme_id Int NOT NULL ,
        film_id  Int NOT NULL
	,CONSTRAINT SCENARIO_PK PRIMARY KEY (genre_id,theme_id,film_id)

	,CONSTRAINT SCENARIO_GENRES_FK FOREIGN KEY (genre_id) REFERENCES GENRES(genre_id)
	,CONSTRAINT SCENARIO_THEME0_FK FOREIGN KEY (theme_id) REFERENCES THEME(theme_id)
	,CONSTRAINT SCENARIO_FILMS1_FK FOREIGN KEY (film_id) REFERENCES FILMS(film_id)
)ENGINE=InnoDB;

