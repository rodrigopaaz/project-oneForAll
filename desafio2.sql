SELECT count(cancao_id) AS cancoes,
count(DISTINCT artista_id) AS artistas,
count(DISTINCT album_id) AS albuns
FROM SpotifyClone.cancoes