--print the required tables
-- these tables are extracted from the given link of website i.e.,https://data.world/raghu543/ipl-data-till-2016-set-of-csv-files
USE MERINA1
SELECT * FROM dbo.ball;


use merina
select * from dbo.player1;

Use merina
select * from dbo.Player_match;

use MERINA1
select * from dbo.extra_runs;


use MERINA1
select * from dbo.batsman_scored;



-- Given a match id, print the player who scored the most number of runs

 select  top 5 max([Runs_Scored]) as  [Runs Scored],a.Match_Id,c.Player_Name
from [dbo].ball as a 
inner join [dbo].[Batsman_Scored] as b 
on concat(a.Match_Id,a.Over_Id,a.Ball_Id,a.Innings_No)=
concat(b.[Match_Id],b.Over_Id,b.Ball_Id,b.Innings_No)
inner join Player c on a.Striker=c.Player_Id 
group by a.Match_Id,c.Player_Name,Runs_Scored
order by runs_scored desc
--EXPLANATION: this above query gives the information or output of only the top runs scored by the players in ipl using the tables of ball, batsman_scored and player.





--Print 5 most economical bowlers match id across all matches

select  top 5 max(Bowler) as [economic_bowler],a.Match_Id,c.Player_Name
from [dbo].ball as a 
inner join player_match as b 
on concat(a.Match_Id,a.Ball_Id)=
concat(b.[Match_Id],b.Role_Id)
inner join Player c on a.Striker=c.Player_Id 
group by a.Match_Id,c.Player_Name,Bowler
order by Bowler desc
--EXPLANATION:  this query gives the result of top 5 economic bowlers in all matches.



--Extra queries
--to get distinct top 5 bowler value
SELECT distinct TOP 5 Bowler,* FROM ball;

--to get only 465 value rows of bowler column from ball table
SELECT * FROM dbo.ball where Bowler= 465;