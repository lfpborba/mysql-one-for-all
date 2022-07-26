SELECT 
  DISTINCT u.usuario AS usuario,
  COUNT(h.usuario_id) AS qtde_musicas_ouvidas,
  ROUND(SUM(DISTINCT c.segundos)/60, 2) AS total_minutos
FROM
  SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico AS h
  ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.musicas AS c
  ON h.id_musicas = c.id_musicas
GROUP BY usuario;