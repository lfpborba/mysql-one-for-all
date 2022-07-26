SELECT
 m.musica AS cancao,
 COUNT(h.id_musicas) AS reproducoes
FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.historico AS h
ON m.id_musicas = h.id_musicas
GROUP BY m.musica
ORDER BY reproducoes DESC, cancao
LIMIT 2;