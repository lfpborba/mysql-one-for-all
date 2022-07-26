SELECT
  a.artista AS artista,
  al.album AS album
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albums AS al
ON a.id_artista=al.id_artista
WHERE a.artista='Walter Phoenix'
ORDER BY artista, album;