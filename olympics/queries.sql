SELECT nocs.noc
FROM nocs
ORDER BY nocs.noc;

SELECT DISTINCT athletes.name
FROM athletes, nocs, results
WHERE athletes.id = results.athlete_id
AND nocs.id = results.noc_id
AND nocs.region = 'Jamaica'
ORDER BY athletes.name;

SELECT athletes.name, nocs.noc, events.event, games.year, games.season, results.medal
FROM athletes, nocs, events, games, results
WHERE athletes.id = results.athlete_id
AND nocs.id = results.noc_id
AND events.id = results.event_id
AND games.id = results.game_id
AND athletes.name LIKE '%Greg%Louganis%'
AND results.medal != 'NA' 
ORDER BY games.year; 

SELECT nocs.noc, COUNT(results.medal)
FROM nocs, results
WHERE nocs.id = results.noc_id
AND results.medal = 'Gold' 
GROUP BY nocs.noc
ORDER BY COUNT(results.medal) DESC;