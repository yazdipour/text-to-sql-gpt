select issue_id from issue where type = "Georgia"	apache-pig 
select issue_id, count(*) from issue group by issue_id	apache-pig 
select issue_id from issue	apache-pig 
select issue_id from issue where type = "buggy"	apache-pig 
select issue_id from issue where type = "Georgia"	apache-pig 
select issue_id from issue where type = "Georgia"	apache-pig 
select issue_id from issue where type = "Bug"	apache-pig 
select status from issue where status = "Closed" or status = "Resolved"	apache-pig 
select issue_id, resolved_date from issue union select issue_id from issue_fix_version	apache-pig 
select * from issue where resolved_date_zoned = "null" or resolved_date_zoned = "patchable"	apache-pig 
select issue_id, resolved_date_zoned from issue except select issue_id from issue_fix_version	apache-pig 
select status from issue where status = "Closed" or status = "Resolved"	apache-pig 
select status from issue where status = "Closed" or status = "Resolved"	apache-pig 
select status from issue where status = "Cancelled" or status = "Resolved"	apache-pig 
select t1.issue_id, t1.type, t1.description from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.component = "impl"	apache-pig 
select t1.issue_id, t1.type, t1.description from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.component = (select t2.component from issue_component as t3 join issue_component as t4 on t3.component = t4.component where t3.component = 'Female')	apache-pig 
select t1.issue_id, t1.type, t1.description from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.component = 'impl'	apache-pig 
select t1.issue_id, t1.type, t1.description from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.component = 'impl'	apache-pig 
select t1.issue_id, t1.type, t1.description from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.component = "impl"	apache-pig 
select t1.issue_id, t1.type, t1.description from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.component = "impl"	apache-pig 
select issue_id, type, description from issue where component	apache-pig 
select issue_id from issue where updated_date between '2017-03-22' and '2017-03-22'	apache-pig 
select issue_id from issue where updated_date_zoned = '2017-03-22' intersect select issue_id from issue where updated_date_zoned = '2017-03-23'	apache-pig 
select issue_id from issue where updated_date_zoned >= '2017-03-22' and updated_date_zoned <= '2017-03-23'	apache-pig 
select issue_id from issue where updated_date_zoned >= '2017-03-22' and updated_date_zoned <= '2017-03-23'	apache-pig 
select issue_id from issue where updated_date between '2017-03-22' and '2017-03-23'	apache-pig 
select issue_id from issue where updated_date = '2017-03-22' intersect select issue_id from issue where updated_date = '2017-03-23'	apache-pig 
select issue_id from issue where updated_date = '2017-03-22' intersect select issue_id from issue where updated_date = '2017-03-23'	apache-pig 
select * from issue where issue_id = 'PIG-3599'	apache-pig 
select name from issue as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id join issue_component as t3 on t2.issue_id = t3.issue_id join issue_component as t4 on t3.issue_id = t4.issue_id	apache-pig 
select * from issue where	apache-pig 
select * from issue as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id where t1.	apache-pig 
select * from issue where issue_id = 'PIG-3599'	apache-pig 
select * from issue where issue_id = 'PIG-3599'	apache-pig 
select * from issue where issue_id = 'PIG-3599'	apache-pig 
select issue_id from issue where assignee = 'Daniel Ward' and status = 'Open'	apache-pig 
select * from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id where t1.assignee = "Daniel Ward"	apache-pig 
select t1.issue_id from issue as t1 join	apache-pig 
select t2.name from issue_comment as t1 join issue_comment as	apache-pig 
select t1.issue_id from issue as t1 join issue as t2 on t1.issue_id = t2.issue_id where t2.assignee = 'Daniel' and t2.status = 'Open'	apache-pig 
select * from issue where assignee = 'Daniel Ward' and status = 'Open'	apache-pig 
select distinct t1.assignee from issue as t1 join issue as t2 on t1.issue_id = t2.issue_id where t2.status = 'Open'	apache-pig 
select status from issue where status = "In Progress"	apache-pig 
select status from issue where created_date_zoned >= "null"	apache-pig 
select distinct t1.issue_id from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id join issue_component as t3 on t2.issue_id = t3.issue_id	apache-pig 
select status from issue group by status having count(*) >= 1	apache-pig 
select status from issue where status = "In Progress"	apache-pig 
select status from issue where status = "In Progress"	apache-pig 
select status from issue where status = "In Progress"	apache-pig 
select t1.issue_id from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id join	apache-pig 
select * from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id join	apache-pig 
select * from issue as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id where t1.reporter_username = "John Stark"	apache-pig 
select * from issue as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id join	apache-pig 
select t1.issue_id from issue as t1 join issue as t2 on t1.issue_id = t2.issue_id where t2.reporter_username = "John Stark" and t2.type = "bug"	apache-pig 
select t1.issue_id from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id join	apache-pig 
select t1.issue_id from issue as t1 join issue as t2 on t1.issue_id = t2.issue_id where t2.reporter_username = "John Stark" intersect select t1.issue_id from issue as t1 join issue as t2 on t1.issue_id = t2.issue_id where t2.type = "Bug"	apache-pig 
select issue_id from issue where priority = "Blocker" or priority = "Critical"	apache-pig 
select issue_id from issue union select issue_id from issue_component where issue_id not in (select issue_id from issue_component)	apache-pig 
select status from issue union select status from issue where issue_id not in (select issue_id from issue_fix_version)	apache-pig 
select issue_id from issue union select issue_id from issue_component	apache-pig 
select issue_id from issue where priority = "Blocker" or priority = "Critical"	apache-pig
select issue_id from issue where priority = "Blocker" or priority = "Critical"	apache-pig 
select issue_id from issue where priority = "Blocker" or priority = "Critical"	apache-pig 
select issue_id from issue where updated_date > '2017-03-28'	apache-pig 
select * from issue where updated_date_zoned > '2017-03-28'	apache-pig 
select * from issue where updated_date > '2017-03-28'	apache-pig 
select * from issue where updated_date_zoned > '2017-03-28'	apache-pig 
select issue_id from issue where updated_date > '2017-03-28'	apache-pig 
select issue_id from issue where updated_date > '2017-03-28'	apache-pig 
select issue_id from issue where updated_date > '2017-03-28'	apache-pig 
select distinct t1.assignee from issue as t1 join issue as t2 on t1.issue_id = t2.issue_id where t2.assignee = "Daniel Ward"	apache-pig 
select distinct * from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id join	apache-pig 
select distinct * from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id join	apache-pig 
select * from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id join	apache-pig 
select distinct t2.name from issue as t1 join issue_comment on t1.issue_id = t2.issue_id join	apache-pig 
select distinct t1.assignee from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id join	apache-pig 
select distinct t1.assignee from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id where t1.assignee = "Daniel Ward"	apache-pig 
select distinct issue_id from issue_attachment	apache-pig 
select distinct issue_id from issue_attachment	apache-pig 
select distinct issue_id from issue_attachment	apache-pig 
select distinct issue_id from issue_attachment	apache-pig 
select * from issue_attachment as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id where t2.issue_id in (select issue_id from issue_attachment)	apache-pig 
select * from issue_attachment	apache-pig 
select * from issue_attachment	apache-pig 
select issue_id, sum(summary) from issue where type = 'Bug'	apache-pig 
select issue_id, sum(resolution) from issue where issue_id not in (select issue_id from issue_fix_version)	apache-pig 
select issue_id, sum(summary) from issue group by issue_id	apache-pig 
select issue_id, sum(summary) from issue	apache-pig 
select issue_id, sum(summary) from issue where type = "bug"	apache-pig 
select issue_id, sum(summary) from issue where type = "Georgia"	apache-pig 
select issue_id, sum(summary) from issue where type = "Georgia"	apache-pig 
select issue_id, description from issue where type = 'Bug'	apache-pig 
select issue_id, description from issue	apache-pig 
select issue_id, description from issue order by issue_id, description	apache-pig 
select issue_id, description from issue where type = "Georgia"	apache-pig 
select issue_id, description from issue where type = "Georgia"	apache-pig 
select issue_id, description from issue where type = "bug"	apache-pig 
select issue_id, description from issue where type = "Georgia"	apache-pig 
select t1.issue_id from issue_component as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.component = 'Gruber' intersect select t1.issue_id from issue_component as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.component = 'Parser'	apache-pig 
select t1.issue_id from issue_component as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.component = 'Gruber' intersect select t1.issue_id from issue_component as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.component = 'Parser'	apache-pig 
select t1.issue_id from issue_component as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.component = 'Gruber' intersect select t1.issue_id from issue_component as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.component = 'Parser'	apache-pig 
select t1.issue_id from issue_component as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.component = 'Gruber' intersect select t1.issue_id from issue_component as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.component = 'Parser'	apache-pig 
select * from issue_component where component = "grunt" intersect select * from issue_component where component = "parser"	apache-pig 
select * from issue_component where component = "grunt" intersect select * from issue_component where component = "parser"	apache-pig 
select * from issue_component where component = "grunt" intersect select * from issue_component where component = "parser"	apache-pig 
select status from issue where issue_id = 'PIG-3599'	apache-pig 
select status from issue where issue_id = "PIG-3599"	apache-pig 
select status from issue where issue_id = 'PIG-3599'	apache-pig 
select status from issue where issue_id = "PIG-3599"	apache-pig 
select status from issue where issue_id = 'PIG-3599'	apache-pig 
select status from issue where issue_id = 'PIG-3599'	apache-pig 
select status from issue where issue_id = 'PIG-3599'	apache-pig 
select issue_id, priority from issue where type = 'Bug'	apache-pig 
select issue_id, priority from issue	apache-pig 
select issue_id, priority from issue group by issue_id order by count(*) asc	apache-pig 
select issue.issue_id, priority from issue as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id join issue_component as t3 on t2.issue_id = t3.issue_id	apache-pig 
select issue_id, priority from issue where type = "bug"	apache-pig 
select issue_id, priority from issue where type = "Georgia"	apache-pig 
select issue_id, priority from issue where type = "Georgia"	apache-pig 
select issue_id, status, resolution, summary, description from issue where type = 'Bug' and priority = 'Major'	apache-pig 
select issue_id, status, resolution, summary from issue	apache-pig 
select issue_id, status, sum(resolution) from issue	apache-pig 
select issue_id, status, sum(resolution) from issue group by issue_id	apache-pig 
select issue_id, status, resolution, summary, description from issue where type = "bug" and priority = "major"	apache-pig 
select issue_id, status, resolution, summary from issue where type = "bug" intersect select issue_id, status, resolution from issue group by issue_id having count(*) >= 1	apache-pig 
select issue_id, status, resolution from issue order by issue_id, status, description	apache-pig 
select issue_id, type, priority from issue where status = 'Open' order by type, priority	apache-pig 
select issue_id, status, resolution, summary from issue	apache-pig 
select issue_id, status, sum(resolution) from issue	apache-pig 
select issue_id, status, sum(resolution) from issue group by issue_id	apache-pig 
select issue_id, type, priority from issue where status = "open" order by type, priority	apache-pig 
select t1.issue_id, t1.type, t1.priority from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t1.status = 'Open' order by t1.type, t1.priority	apache-pig 
select issue_id, type, priority from issue where status = 'Open' order by type, priority	apache-pig 
select t1.username, t1.field from code_change as t2 join issue_changelog as t3 on t1.change_	apache-pig 
select t1.name, t1.change_type from code_change as t2 join issue_fix_version as t3 on t1.change_type = t3.	apache-pig 
select name, commit_hash from code_change as t1 join issue_fix_version as t2 on t1.	apache-pig 
select t1.name, t1.author from code_change as t2 join change_set as t3 join issue_fix_version as t4 on t1.issue_id = (select t4.issue_id from code_change as t5 join issue_fix_version as t6 on t3.issue_i	apache-pig 
select t1.field, t1.name from issue_fix_version as t2 join issue_fix_version as t3 on t1.fix_version = t3.fix_version	apache-pig 
select t1.field, t1.username from issue_changelog as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id where t2.fix_version = 0.321	apache-pig 
select t1.field, t1.name from issue_fix_version as t2 join issue_fix_version as t3 on t1.fix_version = t3.fix_version	apache-pig 
select issue_id, type, summary, description from issue where status = 'Open' and priority = 'Major'	apache-pig 
select issue_id, type, summary, description from issue where priority = 'Major'	apache-pig 
select issue_id, type, summary, description from issue	apache-pig 
select issue_id, type, sum(summary) from issue	apache-pig 
select issue_id, type, summary, description from issue where priority = "Major"	apache-pig 
select issue_id, type, summary, description from issue where status = 'Open' and priority = 'Major'	apache-pig 
select issue_id, type, summary, description from issue where status = "open" and priority = "major"	apache-pig 
select distinct assignee from issue where type = "Bug"	apache-pig 
select distinct t1.assignee_username from issue as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id join issue_component as t3 on t2.issue_id = t3.issue_id	apache-pig 
select distinct t1.assignee_username from issue as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id join issue as t3 on t2.issue_id = t3.issue_id where t3.type = "bug"	apache-pig 
select distinct t1.assignee_username from issue as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id join issue as t3 on t2.issue_id = t3.issue_id where t3.type = "bug"	apache-pig 
select distinct assignee from issue where type = "Bug"	apache-pig 
select distinct assignee from issue where type = "bug"	apache-pig 
select distinct assignee from issue where type = "bug"	apache-pig 
select author, count(*) from change_set group by author	apache-pig 
select count(*), t1.name from git_repository as t1 join change_set as t2 on t1.git_repository_id = t2.git_repository_id group by t1.name	apache-pig 
select count(*), commit_hash from change_set group by commit_hash	apache-pig 
select count(*), t1.name from	apache-pig 
select t1.name, count(*) from	apache-pig 
select author, count(*) from change_set group by author	apache-pig 
select t1.name, count(*) from issue_comment as t1	apache-pig 
select commit_hash, message from change_set	apache-pig 
select issue_id, message from issue_comment	apache-pig 
select t1.git_repository_id, t2.description from git_repository as t1 join issue as t2 on t2.issue_id = t1.git_repository_id	apache-pig 
select commit_hash, message from change_set	apache-pig 
select commit_hash, message from	apache-pig 
select commit_hash, message from change_set	apache-pig 
select commit_hash, message from change_set	apache-pig 
select t1.assignee_username from issue as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id where t2.issue_id = "PIG-3599"	apache-pig 
select t1.author_email from issue as t2 join issue_fix_version as t3 on t1.issue_id = t3.issue_id join issue_component as t4 on t3.issue_id = t4.issue_id	apache-pig 
select t1.assignee_username from issue as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id where t2.issue_id = "PIG-3599"	apache-pig 
select assignee_username from issue as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id where t2.p	apache-pig 
select assignee from issue where issue_id = "PIG-3599"	apache-pig 
select assignee from issue where issue_id = "PIG-3599"	apache-pig 
select t1.assignee_username from issue as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id where t2.issue_id = "PIG-3599"	apache-pig 
select count(*) from issue where type = 'Improvement'	apache-pig 
select count(*) from	apache-pig 
select count(*) from issue	apache-pig 
select count(*) from jira_repository	apache-pig 
select count(*) from issue where type = "Improvement"	apache-pig 
select count(*) from issue where type = 'New type'	apache-pig 
select count(*) from issue where type = "Improvement"	apache-pig 
select type from issue group by type order by count(*) desc limit 1	apache-pig 
select type from issue group by type order by count(*) desc limit 1	apache-pig 
select type from issue group by type order by count(*) desc limit 1	apache-pig 
select type from issue group by type order by count(*) desc limit 1	apache-pig 
select type from issue group by type order by count(*) desc limit 1	apache-pig 
select type from issue group by type order by count(*) desc limit 1	apache-pig 
select type from issue group by type order by count(*) desc limit 1	apache-pig 
select count(*) from issue where priority = "blocker" or priority = "critical"	apache-pig 
select count(*) from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id join issue_component as t3 on t2.issue_id = t3.issue_id group by t3.issue_id having count(*) >= 1	apache-pig 
select count(*) from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id join issue_component as t3 on t2.issue_id = t3.issue_id group by t3.issue_id having count(*) >= 1	apache-pig 
select count(*) from issue where priority = "blocker" or priority = "critical"	apache-pig 
select count(*) from issue where priority = "Blocker" or priority = "critical"	apache-pig 
select count(*) from issue where priority = "blocker" or priority = "critical"	apache-pig 
select count(*) from issue where priority = "blocker" or priority = "critical"	apache-pig 
select file_path, count(*) from code_change group by file_path order by count(*) desc	apache-pig 
select file_path, count(*) from code_change group by file_path order by count(*) desc limit 5	apache-pig 
select file_path, count(*) from code_change group by file_path order by count(*) desc limit 5	apache-pig 
select file_path, count(*) from code_change group by file_path order by count(*) desc	apache-pig 
select file_path, count(*) from code_change group by file_path order by count(*) desc	apache-pig 
select file_path, count(*) from code_change group by file_path order by count(*) desc	apache-pig 
select file_path, count(*) from code_change group by file_path order by count(*) desc	apache-pig 
select assignee from issue group by assignee having count(*) = 1	apache-pig 
select assignee_username from issue group by assignee_username having count(*) = 1	apache-pig 
select t2.name from issue_comment as t1 join issue_comment as	apache-pig 
select assignee_username from issue group by assignee_username having count(*) = 1	apache-pig 
select assignee from issue group by assignee having count(*) = 1	apache-pig 
select count(*) from issue group by issue_id having count(*) = 1	apache-pig 
select assignee_username from issue group by assignee_username having count(*) = 1	apache-pig 
select count(*), assignee from issue where status = "Open" group by assignee order by count(*) desc	apache-pig 
select t2.author, count(*) from issue as t1 join	apache-pig 
select t1.name, count(*), t1.name from	apache-pig 
select assignee, count(*) from issue group by assignee	apache-pig 
select assignee, count(*) from issue where status = "Open" group by assignee order by count(*) desc limit 1	apache-pig 
select assignee, count(*) from issue where status = "Open" group by assignee order by count(*) desc limit 1	apache-pig 
select count(*), t1.assignee_username from issue as t1 join issue as t2 on t1.issue_id = t2.issue_id where t2.status = "Open" group by t1.assignee_username order by count(*) desc limit 1	apache-pig 
select t1.assignee, count(*) from issue as t1 join issue as t2 on t1.issue_id = t2.issue_id where t2.status = "Open" group by t1.assignee	apache-pig 
select count(*), t1.assignee_username from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id group by t1.assignee_username	apache-pig 
select count(*), t1.assignee_username from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id group by t1.assignee_username	apache-pig 
select assignee, count(*) from issue group by assignee	apache-pig 
select count(*), t1.assignee from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id where t1.status = "Open" group by t1.assignee	apache-pig 
select count(*), t1.assignee from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id where t1.status = "Open" group by t1.assignee	apache-pig 
select count(*), t1.assignee from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id where t1.status = "Open" group by t1.assignee	apache-pig 
select status, count(*) from issue group by status	apache-pig 
select status, count(*) from issue group by status	apache-pig 
select status from issue group by status order by count(*) asc	apache-pig 
select status, count(*) from issue group by status	apache-pig 
select count(*), status from issue group by status	apache-pig 
select status, count(*) from issue group by status	apache-pig 
select status, count(*) from issue group by status	apache-pig 
select resolution, count(*) from issue group by resolution	apache-pig 
select resolution, count(*) from issue group by resolution	apache-pig 
select count(*), t1.type from issue as t1 join code_change as t2 on t1.issue_id = t2.issue_id	apache-pig 
select count(*), t1.type from issue as t1 join issue as t2 on t1.issue_id = t2.issue_id group by t1.type	apache-pig 
select resolution, count(*) from issue group by resolution	apache-pig 
select resolution, count(*) from issue group by resolution	apache-pig 
select resolution, count(*) from issue group by resolution	apache-pig 
select source_issue_id, target_issue_id from issue_link where name like '%duplicate%'	apache-pig 
select issue_id from issue group by issue_id having count(*) = 1	apache-pig 
select distinct issue_id from issue group by issue_id having count(*) >= 2	apache-pig 
select name from issue_link where name like '%duplicate%'	apache-pig 
select source_issue_id, target_issue_id from issue_link where name like '%duplicate%'	apache-pig 
select source_issue_id, target_issue_id from issue_link where name = "Duplicate"	apache-pig 
select source_issue_id, target_issue_id from issue_link where name like '%duplicate%'	apache-pig 
select t1.name from issue_link as t1 join issue_link as t2 on t1.source_issue_id = t2.source_issue_id where t2.name = "Blocker"	apache-pig 
select issue_id from issue group by issue_id having count(*) = 1	apache-pig 
select issue_id from issue group by issue_id having count(*) >= 2	apache-pig 
select t1.name from issue_link as t1 join issue_link as t2 on t1.source_issue_id = t2.source_issue_id where t2.name like '%blocker%'	apache-pig 
select source_issue_id, target_issue_id from issue_link where name like '%blocker%'	apache-pig 
select source_issue_id, target_issue_id from issue_link where name = "Blocker"	apache-pig 
select source_issue_id, target_issue_id from issue_link where name like '%blocker%'	apache-pig 
select count(*) from issue where status = 'Open'	apache-pig 
select count(*) from issue	apache-pig 
select count(*) from issue	apache-pig 
select count(*) from issue where resolved_date!= "null"	apache-pig 
select count(*) from issue where status = "Open"	apache-pig 
select count(*) from issue where status = 'Open'	apache-pig 
select count(*) from issue where status = "Open"	apache-pig 
select t1.name from issue_link as t1 join issue_link as t2 on t1.	apache-pig 
select issue_id from issue union select issue_id from issue_component where issue_id not in (select issue_id from issue_component)	apache-pig 
select issue_id from issue group by issue_id having count(*) >= 1	apache-pig 
select * from issue where issue_id not in (select issue_id from issue_fix_version)	apache-pig 
select status from issue where priority = "blocker" or priority = "critical"	apache-pig 
select issue_id from issue where priority = "Blocker" or priority = "Critical"	apache-pig 
select t1.issue_id from issue as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id join issue as t3 on t2.issue_id = t3.issue_id where t3.priority = "Blocker" union select t1.issue_id from issue as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id join issue as t3 on t2.issue_id = t3.issue_id where t3.priority = "Critical"	apache-pig 
select count(*), t1.assignee_username from issue as t1 join issue as t2 on t1.issue_id = t2.issue_id where t2.status = "Resolved" group by t1.assignee_username	apache-pig 
select t1.author, count(*) from issue as t2 join issue_fix_version as t3 on t1.issue_id = t3.issue_id join issue_component as t4 on t3.issue_id = t4.issue_id	apache-pig 
select count(*), min(resolved_date_zoned) from issue group by min(resolved_date_zoned)	apache-pig 
select count(*), t1.assignee_username from issue as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id group by t1.assignee_username	apache-pig 
select count(*), assignee from issue where resolved_date = (select resolved_date from issue group by resolved_date order by count(*) desc limit 1)	apache-pig 
select assignee, count(*) from issue where status = "Resolved" group by assignee	apache-pig 
select assignee, count(*) from issue where status = "Resolved" group by assignee	apache-pig 
select t2.display_name, t1.me	apache-pig 
select t1.name, t2.name from issue_comment as t1	apache-pig 
select t1.assignee, t2.description from issue as t1 join issue as t2 on t1.issue_id = t2.issue_id where t1.issue_id = "PIG-3599"	apache-pig 
select t1.assignee_username, t1.resolution from issue_comment as t2 join issue_comment as t3 on t2.issue_id = t3.issue_	apache-pig 
select t2.display_name, t1.me	apache-pig 
select t2.display_name, t1.message from issue_comment as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id where t1.issue_id = "PIG-3599"	apache-pig 
select t2.display_name, t1.message from issue_comment as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id where t2.issue_id = 'PIG-3592'	apache-pig 
select distinct * from issue_comment as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id where t2.issue_id = 'PIG-3592'	apache-pig 
select * from issue where issue_id = "PIG-3592"	apache-pig 
select t2.name from issue_fix_version as t1 join issue_comment as	apache-pig 
select t2.assignee_	apache-pig 
select t1.name from issue_comment as t2 join issue_fix_version as t3 on t1.issue_id = t3.issue_id	apache-pig 
select t1.author from change_set as t1 join issue_comment as t2 on t1.issue_	apache-pig 
select distinct * from issue_comment as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id where t2.issue_id = 'PIG-3592'	apache-pig 
select count(*) from issue_component where component = 'impl'	apache-pig 
select count(*) from issue_component where component = 'impl'	apache-pig 
select count(*) from issue_component where component = 'impl'	apache-pig 
select count(*) from issue_component where component = 'impl'	apache-pig 
select count(*) from issue_component as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t1.component = "impl"	apache-pig 
select count(*) from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.component = "impl"	apache-pig 
select count(*) from issue_component as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.component = 'impl'	apache-pig 
select distinct t1.assignee_username from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.component = "impl"	apache-pig 
select distinct t1.name from issue_component as t2 join issue_component as t3 on t1.issue_id = t3.issue_id join	apache-pig 
select t1.author from issue_comment as t2 join issue_component as t3 on t1.issue_id = t3.issue_id	apache-pig 
select t1.assignee_username from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.component = "imp"	apache-pig 
select distinct assignee_username from issue_component as t1 join issue_component as t2 on t1.component = t2.comp	apache-pig 
select distinct assignee from	apache-pig 
select distinct t1.assignee_username from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id where t2.component = "impl"	apache-pig 
select reporter from issue order by reporter_username asc	apache-pig 
select t1.reporter_username from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id group by t1.reporter_username order by count(*) desc limit 1	apache-pig 
select t1.reporter_username, t2.issue_id from issue as t1 join issue as t2 on t1.issue_id = t2.issue_id	apache-pig 
select t1.name, t2.issue_id from issue_comment as	apache-pig 
select reporter, issue_id from issue order by reporter asc	apache-pig 
select reporter, issue_id from issue order by reporter	apache-pig 
select t1.reporter_username, t2.issue_id from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id order by t1.reporter_username asc	apache-pig 
select distinct field from code_change as t1 join issue_fix_version as t2 on t1.	apache-pig 
select t1.name from code_change as t2 join issue_fix_version as t3 join issue_fix_version as t4 on t1.issue_id = t3.issue_id and t4.issue_id = t4.issue_id join code_change as t5 on t3.change_	apache-pig 
select * from code_change as t1 join issue_fix_version as t2 on t2.fix_version = 1 join code_change as t3 on t2.fix_version = 1 group by t2.fix_version having count(*) >= 1	apache-pig 
select * from code_change where commit_hash = "0.12.1"	apache-pig 
select distinct field from issue_changelog as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id where t2.fix_version = 0.321	apache-pig 
select distinct field from issue_fix_version	apache-pig 
select distinct field from code_change as t1 join issue_fix_version as t2 on t1.	apache-pig 
select issue_id, assignee from issue where resolved_date between '2014-09-08' and '2014-09-12'	apache-pig 
select issue_id, assignee from issue where resolved_date between "2014-09-08" and "2014-09-12"	apache-pig 
select t1.issue_id, t2.name from issue as t1 join issue_fix_version on t1.issue_id = t2.issue_id join issue_component as t3 on t2.issue_id = t3.issue_id join issue_component as t4 on t3.issue_id = t4.issue_	apache-pig 
select issue_id, assignee_username from issue where resolved_date_zoned between "2014-09-08" and "2014-09-12"	apache-pig 
select issue_id, assignee from issue where resolved_date between "2014-09-08" and "2014-09-12"	apache-pig 
select t1.issue_id, t2.assignee from issue as t1 join issue as t2 on t1.issue_id = t2.issue_id where t1.resolved_date between '2014-09-08' and '2014-09-12'	apache-pig 
select issue_id, assignee from issue where resolved_date between '2014-09-08' and '2014-09-12'	apache-pig 
select file_path from code_change where	apache-pig 
select t1.file_path from code_change as t1 join	apache-pig 
select t1.file_path from code_change as t1 join	apache-pig 
select distinct * from issue_fix_version as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id where t2.fix_version = 0.321	apache-pig 
select distinct t1.file_path from code_change as t1 join issue_fix_version as t2 on t1.	apache-pig 
select t1.file_path from code_change as t1 join issue_fix_version as t2 on t1.change_	apache-pig 
select distinct t1.file_path from code_change as t1 join issue_fix_version as t2 on t1.	apache-pig 
select * from issue where created_date < "2014-09-12"	apache-pig 
select * from issue where created_date < "2014-09-12"	apache-pig 
select status from issue where created_date < "2014-09-12"	apache-pig 
select * from issue where created_date < "2014-09-12"	apache-pig 
select * from issue where created_date < "2014-09-12"	apache-pig 
select * from issue where created_date < "2014-09-12"	apache-pig 
select issue_id from issue where created_date < "2014-09-12"	apache-pig 
select * from issue where created_date = "2017-03-28"	apache-pig 
select * from issue where created_date = "2017-03-28"	apache-pig 
select * from issue where created_date = "2017-03-28"	apache-pig 
select * from issue where updated_date_zoned = "2017-03-28"	apache-pig 
select * from issue where created_date = "2017-03-28"	apache-pig 
select issue_id from issue where created_date = "2017-03-28"	apache-pig 
select issue_id from issue where created_date = '2017-03-28'	apache-pig 
select issue_id from issue where resolved_date = "2013-10-23"	apache-pig 
select issue_id from issue where resolved_date = "2013-10-23"	apache-pig 
select issue_id from issue where resolution = '2013-10-23'	apache-pig 
select issue_id from issue where resolved_date = "2013-10-23"	apache-pig 
select issue_id from issue where resolved_date = '2013-10-23'	apache-pig 
select issue_id from issue where resolved_date = '2013-10-23'	apache-pig 
select issue_id from issue where resolved_date = '2013-10-23'	apache-pig 
select assignee from issue where resolved_date between '2015-03-01' and '2015-03-31' group by assignee having count(*) >= 3	apache-pig 
select t2.name from issue_fix_version as t1 join issue_comment as	apache-pig 
select count(*) from issue where resolved_date - resolved_date between '2015-03-01' and '2015-03-31' group by resolution having count(*) >= 3	apache-pig 
select assignee_username from issue where resolved_date between '2015-03-01' and '2015-03-31' group by assignee_username having count(*) >= 3	apache-pig 
select issue_id, count(*) from issue where resolved_date between '2015-03-01' and '2015-03-31' group by issue_id having count(*) >= 3	apache-pig 
select count(*), assignee from issue group by assignee having count(*) >= 3 intersect select assignee from issue where resolved_date between '2015-03-01' and '2015-03-31'	apache-pig 
select assignee from issue group by assignee having count(*) >= 3 intersect select assignee from issue group by assignee having count(*) <= '2015-03-01'	apache-pig 
select count(*) from issue where resolved_date < "2013-10-27"	apache-pig 
select count(*) from issue where resolved_date < "2013-10-27"	apache-pig 
select count(*) from issue where resolved_date < "2013-10-27"	apache-pig 
select count(*) from issue where resolved_date < "2013-10-27"	apache-pig 
select count(*) from issue where resolved_date < "2013-10-27"	apache-pig 
select count(*) from issue where resolved_date < "2013-10-27"	apache-pig 
select count(*) from issue where resolved_date < "2013-10-27"	apache-pig 
select issue_id from issue where created_date > '2017-05-31'	apache-pig 
select * from issue where created_date > '2017-05-31'	apache-pig 
select * from issue where updated_date > "2017-05-31"	apache-pig 
select * from issue where created_date_zoned > '2017-05-31'	apache-pig 
select issue_id from issue where created_date > '2017-05-31'	apache-pig 
select * from issue where created_date = "2017-05-31"	apache-pig 
select issue_id from issue where created_date > '2017-05-31'	apache-pig 
select issue_id from issue where resolved_date between '2017-10-01' and '2017-10-31'	apache-pig 
select issue_id from issue where resolved_date between '2017-10-01' and '2017-10-31'	apache-pig 
select issue_id from issue where resolved_date between '2017-10-01' and '2017-10-31'	apache-pig 
select issue_id from issue where resolved_date between '2017-10-01' and '2017-10-31'	apache-pig 
select issue_id from issue where resolved_date between '2017-10-01' and '2017-10-31'	apache-pig 
select issue_id from issue where resolved_date between '2017-10-01' and '2017-10-31'	apache-pig 
select issue_id from issue where resolved_date between '2017-10-01' and '2017-10-31'	apache-pig 
select issue_id from issue where created_date between '2017-01-01' and '2017-03-31'	apache-pig 
select issue_id from issue where created_date between '2017-01-01' and '2017-03-31'	apache-pig 
select issue_id from issue where created_date_zoned between '2017-01-01' and '2017-03-31'	apache-pig 
select issue_id from issue where created_date_zoned between '2017-01-01' and '2017-03-31'	apache-pig 
select issue_id from issue where created_date between '2017-01-01' and '2017-03-31'	apache-pig 
select issue_id from issue where created_date between '2017-01-01' and '2017-03-31'	apache-pig 
select issue_id from issue where created_date between '2017-01-01' and '2017-03-31'	apache-pig 
select issue_id, type, priority from issue where status = 'Open' group by issue_id order by type, priority	apache-pig 
select issue_id, type, priority from issue where status = 'Open' group by issue_id order by type, priority	apache-pig 
select issue_id, type, priority from issue where created_date between '2013-11-16' and '2013-11-28' order by type, priority	apache-pig 
select issue_id, type, priority from issue as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id join issue as t3 on t2.issue_id = t3.issue_id	apache-pig 
select issue_id, type, priority from issue where status = "Open" and created_date between '2013-11-16' and '2013-11-28' order by type, priority	apache-pig 
select issue_id, type, priority from issue where status = 'Open' and created_date_zoned between '2013-11-16' and '2013-11-28' order by type, priority	apache-pig 
select issue_id, type, priority from issue where status = 'Open' and created_date between '2013-11-16' and '2013-11-28' order by type, priority	apache-pig 
select issue_id, status from issue where type = 'Bug'	apache-pig 
select issue_id, status from issue	apache-pig 
select issue_id, status from issue group by issue_id	apache-pig 
select t1.issue_id, t2.status from issue_changelog as t1 join issue as t2 on t1.issue_id = t2.issue_id where t1.created_date = "2003-04-19 15:06:20" and t1.created_date = "2016-03-15 00:33:18"	apache-pig 
select issue_id, status from issue where type = "Georgia"	apache-pig 
select issue_id, status from issue where type = "bug"	apache-pig 
select issue_id, status from issue where type = "Georgia"	apache-pig 
select issue_id, resolution from issue where type = 'Bug'	apache-pig 
select issue_id, resolution from issue order by issue_id, resolution	apache-pig 
select issue_id, resolution from issue	apache-pig 
select t1.issue_id, t2.resolution from issue as t1 join	apache-pig 
select issue_id, resolution from issue where type = "bug"	apache-pig 
select issue_id, resolution from issue where type = "Georgia"	apache-pig 
select issue_id, resolution from issue where type = "Georgia"	apache-pig 
select type from issue where issue_id = 'PIG-3599'	apache-pig 
select type from issue where type = "PIG-3599"	apache-pig 
select type from issue where type = "PIG-3599"	apache-pig 
select type from issue where type = "PIG-3599"	apache-pig 
select type from issue where issue_id = "PIG-3599"	apache-pig 
select type from issue where issue_id = 'PIG-3599'	apache-pig 
select type from issue where issue_id = 'PIG-3599'	apache-pig 
select resolved_date from issue where issue_id = 'PIG-3599'	apache-pig 
select resolved_date from issue where issue_id = 'PIG-3599'	apache-pig 
select resolved_date from issue where issue_id = 3599	apache-pig 
select resolved_date from issue where issue_id = 'PIG-3599'	apache-pig 
select resolved_date from issue where resolution = 'PIG-3599'	apache-pig 
select t1.created_date from issue as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id where t2.issue_id = 'PIG-3599'	apache-pig 
select resolved_date from issue where issue_id = 'PIG-3599'	apache-pig 
select * from issue	apache-pig 
select * from issue	apache-pig 
select * from issue as t1 join issue_component as t2 on t1.issue_id = t2.issue_id join issue_component as t3 on t2.issue_id = t3.issue_id group by t1.issue_id	apache-pig 
select * from issue where issue_id not in (select issue_id from issue_fix_version)	apache-pig 
select content from issue_attachment as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id	apache-pig 
select * from issue	apache-pig 
select * from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id join issue_component as t3 on t2.issue_id = t3.issue_id	apache-pig 
select distinct priority from issue	apache-pig 
select distinct priority from issue	apache-pig 
select distinct priority from issue	apache-pig 
select priority from issue group by priority order by count(*) asc limit 1	apache-pig 
select distinct priority from issue	apache-pig 
select distinct priority from issue	apache-pig 
select distinct priority from issue	apache-pig 
select distinct status from issue	apache-pig 
select distinct status from issue	apache-pig 
select distinct status from issue	apache-pig 
select status from issue group by status having count(*) >= 1	apache-pig 
select distinct status from issue	apache-pig 
select distinct status from issue	apache-pig 
select distinct status from issue	apache-pig 
select distinct resolution from issue	apache-pig 
select distinct resolution from issue	apache-pig 
select resolution from issue	apache-pig 
select type from issue group by type having count(*) >= 2	apache-pig 
select distinct(distinct	apache-pig 
select distinct resolution from	apache-pig 
select distinct resolution from issue	apache-pig 
select commit_hash from change_set	apache-pig 
select distinct t1.git_repository_id from git_repository as t1 join change_set as t2 on t1.git_repository_id = t2.git_repository_id	apache-pig 
select t1.git_repository_id from git_repository as t1 join change_set as t2 on t1.git_repository_id = t2.git_repository_id	apache-pig 
select * from	apache-pig 
select distinct commit_hash from git_repository as t1 join change_set as t2 on t1.git_repository_id = t2.git_repository_id	apache-pig 
select distinct commit_hash from code_change	apache-pig 
select distinct commit_hash from git_repository as t1 join change_set as t2 on t1.git_repository_id = t2.git_repository_id	apache-pig 
select distinct t1.author_email from issue_comment as t2 join issue_fix_version as t3 on t1.issue_id = t3.issue_id	apache-pig 
select distinct message from change_set as t1 join issue_comment as t2 on t1.	apache-pig 
select t1.name from	apache-pig 
select t1.name from issue_comment as t2 join change_set as t3 join issue_comment as t4 on t1.issue_id = t3.issue_id	apache-pig 
select distinct t2.name from change_set as t1 join issue_comment as	apache-pig 
select author_email from change_set	apache-pig 
select distinct author_email from change_set	apache-pig 
select distinct component from issue_component	apache-pig 
select component from issue_component	apache-pig 
select component from issue_component where component in (select t1.component from issue_component as t1 join code_	apache-pig 
select component from issue_component where component in (select t1.component from issue_component as t1 join code_	apache-pig 
select distinct component from issue_component	apache-pig 
select distinct component from issue_component	apache-pig 
select distinct component from issue_component	apache-pig 
select count(*), t1.fix_version from issue_fix_version as t1 join issue_fix_version as t2 on t1.fix_version = t2.issue_id group by t1.fix_version	apache-pig 
select fix_version, count(*) from issue_fix_version group by fix_version	apache-pig 
select fix_version, count(*) from issue_fix_version group by fix_version	apache-pig 
select fix_version, count(*) from issue_fix_version group by fix_version	apache-pig 
select count(*), t1.fix_version from issue_fix_version as t1 join issue_fix_version as t2 on t1.fix_version = t2.fix_version group by t1.fix_version	apache-pig 
select count(*), t1.fix_version from issue_fix_version as t1 join issue_fix_version as t2 on t1.fix_version = t2.fix_version group by t1.fix_version	apache-pig 
select count(*), t1.fix_version from issue_fix_version as t1 join issue_fix_version as t2 on t1.fix_version = t2.fix_version group by t1.fix_version	apache-pig 
select fix_version from issue_fix_version group by fix_version order by count(*) desc limit 1	apache-pig 
select fix_version from issue_fix_version group by fix_version order by count(*) desc limit 1	apache-pig 
select fix_version from issue_fix_version group by fix_version order by count(*) desc limit 1	apache-pig 
select fix_version from issue_fix_version group by fix_version order by count(*) desc limit 1	apache-pig 
select fix_version from issue_fix_version group by fix_version order by count(*) desc limit 1	apache-pig 
select fix_version from issue_fix_version group by fix_version order by count(*) desc limit 1	apache-pig 
select fix_version from issue_fix_version group by fix_version order by count(*) desc limit 1	apache-pig 
select status from issue order by created_date_zoned desc limit 1	apache-pig 
select status from issue order by created_date limit 1	apache-pig 
select status from issue order by created_date limit 1	apache-pig 
select status from issue order by created_date desc limit 1	apache-pig 
select status from issue group by status order by created_date_zoned desc limit 1	apache-pig 
select status from issue order by created_date_zoned desc limit 1	apache-pig 
select status from issue order by created_date_zoned desc limit 1	apache-pig 
select fix_version from issue_fix_version where fix_version = "PIG-3599"	apache-pig 
select t1.fix_version from issue_fix_version as t1 join issue as t2 on t1.issue_id = t2.issue_id where t2.resolution = "PIG-3599"	apache-pig 
select fix_version from issue_fix_version where issue_id = "PIG-3599"	apache-pig 
select fix_version from issue_fix_version where	apache-pig 
select fix_version from issue_fix_version where issue_id = (select issue_id from issue_fix_version where fix_version = 'PIG-3599')	apache-pig 
select fix_version from issue_fix_version where issue_id = "PIG-3599"	apache-pig 
select fix_version from issue_fix_version where issue_id = "PIG-3599"	apache-pig 
select count(*), created_date from issue group by created_date	apache-pig 
select count(*), created_date from issue group by created_date	apache-pig 
select count(*) from issue	apache-pig 
select issue_id, count(*) from issue group by issue_id	apache-pig 
select created_date, count(*) from issue group by created_date	apache-pig 
select created_date, count(*) from issue group by created_date	apache-pig 
select created_date, count(*) from issue group by created_date	apache-pig 
select count(*), t1.updated_date from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id group by t1.updated_date_zoned	apache-pig 
select count(*), created_date_zoned from issue group by created_date_zoned	apache-pig 
select count(*) from issue group by count(*)	apache-pig 
select created_date, created_date_zoned from issue group by created_date_zoned	apache-pig 
select updated_date, count(*) from issue group by updated_date	apache-pig 
select updated_date, count(*) from issue group by updated_date	apache-pig 
select updated_date, count(*) from issue group by updated_date	apache-pig 
select count(*), resolved_date from issue group by resolved_date	apache-pig 
select count(*), resolved_date from issue group by resolved_date	apache-pig 
select count(*), min(resolved_date_zoned) from issue group by min(resolved_date_zoned)	apache-pig 
select resolved_date from issue order by resolved_date desc limit 1	apache-pig 
select resolved_date, count(*) from issue group by resolved_date	apache-pig 
select resolved_date, count(*) from issue group by resolved_date	apache-pig 
select resolved_date, count(*) from issue group by resolved_date	apache-pig 
select count(*), created_date_zoned from	apache-pig 
select count(*), t1.name from git_repository as t1 join change_set as t2 on t1.git_repository_id = t2.git_repository_id group by t1.name	apache-pig 
select count(*), commit_hash from change_set group by commit_hash	apache-pig 
select count(*), git_repository_id from change_set group by git_repository_id	apache-pig 
select committed_date, count(*) from change_set group by committed_date	apache-pig 
select count(*), committed_date from change_set group by committed_date	apache-pig 
select committed_date, count(*) from change_set group by committed_date	apache-pig 
select resolved_date, issue_id from issue where resolution = "Daniel Ward" order by resolved_date desc	apache-pig 
select issue_id from issue where resolution = "Daniel Ward" order by resolved_date_zoned desc	apache-pig 
select t2.resolution, t1.issue_id from issue as t1 join issue as t2 on t1.issue_id = t2.issue_id where t1.assignee = "Daniel Ward" order by t2.resolution desc	apache-pig 
select resolved_date, issue_id from issue where assignee = "Daniel Ward" order by resolved_date	apache-pig 
select resolved_date, issue_id from issue where assignee = "Daniel Ward" order by resolved_date desc	apache-pig 
select resolved_date, issue_id from issue where assignee = "Daniel Ward" order by resolved_date desc	apache-pig 
select resolved_date, issue_id from issue where assignee = "Daniel Ward" order by resolved_date desc	apache-pig 
select count(*), t1.assignee_username from issue as t1 join issue as t2 on t1.issue_id = t2.issue_id where t1.resolved_date like "2014-10-01%" group by t1.assignee_username	apache-pig 
select count(*) from issue as t1 join issue as t2 on t1.issue_id = t2.issue_id where t1.resolution = "2014-10-01" and t2.resolution = "2014-10-31"	apache-pig 
select count(*) from issue as t1 join issue as t2 on t1.issue_id = t2.issue_id where t1.resolution = "John Stark" and t2.resolution = "October 2014"	apache-pig 
select count(*) from issue as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id where t1.author_e	apache-pig 
select count(*) from issue where resolved_date between "2014-10-01" and "2014-10-31"	apache-pig 
select count(*) from issue where resolved_date between resolved_date and resolved_date	apache-pig 
select t1.issue_id from issue as t1 join issue as t2 on t1.issue_id = t2.issue_id where t2.resolved_date between '2014-10-01' and '2014-10-31'	apache-pig 
select count(*) from issue where created_date between '2015-01-01' and '2015-04-30'	apache-pig 
select count(*) from issue where created_date between '2015-01-19 15:06:20' and '2015-04-19 00:33:18'	apache-pig 
select count(*) from issue where created_date = "2015-03-19 15:06:20"	apache-pig 
select count(*) from issue where created_date = "2015-04-19 15:06:20" and updated_date = "2015-03-15 00:33:18"	apache-pig 
select count(*) from issue where created_date between '2015-01-01' and '2015-04-30'	apache-pig 
select count(*) from issue where created_date between '2015-01-01' and '2015-04-30'	apache-pig 
select count(*) from issue where created_date between '2015-01-01' and '2015-04-30'	apache-pig 
select created_date from issue group by created_date order by count(*) desc limit 1	apache-pig 
select created_date from issue group by created_date order by count(*) desc limit 1	apache-pig 
select created_date from issue group by created_date_zoned order by count(*) desc limit 1	apache-pig 
select created_date from issue group by created_date order by count(*) desc limit 1	apache-pig 
select issue_id, created_date from issue group by created_date order by count(*) desc limit 1	apache-pig 
select created_date, count(*) from issue group by created_date order by count(*) desc limit 1	apache-pig 
select created_date, count(*) from issue group by created_date order by count(*) desc	apache-pig 
select resolved_date from issue group by resolved_date order by count(*) desc limit 1	apache-pig 
select resolved_date from issue group by resolved_date order by count(*) desc limit 1	apache-pig 
select resolved_date from issue group by resolved_date order by count(*) desc limit 1	apache-pig 
select resolved_date from issue group by resolved_date order by count(*) desc limit 1	apache-pig 
select issue_id, count(*) from issue group by resolved_date order by count(*) desc limit 1	apache-pig 
select resolved_date, count(*) from issue group by resolved_date order by count(*) desc limit 1	apache-pig 
select resolved_date from issue group by resolved_date order by count(*) desc	apache-pig 
select count(*) from issue	apache-pig 
select count(*) from git_repository	apache-pig 
select count(*) from issue	apache-pig 
select count(*) from issue	apache-pig 
select count(*) from issue_comment as t1 join issue_component as t2 on t1.issue_id = t2.issue_id group by t1.issue_id	apache-pig 
select count(*) from issue where issue_id in (select issue_id from issue_comment group by issue_id order by count(*) desc limit 1)	apache-pig 
select count(*) from issue	apache-pig 
select count(distinct type), t1.type from issue as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id join issue_component as t3 on t2.issue_id = t3.issue_id group by t1.type	apache-pig 
select count(distinct type) from issue	apache-pig 
select count(distinct type) from issue	apache-pig 
select count(distinct type) from issue	apache-pig 
select count(distinct type) from issue	apache-pig 
select count(distinct type) from issue	apache-pig 
select count(distinct type) from issue	apache-pig 
select type, count(*) from issue group by type	apache-pig 
select type, count(*) from issue group by type	apache-pig 
select type, count(*) from issue group by type	apache-pig 
select type, count(*) from issue group by type	apache-pig 
select type, count(*) from issue group by type	apache-pig 
select type, count(*) from issue group by type	apache-pig 
select type, count(*) from issue group by type	apache-pig 
select count(distinct priority) from issue	apache-pig 
select count(distinct priority) from issue	apache-pig 
select count(distinct priority) from issue	apache-pig 
select count(distinct priority) from issue	apache-pig 
select count(distinct priority) from issue	apache-pig 
select count(distinct priority) from issue	apache-pig 
select count(distinct priority) from issue	apache-pig 
select priority, count(*) from issue group by priority	apache-pig 
select priority, count(*) from issue group by priority	apache-pig 
select priority, count(*) from issue group by priority	apache-pig 
select count(*), priority from issue group by priority	apache-pig 
select count(*), t1.priority from issue as t1 join issue as t2 on t1.issue_id = t2.issue_id group by t1.priority	apache-pig 
select t2.priority, count(*) from issue as t1 join issue as t2 on t1.issue_id = t2.issue_id group by t2.priority	apache-pig 
select priority, count(*) from issue group by priority	apache-pig 
select count(distinct status) from issue	apache-pig 
select count(*), t1.status from issue as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id group by t1.status	apache-pig 
select count(distinct status) from issue	apache-pig 
select count(distinct status) from issue	apache-pig 
select count(distinct status) from issue	apache-pig 
select count(distinct status), t1.name from git_repository as t1 join issue as t2 on t2.issue_id = t1.git_repository_id group by t1.name	apache-pig 
select count(distinct status) from issue	apache-pig 
select count(distinct resolution) from issue	apache-pig 
select count(*), resolution from issue group by resolution	apache-pig 
select count(*), t1.type from issue as t1 join issue as t2 on t1.issue_id = t2.issue_id group by t1.type	apache-pig 
select distinct resolution from issue as t1 join code_change as t2 on t1.issue_id = t2.issue_id	apache-pig 
select count(*), t1.resolution from issue as t1 join git_repository as t2 on t1.resolved_date_zoned = t2.git_repository_id group by t1.resolution	apache-pig 
select count(distinct resolution) from issue	apache-pig 
select count(distinct resolution) from issue	apache-pig 
select count(distinct assignee) from issue	apache-pig 
select count(distinct assignee_username) from issue	apache-pig 
select count(distinct assignee_username) from issue	apache-pig 
select count(distinct t1.name), t1.group_id from issue as t2 join issue_comment as t3 on t1.issue_id = t3.issue_	apache-pig 
select count(distinct assignee) from issue	apache-pig 
select count(distinct assignee) from issue	apache-pig 
select count(distinct assignee) from	apache-pig 
select assignee, count(*) from issue group by assignee	apache-pig 
select count(*), assignee from issue group by assignee	apache-pig 
select count(*), assignee from issue group by assignee	apache-pig 
select count(*), t1.assignee_username from	apache-pig 
select assignee, count(distinct	apache-pig 
select count(distinct assignee), count(distinct t1.assignee) from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id group by t1.assignee	apache-pig 
select assignee, count(*) from issue group by assignee	apache-pig 
select count(distinct assignee_username) from issue	apache-pig 
select count(*) from issue_comment as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id where t2.issue_id in (select t1.issue_id from issue_comment as t3 join issue_component as t4 on t3.issue_id = t4.issue_id where t4.issue_id in (select t4.issue_id from issue_component as t5 join	apache-pig 
select count(*), t1.assignee_username from	apache-pig 
select count(*) from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id join issue_component as t3 on t2.issue_id = t3.issue_id group by t3.issue_id	apache-pig 
select count(distinct assignee_username) from issue	apache-pig 
select count(distinct assignee_username) from issue	apache-pig 
select count(distinct assignee_username), t1.name from git_repository as t1 join issue as t2 on t2.issue_id = t1.git_repository_id group by t1.name	apache-pig 
select assignee_username, count(*), t1.assignee_username from	apache-pig 
apache	apache
select assignee_username from issue group by assignee_username order by count(*) asc	apache-pig 
select count(*), assignee_username from issue group by assignee_username	apache-pig 
select assignee_username, count(*), t1.assignee_username from	apache-pig 
select assignee_username, count(*) from issue group by assignee_username	apache-pig 
select assignee_username, count(*), t1.assignee_username from	apache-pig 
select count(distinct reporter_username) from issue	apache-pig 
select count(distinct created_date) from issue	apache-pig 
select count(distinct reporter_username) from issue	apache-pig 
select count(*), t1.name, t1.reporter_username from	apache-pig 
select count(distinct reporter_username) from issue	apache-pig 
select count(distinct reporter_username) from	apache-pig 
select count(distinct reporter_username) from issue	apache-pig 
select count(*), t2.name from issue_comment as t1 join	apache-pig 
select username, count(*), min(t2.username) from issue_comment as t1 join	apache-pig 
select count(*), t2.name from issue_comment as t1 join	apache-pig 
select count(*), t1.username from issue_comment as t1 join	apache-pig 
select t2.name, count(*) from issue_comment as t1 join	apache-pig 
select count(*), t1.username from issue_comment as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id group by t1.username	apache-pig 
select count(*), t1.username from issue_comment as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id group by t1.username	apache-pig 
select reporter, count(*) from issue group by reporter	apache-pig 
select reporter_username from issue group by reporter_username having count(*) >= 1	apache-pig 
select count(*) from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id join issue_component as t3 on t2.issue_id = t3.issue_id join issue_component as t4 on t3.issue_id = t4.issue_id group by t3.issue_id	apache-pig 
select count(*), t1.reporter_username from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id group by t1.reporter_username	apache-pig 
select t2.reporter_username, count(*) from git_repository as t1 join	apache-pig 
select reporter_username, count(*) from issue group by reporter_username	apache-pig 
select reporter, count(*), t2.name from jira_repository as t1 join	apache-pig 
select count(distinct reporter_username) from issue	apache-pig 
select count(distinct reporter_username) from issue	apache-pig 
select count(distinct t1.username) from issue_comment as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id where t2.created_date = "2010-04-19 15:06:20"	apache-pig 
select count(distinct reporter_username) from issue	apache-pig 
select count(distinct reporter_username), count(distinct t1.name) from git_repository as t1 join issue as t2 on t1.git_repository_id = t2.git	apache-pig 
select count(*) from jira_repository	apache-pig 
select count(distinct reporter_username) from issue	apache-pig 
select reporter_username, count(*) from	apache-pig 
select count(distinct reporter_username), count(distinct	apache-pig 
select count(*) from jira_repository	apache-pig 
select count(*), t1.username from issue_comment as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id group by t1.username	apache-pig 
select reporter_username, count(*) from issue group by reporter_username	apache-pig 
select t1.reporter_username, count(*) from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id group by t1.reporter_username	apache-pig 
select reporter_username, count(*), t1.name from issue as t2 join issue_changelog as t3 on t1.issue_id = t3.issue_id join	apache-pig
select count(*), t1.name from git_repository as t1 join change_set as t2 on t1.git_repository_id = t2.git_repository_id	apache-pig 
select count(*), t1.name from git_repository as t1 join change_set as t2 on t1.git_repository_id = t2.git_repository_id group by t1.name	apache-pig 
select count(*) from change_set	apache-pig 
select count(*) from change_set	apache-pig 
select count(*), t1.name from git_repository as t1 join change_set as t2 on t1.git_repository_id = t2.git_repository_id group by t1.name	apache-pig 
select count(*), t1.name from git_repository as t1 join change_set as t2 on t1.git_repository_id = t2.git_repository_id group by t1.name	apache-pig 
select count(*), t1.name from git_repository as t1 join change_set as t2 on t1.git_repository_id = t2.git_repository_id group by t1.name	apache-pig 
select count(distinct author) from issue_	apache-pig 
select count(distinct author) from change_set	apache-pig 
select count(*), commit_hash from change_set group by commit_hash having count(*) >= 2	apache-pig 
select count(*) from jira_repository	apache-pig 
select count(distinct author_email) from change_set	apache-pig 
select count(distinct author_email) from change_set	apache-pig 
select count(distinct author) from change_set	apache-pig 
select t2.display_name, count(*) from issue_comment as t1 join	apache-pig 
select count(*), t2.name from issue_comment as t1 join	apache-pig 
select count(*), t1.name from jira_	apache-pig 
select count(*), t1.name from git_repository as t1 join issue_comment as t2 on t1.git_repository_id = t2.git_repository_id	apache-pig 
select t2.description, count(*) from issue_comment as t1 join issue as t2 on t1.issue_id = t2.issue_id group by t2.description	apache-pig 
select t2.display_name, count(*) from issue_comment as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id group by t2.display_name	apache-pig 
select t2.description, count(*) from issue_comment as t1 join issue as t2 on t1.issue_id = t2.issue_id group by t2.description order by count(*) desc	apache-pig 
select distinct username from issue_comment	apache-pig 
select distinct username from issue_comment	apache-pig 
select distinct t1.username from issue_comment as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id where t2.issue_id in (select t2.issue_id from issue_comment as t3 join issue_comment as t4 on t3.issue_id = t4.issue_id where t4.issue_id in (select t4.issue_id from issue_comment as t5 join issue_comment as t6 on t5.issue_id = t4.issue_id where t4.issue_id in (select t4.issue_id from issue_comment as t5 join issue_comment as t6 on t5.issue_id = t4.issue_id where t4.issue_id in (select t4.issue_id from issue_comment as t5 join issue_comment as t8 on t5.issue_id = t4.issue_id) 	apache-pig 
select distinct t1.username from issue_comment as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id where t2.issue_id in (select t2.issue_id from issue_comment as t3 join issue_comment as t4 on t3.issue_id = t4.issue_id where t4.issue_id in (select t4.issue_id from issue_comment as t5 join issue_comment as t8 on t5.issue_id = t4.issue_id where t4.issue_id in (select t4.issue_id from issue_comment as t5 join issue_comment as t8 on t5.issue_id = t4.issue_id where t4.issue_id in (select t4.issue_id from issue_comment as t5 join issue_comment as t8 on t5.issue_id = t4.issue_id where t4.issue_id in	apache-pig 
select distinct username from issue_comment	apache-pig 
select distinct username from issue_comment	apache-pig 
select distinct t1.username from issue_comment as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id	apache-pig 
select count(distinct component) from issue_component	apache-pig 
select count(*) from issue_component where component = "Application"	apache-pig 
select count(*) from issue_component	apache-pig 
select count(*) from issue_component where component = "Application"	apache-pig 
select count(distinct component) from issue_component	apache-pig 
select count(*) from issue_component	apache-pig 
select count(distinct component) from issue_component	apache-pig 
select component, count(*) from issue_component group by component	apache-pig 
select component, count(*) from issue_component group by component	apache-pig 
select t1.component, count(*) from issue_component as t1 join issue_component as t2 on t1.issue_id = t2.issue_id group by t1.component	apache-pig 
select count(distinct component) from issue_component	apache-pig 
select component, count(*) from issue_component group by component	apache-pig 
select count(*), t1.component from issue_component as t1 join issue_component as t2 on t1.issue_id = t2.issue_id group by t1.component	apache-pig 
select count(*), t1.component from issue_component as t1 join issue_component as t2 on t1.issue_id = t2.issue_id group by t1.component	apache-pig 
select count(distinct name) from issue_link	apache-pig 
select count(distinct type) from issue_	apache-pig 
select count(distinct t1.name) from issue_link as t1 join issue_link as t2 on t1.source_issue_id = t2.source_issue_id group by t1.name	apache-pig 
select count(distinct issue_id), t1.name from issue_link as t1 join issue_component as t2 on t1.source_issue_id = t2.issue_id group by t1.name	apache-pig 
select count(distinct name), t1.name from issue_link as t1 join issue_fix_version as t2 on t1.source_issue_id = t2.issue_id join issue_component as t3 on t2.issue_id = t3.issue_id group by t1.name	apache-pig 
select count(distinct t1.name) from issue_link as t1 join issue_link as t2 on t1.source_issue_id = t2.source_issue_id group by t1.name	apache-pig 
select count(distinct name) from issue_link	apache-pig 
select t1.name, t2.name from issue_link as t1 join issue_link as t2 on t1.source_issue_id = t2.source_issue_id	apache-pig 
select count(*) from issue_link	apache-pig 
select count(*), t1.name from issue_link as t1 join issue as t2 on t1.source_issue_id = t2.issue_id group by t1.name	apache-pig 
select count(*), t1.name from issue_link as t1 join issue_link as t2 on t1.source_issue_id = t2.source_issue_id group by t1.name order by count(*) asc	apache-pig 
select name, count(*) from issue_link group by name	apache-pig 
select t1.name, count(*) from issue_link as t1 join issue_link as t2 on t1.source_issue_id = t2.source_issue_id group by t1.name	apache-pig 
select t1.name, count(*) from issue_link as t1 join	apache-pig 
select count(*) from issue where type = "Bug"	apache-pig 
select count(*) from	apache-pig 
select count(*) from issue	apache-pig 
select count(*), t1.name from git_repository as t1 join issue_fix_version as t2 on t1.git_repository_id = t2.git_repository_id	apache-pig 
select count(*) from issue where type = "%bug%"	apache-pig 
select count(*) from issue where type = "bug"	apache-pig 
select count(*) from issue where type = "Georgia"	apache-pig 
select distinct assignee from issue	apache-pig 
select distinct assignee_username from	apache-pig 
select distinct t1.assignee_username from issue as t1 join issue as t2 on t1.issue_id = t2.issue_id where t2.issue_id in (select t2.issue_id from issue as t3 join issue_comment as t4 on t3.issue_id = t4.issue_id where t3.issue_id in (select t4.issue_id from issue_comment as t5 join issue as t6 on t5.issue_id = t4.issue_id where t3.issue_id in (select t4.issue_id from issue_comment as t5 join issue as t6 on t5.issue_id = t4.issue_id where t3.issue_id in (select t4.issue_id from issue_comment as t5 join issue as t6 on t5.issue_id = t4.issue_id where t3.issue_	apache-pig 
select count(distinct assignee_username), t2.name from jira_repository as t1 join	apache-pig 
select distinct assignee from issue	apache-pig 
select distinct assignee from	apache-pig 
select count(distinct assignee) from	apache-pig 
select distinct assignee_username from issue	apache-pig 
select distinct t1.assignee_username from issue as t1 join issue_attachment as t2 on t1.issue_id = t2.issue_id join issue_comment as t3 on t2.issue_id = t3.issue_id	apache-pig 
select distinct assignee_username from	apache-pig 
select distinct t1.assignee_username from issue as t1 join issue_attachment as t2 on t1.issue_id = t2.issue_id join issue_comment as t3 on t2.issue_id = t3.issue_id	apache-pig 
select distinct assignee_username from	apache-pig 
select distinct assignee_username from	apache-pig 
select distinct assignee_username from issue	apache-pig 
select distinct reporter_username from issue	apache-pig 
select distinct t1.reporter_username from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id	apache-pig 
select distinct t1.reporter_username from issue as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id	apache-pig 
select distinct reporter_username from issue	apache-pig 
select distinct reporter_username from issue	apache-pig 
select distinct reporter_username from	apache-pig 
select distinct reporter_username from	apache-pig 
select distinct reporter_username from issue	apache-pig 
select distinct t1.username from issue_comment as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id join issue_comment as t3 on t2.issue_id = t3.issue_id	apache-pig 
select distinct reporter_username from	apache-pig 
select distinct t1.username from issue_comment as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id join issue_comment as t3 on t2.issue_id = t3.issue_id	apache-pig 
select distinct reporter_username from issue	apache-pig 
select distinct reporter_username from	apache-pig 
select distinct reporter_username from issue	apache-pig 
select distinct author_email from change_set	apache-pig 
select distinct t1.author_email from	apache-pig 
select distinct	apache-pig 
select distinct t1.name from git_repository as t1 join change_set as t2 on t1.git_repository_id = t2.git_repository_id	apache-pig 
select count(distinct author_email) from change_set	apache-pig 
select distinct author from change_set	apache-pig 
select distinct author_email from change_set	apache-pig 
select t2.display_name, count(*) from issue_comment as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id where t1.issue_id = 'PIG-3592' group by t1.issue_id	apache-pig 
select count(*) from issue_comment as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id where t2.issue_id = "PIG-3592"	apache-pig 
select count(*), t1.name from issue_comment as	apache-pig 
select count(*), min(*) from issue_comment as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id where t2.issue_id = 'PIG-3592' group by min(*)	apache-pig 
select t2.display_name, count(*) from issue_comment as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id where t1.issue_id = 'PIG-3592' group by t1.issue_id	apache-pig 
select count(*), display_name from issue_comment where issue_id = 'PIG-3592' group by display_name	apache-pig 
select t2.description, count(*) from issue_comment as t1 join issue as t2 on t1.issue_id = t2.issue_id where t1.issue_id = 'PIG-3592' group by t2.description	apache-pig 
select issue_id, created_date, resolved_date from issue order by created_date, resolved_date asc limit 1	apache-pig 
select issue_id, created_date, resolved_date from issue	apache-pig 
select t1.issue_id, t1.created_date, t1.resolved_date, t2.commit_hash from issue as t1 join change_set as t2 on t1.resolved_date_zoned = t2.commit_hash group by t1.issue_id	apache-pig 
select issue_id, created_date, resolved_date from issue group by issue_id	apache-pig 
select t1.issue_id, t1.created_date, t1.resolved_date from issue as t1 join change_set as t2 on t1.issue_id = t2.issue_	apache-pig 
select t1.issue_id, t1.created_date, t1.resolved_date from issue as t1 join change_set as t2 on t1.issue_id = 2	apache-pig 
select t1.issue_id, t1.created_date, t1.resolved_date from issue as t1 join change_set as t2 on t1.issue_id = t2.issue_	apache-pig 
select distinct issue_id from issue_link as t1 join change_set as t2 on t1.change_	apache-pig 
select distinct t1.name from issue_link as t1 join issue_link as	apache-pig 
select issue_id, count(*), t1.name from issue_link as t1 join issue_link as t2 on t1.issue_	apache-pig 
select distinct issue_id, name from issue_link as t1 join issue_link as t2 on t1.issue_	apache-pig 
select distinct t1.name from issue_link as t1 join issue_link as t2 on t1.issue_i	apache-pig 
select distinct name from issue_link as t1 join	apache-pig 
select * from issue_link	apache-pig 
select count(*) from issue where issue_id not in ( select issue_id from issue_link 	apache-pig 
select count(*) from issue where issue_id not in ( select issue_id from issue_comment )	apache-pig 
select count(*) from issue where issue_id not in ( select issue_id from issue_link	apache-pig 
select count(*) from issue_comment where commit_hash not in (select commit_hash from issue_link	apache-pig 
select count(*) from issue where issue_id not in (select issue_id from issue_	apache-pig 
select count(*) from issue where issue_id not in ( select issue_id from issue_fix_version where issue_id not in ( select issue_id from issue_fix_version where issue_id not in ( select issue_id from issue_fix_version where issue_id not in ( select issue_id from issue_fix_version where issue_id not in ( select issue_id from issue_fix_version where issue_id not in ( select issue_id from issue_fix_version where issue_id not in ( select issue_id from issue_fix_version where issue_id not in ( select issue_id from issue_fix_version where issue_id not in ( select issue_id from issue_fix_version where issue_id not in ( select issue_id from issue_fix_version where issue_id not in ( select issue_id from issue_fix_version where issue_id not in ( select issue_id from issue_fix_version where issue_id not in ( select issue_id from issue_fix_version	apache-pig 
select count(*) from issue where issue_id not in (select issue_id from issue_	apache-pig 
select count(*) from issue group by issue_id having count(*) > 1	apache-pig 
select count(*) from issue group by issue_id having count(*) > 1	apache-pig 
select count(*) from issue_comment group by issue_id having count(*) >= 2	apache-pig 
select count(*) from issue group by issue_id having count(*) > 1	apache-pig 
select count(*) from issue_link group by count(*) having count(*) >= 2	apache-pig 
select count(*) from issue_link group by count(*) having count(*) > 1	apache-pig 
select count(*) from issue_link group by count(*) having count(*) > 1	apache-pig 
select count(*) from issue_link group by count(*) having count(*) = 1	apache-pig 
select count(*) from issue group by count(*) having count(*) = 1	apache-pig 
select count(*) from issue_comment as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id group by t1.issue_id having count(*) = 1	apache-pig 
select count(*) from issue_link as t1 join code_change as t2 on t1.	apache-pig 
select count(*) from issue_link group by count(*)	apache-pig 
select count(*) from issue_link group by count(*) having count(*) = 1	apache-pig 
select count(*) from issue_link group by count(*)	apache-pig 
select username, count(distinct issue_id) from issue_comment group by username	apache-pig 
select count(*), t1.name, t1.resolution from issue_comment as t2 join issue_comment as t3 on t1.issue_id = t3.issue_id	apache-pig 
select count(*) from issue_comment as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id where t1.username = "%left%" group by t1.username	apache-pig 
select t2.username, count(*) from issue_comment as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id group by t2.username	apache-pig 
select t2.username, count(distinct t1.issue_id) from issue_comment as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id group by t2.username	apache-pig 
select username, count(distinct issue_id) from issue_comment group by username	apache-pig 
select count(*), t1.username from issue_comment as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id	apache-pig 
select t1.issue_id, count(distinct t1.username) from issue_comment as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id group by t1.issue_id	apache-pig 
select count(*) from issue_comment	apache-pig 
select count(*), issue_id from issue_comment group by issue_id	apache-pig 
select count(distinct username) from issue_comment	apache-pig 
select issue_id, count(distinct username) from issue_comment group by issue_id	apache-pig 
select count(distinct username), issue_id from issue_comment group by issue_id	apache-pig 
select t1.issue_id, count(distinct t2.username) from issue_comment as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id group by t1.issue_id	apache-pig 
select issue_id, count(*) from issue_comment group by issue_id	apache-pig 
select t1.issue_id, count(*) from issue_comment as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id group by t1.issue_id	apache-pig 
select issue_id, count(*) from issue_comment group by issue_id	apache-pig 
select issue_id, count(*) from issue_comment group by issue_id	apache-pig 
select issue_id, count(*) from issue_comment group by issue_id	apache-pig 
select issue_id, count(*) from issue_comment group by issue_id	apache-pig 
select issue_id, count(*) from issue_comment group by issue_id	apache-pig 
select issue_id, summary, description from issue	apache-pig 
select issue_id, summary, description from issue	apache-pig 
select issue_id, summary, description from issue	apache-pig 
select issue_id, sum(summary), description from issue	apache-pig 
select issue_id, summary, description from issue	apache-pig 
select issue_id, summary, description from issue	apache-pig 
select issue_id, summary, description from issue	apache-pig 
select commit_hash from change_set where created_date >= "2016-01-19 15:06:20" and resolved_date <= "2018-03-15 00:	apache-pig 
select commit_hash from change_set where created_date = "PIG-3592" and resolved_date = "1999-03-052	apache-pig 
select commit_hash from change_set where created_date = 'PIG-3592' and resolved_date = '2016-03-15 00"	apache-pig 
select commit_hash from issue_comment join issue_fix_version as t1 join issue_comment as t2 on t1.issue_id = t2.issue_id join issue_comment as t3 on t2.issue_id = t3.issue_id join issue_fix_version as t4 on t3.issue_id = t4.issue_id join issue_fix_version as t5 on t4.issue_id = t5.issue_id	apache-pig 
select t1.commit_hash from code_change as t1 join issue as t2 on	apache-pig 
select commit_hash from change_set where created_date >= created_date and created_date <= 'PIG-3592'	apache-pig 
select t1.commit_hash, t2.created_date, t2.resolved_date from change_set as t1 join issue as t2 on t1.issue_	apache-pig 
select count(*), t1.type from issue as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id where t1.type = "bug" intersect select count(*) from issue as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id where t1.type = "improvement"	apache-pig 
select count(*), t1.resolution from issue as t1 join code_change as t2 on t1.issue_id = t2.issue_id	apache-pig 
select count(*), t1.name from	apache-pig 
select issue_id, count(*) from issue group by issue_id	apache-pig 
select count(*), t1.type from issue as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id where t1.type = "Git" union select count(*), t1.type from issue as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id where t1.type = "Initialization"	apache-pig 
select type, count(*) from issue group by type	apache-pig 
select type, count(*) from issue group by type	apache-pig 
select count(*) from issue_link as t1 join issue_link as t2 on t1.issue_	apache-pig 
select count(*) from issue_fix_version where fix_version = "PIG-3599"	apache-pig 
select count(*) from code_change where file_path like "%pIG-3599%"	apache-pig 
select count(*) from issue_link where issue_id not in ( select issue_id from issue_link as t1 join	apache-pig 
select count(*) from issue_attachment as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id where t2.issue_id = 'PIG-3599'	apache-pig 
select count(*) from issue_link as t1 join issue_link as t2 on t1.issue_	apache-pig 
select count(*) from issue_link as t1 join issue_link as t2 on t1.issue_	apache-pig 
select min(file_path) from issue_attachment as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id	apache-pig 
select * from issue_fix_version as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id where t2.issue_id in (select t1.issue_id from issue_fix_version as t3 join issue_fix_version as t4 on t3.issue_id = t4.issue_id where t4.issue_id in (select t4.issue_id from issue_fix_version as t5 join issue_fix_version as t8 on t5.issue_id = t4.issue_id where t4.issue_id in (select t4.issue_id from issue_fix_version as t5 join issue_fix_version as t8 on t5.fix_version = t8	apache-pig 
select count(*) from issue_link as t1 join issue as t2 on t1.source_issue_id = t2.issue_id group by t1.source_issue_id	apache-pig 
select count(*) from issue_attachment as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id group by t1.issue_id	apache-pig 
select count(*), t1.file_path from code_change as t1 join issue_link as t2 on t1.change_	apache-pig 
select min(file_path) from issue_attachment as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id	apache-pig 
select count(*), t1.issue_id from issue_fix_version as t1 join issue as t2 on t1.issue_id = t2.issue_id where t2.type = "Git" group by t1.issue_id	apache-pig 
select count(*) from issue_link as t1 join issue as t2 on t1.source_issue_id = t2.source_issue_id	apache-pig 
select count(*) from issue_link	apache-pig 
select count(*) from issue_link as t1 join issue_fix_version as t2 on t1.issue_	apache-pig 
select count(*) from issue_link group by count(*)	apache-pig 
select count(*) from issue_link as t1 join issue_link as t2 on t1.source_issue_id = t2.source_issue_id where issue_id in ( select source_issue_id from issue_link as t3 join issue_fix_version as t4 on t3.target_issue_id = t4.target_issue_id	apache-pig 
select count(*) from issue_link as t1 join issue as t2 on t1.source_issue_id = t2.source_issue_id	apache-pig 
select count(*) from issue_link where source_issue_id in ( select source_issue_id from issue_link where target_issue_id in ( select target_issue_id from issue_link where	apache-pig 
select source_issue_id, target_issue_id from issue_link where type = 'Integerment" intersect select source_issue_id, target_issue_id	apache-pig 
select t1.issue_id from issue as t1 join issue_link as t2 on t1.issue_id = t2.source_issue_id where t1.type = "bug" intersect select t1.issue_id from issue as t1 join issue_link as t2 on t1.issue_id = t2.source_issue_id where t1.type = "improvement"	apache-pig 
select source_issue_id from issue_link intersect select target_issue_id from issue_link	apache-pig 
select issue_id from issue where source_issue_id in (select source_issue_id from issue_link where is_containment = '0' group by source_issue_id	apache-pig 
select source_issue_id, target_issue_id from issue_link intersect select source_issue_id, target_issue_id from issue_link	apache-pig 
select source_issue_id from issue_link intersect select target_issue_id from issue_link	apache-pig 
select source_issue_id, target_issue_id from issue_link intersect select target_issue_id from issue_link	apache-pig 
select distinct name from issue_link	apache-pig 
select distinct type from issue	apache-pig 
select t1.name from issue_link as t1 join issue_link as t2 on t1.source_issue_id = t2.source_issue_id group by t1.name having count(*) = 2	apache-pig 
select distinct(t1.name) from issue_link as t1 join issue_component as t2 on t1.source_issue_id = t2.issue_id join issue_component as t3 on t2.issue_id = t3.issue_id	apache-pig 
select distinct t1.name from issue_link as t1 join issue_link as t2 on t1.source_issue_id = t2.source_issue_id where t2.name = "apache_pig"	apache-pig 
select distinct name from issue_link as t1 join issue_component as t2 on t1.source_issue_id = t2.source_issue_id	apache-pig 
select distinct name from issue_link	apache-pig 
select t1.type, count(*) from issue as t1 join issue_link as t2 on t1.issue_id = t2.source_issue_id group by t1.issue_id	apache-pig 
select t1.type, count(*) from issue as t1 join issue_link as t2 on t1.issue_id = t2.source_issue_id group by t1.type	apache-pig 
select t1.type, count(*) from issue as t1 join issue_link as t2 on t1.issue_id = t2.source_issue_id where t2.target_issue_id in (select t2.target_issue_id from issue_link as t3 join issue_link as t4 on t3.source_issue_id = t4.source_issue_id where t4.target_issue_id!= "null") group by t1.type	apache-pig 
select t1.type, count(*) from issue as t1 join issue_link as t2 on t1.issue_id = 2 where t2.target_issue_id!= "cloner" group by t1.type	apache-pig 
select t1.type, count(*) from issue as t1 join issue_link as t2 on t1.issue_id = t2.source_issue_id where t2.name = "cloners" group by t1.type	apache-pig 
select source_issue_id, target_issue_id from issue_link where name = "Cloters" group by source_issue_id	apache-pig 
select source_issue_id, target_issue_id from issue_link where name = "Clothes" group by source_issue_id	apache-pig 
select t1.type from issue as t1 join issue_link as t2 on t1.issue_id = t2.source_issue_id where t2.name = 'Closed source_issue' intersect select t1.type from issue as t1 join issue_link as t2 on t1.issue_id = t2.source_issue_id where t2.name = 'Closed target_issue_id'	apache-pig 
select distinct t1.type from issue as t1 join issue_link as t2 on t1.issue_id = t2.source_issue_id where t2.target_issue_id!= "cloner"	apache-pig 
select distinct t1.type from issue as t1 join issue_link as t2 on t1.issue_id = t2.source_issue_id where t2.target_issue_id = 'cloner'	apache-pig 
select type from issue where issue_id in (select issue_id from issue_link	apache-pig 
select t1.type from issue as t1 join issue_link as t2 on t1.issue_id = t2.source_issue_id where t2.name = "cloners"	apache-pig 
select t1.type from issue as t1 join issue_link as t2 on t1.issue_id = t2.source_issue_id where t2.name = "Clothes" intersect select t1.type from issue as t1 join issue_link as t2 on t1.issue_id = t2.source_issue_id where t2.name = "Clothes"	apache-pig 
select t1.type from issue as t1 join issue_link as t2 on t1.issue_id = t2.source_issue_id where t2.name = "Clothes" intersect select t1.type from issue as t1 join issue_link as t2 on t1.issue_id = t2.source_issue_id where t2.name = "Clothes"	apache-pig 
select distinct type from issue	apache-pig 
select distinct type from issue	apache-pig 
select type from issue group by type having count(*) >= 2	apache-pig 
select distinct type from issue	apache-pig 
select distinct type from issue	apache-pig 
select distinct type from issue	apache-pig 
select distinct type from issue	apache-pig 
select type from issue where type = 'Bug'	apache-pig 
select * from issue where issue_id not in (select issue_id from issue_fix_version)	apache-pig 
select * from issue where issue_id not in (select issue_id from issue_fix_version)	apache-pig 
select * from	apache-pig 
select * from issue where type = "Georgia"	apache-pig 
select * from issue where type = "bug"	apache-pig 
select * from issue where type = "issue_type"	apache-pig 
select status from issue except select status from issue where status!= "In Progress"	apache-pig 
select issue_id from issue except select t1.issue_id from issue as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id	apache-pig 
select status from issue where created_date_zoned not in (select created_date_zoned from issue)	apache-pig 
select issue_id from issue except select t1.issue_id from issue as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id	apache-pig 
select issue_id from issue except select t1.issue_id from issue as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id where t1.status = "In Progress"	apache-pig 
select issue_id from issue except select t1.issue_id from issue as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id join issue as t3 on t2.issue_id = t3.issue_id where t3.status = "In Progress"	apache-pig 
select status from issue where status!= "In Progress"	apache-pig 
select count(*) from issue as t1 join issue_attachment as t2 on t1.issue_id = t2.issue_id where t1.type = 'Improvement'	apache-pig 
select max(*), min(*) from change_set as t1 join issue_fix_version as t2 on t2.issue_id = t1.issue_id	apache-pig 
select count(*) from issue_link as t1 join issue as t2 on t1.source_issue_id = t2.issue_id group by t1.source_issue_id order by count(*) desc limit 1	apache-pig 
select count(*) from issue_fix_version as t1 join issue_fix_version as t2 on t1.issue_id = t2.issue_id group by t1.issue_id order by count(*) desc limit 1	apache-pig 
select count(*), t1.file_path from code_change as t1 join issue_link as t2 on t1.change_type = t2.issue_id	apache-pig 
select count(*) from issue as t1 join issue_attachment as t2 on t1.issue_id = t2.issue_id where t1.type = 'Improvement'	apache-pig 
select count(*), t1.issue_id from issue_fix_version as t1 join issue_link as t2 on t1.issue_id = t2.issue_id	apache-pig 
