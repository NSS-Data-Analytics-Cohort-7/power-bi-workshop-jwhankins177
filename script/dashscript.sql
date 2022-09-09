-- Player full name and awards won.
SELECT p.playerid, p.namefirst || ' ' || p.namelast AS name, a.awardid
FROM awardsplayers AS a
JOIN people AS p
    USING (playerid)
    
-- Full name of school    
SELECT DISTINCT(c.playerid), c.schoolid, s.schoolname
FROM collegeplaying AS c
JOIN schools AS s
    USING (schoolid)
ORDER BY 1

-- Playername and allstar appearances
SELECT p.namefirst || ' ' || p.namelast AS name, COUNT(DISTINCT(a.gameid)) as total_allstar, p.playerid
FROM allstarfull AS a
JOIN people AS p
    USING(playerid)
GROUP BY 1,3
ORDER BY 2 DESC
LIMIT 10

-- Playerid and total career salary
SELECT playerid, SUM(salary)
FROM salaries
--WHERE playerid ='teixema01'
GROUP BY 1
ORDER BY 2 DESC


-- Top ten schools by MLB salaries
SELECT c.schoolid, s.salary, c.yearid, playerid
FROM collegeplaying as c
JOIN salaries as s
USING (playerid)
WHERE c.schoolid = 'gatech'
-- GROUP BY 1,2,4
ORDER BY 2 DESC
--LIMIT 10

SELECT DISTINCT(playerid), SUM(salary)
FROM salaries
FULL JOIN collegeplaying
    USING (playerid)
WHERE playerid = 'teixema01'
GROUP BY 1













