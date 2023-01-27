SELECT a.artista, alb.album
FROM
SpotifyClone.artista AS a
INNER JOIN
SpotifyClone.album AS alb
ON a.artista_id = alb.artista_id
WHERE artista = 'Elis Regina'