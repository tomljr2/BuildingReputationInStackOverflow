/*Accepted Ratio*/

/*Number of questions with an accepted answer*/
select count(accepted_answer_id)
from posts
where(post_type_id = 1);

/*Number of total questions*/
select count(*)
from posts
where(post_type_id = 1);


/*Unanswered Ratio*/


/*Find the number of questions that had at least one answer, but none
  of the answers were upvoted once*/


/*No-Response Ratio*/

/*Number of questions with one or more answers. This is subtracted from
  the total and then divided by the total to get the unanswered ratio.*/
select count(*)
from posts
where(answer_count >= 1);
