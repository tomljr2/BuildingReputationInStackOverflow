/*Get the number of questions and accepted answers for each category,
  these will not be exactly accurate because they do not encompass all
  122 tags uses by the research paper*/

/*.NET*/
select count(*), count(accepted_answer_id)
from posts
where (post_type_id = 1 and
      ((tags like '%<c#>%') or
       (tags like '%<asp.net>%') or
       (tags like '%<.net>%') or
       (tags like '%<vb.net>%') or
       (tags like '%<wcf>%')));

/*Java*/
select count(*), count(accepted_answer_id)
from posts
where (post_type_id = 1 and
      ((tags like '%<android>%') or
       (tags like '%<java>%') or
       (tags like '%<eclipse>%')));

/*Web*/
select count(*), count(accepted_answer_id)
from posts
where (post_type_id = 1 and
      ((tags like '%<javascript>%') or
       (tags like '%<jquery>%') or
       (tags like '%<html>%') or
       (tags like '%<css>%')));

/*LAMP*/
select count(*), count(accepted_answer_id)
from posts
where (post_type_id = 1 and
      ((tags like '%<php>%') or
       (tags like '%<mysql>%') or
       (tags like '%<arrays>%') or
       (tags like '%<apache>%')));

/*C/C++*/
select count(*), count(accepted_answer_id)
from posts
where (post_type_id = 1 and
      ((tags like '%<c>%') or
       (tags like '%<c++>%') or
       (tags like '%<windows>%') or
       (tags like '%<qt>%')));

/*OOP*/
select count(*), count(accepted_answer_id)
from posts
where (post_type_id = 1 and
      ((tags like '%<oop>%') or
       (tags like '%<image>%') or
       (tags like '%<performance>%') or
       (tags like '%<delphi>%')));

/*iOS*/
select count(*), count(accepted_answer_id)
from posts
where (post_type_id = 1 and
      ((tags like '%<iphone>%') or
       (tags like '%<ios>%') or
       (tags like '%<objective-c>%')));

/*Databases*/
select count(*), count(accepted_answer_id)
from posts
where (post_type_id = 1 and
      ((tags like '%<sql>%') or
       (tags like '%<sql-server>%') or
       (tags like '%<database>%')));

/*Python*/
select count(*), count(accepted_answer_id)
from posts
where (post_type_id = 1 and
      ((tags like '%<python>%') or
       (tags like '%<django>%') or
       (tags like '%<list>%')));

/*Ruby*/
select count(*), count(accepted_answer_id)
from posts
where (post_type_id = 1 and
      ((tags like '%<ruby>%') or
       (tags like '%<ruby-on-rails>%')));

/*Strings*/
select count(*), count(accepted_answer_id)
from posts
where (post_type_id = 1 and
      ((tags like '%<regex>%') or
       (tags like '%<string>%') or
       (tags like '%<perl>%')));

/*MVC*/
select count(*), count(accepted_answer_id)
from posts
where (post_type_id = 1 and
      ((tags like '%<asp.net-mvc>%') or
       (tags like '%<mvc>%')));

/*Adobe*/
select count(*), count(accepted_answer_id)
from posts
where (post_type_id = 1 and
      ((tags like '%<flex>%') or
       (tags like '%<flash>%') or
       (tags like '%<actionscript>%')));

/*SCM*/
select count(*), count(accepted_answer_id)
from posts
where (post_type_id = 1 and
      ((tags like '%<git>%') or
       (tags like '%<svn>%')));


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
