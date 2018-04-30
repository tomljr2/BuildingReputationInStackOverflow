#Unfortunately, the postGRESql database created all dates using a date object
#instead of a timestamp, so I could not get a very specific time like I needed.
#So intstead, I used the StackOverflow online query using these queries:

#Creation time of a post
select Id, cast(CreationDate as float)
from Posts
where(PostTypeId = 1 and AnswerCount > 0)
order by Id asc;


#Creation time of the earliest posted comment on a post
select ParentId, cast(min(CreationDate) as float)
from Posts
where(PostTypeId = 2)
group by ParentId
order by ParentId asc;

#Creation time of posts with an accepted answer
select Id, cast(CreationDate as float)
from Posts
where(PostTypeId = 1 and AnswerCount > 0 and AcceptedAnswerId is not null)
order by Id asc;

#Creation time of accepted answers
select ParentId, cast(min(CreationDate) as float)
from Posts
where(PostTypeId = 2 and Id in (select AcceptedAnswerId from Posts))
group by ParentId
order by ParentId asc;
