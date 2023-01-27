SELECT count(u.usuario) AS quantidade_musicas_no_historico
FROM
SpotifyClone.cancoes AS c
INNER JOIN
SpotifyClone.artista AS a
ON c.artista_id = a.artista_id
INNER JOIN
SpotifyClone.historico_de_reproducoes AS h
ON h.cancao_id = c.cancao_id
INNER JOIN SpotifyClone.usuario AS u
ON u.usuario_id = h.usuario_id 
WHERE u.usuario = "Barbara Liskov"
