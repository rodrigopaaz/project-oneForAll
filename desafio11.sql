SELECT cancao AS nome_musica,
	CASE
		WHEN cancao LIKE("%Bard%") THEN REPLACE(cancao, 'Bard', 'QA')
        WHEN cancao LIKE("%Amar%") THEN REPLACE(cancao, 'Amar', 'Code Review')
        WHEN cancao LIKE("%Pais%") THEN REPLACE(cancao, 'Pais', 'Pull Requests')
        WHEN cancao LIKE("%SOUL%") THEN REPLACE(cancao, 'SOUL', 'CODE')
        WHEN cancao LIKE("%SUPERSTAR%") THEN REPLACE(cancao, 'SUPERSTAR', 'SUPERDEV')
        END AS novo_nome
FROM SpotifyClone.cancoes
ORDER BY novo_nome DESC, nome_musica
LIMIT 5
;