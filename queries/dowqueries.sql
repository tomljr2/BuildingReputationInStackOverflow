/*Get the number of questions posted and accepted answers on a given date*/
/*Sunday*/
select count(*), count(distinct accepted_answer_id)
from posts
where(post_type_id = 1 and
      extract(dow from creation date) = 0);

/*Monday*/
select count(*), count(distinct accepted_answer_id)
from posts
where(post_type_id = 1 and
      extract(dow from creation date) = 1);

/*Tuesday*/
select count(*), count(distinct accepted_answer_id)
from posts
where(post_type_id = 1 and
      extract(dow from creation date) = 2);

/*Wednesday*/
select count(*), count(distinct accepted_answer_id)
from posts
where(post_type_id = 1 and
      extract(dow from creation date) = 3);

/*Thursday*/
select count(*), count(distinct accepted_answer_id)
from posts
where(post_type_id = 1 and
      extract(dow from creation date) = 4);

/*Friday*/
select count(*), count(distinct accepted_answer_id)
from posts
where(post_type_id = 1 and
      extract(dow from creation date) = 5);

/*Saturday*/
select count(*), count(distinct accepted_answer_id)
from posts
where(post_type_id = 1 and
      extract(dow from creation date) = 6);
