This is a replication by Justin Tomlinson of "Building Reputation in 
StackOverflow: An Empirical Investigation" by A. Bosu, C. Corley, 
D. Heaton, D. Chatterji, J. Carver, and N. Kraft at the University of Alabama.

This project relies on a large series of queries into a postgresql database
supplied by the MSR conference from August 2012 of the stack overflow data
dump. Due to the large file size, that will not be in my GitHub repository,
but it can be found here:
	
	http://2013.msrconf.org/challenge.php#challenge_data 

The project also relies on an open-source network exploration and manipulation
software called Gephi, which is available here:

	http://gephi.org/

Directories:

	queries/:

	This directory contains all of the script files that can be used with
	a postgresql database of the datadump. The output is not necessarily
	obvious though, so be sure to read the comments of what each query is
	doing.

	results/:
	
	This directory contains the results from the queries. These are not
	automated, they are written by hand from the results of the queries,
	and some additional calculations are added to give more relevant 
	results, such as certain ratios and other metrics.

Files:

	metricsquery.sql

	This file is a postgresql script file that will query the data dump and
	get the necessary values to calculate the different metrics.

	metrics.txt
	
	This file shows the results of the metric queries and the calculated
	metrics.

	categoryquery.sql

	Using the results of the Gephi implementation, each category (made up
	of certain tags) is queried for different metrics. Since there are 122
	tags, I have omitted all of the ones not listed under "Top Areas"in
	the chart from the research paper.

	category.txt

	This file shows the results of the metrics applied to each of the
	Gephi categories. There 14 categories which are listed at the end
	of each metric.

	expertqueries.sql

	This shows the queries used to get information on the "experts" of
	stackoverflow.

	experts.txt

	This shows the results of queries and hand-calculations for the
	experts category.

	dowqueries.sql

	This file contains the queries used to get information about
	individual days of the week's activity from the database.

	dow.txt

	These are the results from the query and hand calculations made
	from the results of the query. Each result label is followed by a
	character (U,M,T,W,R,F,S). These represent the days of the week
	beginning with Sunday and ending with Saturday.

	intervalqueries.sql

	This file is using the StackOverflow online query to get the results
	since the postGRESql database did not use dates as a timestamp, so I
	could not get a specific time. Unfortunately, stack overflow only
	allows 50000 results to be returned, so the median interval is not
	the same as the research paper.

	intervalSS.csv

	This is the file that was used in Excel to find the difference
	between the two times and the median of them all.

	intervalAASS.csv

	This is the same as intervalSS, but for the accepted answer interval
	and not the first answer interval.

	interval.txt

	This is the results of the queries once they were imported to 
	Microsoft Excel and the difference and median was taken. 

	fcqueries.sql

	These contain queries used on the 10 fastest contributors to reach
	a score of 20000 to get different metrics. 

	fc.txt

	These are the results of the queries on the ten fastest users. The
	first ten results listed are the user id (UID) of each user. Then
	following results are labeled in the same order of users.

	FinalReport.pdf

	This pdf is the final report of my findings comparing my results to
	the paper's, and drawing conclusion from it.
