/*Getting the ranking of users requires knowing their score and how many
  total posts they have, this query will do this for c#. This will need
  to be changed for the different tags. If they have a score >1000 on
  200 or more questions, they are gold. If they have >400 on 80 questions
  or more they are silver. If they have >200 on 20+ questions, they are
  bronze. We really only care about gold or silver though.*/
select owner_user_id, sum(score), count(*)
from posts
where(post_type_id = 2 and
      parent_id in (select id
                    from posts
                    where(post_type_id = 1 and
			  and tags like '%<c#>%')))
group by owner_user_id
order by sum(score) desc;


/*Get the total number of users who have answered a question,
  this get the ratio of experts from the total contributors*/
select count(distinct owner_user_id)
from posts
where(post_type_id = 2);

/*Total answers on Stack Overflow*/
select count(*)
from posts
where(post_type_id = 2);

/*Total accepted answers on StackOverflow*/
select count(distinct accepted_answer_id)
from posts;
