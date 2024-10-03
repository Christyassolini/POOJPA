create database meubanco;
use meubanco;

CREATE TABLE Usuario (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    senha VARCHAR(255)
);
CREATE TABLE Playlist (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    publico BOOLEAN,
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES Usuario(id)
);
CREATE TABLE Artista (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    biografia TEXT
);
CREATE TABLE Musica (
    id INT PRIMARY KEY,
    titulo VARCHAR(100),
    genero VARCHAR(50),
    duracao FLOAT,
    artista_id INT,
    FOREIGN KEY (artista_id) REFERENCES Artista(id)
);
CREATE TABLE Album (
    id INT PRIMARY KEY,
    titulo VARCHAR(100),
    descricao TEXT,
    artista_id INT,
    FOREIGN KEY (artista_id) REFERENCES Artista(id)
);
CREATE TABLE PlaylistMusica (
    playlist_id INT,
    musica_id INT,
    PRIMARY KEY (playlist_id, musica_id),
    FOREIGN KEY (playlist_id) REFERENCES Playlist(id),
    FOREIGN KEY (musica_id) REFERENCES Musica(id)
);