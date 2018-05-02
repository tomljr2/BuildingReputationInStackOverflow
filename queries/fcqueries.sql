#These queries find metrics for the ten fastest contributors to reach a
#reputation of 20,000

#First score
select creation_date
from posts
where(owner_user_id = 938089 and
      score > 0)
order by creation_date asc;

select creation_date
from posts
where(owner_user_id = 616700 and
      score > 0)
order by creation_date asc;

select creation_date
from posts
where(owner_user_id = 22656 and
      score > 0)
order by creation_date asc;

select creation_date
from posts
where(owner_user_id = 573261 and
      score > 0)
order by creation_date asc;

select creation_date
from posts
where(owner_user_id = 224671 and
      score > 0)
order by creation_date asc;

select creation_date
from posts
where(owner_user_id = 335858 and
      score > 0)
order by creation_date asc;

select creation_date
from posts
where(owner_user_id = 157882 and
      score > 0)
order by creation_date asc;

select creation_date
from posts
where(owner_user_id = 95810 and
      score > 0)
order by creation_date asc;

select creation_date
from posts
where(owner_user_id = 922184 and
      score > 0)
order by creation_date asc;

select creation_date
from posts
where(owner_user_id = 61974 and
      score > 0)
order by creation_date asc;

#Number of answers
select count(*)
from posts
where(post_type_id = 2 and
      owner_user_id = 938089);

select count(*)
from posts
where(post_type_id = 2 and
      owner_user_id = 616700);

select count(*)
from posts
where(post_type_id = 2 and
      owner_user_id = 22656);

select count(*)
from posts
where(post_type_id = 2 and
      owner_user_id = 573261);

select count(*)
from posts
where(post_type_id = 2 and
      owner_user_id = 224671);

select count(*)
from posts
where(post_type_id = 2 and
      owner_user_id = 335858);

select count(*)
from posts
where(post_type_id = 2 and
      owner_user_id = 157882);

select count(*)
from posts
where(post_type_id = 2 and
      owner_user_id = 95810);

select count(*)
from posts
where(post_type_id = 2 and
      owner_user_id = 922184);

select count(*)
from posts
where(post_type_id = 2 and
      owner_user_id = 61974);

#Number of accepted answers
select count(*)
from posts
where(id in (select accepted_answer_id
             from posts) and
      post_type_id = 2 and
      owner_user_id = 938089);

select count(*)
from posts
where(id in (select accepted_answer_id
             from posts) and
      post_type_id = 2 and
      owner_user_id = 616700);

select count(*)
from posts
where(id in (select accepted_answer_id
             from posts) and
      post_type_id = 2 and
      owner_user_id = 22656);

select count(*)
from posts
where(id in (select accepted_answer_id
             from posts) and
      post_type_id = 2 and
      owner_user_id = 573261);

select count(*)
from posts
where(id in (select accepted_answer_id
             from posts) and
      post_type_id = 2 and
      owner_user_id = 224671);

select count(*)
from posts
where(id in (select accepted_answer_id
             from posts) and
      post_type_id = 2 and
      owner_user_id = 335858);

select count(*)
from posts
where(id in (select accepted_answer_id
             from posts) and
      post_type_id = 2 and
      owner_user_id = 157882);

select count(*)
from posts
where(id in (select accepted_answer_id
             from posts) and
      post_type_id = 2 and
      owner_user_id = 95810);

select count(*)
from posts
where(id in (select accepted_answer_id
             from posts) and
      post_type_id = 2 and
      owner_user_id = 922184);

select count(*)
from posts
where(id in (select accepted_answer_id
             from posts) and
      post_type_id = 2 and
      owner_user_id = 61974);
