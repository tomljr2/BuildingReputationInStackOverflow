/*Get the number of questions and accepted answers for each category*/

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
