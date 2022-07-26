-- https://stackoverflow.com/questions/3761240/count-from-multiple-tables-in-mysql

SELECT
  (SELECT COUNT(musica) FROM SpotifyClone.musicas) AS cancoes, 
  (SELECT COUNT(artista) FROM SpotifyClone.artistas) AS artistas,
  (SELECT COUNT(album) FROM SpotifyClone.albums) AS albuns;