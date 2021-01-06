/* INST 327 - Final Project Views - Group 5 */
/* Michael Hough, Henry Stought, Adam Santilli, Reed Fodge, Fernando Fisk */

USE moviesdb2;
/* View 1 - Film Budget Vs. Film Gross Earnings + Ratio*/
/* Req. A */
CREATE OR REPLACE VIEW `budget_vs_gross` AS
	SELECT movie_name AS "Film Title", CONCAT('$',FORMAT(budget,2)) AS "Film Budget",
    CONCAT('$',FORMAT(gross_earnings,2)) AS "Film Gross Earnings", ROUND(gross_earnings / budget,2) AS "Budget Vs. Gross Earnings Ratio"
    FROM movie m JOIN finance f USING (movie_id)
    ORDER BY budget DESC;

/* View 2 - Average Budget of films for each Actor, excluding actors with an average film budget less than $220 million. */
/* Req. A,B,C */
CREATE OR REPLACE VIEW `avg_film_budget_by_actor` AS
	SELECT actor_name AS "Actor Name", CONCAT('$',FORMAT(AVG(f.budget),2)) AS "Average Budget for Films Featuring this Actor"
    FROM actor a JOIN movie_actors USING (actor_id)
    JOIN finance f USING (movie_id)
    GROUP BY actor_name
    HAVING SUM(f.budget) > 220000000;

/* View 3 - PG-13 rated-films by actor */
/* Req. A,B,D,E */ 
CREATE OR REPLACE VIEW `pg_13_films_by_actor` AS
	SELECT movie_name AS "Film", actor_name AS "Actor"
    FROM movie m JOIN movie_actors USING (movie_id)
    JOIN actor a USING (actor_id)
    WHERE movie_id IN
		(
          SELECT movie_id
          FROM movie JOIN ratings USING (movie_id)
          JOIN content_rating cr USING (content_rating_id)
          WHERE cr.content_rating = 'PG-13'
        )
	ORDER BY movie_name;
    
/* View 4 - Average Film IMDB Score by Director */
/* Req. A,C */
CREATE OR REPLACE VIEW `imdb_score_by_director` AS
	SELECT director_name AS "Director", AVG(imdb_score) AS "Average IMDB Score"
	FROM director d JOIN movie m USING(director_id)
	JOIN ratings USING (movie_id)
	GROUP BY d.director_id
    ORDER BY `Average IMDB Score` DESC;
    
/* View 5 - Films with at least 3 times as many user ratings as critic ratings */
/* Req. A,B */
CREATE OR REPLACE VIEW `reviews_ratio` AS
	SELECT movie_name AS "Film Title", user_reviews AS "User Reviews", critic_reviews AS "Critic Reviews",
    ROUND(user_reviews / critic_reviews,2) AS "Review Ratio"
    FROM movie m JOIN ratings r USING (movie_id)
    HAVING `Review Ratio` >= 3
    ORDER BY movie_name;