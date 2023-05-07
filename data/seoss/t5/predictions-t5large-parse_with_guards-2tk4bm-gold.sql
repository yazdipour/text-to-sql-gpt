select issue_id from issue where type = "Bulk"	apache-pig 
select issue_id, count(*) from issue group by issue_id	apache-pig 
select issue_id from issue where created_date_zoned > '2003-04-19 15:06:20' and created_date_zoned <= '2016-03-15 00:33:18'	apache-pig 
select issue_id from issue where issue_id not in ( select issue_id from issue_fix_version )	apache-pig 
select issue_id from issue where type = "Bulk"	apache-pig 
apache	apache
select issue_id from issue where type = "Bug"	apache-pig 
select status from issue where status = "Closed" union select status from issue where status = "Resolved" or status = "Patch Available"	apache-pig 
select issue_id, status from issue where resolution = 'Yes' or issue_id = 'Closed' group by issue_id having count(*) >= 1	apache-pig 
select issue_id, status, resolved_date_zoned from issue group by issue_id	apache-pig 
select issue_id, status from issue order by status desc limit 1	apache-pig 
select issue_id from issue where status = "Closed" union select issue_id from issue where status = "Resolved" or status = "Patch Available"	apache-pig 
select status from issue where status = "Closed"	apache-pig 
select status from issue where status = "Closed" union select status from issue where status = "Resolved" or status = "Patch_available"	apache-pig 
select t1.issue_id, t1.type, t1.description from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.component = "impl"	apache-pig 
select t1.issue_id, t1.type, t1.description from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.component = "impl"	apache-pig 
select t1.issue_id, t1.type, t1.description from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.component = 'impl'	apache-pig 
select t1.issue_id, t1.type, t1.description from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.component = "impl"	apache-pig 
select t1.issue_id, t1.type, t1.description from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.component = "impl"	apache-pig 
select t1.issue_id, t1.type, t1.description from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.component = "impl"	apache-pig 
select t1.issue_id, t1.type, t1.description from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.component = "impl"	apache-pig 
select issue_id from issue where updated_date between 2017-03-22	apache-pig 
select issue_id from issue where updated_date = "2017-03-22" intersect select issue_id from issue where updated_date = "2017-03-23"	apache-pig 
select issue_id from issue where updated_date between '2017-03-22' and '2017-03-23'	apache-pig 
select issue_id from issue where updated_date between '2017-03-22' and '2017-03-23'	apache-pig 
select issue_id from issue where updated_date between '2017-03-22' and '2017-03-23'	apache-pig 
select issue_id from issue where updated_date = "2017-03-22" intersect select issue_id from issue where updated_date = "2017-03-23"	apache-pig 
select issue_id from issue where updated_date = '2017-03-22' intersect select issue_id from issue where updated_date_zoned = '2017-03-23'	apache-pig 
select * from issue where issue_id = "PIG-3599"	apache-pig 
select issue_id from issue where created_date_zoned = "2003-04-19 15:06:20" and resolved_date_zoned = "2016-03-15 00:33:18"	apache-pig 
select * from issue where issue_id = "PIG-3599"	apache-pig 
select * from issue where issue_id = "PIG-3599"	apache-pig 
select * from issue where issue_id = "PIG-3599"	apache-pig 
select * from issue where issue_id = "PIG-3599"	apache-pig 
select * from issue where issue_id = "PIG-3599"	apache-pig 
select issue_id from issue where assignee = "Daniel Ward" and status = "Open"	apache-pig 
select issue_id from issue where assignee = "Daniel Ward"	apache-pig 
select t1.issue_id from issue as t1 join issue_attachment as t2 on t1.issue_id = t2.issue_id where t1.issue_id = 'Open' and t1.assignee_username = "Daniel Ward"	apache-pig 
select distinct t2.name from issue_comment as t1 join issue_link as t2 on t1.issue_id = t2.issue_id	apache-pig 
select distinct t1.assignee from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id where t1.assignee_username = "Daniel Ward" and t1.status = "Open"	apache-pig 
select * from issue where assignee = "Daniel Ward" and status = "Open"	apache-pig 
select distinct t1.assignee from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id where t1.assignee_username = "Daniel Ward" and t1.status = "Open"	apache-pig 
select * from issue where status = "In Progress"	apache-pig 
select issue_id from issue where status = 'Progress'	apache-pig 
select distinct t1.issue_id from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id join issue_fix_version as t3 on t3.issue_id = t2.issue_id	apache-pig 
select issue_id from issue group by issue_id having count(*) >= 1	apache-pig 
select * from issue where status = "In Progress"	apache-pig 
select * from issue where status = "In Progress"	apache-pig 
select distinct status from issue where status = "In Progress"	apache-pig 
select reporter_username from issue where type = "Bullet" and reporter_username = "John Stark"	apache-pig 
select * from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id where t1.reporter_username = "John Stark"	apache-pig 
select issue_id from issue where reporter_username = "John Stark"	apache-pig 
select * from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id where t1.reporter_username = "John Stark"	apache-pig 
select distinct t1.reporter_username from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id where t1.reporter_username = "John Stark" and t1.type = "Bullet"	apache-pig 
select distinct t1.reporter_username from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id where t1.reporter_username = "John Stark" and t1.type = "bug"	apache-pig 
select issue_id from issue where reporter_username = "John Stark" and type = "Bug"	apache-pig 
select issue_id from issue where priority = "Blocker" or priority = "Critical"	apache-pig 
select issue_id, priority from issue group by issue_id having count(*) >= 2 union select issue_id, priority from issue group by issue_id having count(*) >= 3	apache-pig 
select issue_id, priority from issue group by issue_id having count(*) >= 1	apache-pig 
select issue_id, status from issue group by issue_id having count(*) >= 2 union select issue_id, status from issue group by issue_id having count(*) >= 3	apache-pig 
select issue_id from issue where priority = "Blocker" or priority = "Critical"	apache-pig 
select issue_id from issue where priority = "Blocker" or priority = "Critical"	apache-pig 
select issue_id from issue where priority = "Blocker" or priority = "Critical"	apache-pig 
select * from issue where updated_date > "2017-03-28"	apache-pig 
select issue_id from issue where updated_date > "2017-03-28"	apache-pig 
select * from issue where updated_date > "2017-03-28"	apache-pig 
select issue_id from issue where updated_date > "2017-03-28"	apache-pig 
select issue_id from issue where updated_date > "2017-03-28"	apache-pig 
select issue.issue_id from issue where updated_date > "2017-03-28"	apache-pig 
select issue_id from issue where updated_date > '2017-03-28'	apache-pig 
select distinct t1.issue_id from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id where t1.assignee = "Daniel Ward"	apache-pig 
select distinct t1.issue_id from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id where t1.assignee_username = "Daniel Ward"	apache-pig 
select issue_id from issue where assignee = "Daniel Ward"	apache-pig 
select distinct t1.issue_id from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id where t1.assignee_username = "Daniel Ward"	apache-pig 
select issue_id from issue where assignee = "Daniel Ward"	apache-pig 
select distinct t1.issue_id from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id where t1.assignee_username = "Daniel Ward"	apache-pig 
select issue_id from issue where assignee = "Daniel Ward"	apache-pig 
select issue_id from issue_attachment	apache-pig 
select distinct issue_id from issue_attachment	apache-pig 
select distinct issue_id from issue_attachment	apache-pig 
select distinct issue_id from issue_attachment	apache-pig 
select * from issue_attachment	apache-pig 
select distinct * from issue_attachment	apache-pig 
select * from issue_attachment	apache-pig 
select issue_id, summary from issue where type = 'Bug'	apache-pig 
select issue_id, summary from issue where issue_id!= "Boot"	apache-pig 
select issue_id, summary from issue group by issue_id	apache-pig 
select issue_id, summary from issue where issue_id in (select issue_id from issue_fix_version)	apache-pig 
select issue_id, summary from issue where type = 'bug'	apache-pig 
apache	apache
select issue_id, summary from issue where type = 'Bulk'	apache-pig 
select issue_id, description from issue where type = 'Bug'	apache-pig 
select issue_id, description from issue where issue_id not in (select issue_id from issue_fix_version)	apache-pig 
select issue_id, description from issue	apache-pig 
select issue_id, description from issue where type = "Bulk"	apache-pig 
select issue_id, description from issue where type = 'Bulk'	apache-pig 
select issue_id, description from issue where type = 'bug'	apache-pig 
select issue_id, description from issue where type = "Bulk"	apache-pig 
select issue_id from issue_component where component = 'grunt' intersect select issue_id from issue_component where component = 'parser'	apache-pig 
select issue_id from issue_component where component = 'grunt' intersect select issue_id from issue_component where component = 'parser'	apache-pig 
select issue_id from issue_component where component = 'grunt' intersect select issue_id from issue_component where component = 'parser'	apache-pig 
select issue_id from issue_component where component = 'grunt' intersect select issue_id from issue_component where component = 'parser'	apache-pig 
select * from issue_component where component = 'grunt' intersect select * from issue_component where component = 'parser'	apache-pig 
select * from issue_component where component = 'grunt' intersect select * from issue_component where component = 'parser'	apache-pig 
select * from issue_component where component = 'grunt' intersect select * from issue_component where component = 'parser'	apache-pig 
select status from issue where issue_id = "PIG-3599"	apache-pig 
select status from issue where issue_id = "PIG-3599"	apache-pig 
select status from issue where issue_id = "PIG-3599"	apache-pig 
select status from issue where issue_id = "PIG-3599"	apache-pig 
select status from issue where issue_id = "PIG-3599"	apache-pig 
select status from issue where issue_id = "PIG-3599"	apache-pig 
select status from issue where issue_id = "PIG-3599"	apache-pig 
select issue_id, priority from issue where type = 'Bug'	apache-pig 
select issue_id, priority from issue where priority = '1'	apache-pig 
select issue_id, priority from issue group by issue_id	apache-pig 
select issue_id, priority from issue where issue_id in (select issue_id from issue_fix_version)	apache-pig 
select issue_id, priority from issue where type = 'bug'	apache-pig 
select issue_id, priority from issue where type = 'Bulk'	apache-pig 
select issue_id, priority from issue where type = 'Bulk'	apache-pig 
select issue_id, status, resolution, summary, priority from issue where type = 'Bug' and priority = 'Major'	apache-pig 
select issue_id, status, resolution, summary, description from issue where priority = 1	apache-pig 
select issue_id, status, resolution, summary, description from issue where priority = 1	apache-pig 
select issue_id, status, resolution, summary, description from issue group by issue_id order by count(*) desc limit 1	apache-pig 
select issue_id, status, resolution, summary, priority from issue where type = 'bug' and priority = "major"	apache-pig 
select issue_id, status, resolution, summary, description from issue where type = 'bug' and priority = "major"	apache-pig 
select issue_id, status, resolution, summary, priority from issue where type = 'bug' and priority = "major"	apache-pig 
select issue_id, type, priority from issue where status = 'Open' order by type, priority	apache-pig 
select issue_id, status, resolution, summary, description from issue where priority = 1	apache-pig 
select issue_id, status, resolution, summary, description from issue where priority = 1	apache-pig 
select issue_id, status, resolution, summary, description from issue group by issue_id order by count(*) desc limit 1	apache-pig 
select issue_id, type, priority from issue where status = 'Open' order by type, priority	apache-pig 
select issue_id, type, priority from issue where status = 'Open' order by type, priority	apache-pig 
select issue_id, type, priority from issue where status = 'Open' order by type, priority	apache-pig 
select t1.username, t1.field from issue_changelog as t1 join code_change as t2 on t1.issue_id = t2.issue_id	apache-pig 
select issue_id, change_type from code_change as t1 join issue_fix_version as t2 on t1.commit_hash = t2.	apache-pig 
select issue_id, change_type from issue_fix_version as t1 join change_set as t2 on t1.issue_id = t2.issue_	apache-pig 
select t1.	apache-pig 
select t1.field, t1.username from issue_changelog as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_	apache-pig 
select t1.field, t1.username from issue_changelog as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id where t2.fix_version = 0.121	apache-pig 
select t1.field, t1.username from issue_changelog as t1 join issue_fix_version as t2 on t1.issue_	apache-pig 
select issue_id, type, summary, description from issue where status = 'Open' and priority = 'Major'	apache-pig 
select issue_id, type, summary, description from issue where priority = 'Major'	apache-pig 
select issue_id, type, summary, description from issue where priority = 1	apache-pig 
select issue_id, type, summary, description from issue	apache-pig 
select issue_id, type, summary, description from issue where priority = "Major"	apache-pig 
select issue_id, type, summary, description from issue where status = "Open" and priority = "Major"	apache-pig 
select issue_id, type, summary, description from issue where status = "Open" and priority = "Major"	apache-pig 
select distinct assignee from issue where type = "Bug"	apache-pig 
select distinct assignee_username from issue	apache-pig 
select distinct assignee_username from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id where t1.type = "bug"	apache-pig 
select distinct assignee_username from issue where type = "bug"	apache-pig 
select distinct assignee from issue where type = "Bug"	apache-pig 
select distinct assignee from issue where type = "bug"	apache-pig 
select distinct assignee from issue where type = "bug"	apache-pig 
select author, count(*) from change_set group by author	apache-pig 
select author, count(*) from change_set group by author	apache-pig 
select author, count(*) from change_set group by author	apache-pig 
select count(*), author from change_set group by author	apache-pig 
select t1.name, count(*) from	apache-pig 
select author, count(*) from change_set group by author	apache-pig 
select t1.username, count(*) from issue_comment as t1 join change_set as t2 on t1.issue_id = t2.issue_id	apache-pig 
select commit_hash, message from change_set	apache-pig 
select commit_hash, message from change_set	apache-pig 
select t1.commit_hash, t2.description from change_set as t1 join issue as t2 on t1.commit_hash = t2.	apache-pig 
select commit_hash, message from change_set	apache-pig 
select commit_hash, message from change_set	apache-pig 
select commit_hash, message from change_set	apache-pig 
select commit_hash, message from change_set	apache-pig 
select assignee from issue where issue_id = "PIG-3599"	apache-pig 
select t1.assignee_username from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id where t2.issue_id = "PIG-3599"	apache-pig 
select assignee_username from issue where issue_id = "PIG-3599"	apache-pig 
select assignee from issue where issue_id = "PIG-3599"	apache-pig 
select assignee from issue where issue_id = "PIG-3599"	apache-pig 
select assignee from issue where issue_id = "PIG-3599"	apache-pig 
select assignee_username from issue where issue_id = "PIG-3599"	apache-pig 
select count(*) from issue where type = 'Improvement'	apache-pig 
select count(*) from	apache-pig 
select count(*) from issue	apache-pig 
select count(*) from issue_fix_version	apache-pig 
select count(*) from issue where type = "Improvement"	apache-pig 
select count(*) from issue where type = 'improvement'	apache-pig 
select count(*) from issue where type = "Improvement"	apache-pig 
select type from issue group by type order by count(*) desc limit 1	apache-pig 
select type from issue group by type order by count(*) desc limit 1	apache-pig 
select type from issue group by type order by count(*) desc limit 1	apache-pig 
select type from issue group by type order by count(*) desc limit 1	apache-pig 
select type from issue group by type order by count(*) desc limit 1	apache-pig 
select type from issue group by type order by count(*) desc limit 1	apache-pig 
select type from issue group by type order by count(*) desc limit 1	apache-pig 
select count(*) from issue where priority = "blocker" or priority = "critical"	apache-pig 
select count(*) from issue where status = "Blocking" or status = "Critical"	apache-pig 
select count(*) from issue where priority > 2 union select count(*) from issue where priority < 1	apache-pig 
select count(*) from issue where priority = "blocker" or priority = "critical"	apache-pig 
select count(*) from issue where priority = "Blocker" or priority = "Critical"	apache-pig 
select count(*) from issue where priority = "blocker" or priority = "critical"	apache-pig 
select count(*) from issue where priority = "blocker" or priority = "critical"	apache-pig 
select file_path, count(*) from code_change group by file_path order by count(*) desc	apache-pig 
select t1.file_path, count(*) from code_change as t1 join change_set as t2 on t1.commit_hash = t2.commit_hash group by t1.file_path order by count(*) desc limit 5	apache-pig 
select file_path, count(*) from code_change group by file_path order by count(*) desc limit 5	apache-pig 
select file_path, count(*) from code_change group by file_path order by count(*) desc limit 5	apache-pig 
select t1.file_path, count(*) from code_change as t1 join change_set as t2 on t1.commit_hash = t2.commit_hash group by t1.file_path order by count(*) desc limit 5	apache-pig 
select file_path, count(*) from code_change group by file_path order by count(*) desc limit 5	apache-pig 
select file_path, count(*) from code_change group by file_path order by count(*) desc	apache-pig 
select assignee from issue group by assignee having count(*) = 1	apache-pig 
select assignee_username from issue group by assignee_username having count(*) = 1	apache-pig 
select t1.assignee_username from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id group by t1.assignee_username having count(*) = 1	apache-pig 
select assignee_username from issue group by assignee_username having count(*) = 1	apache-pig 
select assignee from issue group by assignee having count(*) = 1	apache-pig 
select count(*) from issue where issue_id = 1	apache-pig 
select assignee from issue group by assignee having count(*) = 1	apache-pig 
select count(*), assignee from issue where status = "Open" group by assignee order by count(*) desc limit 1	apache-pig 
select assignee_username, count(*) from issue group by assignee_username order by count(*) desc limit 1	apache-pig 
select t2.assignee_username, count(*) from issue_component as t1 join issue as t2 on t1.issue_id = t2.issue_id where t1.	apache-pig 
select assignee, count(*) from issue group by assignee order by count(*) desc limit 1	apache-pig 
select assignee_username, count(*) from issue where status = "Open" group by assignee_username order by count(*) desc limit 1	apache-pig 
select assignee, count(*) from issue where status = "Open" group by assignee order by count(*) desc limit 1	apache-pig 
select assignee, count(*) from issue where status = "Open" group by assignee order by count(*) desc limit 1	apache-pig 
select assignee, count(*) from issue where status = "Open" group by assignee	apache-pig 
select assignee_username, count(*) from issue group by assignee_username	apache-pig 
select assignee, count(*) from issue group by assignee	apache-pig 
select assignee, count(*) from issue group by assignee	apache-pig 
select assignee, count(*) from issue where status = "Open" group by assignee	apache-pig 
select count(*), assignee from issue where status = "Open" group by assignee	apache-pig 
select assignee, count(*) from issue where status = "Open" group by assignee	apache-pig 
select status, count(*) from issue group by status	apache-pig 
select status, count(*) from issue group by status	apache-pig 
select count(*), type from issue group by type	apache-pig 
select type, count(*) from issue group by type	apache-pig 
select status, count(*) from issue group by status	apache-pig 
select status, count(*) from issue group by status	apache-pig 
select status, count(*) from issue group by status	apache-pig 
select resolution, count(*) from issue group by resolution	apache-pig 
select type, count(*) from issue group by type	apache-pig 
select count(*), type from issue group by type	apache-pig 
select count(*), resolution from issue group by resolution	apache-pig 
select resolution, count(*) from issue group by resolution	apache-pig 
select type, count(*) from issue group by type	apache-pig 
select resolution, count(*) from issue group by resolution	apache-pig 
select source_issue_id, target_issue_id from issue_link where name like '%duplicate%'	apache-pig 
select issue_id, count(*) from issue group by issue_id having count(*) >= 2	apache-pig 
select issue_id, count(*) from issue group by issue_id having count(*) >= 2	apache-pig 
select distinct t1.name from issue_link as t1 join issue_link as t2 on t1.source_issue_id = t2.target_issue_id where t1.name = "Duplicate"	apache-pig 
select source_issue_id, target_issue_id from issue_link where name = 'Duplicate'	apache-pig 
select source_issue_id, target_issue_id from issue_link where name = "Duplicate"	apache-pig 
select source_issue_id, target_issue_id from issue_link where name = 'Duplicate'	apache-pig 
select issue_	apache-pig 
select issue_id, t1.name from issue_link as t1 join issue_component as t2 on t1.source_issue_id = t2.issue_id where t1.is_containment = 1	apache-pig 
select distinct t1.issue_id from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t1.issue_id not in (select t1.issue_id from issue_component as t3 join change_set as t4 on t3.issue_id = t4.issue_id	apache-pig 
select issue_	apache-pig 
select source_issue_id, target_issue_id from issue_link where name = "Blocker"	apache-pig 
select source_issue_id, target_issue_id from issue_link where name = "Blocker"	apache-pig 
select source_issue_id, target_issue_id from issue_link where name = "Blocker"	apache-pig 
select count(*) from issue where status = 'Open'	apache-pig 
select count(*) from issue	apache-pig 
select count(*) from issue	apache-pig 
select count(*) from issue where resolution = 'No'	apache-pig 
select count(*) from issue where status = "Open"	apache-pig 
select count(*) from issue where status = "Open"	apache-pig 
select count(*) from issue where status = "Open"	apache-pig 
select t1.issue_id from issue as t1 join issue_link as t2 on t1.issue_id = t2.source_issue_id where t1.priority = "Blocker" or t1.priority = "Critical"	apache-pig 
select issue_id, priority from issue group by issue_id having count(*) >= 2 union select issue_id, priority from issue group by issue_id having count(*) >= 3	apache-pig 
select issue_id, status from issue where status = 'Blocking' or status = 'Critical'	apache-pig 
select issue_id, priority from issue where created_date_zoned > '2003-04-19 15:06:20' or created_date_zoned < '2016-03-15 00:33:18'	apache-pig 
select issue_id from issue where priority = "Blocker" or priority = "Critical"	apache-pig 
select issue_id from issue where priority = "Blocker" or priority = "Critical"	apache-pig 
select issue_id from issue where priority = "Blocker" or priority = "Critical"	apache-pig 
select assignee, count(*) from issue where status = "Resolved"	apache-pig 
select t1.author, count(*) from	apache-pig 
select count(*), assignee from issue group by assignee	apache-pig 
select assignee, count(*) from issue group by assignee	apache-pig 
select assignee, count(*) from issue where resolution = 'Yes' group by assignee	apache-pig 
select assignee, count(*) from issue where status = "Resolved" group by assignee	apache-pig 
select assignee, count(*) from issue where status = "Resolved" group by assignee	apache-pig 
select display_name, message from issue_comment where issue_id = "PIG-3599"	apache-pig 
select t3.name, t2.message from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id join	apache-pig 
select assignee,	apache-pig 
select t2.assignee_username, t3.message from issue as t1 join issue_comment as t3 on t1.issue_id = t3.issue_id join	apache-pig 
select display_name, message from issue_comment where issue_id = "PIG-3599"	apache-pig 
select display_name, message from issue_comment where issue_id = "PIG-3599"	apache-pig 
select display_name, message from issue_comment where issue_id = "PIG-3592"	apache-pig 
select t2.author_email from change_set as t1 join issue_comment as t3 on t1.commit_hash = t3.	apache-pig 
select t2.assignee_	apache-pig 
select t2.author from issue as t1 join issue_comment as t3 on t1.issue_id = t3.issue_id join change_set as t4 on t4.git_repository_id = t2.git_repository_id join issue_fix_version as t5 on t5.issue_id = t4.issue_id	apache-pig 
select t2.assignee from issue as t1 join	apache-pig 
select t2.author from issue as t1 join change_set as t2 on t1.issue_id = t2.issue_id	apache-pig 
select t1.author from change_set as t1 join issue_comment as t2 on t1.commit_hash = t2.	apache-pig 
select t2.a	apache-pig 
select count(distinct t2.assignee) from issue_component as t1 join issue as t2 on t1.issue_id = t2.issue_id where t1.component = "impl"	apache-pig 
select count(*) from issue_component where component = 'impl'	apache-pig 
select count(*) from issue_component	apache-pig 
select count(distinct t1.assignee_username) from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.component = "impl"	apache-pig 
select count(distinct t2.assignee) from issue_component as t1 join issue as t2 on t1.issue_id = t2.issue_id where t1.component = "impl"	apache-pig 
select count(distinct t1.assignee) from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.component = "impl"	apache-pig 
select count(distinct t2.assignee) from issue_component as t1 join issue as t2 on t1.issue_id = t2.issue_id where t1.component = "impl"	apache-pig 
select distinct t1.assignee from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.component = "impl"	apache-pig 
select t2.author from issue_component as t1 join	apache-pig 
select t1.assignee_username from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.component = "imp"	apache-pig 
select distinct t1.assignee_username from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.component = "imp"	apache-pig 
select distinct t1.assignee from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.component = "impl"	apache-pig 
select distinct t2.assignee from issue_component as t1 join issue as t2 on t1.issue_id = t2.issue_id where t1.component = "impl"	apache-pig 
select distinct t1.assignee from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.component = "impl"	apache-pig 
select issue_id, reporter from issue order by issue_id asc	apache-pig 
select issue_id, reporter from issue group by issue_id	apache-pig 
select issue_id, reporter_username from issue	apache-pig 
select t1.name, t2.issue_id from	apache-pig 
select t1.reporter_username, t2.issue_id from issue as t1 join	apache-pig 
select reporter_username, issue_id from issue order by reporter_username	apache-pig 
select issue_id, reporter_username from issue order by created_date_zoned asc	apache-pig 
apache	apache
select count(*) from issue as t1 join code_change as t2 on t1.issue_id = t2.issue_id	apache-pig 
select issue_id, count(*) from issue_fix_version where issue_id = '0.12.1'	apache-pig 
select t1.change_type, count(*) from code_change as t1 join	apache-pig 
select distinct t1.field from issue_changelog as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id where t2.fix	apache-pig 
select distinct t1.field from issue_changelog as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id where t2.fix_version = 0.121	apache-pig 
select distinct	apache-pig 
select issue_id, assignee from issue where resolved_date between "2014-09-08" and "2014-09-12"	apache-pig 
select issue_id, assignee from issue where resolved_date between "2014-09-08" and "2014-09-12"	apache-pig 
select t1.issue_id, t1.assignee from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t1.resolved_date between '2014-09-08' and '2014-09-12'	apache-pig 
select t1.issue_id, t1.assignee from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t1.resolved_date between '2014-09-08' and '2014-09-12'	apache-pig 
select issue_id, assignee from issue where resolved_date between "2014-09-08" and "2014-09-12"	apache-pig 
select t1.issue_id, t1.assignee from issue as t1 join issue as t2 on t1.issue_id = t2.issue_id where t1.resolved_date >= "2014-09-08" and t1.resolved_date <= "2014-09-12"	apache-pig 
select issue_id, assignee from issue where resolved_date between "2014-09-08" and "2014-09-12"	apache-pig 
select file_path from code_change where	apache-pig 
select file_path from code_change where	apache-pig 
select file_path from code_change as t1 join issue_fix_version as t2 on t1.commit_hash = t2.f	apache-pig 
select t1.file_path from code_change as t1 join issue_fix_version as t2 on t1.commit_hash = t2.fix_version where t2.fix_version = 0.121	apache-pig 
select t1.file_path from code_change as t1 join issue_fix_version as t2 on t1.commit_hash = t2.fix_version where t2.fix_version = 0.121	apache-pig 
select t1.file_path from code_change as t1 join issue_fix_version as t2 on t1.commit_hash = t2.f	apache-pig 
select t1.file_path from code_change as t1 join issue_fix_version as t2 on t1.commit_hash = t2.fix_version where t2.fix_version = "0.12.1"	apache-pig 
select * from issue where created_date < "2014-09-12"	apache-pig 
select * from issue where created_date < "2014-09-12"	apache-pig 
select * from issue where created_date < "2014-09-12"	apache-pig 
select * from issue where created_date < "2014-09-12"	apache-pig 
select * from issue where created_date < "2014-09-12"	apache-pig 
select * from issue where created_date < "2014-09-12"	apache-pig 
select * from issue where created_date < "2014-09-12"	apache-pig 
select issue_id from issue where created_date = "2017-03-28"	apache-pig 
select * from issue where created_date = "2017-03-28"	apache-pig 
select issue_id from issue where created_date like "2017-03-28"	apache-pig 
select issue_id from issue where created_date_zoned = "2017-03-28"	apache-pig 
select issue.issue_id from issue where created_date = "2017-03-28"	apache-pig 
select issue_id from issue where created_date like "2017-03-28"	apache-pig 
select issue_id from issue where created_date = "2017-03-28"	apache-pig 
select issue_id from issue where resolved_date = "2013-10-23"	apache-pig 
select issue_id from issue where resolved_date = "2013-10-23"	apache-pig 
select issue_id from issue where resolution = "2013-10-23"	apache-pig 
select issue_id from issue where resolved_date = "2013-10-23"	apache-pig 
select issue_id from issue where resolved_date = "2013-10-23"	apache-pig 
select issue_id from issue where resolved_date = "2013-10-23"	apache-pig 
select issue_id from issue where resolved_date = "2013-10-23"	apache-pig 
select assignee from issue where resolved_date between '2015-03-01' and '2015-03-31' group by assignee having count(*) >= 3	apache-pig 
select t1.assignee_username from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id where t1.resolved_date between '2015-03-01' and '2015-03-31' group by t1.assignee_username having count(*) >= 3	apache-pig 
select t1.reporter_username from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id where t1.resolved_date between '2015-03-01' and '2015-03-31' group by t1.reporter_username having count(*) >= 3	apache-pig 
select resolution from issue where assignee_username between '2015-03-01' and '2015-03-31' group by assignee_username having count(*) >= 3	apache-pig 
select count(*), assignee from issue where resolved_date between '2015-03-01' and '2015-03-31' group by assignee having count(*) >= 3	apache-pig 
select assignee from issue group by assignee having count(*) >= 3 intersect select assignee from issue where resolved_date between '2015-03-01' and '2015-03-31'	apache-pig 
select assignee from issue group by assignee having count(*) >= 3 intersect select assignee from issue group by assignee having resolved_date between '2015-03-01' and '2015-03-31'	apache-pig 
select count(*) from issue where resolved_date < "2013-10-27"	apache-pig 
select count(*) from issue where resolved_date < "2013-10-27"	apache-pig 
select count(*) from issue where resolved_date < "2013-10-27"	apache-pig 
select count(*) from issue where resolved_date < "2013-10-27"	apache-pig 
select count(*) from issue where resolved_date < "2013-10-27"	apache-pig 
select count(*) from issue where resolved_date < "2013-10-27"	apache-pig 
select count(*) from issue where resolved_date < "2013-10-27"	apache-pig 
select * from issue where created_date > "2017-05-31"	apache-pig 
select * from issue where created_date > "2017-05-31"	apache-pig 
select issue_id from issue where created_date > "2017-05-31"	apache-pig 
select issue_id from issue where created_date > "2017-05-31"	apache-pig 
select * from issue where created_date > "2017-05-31"	apache-pig 
select issue.issue_id from issue where created_date = "2017-05-31"	apache-pig 
select issue_id from issue where created_date > "2017-05-31"	apache-pig 
select issue_id from issue where resolved_date	apache-pig 
select issue_id from issue where resolved_date	apache-pig 
select issue_id from issue where resolved_date	apache-pig 
select issue_id from issue where resolution >= "2017-10-01" and resolved_date between "2017-10-31" and "2017-10-01"	apache-pig 
select issue_id from issue where resolved_date	apache-pig 
select issue_id from issue where resolved_date between 2017-10-01	apache-pig 
select issue_id from issue where resolved_date	apache-pig 
select issue_id from issue where created_date between '2017-01-01' and '2017-03-31'	apache-pig 
select issue_id from issue where created_date between '2017-01-01' and '2017-03-31'	apache-pig 
select issue_id from issue where created_date between '2017-01-01' and '2017-03-31'	apache-pig 
select issue_id from issue_comment where created_date between '2017-01-01' and '2017-03-31'	apache-pig 
select issue_id from issue where created_date between '2017-01-01' and '2017-03-31'	apache-pig 
select issue_id from issue where created_date between '2017-01-01' and '2017-03-31'	apache-pig 
select issue_id from issue where created_date between '2017-01-01' and '2017-03-31'	apache-pig 
select issue_id, type, priority from issue where status = 'Open' and created_date between "2013-11-16" and "2013-11-28" order by type, priority	apache-pig 
select issue_id, type, priority from issue where status = 'Open' and created_date between "2013-11-16" and "2013-11-28" order by type, priority	apache-pig 
select issue_id, type, priority from issue where created_date between '2013-11-16' and '2013-11-28' order by type, priority	apache-pig 
select issue_id, type, priority from issue where created_date between '2013-11-16' and '2013-11-28' order by type, priority	apache-pig 
select issue_id, type, priority from issue where status = 'Open' and created_date between '2013-11-16' and '2013-11-28' order by type, priority	apache-pig 
select issue_id, type, priority from issue where status = 'Open' and created_date between '2013-11-16' and '2013-11-28' order by type, priority	apache-pig 
select issue_id, type, priority from issue where status = 'Open' and created_date between '2013-11-16' and '2013-11-28' order by type, priority	apache-pig 
select issue_id, status from issue where type = 'Bug'	apache-pig 
select issue_id, status from issue where status = "Bag"	apache-pig 
select issue_id, status from issue group by issue_id	apache-pig 
select t1.issue_id, t1.status from issue as t1 join	apache-pig 
select issue_id, status from issue where type = 'Bulk'	apache-pig 
select issue_id, status from issue where type = 'Bulk'	apache-pig 
select issue_id, status from issue where type = 'Bulk'	apache-pig 
select issue_id, resolution from issue where type = 'Bug'	apache-pig 
select issue_id, resolution from issue group by issue_id	apache-pig 
select issue_id, resolution from issue where issue_id in (select issue_id from issue_fix_version)	apache-pig 
select t1.issue_id, t1.resolution from issue as t1 join	apache-pig 
select issue_id, resolution from issue where type = 'Bulk'	apache-pig 
select issue_id, resolution from issue where type = 'Bulk'	apache-pig 
select issue_id, resolution from issue where type = "Bulk"	apache-pig 
select type from issue where issue_id = "PIG-3599"	apache-pig 
select type from issue where type = "PIG-3599"	apache-pig 
select type from issue where type = "PIG-3599"	apache-pig 
select type from issue where type = "PIG-3599"	apache-pig 
select type from issue where issue_id = "PIG-3599"	apache-pig 
select type from issue where issue_id = "PIG-3599"	apache-pig 
select type from issue where issue_id = "PIG-3599"	apache-pig 
select resolved_date from issue where issue_id = "PIG-3599"	apache-pig 
select resolved_date from issue where issue_id = "PIG-3599"	apache-pig 
select resolved_date from issue where issue_id = "PIG-3599"	apache-pig 
select resolved_date from issue where issue_id = "PIG-3599"	apache-pig 
select resolved_date from issue where resolution = "PIG-3599"	apache-pig 
select t1.resolved_date from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id where t2.issue_id = 'PIG-3599'	apache-pig 
select resolved_date from issue where issue_id = "PIG-3599"	apache-pig 
select * from issue	apache-pig 
select * from git_repository	apache-pig 
select * from issue	apache-pig 
select issue_id, count(*) from issue group by issue_id order by count(*) desc limit 1	apache-pig 
select * from issue_attachment	apache-pig 
select * from issue	apache-pig 
select * from issue	apache-pig 
select distinct priority from issue	apache-pig 
select distinct priority from issue	apache-pig 
select distinct priority from issue	apache-pig 
select priority from issue group by priority order by count(*) desc limit 1	apache-pig 
select distinct priority from issue where issue_id in (select issue_id from issue_component)	apache-pig 
select distinct priority from issue	apache-pig 
select distinct priority from issue	apache-pig 
select distinct status from issue	apache-pig 
select status from issue group by status having count(*) >= 1	apache-pig 
select status from issue group by status having count(*) >= 1	apache-pig 
select status from issue group by status having count(*) >= 1	apache-pig 
select distinct status from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t1.created_date_zoned = "0" and t1.status = "1"	apache-pig 
select distinct status from issue	apache-pig 
select distinct status from issue	apache-pig 
select distinct resolution from issue	apache-pig 
select distinct resolution from issue	apache-pig 
select resolution from issue	apache-pig 
select type from issue group by type having count(*) >= 2	apache-pig 
select count(distinct issue_id) from issue	apache-pig 
select distinct resolution from issue where issue_id in (select issue_id from issue_component)	apache-pig 
select distinct resolution from issue	apache-pig 
select commit_hash from change_set	apache-pig 
select commit_hash from change_set	apache-pig 
select commit_hash from change_set	apache-pig 
select commit_hash from change_set where git_repository_id = t1.git_repository_id	apache-pig 
select commit_hash from change_set	apache-pig 
select commit_hash from change_set	apache-pig 
select commit_hash from change_set	apache-pig 
select distinct t2.author_email from issue_comment as t1 join issue_	apache-pig 
select t1.author from change_set as t1 join	apache-pig 
select t2.author from jira_repository as t1 join	apache-pig 
select t1.author from change_set as t1 join issue_comment as t2 on t1.commit_hash = t2.	apache-pig 
select distinct author from change_set	apache-pig 
select distinct author_email from change_set	apache-pig 
select distinct author_email from change_set	apache-pig 
select distinct component from issue_component	apache-pig 
select distinct component from issue_component	apache-pig 
select component from issue_component where issue_id in (select issue_id from issue_component where created_date_zoned = "2003-04-19 15:06:20" and created_date_zoned = "2016-03-15 00:33:18	apache-pig 
select component from issue_component where issue_id in (select issue_id from	apache-pig 
select distinct component from issue_component	apache-pig 
select distinct component from issue_component	apache-pig 
select distinct component from issue_component	apache-pig 
select fix_version, count(*) from issue_fix_version group by fix_version	apache-pig 
select t1.fix_version, count(*) from issue_fix_version as t1 join issue as t2 on t1.issue_id = t2.issue_id group by t1.fix_version	apache-pig 
select count(*), t1.fix_version from issue_fix_version as t1 join issue as t2 on t1.issue_id = t2.issue_id group by t1.fix_version	apache-pig 
select fix_version, count(*) from issue_fix_version group by fix_version	apache-pig 
select fix_version, issue_id from issue_fix_version group by fix_version	apache-pig 
select fix_version, count(*) from issue_fix_version group by fix_version	apache-pig 
select fix_version, count(*) from issue_fix_version group by fix_version	apache-pig 
select fix_version from issue_fix_version group by fix_version order by count(*) desc limit 1	apache-pig 
select fix_version from issue_fix_version group by fix_version order by count(*) desc limit 1	apache-pig 
select fix_version from issue_fix_version group by fix_version order by count(*) desc limit 1	apache-pig 
select fix_version from issue_fix_version group by fix_version order by count(*) desc limit 1	apache-pig 
select fix_version from issue_fix_version group by fix_version order by count(*) desc limit 1	apache-pig 
select fix_version from issue_fix_version group by fix_version order by count(*) desc limit 1	apache-pig 
select fix_version from issue_fix_version group by fix_version order by count(*) desc limit 1	apache-pig 
select status from issue order by created_date_zoned desc limit 1	apache-pig 
select status from issue order by created_date_zoned desc limit 1	apache-pig 
select status from issue order by created_date_zoned desc limit 1	apache-pig 
select status from issue order by created_date_zoned desc limit 1	apache-pig 
select status from issue order by created_date_zoned desc limit 1	apache-pig 
select status from issue order by created_date_zoned desc limit 1	apache-pig 
select status from issue where created_date_zoned = (select max(created_date_zoned) from issue)	apache-pig 
select fix_version from issue_fix_version where fix_version = "PIG-3599"	apache-pig 
select t1.resolution from issue as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id where t1.resolution = "PIG-3599"	apache-pig 
select fix_version from issue_fix_version where issue_id = "PIG-3599"	apache-pig 
select fix_version from issue_fix_version where fix_version = 'PIG-3599'	apache-pig 
select fix_version from issue_fix_version where issue_id = "PIG-3599"	apache-pig 
select fix_version from issue_fix_version where issue_id = "PIG-3599"	apache-pig 
select fix_version from issue_fix_version where issue_id = "PIG-3599"	apache-pig 
select created_date, count(*) from issue group by created_date	apache-pig 
select created_date, count(*) from issue group by created_date	apache-pig 
select count(*) from issue	apache-pig 
select issue_id, created_date_zoned from issue group by created_date_zoned	apache-pig 
select created_date, count(*) from issue group by created_date	apache-pig 
select created_date, count(*) from issue group by created_date	apache-pig 
select created_date, count(*) from issue group by created_date	apache-pig 
select updated_date, count(*) from issue group by updated_date_zoned	apache-pig 
select updated_date, count(*) from issue group by updated_date	apache-pig 
select count(*) from issue	apache-pig 
select updated_date, created_date_zoned from issue group by created_date_zoned	apache-pig 
select updated_date, count(*) from issue group by updated_date	apache-pig 
select updated_date, count(*) from issue group by updated_date	apache-pig 
select updated_date, count(*) from issue group by updated_date	apache-pig 
select resolved_date, count(*) from issue group by resolved_date_zoned	apache-pig 
select resolved_date, count(*) from issue group by resolved_date_zoned	apache-pig 
select count(*) from issue group by resolved_date order by count(*) desc limit 1	apache-pig 
select resolved_date, count(*) from issue where resolution!= "Yes" group by resolved_date	apache-pig 
select resolved_date, count(*) from issue group by resolved_date	apache-pig 
select resolved_date, count(*) from issue group by resolved_date	apache-pig 
select resolved_date, count(*) from issue group by resolved_date	apache-pig 
select count(*), committed_date from change_set group by committed_date	apache-pig 
select count(*) from change_set	apache-pig 
select count(*), committed_date from change_set group by committed_date	apache-pig 
select count(*), committed_date from change_set group by committed_date	apache-pig 
select committed_date, count(*) from change_set group by committed_date	apache-pig 
select committed_date, count(*) from change_set group by committed_date	apache-pig 
select committed_date, count(*) from change_set group by committed_date	apache-pig 
select t1.resolved_date, t1.issue_id from issue as t1 join issue as t2 on t1.issue_id = t2.issue_id where t2.resolution = "Daniel Ward" order by t1.resolved_date desc	apache-pig 
select issue_id from issue where resolution = "Daniel Ward" order by resolved_date, resolved_date_zoned desc	apache-pig 
select resolved_date, issue_id from issue where assignee = "Daniel Ward" order by resolved_date desc	apache-pig 
select resolved_date, issue_id from issue where assignee = "Daniel Ward" order by resolved_date desc	apache-pig 
select resolved_date, issue_id from issue where assignee = "Daniel Ward" order by resolved_date desc	apache-pig 
select resolved_date, issue_id from issue where assignee = "Daniel Ward" order by resolved_date desc	apache-pig 
select resolved_date, issue_id from issue where assignee = "Daniel Ward" order by resolved_date desc	apache-pig 
select count(*) from issue where assignee = "John Stark" and resolved_date between "2014-10-01" and "2014-10-31"	apache-pig 
select count(*) from issue where resolution like "%john_stark%" and resolved_date between "2014-10-01" and "2014-10-31"	apache-pig 
select count(*) from issue where resolution like "%john_stark%"	apache-pig 
select count(*) from issue where resolution like "%2010-10-23%"	apache-pig 
select count(*) from issue where resolved_date between "2014-10-01" and "2014-10-31" and assignee = "John Stark"	apache-pig 
select count(*) from issue where resolution like "%jstark%" and resolved_date between 2014-10-01	apache-pig 
select issue_id, resolved_date_zoned from issue where resolved_date_zoned >= "2014-10-01" and resolved_date_zoned <= "2014-10-31" union select issue_id, resolved_date_zoned from issue where assignee = "John Stark"	apache-pig 
select count(*) from issue where created_date between '2015-01-01' and '2015-04-30'	apache-pig 
select count(*) from issue where created_date between 1 and 15	apache-pig 
select count(*) from issue where created_date like "2015-01-15"	apache-pig 
select count(*) from issue where created_date_zoned like "2015-01-03" and issue_id in ( select issue_id from issue_comment where created_date_zoned like "2015-01-03")	apache-pig 
select count(*) from issue where created_date between '2015-01-01' and '2015-04-30'	apache-pig 
select count(*) from issue where created_date between '2015-01-01' and '2015-04-30'	apache-pig 
select count(*) from issue where created_date between '2015-01-01' and '2015-04-30'	apache-pig 
select created_date from issue group by created_date order by count(*) desc limit 1	apache-pig 
select created_date from issue group by created_date order by count(*) desc limit 1	apache-pig 
select created_date from issue group by created_date order by count(*) desc limit 1	apache-pig 
select created_date from issue group by created_date order by count(*) desc limit 1	apache-pig 
select created_date, count(*) from issue group by created_date_zoned order by count(*) desc limit 1	apache-pig 
select created_date, count(*) from issue group by created_date order by count(*) desc limit 1	apache-pig 
select created_date from issue group by created_date order by count(*) desc limit 1	apache-pig 
select resolved_date from issue group by resolved_date order by count(*) desc limit 1	apache-pig 
select resolved_date from issue group by resolved_date order by count(*) desc limit 1	apache-pig 
select resolved_date from issue group by resolved_date order by count(*) desc limit 1	apache-pig 
select resolved_date from issue group by resolved_date order by count(*) desc limit 1	apache-pig 
select resolved_date, count(*) from issue group by resolved_date_zoned order by count(*) desc limit 1	apache-pig 
select resolved_date, count(*) from issue group by resolved_date_zoned order by count(*) desc limit 1	apache-pig 
select resolved_date, count(*) from issue group by resolved_date order by count(*) desc limit 1	apache-pig 
select count(*) from issue	apache-pig 
select count(*) from git_repository	apache-pig 
select count(*) from issue	apache-pig 
select count(*) from issue	apache-pig 
select count(*) from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.source_issue_	apache-pig 
select count(*) from issue	apache-pig 
select count(*) from issue	apache-pig 
select count(distinct type) from issue	apache-pig 
select count(distinct type) from issue	apache-pig 
select count(distinct type) from issue	apache-pig 
select count(distinct type) from issue	apache-pig 
select count(distinct type) from issue	apache-pig 
select count(distinct type) from issue	apache-pig 
select count(distinct type) from issue	apache-pig 
select type, count(*) from issue group by type	apache-pig 
select count(*), type from issue group by type	apache-pig 
select type, count(*) from issue group by type	apache-pig 
select type, count(*) from issue group by type	apache-pig 
select type, count(*) from issue group by type	apache-pig 
select type, count(*) from issue group by type	apache-pig 
select type, count(*) from issue group by type	apache-pig 
select count(distinct priority) from issue	apache-pig 
select count(*) from issue	apache-pig 
select count(distinct priority) from issue	apache-pig 
select count(distinct priority) from issue	apache-pig 
select count(distinct priority) from issue	apache-pig 
select count(distinct priority) from issue	apache-pig 
select count(distinct priority) from issue	apache-pig 
select priority, count(*) from issue group by priority	apache-pig 
select priority, count(*) from issue group by priority	apache-pig 
select priority, count(*) from issue group by priority	apache-pig 
select count(*), priority from issue group by priority	apache-pig 
select priority, count(*) from issue group by priority	apache-pig 
select priority, count(*) from issue group by priority	apache-pig 
select priority, count(*) from issue group by priority	apache-pig 
select count(distinct status) from issue	apache-pig 
select count(distinct status) from issue	apache-pig 
select count(distinct status) from issue	apache-pig 
select count(distinct status) from issue	apache-pig 
select count(distinct status) from issue	apache-pig 
select count(distinct status) from issue	apache-pig 
select count(distinct status) from issue	apache-pig 
select count(distinct resolution) from issue	apache-pig 
select resolution, count(*) from issue group by resolution	apache-pig 
select resolution, count(*) from issue group by resolution	apache-pig 
select type from issue where resolution = 'T1.resolution'	apache-pig 
select resolution, count(*) from issue group by resolution	apache-pig 
select count(distinct resolution) from issue	apache-pig 
select count(distinct resolution) from issue	apache-pig 
select count(distinct assignee) from issue	apache-pig 
select count(distinct assignee_username) from issue	apache-pig 
select count(distinct assignee_username) from issue	apache-pig 
select count(distinct t2.author) from issue as t1 join issue_	apache-pig 
select count(distinct assignee) from issue	apache-pig 
select count(distinct assignee) from issue	apache-pig 
select count(distinct assignee_username) from issue	apache-pig 
select assignee, count(*) from issue group by assignee	apache-pig 
select count(*), assignee from issue group by assignee	apache-pig 
select count(*), assignee from issue group by assignee	apache-pig 
select count(*), assignee from issue group by assignee	apache-pig 
select assignee, count(*) from issue group by assignee	apache-pig 
select assignee, count(*) from issue group by assignee	apache-pig 
select assignee, count(*) from issue group by assignee	apache-pig 
select count(distinct assignee_username) from issue	apache-pig 
select count(*), t1.name from	apache-pig 
select count(*), t1.assignee_username from issue as t1 join git_repository as t2 on t1.issue_id = t2.	apache-pig 
select count(distinct assignee_username) from issue	apache-pig 
select count(distinct assignee_username) from issue	apache-pig 
select count(distinct assignee_username) from issue	apache-pig 
select count(distinct assignee_username) from 	apache-pig 
select assignee_username, count(*) from issue group by assignee_username	apache-pig 
select assignee_username, count(*) from issue group by assignee_username	apache-pig 
select count(*), assignee_username from issue group by assignee_username	apache-pig 
select count(*), assignee_username from issue group by assignee_username	apache-pig 
select assignee_username, count(*) from issue group by assignee_username	apache-pig 
select assignee_username, count(*) from issue group by assignee_username	apache-pig 
select assignee_username, count(*) from issue group by assignee_username	apache-pig 
select count(distinct reporter_username) from issue	apache-pig 
select count(distinct created_date_zoned) from issue	apache-pig 
select count(distinct reporter_username) from issue	apache-pig 
select reporter, count(*) from issue group by reporter	apache-pig 
select count(distinct reporter_username) from issue	apache-pig 
select count(distinct reporter_username) from issue	apache-pig 
select count(distinct reporter_username) from issue	apache-pig 
select count(*), username from issue_comment group by username	apache-pig 
select count(*), username from issue_comment group by username	apache-pig 
select count(*), username from issue_comment group by username	apache-pig 
select count(*), username from issue_comment group by username	apache-pig 
select username, count(*) from issue_comment group by username	apache-pig 
select t2.name, count(*) from issue_comment as t1 join	apache-pig 
select t2.name, count(*) from issue_comment as t1 join	apache-pig 
select reporter, count(*) from issue group by reporter	apache-pig 
select reporter_username, count(*) from issue group by reporter_username	apache-pig 
select count(*) from issue where reporter_username = "null" group by reporter_username	apache-pig 
select count(*), t1.reporter_username from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id group by t1.reporter_username	apache-pig 
select t2.reporter_username, count(*) from git_repository as t1 join issue as t2 on t1.git_repository_id = t2.git_repository_id	apache-pig 
select reporter, count(*) from issue group by reporter	apache-pig 
select reporter, count(*) from issue group by reporter	apache-pig 
select count(distinct reporter_username) from issue	apache-pig 
select count(distinct reporter_username) from issue	apache-pig 
select count(distinct username) from issue_comment	apache-pig 
select count(distinct reporter_username) from issue	apache-pig 
select reporter_username, count(*) from issue group by reporter_username	apache-pig 
select reporter_username, count(*) from issue group by reporter_username	apache-pig 
select count(distinct reporter_username) from issue	apache-pig 
select reporter_username, count(*) from issue group by reporter_username	apache-pig 
select reporter_username, count(*) from issue group by reporter_username	apache-pig 
select reporter_username, count(*) from issue group by reporter_username	apache-pig 
select t2.name, count(*) from issue as t1 join issue_	apache-pig 
select reporter_username, count(*) from issue group by reporter_username	apache-pig 
select reporter_username, count(*) from issue group by reporter_username	apache-pig 
select reporter_username, count(*) from issue group by reporter_username	apache-pig 
select count(*) from change_set	apache-pig 
select count(*) from change_set	apache-pig 
select count(*) from code_change	apache-pig 
select count(*) from change_set	apache-pig 
select count(*) from change_set	apache-pig 
select count(*) from change_set	apache-pig 
select count(*) from change_set	apache-pig 
select count(distinct author_email) from change_set	apache-pig 
select count(distinct author) from change_set	apache-pig 
select count(distinct author) from change_set	apache-pig 
select count(*) from change_set	apache-pig 
select count(distinct author) from change_set	apache-pig 
select count(distinct author) from change_set	apache-pig 
select count(distinct author) from change_set	apache-pig 
select display_name, count(*) from issue_comment group by display_name	apache-pig 
select count(*) from issue_comment group by username	apache-pig 
select count(*) from issue_comment where issue_id in (select issue_id from issue_comment group by issue_id order by count(*) desc limit 1)	apache-pig 
select count(*), username from issue_comment group by username	apache-pig 
select display_name, count(*) from issue_comment group by display_name	apache-pig 
select display_name, count(*) from issue_comment group by display_name	apache-pig 
select count(distinct display_name), count(*) from issue_comment group by display_name	apache-pig 
select distinct username from issue_comment	apache-pig 
select distinct username from issue_comment	apache-pig 
select distinct username from issue_comment	apache-pig 
select distinct username from issue_comment	apache-pig 
select distinct username from issue_comment	apache-pig 
select distinct username from issue_comment	apache-pig 
select distinct username from issue_comment	apache-pig 
select count(distinct component) from issue_component	apache-pig 
select count(*) from issue_component where issue_id in (select issue_id from	apache-pig 
select count(*) from issue_component	apache-pig 
select count(*) from issue_component where issue_id = "apache-pig"	apache-pig 
select count(distinct component) from issue_component	apache-pig 
select count(*) from issue_component where issue_id = (select issue_id from issue_component where component = 'Apche Pig')	apache-pig 
select count(distinct component) from issue_component	apache-pig 
select component, count(*) from issue_component group by component	apache-pig 
select component, count(*) from issue_component group by component	apache-pig 
select component, count(*) from issue_component group by component	apache-pig 
select count(distinct component) from issue_component	apache-pig 
select component, count(*) from issue_component group by component	apache-pig 
select component, count(*) from issue_component group by component	apache-pig 
select component, count(*) from issue_component group by component	apache-pig 
select count(distinct name) from issue_link	apache-pig 
select count(distinct t1.name) from issue_link as t1 join git_repository as t2 on t1.source_issue_id = t2.git_repository_id where t2.name = "Apache Pig"	apache-pig 
select count(*) from issue_link	apache-pig 
select count(*) from issue_link	apache-pig 
select count(distinct name) from issue_link	apache-pig 
select count(*) from issue_link	apache-pig 
select count(distinct name) from issue_link	apache-pig 
select name, count(*) from issue_link group by name	apache-pig 
select count(*) from issue_link	apache-pig 
select count(*), t1.name from issue_link as t1 join issue_link as t2 on t1.source_issue_id = t2.source_issue_id where t1.name = "%international%" group by t1.name	apache-pig 
select count(*) from issue_link group by count(*)	apache-pig 
select name, count(*) from git_repository group by name	apache-pig 
select t1.name, count(*) from issue_link as t1 join issue_comment as t2 on t1.source_issue_id = t2.issue_id group by t1.source_issue_id	apache-pig 
select name, count(*) from issue_link where source_issue_id in (select target_issue_id from issue_link where is_containment = 'Yes') group by name	apache-pig 
select count(*) from issue where type = "Bug"	apache-pig 
select count(*) from issue as t1 join issue_link as t2 on t1.issue_id = t2.source_issue_id where t2.is_containment = 'Y'	apache-pig 
select count(*) from issue	apache-pig 
select count(*) from issue	apache-pig 
select count(*) from issue where type = "bug"	apache-pig 
select count(*) from issue where type = "bug"	apache-pig 
select count(*) from issue where type = "Bulk"	apache-pig 
select distinct assignee from issue	apache-pig 
select distinct assignee_username from issue	apache-pig 
select distinct assignee_username from issue	apache-pig 
select distinct assignee_username from issue	apache-pig 
select distinct assignee from issue	apache-pig 
select distinct assignee from issue	apache-pig 
select distinct assignee from issue	apache-pig 
select distinct assignee_username from issue	apache-pig 
select distinct assignee_username from issue	apache-pig 
select distinct assignee_username from issue	apache-pig 
select distinct assignee_username from issue	apache-pig 
select distinct assignee_username from issue	apache-pig 
select distinct assignee_username from issue	apache-pig 
select distinct assignee_username from issue	apache-pig 
select distinct reporter_username from issue	apache-pig 
select distinct reporter_username from issue	apache-pig 
select distinct reporter_username from issue	apache-pig 
select distinct reporter from issue	apache-pig 
select distinct reporter from issue	apache-pig 
select distinct reporter from issue	apache-pig 
select distinct reporter_username from issue	apache-pig 
select distinct reporter_username from issue	apache-pig 
select distinct reporter_username from issue	apache-pig 
select distinct reporter_username from issue	apache-pig 
select distinct reporter_username from issue	apache-pig 
select distinct reporter_username from issue	apache-pig 
select distinct reporter_username from issue	apache-pig 
select distinct reporter_username from issue	apache-pig 
select distinct author from change_set	apache-pig 
select distinct author from change_set	apache-pig 
select author from change_set	apache-pig 
select distinct author from change_set	apache-pig 
select distinct author from change_set	apache-pig 
select distinct author from change_set	apache-pig 
select distinct author from change_set	apache-pig 
select display_name, count(*) from issue_comment where issue_id = "PIG-3592"	apache-pig 
select count(*), t1.author_email from	apache-pig 
select count(*), t1.author from issue_comment as t2 join issue as t3 on t1.issue_id = t3.issue_id	apache-pig 
select count(*) from issue_comment where issue_id = "PIG-3592" group by issue_id	apache-pig 
select display_name, count(*) from issue_comment where issue_id = "PIG-3592"	apache-pig 
select count(*), t1.display_name from issue_comment as t1 join issue_changelog as t2 on t1.issue_id = t2.issue_id where t2.issue_id = "PIG-3592" group by t1.display_name	apache-pig 
select t1.display_name, count(*) from issue_comment as t1 join issue as t2 on t1.issue_id = t2.issue_id where t2.issue_id = "PIG-3592" group by t1.display_name	apache-pig 
select t1.issue_id, t1.created_date, t1.resolved_date, t2.commit_hash from issue as t1 join change_set as t2 on t1.issue_id = t2.issue_	apache-pig 
select t1.issue_id, t1.created_date, t1.resolved_date, t2.commit_hash, t2.committed_date from issue as t1 join change_set as t2 on t1.issue_id = t2.	apache-pig 
select t1.issue_id, t1.created_date, t1.resolved_date, t2.commit_hash, t2.committed_date_zoned from issue as t1 join change_set as t2 on t1.issue_id = t2.	apache-pig 
select t1.issue_id, t1.created_date, t1.resolved_date, t2.commit_hash, t2.committed_date_zoned from issue as t1 join change_set as t2 on t1.issue_id = t2.issue_	apache-pig 
select t1.issue_id, t1.created_date, t1.resolved_date, t2.commit_hash from issue as t1 join change_set as t2 on t1.issue_id = t2.	apache-pig 
select t1.issue_id, t1.created_date, t1.resolved_date, t2.commit_hash from issue as t1 join change_set as t2 on t1.issue_id = t2.	apache-pig 
select t1.issue_id, t1.created_date, t1.resolved_date, t2.commit_hash from issue as t1 join change_set as t2 on t1.issue_id = t2.issue_	apache-pig 
select issue_id from issue_link join change_set on	apache-pig 
select issue_id from issue_link join change_set on change_set.commit_hash = issue_id join issue_component on issue_link.source_issue_id = issue_id where change_set.committed_date = (select committed_date from change_set order by (committed_date_zoned) desc limit 1)	apache-pig 
select issue_id, commit_hash from issue_link join change_set on	apache-pig 
select issue_id from issue_link	apache-pig 
select * from issue_link where source_issue_id in (select target_issue_id from issue_link)	apache-pig 
select * from issue_link where issue_id in (select source_issue_id from issue_link where change_set	apache-pig 
select * from issue_link	apache-pig 
select count(*) from issue where issue_id not in ( select source_issue_id from issue_link )	apache-pig 
select count(*) from issue where issue_id not in (select issue_id from change_set	apache-pig 
select count(*) from issue where issue_id not in (select issue_id from change_set	apache-pig 
select count(*) from change_set where commit_hash not in (select t1.commit_hash from change_set as t1 join issue_link as t2 on t1.git_repository_id = t2.source_issue_id)	apache-pig 
select count(*) from issue where issue_id not in ( select source_issue_id from issue_link )	apache-pig 
select count(*) from issue where issue_id not in ( select source_issue_id from issue_link )	apache-pig 
select count(*) from issue where issue_id not in ( select source_issue_id from issue_link )	apache-pig 
select count(*) from (select commit_hash from change_set group by commit_hash having count(*) > 1)	apache-pig 
select count(*) from (select * from change_set)	apache-pig 
select count(*) from (select * from change_set)	apache-pig 
select count(*) from change_set	apache-pig 
select count(*) from issue_link where source_issue_id = t1.source_issue_id and target_issue_id = t2.target_issue_id	apache-pig 
select count(*) from (select commit_hash from change_set group by commit_hash having count(*) > 1)	apache-pig 
select count(*) from issue_link where source_issue_id	apache-pig 
select count(*) from issue_link where source_issue_id = t1.issue_id and target_issue_id = t2.source_issue_id	apache-pig 
select count(*) from change_set where committed_date = (select committed_date from change_set group by committed_date having count(*) = 1)	apache-pig 
select count(*) from change_set where committed_date = (select committed_date from change_set order by committed_date_zoned)	apache-pig 
select count(*) from issue_link group by issue_id	apache-pig 
select count(*) from issue_link where source_issue_id = t1.source_issue_id	apache-pig 
select count(*) from issue_link where source_issue_id = t1.issue_id	apache-pig 
select count(*) from issue_link where source_issue_id = t1.source_issue_id	apache-pig 
select username, count(distinct issue_id) from issue_comment group by username	apache-pig 
select count(*) from issue_comment group by username	apache-pig 
select count(*), username from issue_comment group by username	apache-pig 
select username, count(*) from issue_comment group by username	apache-pig 
select username, count(distinct issue_id) from issue_comment group by username	apache-pig 
select username, count(distinct issue_id) from issue_comment group by username	apache-pig 
select t1.username, count(*) from issue_comment as t1 join issue as t2 on t1.issue_id = t2.issue_id where t1.message = "Draft"	apache-pig 
select count(distinct username), t1.issue_id from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id group by t1.issue_id	apache-pig 
select count(*) from issue_comment group by username	apache-pig 
select count(*), t1.issue_id from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id group by t1.issue_id	apache-pig 
select count(distinct username) from issue_comment	apache-pig 
select issue_id, count(distinct username) from issue_comment group by issue_id	apache-pig 
select count(distinct username), t1.issue_id from issue_comment as t1 join issue as t2 on t1.issue_id = t2.issue_id group by t1.issue_id	apache-pig 
select count(distinct username), t1.issue_id from issue_comment as t1 join issue as t2 on t1.issue_id = t2.issue_id group by t1.issue_id	apache-pig 
select issue_id, count(*) from issue_comment group by issue_id	apache-pig 
select issue_id, count(*) from issue_comment group by issue_id	apache-pig 
select issue_id, count(*) from issue_comment group by issue_id	apache-pig 
select issue_id, count(*) from issue_comment group by issue_id	apache-pig 
select issue_id, count(*) from issue_comment group by issue_id	apache-pig 
select issue_id, count(*) from issue_comment group by issue_id	apache-pig 
select issue_id, count(*) from issue_comment group by issue_id	apache-pig 
select issue_id, summary, description from issue	apache-pig 
select issue_id, summary, description from issue	apache-pig 
select issue_id, summary, description from issue	apache-pig 
select issue_id, summary, description from issue	apache-pig 
select issue_id, summary, description from issue	apache-pig 
select issue_id, summary, description from issue	apache-pig 
select issue_id, summary, description from issue	apache-pig 
select commit_hash from change_set where created_date between (select created_date from issue where resolved_date_zoned = '2003-04-19 15:06:20' and created_date between (select resolved_date from issue where created_date_zoned = '2016-03-15 00:33:18') and resolved_date	apache-pig 
select commit_hash from change_set where committed_date between (select created_date from issue where resolved_date_zoned = "PIG-3592") and (select resolved_date from issue where created_date_zoned = "2016-03-15 00:33:18")	apache-pig 
select commit_hash from change_set where committed_date between (select created_date from issue where resolved_date_zoned = "PIG-3592") and	apache-pig 
select commit_hash from change_set where created_date > (select created_date from issue where resolution > 'PIG-3592') and resolved_date < (select resolved_date from issue where resolved_date > 'PIG-3592'	apache-pig 
select t1.commit_hash from change_set as t1 join issue as t2 on t1.	apache-pig 
select commit_hash from change_set where created_date > (select created_date from issue where issue_id = 'PIG-3592' union select created_date from issue where issue_id = 'PIG-3592') and created_date < (se	apache-pig 
select t1.commit_hash from change_set as t1 join issue as t2 on t1.	apache-pig 
select count(*) from issue where type = "bug" intersect select count(*) from issue where type = "improvement"	apache-pig 
select count(*), t1.resolution from issue as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id where t1.resolution = "False"	apache-pig 
select issue_id, count(*) from issue as t1 join	apache-pig 
select issue_id, count(*) from issue group by issue_id	apache-pig 
select type, count(*) from issue group by type	apache-pig 
select type, count(*) from issue where type = "Bulk" or type = "Increment" group by type	apache-pig 
select type, count(*) from issue group by type	apache-pig 
select count(distinct t2.file_path) from issue_link as t1 join code_change as t2 on t1.source_issue_id = t2.issue_id	apache-pig 
select count(*) from code_change as t1 join issue_fix_version as t2 on t1.commit_hash = t2.issue_id where t2.fix_version = "PIG-3599"	apache-pig 
select count(*) from code_change as t1 join issue_component as t2 on t1.commit_hash = t2.issue_id where t2.p	apache-pig 
select count(*) from code_change as t1 join issue_link as t2 on t1.commit_hash = t2.source_issue_id where t2.name = "PIG-3599"	apache-pig 
select count(*) from issue_attachment where issue_id = "PIG-3599"	apache-pig 
select count(*) from issue_attachment where issue_id = "PIG-3599"	apache-pig 
select count(*) from issue_link as t1 join issue as t2 on t1.source_issue_id = t2.issue_id where t2.issue_id = "PIG-3599"	apache-pig 
select min(*) from issue_attachment where issue_id in ( select issue_id from issue where type = 'Bug' )	apache-pig 
select min(*) from issue_fix_version	apache-pig 
select min(*) from issue_link	apache-pig 
select min(t1.file_path) from code_change as t1 join issue_fix_version as t2 on t1.commit_hash = t2.fix_version group by t2.fix_version order by count(*) asc limit 1	apache-pig 
select min(*) from code_change as t1 join issue_link as t2 on t1.commit_hash = t2.source_issue_id join issue as t3 on t2.target_issue_id = t3.issue_id where t3.type = 'Bug'	apache-pig 
select min(*) from issue_attachment where issue_id in ( select issue_id from issue where type = 'Bug' )	apache-pig 
select count(*), t1.issue_id from issue as t1 join issue_link as t2 on t1.issue_id = t2.source_issue_id where t1.type = "Bulk" group by t1.issue_id	apache-pig 
select count(*) from issue_link where source_issue_id = "bug" and target_issue_id = "improvement"	apache-pig 
select count(*) from issue_link	apache-pig 
select count(*) from issue_link where source_issue_id in (select target_issue_id from issue_link group by source_issue_id having count(*) > 1)	apache-pig 
select count(*) from issue_link where source_issue_id in ( select target_issue_id from issue_link group by source_issue_id having count(*) >  1)	apache-pig 
select count(*) from issue_link where source_issue_id = 'bug' intersect select count(*) from issue_link where target_issue_id = 'improvement'	apache-pig 
select count(*) from issue_link where source_issue_id = "bug" and target_issue_id = "improvement"	apache-pig 
select count(*) from issue_link where source_issue_id = "bug" and target_issue_id = "improvement"	apache-pig 
select source_issue_id, target_issue_id from issue_link where source_issue_id = "Infrastructure" and target_issue_id = "Bullet"	apache-pig 
select source_issue_id from issue_link where type = 'bug'	apache-pig 
select source_issue_id from issue_link where type = "Bullet" and target_issue_id = (select target_issue_id from issue_link where type = "Infrastructure"	apache-pig 
select issue_id from issue_link as t1 join issue_link as t2 on t1.source_issue_id = t2.source_issue_id join issue_link as t3 on t2.target_issue_id = t3.source_issue_id join issue as t4 on t3.target_issue_id = t4.source_issue_id	apache-pig 
select source_issue_id, target_issue_id from issue_link where source_issue_id =	apache-pig 
select source_issue_id, target_issue_id from issue_link where source_issue_id = "bug" and target_issue_id = "improvement"	apache-pig 
select source_issue_id, target_issue_id from issue_link where type = 'bug'	apache-pig 
select distinct name from issue_link	apache-pig 
select distinct type from issue	apache-pig 
select name from issue_link where source_issue_id = 'apache-pig' group by name having count(*) = 2	apache-pig 
select distinct name from issue_link	apache-pig 
select distinct name from issue_link where source_issue_id in (select issue_id from issue_component where component = 'apache-pig')	apache-pig 
select distinct name from issue_link where source_issue_id in (select issue_id from issue_component where component = 'Apache')	apache-pig 
select distinct name from issue_link	apache-pig 
select t1.type, count(*) from issue as t1 join issue_link as t2 on t1.issue_id = t2.source_issue_id where t2.name = "cloners" group by t1.type	apache-pig 
select t1.type, count(*) from issue as t1 join issue_link as t2 on t1.issue_id = t2.source_issue_id where t2.name = "cloner" group by t1.type	apache-pig 
select type, count(*) from issue as t1 join issue_link as t2 on t1.issue_id = t2.source_issue_id where t2.is_containment = 1 group by type	apache-pig 
select type, count(*) from issue as t1 join issue_link as t2 on t1.issue_id = t2.source_issue_id where t2.is_containment = 1 group by type	apache-pig 
select t1.type, count(*) from issue as t1 join issue_link as t2 on t1.issue_id = t2.source_issue_id where t2.name = "cloner" group by t1.issue_id	apache-pig 
select t1.type, count(*) from issue as t1 join issue_link as t2 on t1.issue_id = t2.source_issue_id where t2.name = "Clothes" group by t1.type	apache-pig 
select t1.type, count(*) from issue as t1 join issue_link as t2 on t1.issue_id = t2.source_issue_id where t2.name = "cloner" group by t1.type	apache-pig 
select t1.type from issue as t1 join issue_link as t2 on t1.issue_id = t2.source_issue_id where t2.name = "cloners"	apache-pig 
select distinct t1.type from issue as t1 join issue_link as t2 on t1.issue_id = t2.source_issue_id where t2.is_containment = 1	apache-pig 
select distinct t1.type from issue as t1 join issue_link as t2 on t1.issue_id = t2.source_issue_id where t2.outward_label = "clone"	apache-pig 
select distinct t1.type from issue as t1 join issue_link as t2 on t1.issue_id = t2.source_issue_id where t2.is_containment = 1	apache-pig 
select t1.type from issue as t1 join issue_link as t2 on t1.issue_id = t2.source_issue_id where t2.name = "cloners"	apache-pig 
select distinct t1.type from issue as t1 join issue_link as t2 on t1.issue_id = t2.source_issue_id where t2.name = "cloners"	apache-pig 
select t1.type from issue as t1 join issue_link as t2 on t1.issue_id = t2.source_issue_id where t2.name = "cloners"	apache-pig 
select distinct type from issue	apache-pig 
select type from issue	apache-pig 
select type from issue where type = "Pig"	apache-pig 
select distinct type from issue	apache-pig 
select distinct type from issue	apache-pig 
select distinct type from issue	apache-pig 
select distinct type from issue	apache-pig 
select type from issue where type = 'Bug'	apache-pig 
select * from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t1.f	apache-pig 
select * from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t1.f	apache-pig 
select * from issue where issue_id in (select issue_id from issue_component where issue_id in (select issue_id from issue_fix_version where issue_id in (select issue_id from issue_fix_version where issue_id in (select issue_id from issue_fix_version where issue_id in (select issue_id from issue_fix_version where issue_id in (select issue_id from issue_fix_version where issue_id in (select issue_id from issue_fix_version where issue_id in (select issue_id from issue_fix_version where issue_id in (select issue_id from issue_fix_version where issue_id in (select issue_id from issue_fix_version where issue_id in (select issue_id from issue_fix_version where issue_id in (select issue_id from issue_fix_version where issue_id	apache-pig 
select * from issue where type = "Bulk"	apache-pig 
select * from issue where type = "bug"	apache-pig 
select * from issue where type = 'Bulg'	apache-pig 
select * from issue where status!= "In Progress"	apache-pig 
select issue_id from issue except select issue_id from issue_fix_version	apache-pig 
select issue_id from issue except select issue_id from issue_fix_version	apache-pig 
select issue_id from issue except select issue_id from issue_fix_version	apache-pig 
select issue_id from issue except select issue_id from issue where status = "In Progress"	apache-pig 
select issue_id from issue except select issue_id from issue where status = "In Progress"	apache-pig 
select distinct status from issue where status!= "In Progress"	apache-pig 
select count(*) from issue_attachment where issue_id in ( select issue_id from issue where type = 'Improvement' )	apache-pig 
select max(*) from issue_fix_version	apache-pig 
select count(distinct t1.file_path) from code_change as t1 join issue_link as t2 on t1.commit_hash = t2.source_issue_id group by t2.source_issue_id order by count(*) desc limit 1	apache-pig 
select count(*) from code_change as t1 join issue_fix_version as t2 on t1.commit_hash = t2.issue_id join issue_attachment as t3 on t2.issue_id = t3.issue_id group by t2.issue_id order by count(*) desc limit 1	apache-pig 
select count(*) from code_change as t1 join issue_link as t2 on t1.commit_hash = t2.source_issue_id join issue as t3 on t2.target_issue_id = t3.issue_id where t3.type = 'Improvement' group by t2.source_issue_id order by count(*) desc limit 1	apache-pig 
select count(*) from issue_attachment where issue_id in ( select issue_id from issue where type = 'Improvement' )	apache-pig 
select count(*), t1.issue_id from issue as t1 join issue_link as t2 on t1.issue_id = t2.source_issue_id where t1.type = "Increment" group by t1.issue_id	apache-pig 
