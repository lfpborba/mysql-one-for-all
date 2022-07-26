SELECT
  u.usuario AS usuario,
  IF(MAX(YEAR(h.data_reproducao) = 2021), "Usuário Ativo", 'Usuário Inativo') AS condicao_usuario
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico AS h
ON u.usuario_id = h.usuario_id
GROUP BY u.usuario
ORDER BY u.usuario;