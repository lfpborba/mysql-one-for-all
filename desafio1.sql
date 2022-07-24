DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos(
    id_plano INT AUTO_INCREMENT PRIMARY KEY,
    plano VARCHAR(20),
    valor DEC(3,2)
) engine = InnoDB;

INSERT INTO planos (plano, valor)
VALUES
  ('gratuito', 0)
  ('familiar', 7,99)
  ('universitário', 5,99)
  ('pessoal', 6,99);

CREATE TABLE usuarios (
  id_usuario INT AUTO_INCREMENT PRIMARY KEY,
  usuario VARCHAR(20),
  idade INT,
  id_plano INT,
  FOREIGN KEY (id_plano)
) engine = InnoDB;

INSERT INTO usuarios(usuario, idade, id_plano)
VALUES 
  ('Thati', 23, 1), 
  ('Cintia', 35, 2), 
  ('Bill', 20, 4), 
  ('Roger', 45, 3),
  ('Norman', 58, 3),
  ('Patrick', 33, 2),
  ('Vivian', 26, 4),
  ('Carol', 19, 4),
  ('Angelina', 42, 2),
  ('Paul', 46, 2);

CREATE TABLE artistas (
  id_artista INT AUTO_INCREMENT PRIMARY KEY,
  artista VARCHAR(50)
) engine = InnoDB;

INSERT INTO artistas(artista)
VALUES
  ('Walter Phoenix'), 
  ('Peter Strong'), 
  ('Lance Day'), 
  ('Freedie Shannon'),
  ('Tyler Isle'),
  ('Fog');

CREATE TABLE albuns (
  album_id INT AUTO_INCREMENT PRIMARY KEY,
  album VARCHAR(50),
  id_artista INT
  FOREIGN KEY(id_artista)
    REFERENCES artistas (id_artista)
) engine = InnoDB;

INSERT INTO albuns(album, id_artista)
VALUES 
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Incandescent', 3),
  ('Temporary Culture', 4),
  ('Library of liberty', 4),
  ('Chained Down', 5),
  ('Cabinet of fools', 5),
  ('No guarantees', 5),
  ('Apparatus', 6);

CREATE TABLE musicas (
  id_musicas INT AUTO_INCREMENT PRIMARY KEY,
  musica VARCHAR(50),
  album_id INT,
  segundos INT,
  FOREIGN KEY (album_id)
    REFERENCES albuns (album_id)
) engine = InnoDB;

INSERT INTO musicas(musica, album_id, segundos)
VALUES
  ('Soul For Us', 1, 200),
  ('Reflections Of Magic', 1, 163),
  ('Dance With Her Own', 1, 116),
  ('Troubles Of My Inner Fire', 2, 203),
  ('Time Fireworks', 2, 152),
  ('Magic Circus', 3, 105),
  ('Honey, So Do I', 3, 207),
  ("Sweetie, Let's Go Wild", 3, 139),
  ('She Knows', 3, 244),
  ('Fantasy For Me', 4, 100),
  ('Celebration Of More', 4, 146),
  ('Rock His Everything', 4, 223),
  ('Home Forever', 4, 231),
  ('Diamond Power', 4, 241),
  ("Let's Be Silly", 4, 132),
  ('Thang Of Thunder', 5, 240),
  ('Words Of Her Life', 5, 185),
  ('Without My Streets', 5, 176),
  ('Need Of The Evening', 6, 190),
  ('History Of My Roses', 6, 222),
  ('Without My Love', 6, 111),
  ('Walking And Game', 6, 123),
  ('Young And Father', 6, 197),
  ('Finding My Traditions', 7, 179),
  ('Walking And Man', 7, 229),
  ('Hard And Time', 7, 135),
  ("Honey, I'm A Lone Wolf", 7, 150),
  ('She Thinks I Wint Stay Toninght', 8, 166),
  ('He Heard Youre Bad For Me', 8, 154),
  ('He Hopes We Cant Stay', 8, 210),
  ('I Know I Know', 8, 117),
  ('Hes Walking Away', 9, 159),
  ('Hes Troube', 9, 138),
  ('I Heard I Want To Bo Alone', 9, 120),
  ('I Ride Alone', 9, 151),
  ('Honey', 10, 79),
  ('You Cheated On Me', 10, 95),
  ('Wouldnt It Be Nice', 10, 213),
  ('Baby', 10, 136),
  ('You Make Me Feel So..', 10, 83);

CREATE TABLE historico_reproducoes (
  id_usuario INT,
  id_musica INT,
  data_reproducao INT,
  CONSTRAINT PRIMARY KEY (id_usuario, id_musica),
  FOREIGN KEY (id_usuario)
    REFERENCES usuarios (id_usuario),
  FOREIGN KEY (id_musica)
    REFERENCES musicas (id_musica)
) engine = InnoDB;

INSERT INTO historico_reproducoes
VALUES
  (1, 36, 2020),
  (1, 25, 2020),
  (1, 23, 2020),
  (1, 14, 2020),
  (1, 15, 2020),
  (2, 34, 2020),
  (2, 24, 2020),
  (2, 21, 2020),
  (2, 39, 2020),
  (3, 6, 2020),
  (3, 3, 2020),
  (3, 26, 2020),
  (4, 2, 2021),
  (4, 35, 2021),
  (4, 27, 2021),
  (5, 7, 2020),
  (5, 12, 2017),
  (5, 14, 2020),
  (5, 1, 2020),
  (6, 38, 2019),
  (6, 29, 2017),
  (6, 30, 2017),
  (6, 22, 2018),
  (7, 5, 2018),
  (7, 4, 2020),
  (7, 11, 2018),
  (8, 39, 2018),
  (8, 40, 2020),
  (8, 32, 2019),
  (8, 33, 2021),
  (9, 16, 2021),
  (9, 17, 2018),
  (9, 8, 2021),
  (9, 9, 2020),
  (10, 20, 2017),
  (10, 21, 2017),
  (10, 12, 2017),
  (10, 13, 2017);

CREATE TABLE usuarios_seguindo (
    id_usuario INT,
    id_artista INT,
    CONSTRAINT PRIMARY KEY (id_usuario, id_artista),
    FOREIGN KEY (id_usuario)
        REFERENCES usuarios (id_usuario),
    FOREIGN KEY (id_artista)
        REFERENCES artistas (id_artista)
) engine = InnoDB;

INSERT INTO usuarios_seguindo 
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4),
  (5, 5),
  (5, 6),
  (6, 6),
  (6, 3),
  (6, 1),
  (7, 2),
  (7, 5),
  (8, 1),
  (8, 5),
  (9, 6),
  (9, 4),
  (9, 3),
  (10, 2),
  (10, 6); 
