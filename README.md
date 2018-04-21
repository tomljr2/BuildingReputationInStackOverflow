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
	of certain tags) is queried for different metrics.

	category.txt

	This file shows the results of the metrics applied to each of the
	Gephi categories. There 14 categories which are listed at the end
	of each metric.
