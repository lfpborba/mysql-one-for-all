SELECT
  a.artista AS artista,
  al.album AS album,
  COUNT(s.id_artista) AS seguidores
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albums AS al
ON a.id_artista=al.id_artista
INNER JOIN SpotifyClone.follow_list AS s
ON a.id_artista=s.id_artista
GROUP BY album, artista
ORDER BY seguidores DESC, artista, album;