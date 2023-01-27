SELECT a.artista, alb.album, count(s.usuario_id) AS seguidores
FROM 
SpotifyClone.artista AS a
INNER JOIN
SpotifyClone.seguindo_artistas AS s
ON a.artista_id = s.artista_id
INNER JOIN SpotifyClone.album AS alb
ON alb.artista_id = a.artista_id
GROUP BY a.artista, alb.album
ORDER BY seguidores DESC, artista, album 