SELECT c.cancao AS nome, count(p.plano) AS reproducoes
FROM
SpotifyClone.cancoes AS c
INNER JOIN
SpotifyClone.historico_de_reproducoes AS h
ON h.cancao_id = c.cancao_id
INNER JOIN
SpotifyClone.usuario AS u
ON u.usuario_id = h.usuario_id
INNER JOIN
SpotifyClone.plano AS p
ON p.plano_id = u.plano_id
WHERE plano <> 'familiar'
AND plano <> 'universitario'
GROUP BY c.cancao
ORDER BY c.cancao
