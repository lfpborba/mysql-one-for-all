-- https://stackoverflow.com/questions/3761240/count-from-multiple-tables-in-mysql

SELECT
  (SELECT COUNT(musica) FROM SpotifyClone.musicas) as cancoes, 
  (SELECT COUNT(artista) FROM SpotifyClone.artistas) as artistas,
  (SELECT COUNT(album) FROM SpotifyClone.albums) as albuns;