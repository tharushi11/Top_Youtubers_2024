

/* Data Quality test

1. Raw count test
2. Column count test
3. Data type check
4 Duplicate count check

*/

--1. Raw count check

Select 
	COUNT(*) as no_of_raws

From 
	view_uk_youtubers_2024


---2. Coumn count check

Select 
	count(*) as column_count
From 
	INFORMATION_SCHEMA.COLUMNS
where 
	TABLE_NAME = 'view_uk_youtubers_2024'




---4. Data type check

Select 
	COLUMN_NAME,
	DATA_TYPE
From 
	INFORMATION_SCHEMA.COLUMNS
where 
	TABLE_NAME = 'view_uk_youtubers_2024'


----4. Duplicate records check

Select channel_name,
	count(*) as duplicate_count
From 
	view_uk_youtubers_2024
Group by
	channel_name
Having
	COUNT(*) > 1