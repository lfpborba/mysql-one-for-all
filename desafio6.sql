SELECT
  ROUND(MIN(pagamento.valor), 2) AS faturamento_minimo,
  ROUND(MAX(pagamento.valor), 2) AS faturamento_maximo,
  ROUND(AVG(pagamento.valor), 2) AS faturamento_medio,
  ROUND(SUM(pagamento.valor), 2) AS faturamento_total
FROM SpotifyClone.pagamento AS pagamento
INNER JOIN SpotifyClone.usuarios AS usuarios
ON usuarios.id_plano = pagamento.id_plano;