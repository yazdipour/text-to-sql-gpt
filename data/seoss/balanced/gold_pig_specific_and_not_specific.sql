SELECT issue_id FROM issue WHERE type = 'Bug'	apache-pig
SELECT * FROM issue WHERE status = "Closed" OR status = "Resolved" OR status = "Patch Available"	apache-pig
SELECT T1.issue_id, T1.type, T1.description FROM issue AS T1 JOIN issue_component AS T2 ON T1.issue_id = T2.issue_id WHERE T2.component = "impl"	apache-pig
SELECT issue_id FROM issue WHERE updated_date BETWEEN '2017-03-22' AND '2017-03-23'	apache-pig
SELECT * FROM issue WHERE issue_id = "PIG-3599"	apache-pig
SELECT * FROM issue WHERE assignee = "Daniel Ward" AND status = 'Open'	apache-pig
SELECT * FROM issue WHERE status = 'In Progress'	apache-pig
SELECT * FROM issue WHERE reporter = 'John Stark' AND type = 'Bug'	apache-pig
SELECT * FROM issue where priority = 'Blocker' OR priority = 'Critical'	apache-pig
SELECT * FROM issue WHERE updated_date > '2017-03-28'	apache-pig
SELECT * FROM issue WHERE assignee = '﻿Daniel Ward'	apache-pig
SELECT * FROM issue AS T1 WHERE T1.issue_id IN (SELECT T2.issue_id FROM issue_attachment AS T2)	apache-pig
SELECT issue_id, summary FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id, description FROM issue WHERE type = 'Bug'	apache-pig
SELECT * FROM issue AS T1 JOIN issue_component AS T2 ON T1.issue_id = T2.issue_id JOIN issue_component AS T3 ON T1.issue_id = T3.issue_id WHERE T2.component = 'grunt' AND T3.component = 'parser' AND T2.issue_id = T3.issue_id	apache-pig
SELECT status FROM issue WHERE issue_id = "PIG-3599"	apache-pig
SELECT issue_id, priority FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id, status, resolution, summary, description FROM issue WHERE type = "Bug" AND priority = "Major"	apache-pig
SELECT issue_id, type, priority FROM issue WHERE status = 'Open' ORDER BY type, priority	apache-pig
SELECT T1.field, T1.username FROM issue_changelog AS T1 JOIN issue_fix_version AS T2 ON T1.issue_id = T2.issue_id WHERE T2.fix_version = "0.12.1"	apache-pig
SELECT issue_id, type, summary, description FROM issue WHERE status = 'Open' AND priority = 'Major'	apache-pig
SELECT DISTINCT assignee FROM issue WHERE type = 'Bug'	apache-pig
SELECT author, Count(*) FROM change_set GROUP BY author	apache-pig
SELECT commit_hash, message FROM change_set	apache-pig
SELECT assignee FROM issue WHERE issue_id = "PIG-3599"	apache-pig
SELECT Count(*) FROM issue WHERE type = 'Improvement'	apache-pig
SELECT type FROM issue GROUP BY type ORDER BY Count(*) DESC LIMIT 1	apache-pig
SELECT Count(*) FROM issue where priority = 'Blocker' OR priority = 'Critical'	apache-pig
SELECT file_path, Count(commit_hash) FROM code_change GROUP BY file_path ORDER BY Count(*) DESC LIMIT 5	apache-pig
SELECT assignee FROM issue GROUP BY assignee HAVING Count(issue_id) = 1	apache-pig
SELECT assignee, Count(issue_id) FROM issue WHERE status = "Open" GROUP BY assignee ORDER BY Count(issue_id) DESC LIMIT 1	apache-pig
SELECT assignee, Count(issue_id) FROM issue WHERE status = "Open" GROUP BY assignee	apache-pig
SELECT status, Count(status) FROM issue GROUP BY status	apache-pig
SELECT resolution, Count(*) FROM issue GROUP BY resolution	apache-pig
SELECT source_issue_id, target_issue_id FROM issue_link WHERE name = 'Duplicate'	apache-pig
SELECT source_issue_id, target_issue_id FROM issue_link WHERE name = 'Blocker'	apache-pig
SELECT Count(*) FROM issue WHERE status = 'Open'	apache-pig
SELECT * FROM issue WHERE priority = "Blocker" OR priority = "Critical"	apache-pig
SELECT assignee, Count(*) FROM issue WHERE status = "Resolved" GROUP BY assignee	apache-pig
SELECT display_name, message FROM issue_comment WHERE issue_id = "PIG-3599" ORDER BY display_name	apache-pig
SELECT T1.author_email FROM change_set AS T1 JOIN change_set_link AS T2 ON T1.commit_hash = T2.commit_hash WHERE T2.issue_id = "PIG-3592"	apache-pig
SELECT Count(assignee) FROM issue AS T1 JOIN issue_component as T2 ON T1.issue_id = T2.issue_id WHERE T2.component = "impl" 	apache-pig
SELECT DISTINCT assignee FROM issue as T1 JOIN issue_component as T2 ON T1.issue_id = T2.issue_id WHERE T2.component = "impl"	apache-pig
SELECT reporter, issue_id FROM issue ORDER BY reporter ASC	apache-pig
SELECT T1.field FROM issue_changelog AS T1 JOIN issue_fix_version AS T2 ON T1.issue_id = T2.issue_id WHERE T2.fix_version = "0.12.1"	apache-pig
SELECT issue_id, assignee FROM issue WHERE resolved_date BETWEEN '2014-09-08' AND '2014-09-12'	apache-pig
SELECT DISTINCT T4.file_path FROM issue_changelog AS T1 JOIN issue_fix_version AS T2 ON T1.issue_id = T2.issue_id JOIN change_set_link AS T3 ON T1.issue_id = T3.issue_id JOIN code_change AS T4 ON T3.commit_hash = T4.commit_hash WHERE T2.fix_version = "0.12.1"	apache-pig
SELECT * FROM issue WHERE created_date < "2014-09-12"	apache-pig
SELECT * FROM issue WHERE created_date = '2017-03-28'	apache-pig
SELECT issue_id FROM issue WHERE resolved_date = '2013-10-23'	apache-pig
SELECT assignee FROM issue WHERE resolved_date BETWEEN '2015-03-01' AND '2015-03-31' GROUP BY assignee HAVING Count(issue_id) >= 3	apache-pig
SELECT Count(*) FROM issue WHERE resolved_date < '2013-10-27'	apache-pig
SELECT * FROM issue WHERE created_date > '2017-05-31'	apache-pig
SELECT issue_id FROM issue WHERE resolved_date BETWEEN '2017-10-01' AND '2017-10-31'	apache-pig
SELECT issue_id FROM issue WHERE created_date BETWEEN '2017-01-01' AND '2017-03-31'	apache-pig
SELECT issue_id, type, priority FROM issue WHERE status = 'Open' AND created_date BETWEEN '2013-11-16' AND '2013-11-28' ORDER BY type, priority	apache-pig
SELECT issue_id, status FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id, resolution FROM issue WHERE type = 'Bug'	apache-pig
SELECT type FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT resolved_date FROM issue WHERE issue_id = "PIG-3599"	apache-pig
SELECT * FROM issue	apache-pig
SELECT DISTINCT priority FROM issue	apache-pig
SELECT DISTINCT status FROM issue	apache-pig
SELECT DISTINCT resolution FROM issue	apache-pig
SELECT commit_hash FROM change_set	apache-pig
SELECT DISTINCT author_email FROM change_set	apache-pig
SELECT DISTINCT component FROM issue_component	apache-pig
SELECT fix_version, Count(issue_id) FROM issue_fix_version GROUP BY fix_version	apache-pig
SELECT fix_version FROM issue_fix_version GROUP BY fix_version ORDER BY Count(*) DESC LIMIT 1	apache-pig
SELECT status FROM issue ORDER BY created_date DESC LIMIT 1	apache-pig
SELECT fix_version FROM issue_fix_version WHERE issue_id = "PIG-3599"	apache-pig
SELECT created_date, Count(*) FROM issue GROUP BY created_date	apache-pig
SELECT updated_date, Count(*) FROM issue GROUP BY updated_date	apache-pig
SELECT resolved_date, Count(*) FROM issue GROUP BY resolved_date	apache-pig
SELECT committed_date, Count(*) FROM change_set GROUP BY committed_date	apache-pig
SELECT resolved_date, issue_id FROM issue WHERE assignee = "Daniel Ward" AND resolved_date != 'NULL' order by resolved_date DESC	apache-pig
SELECT Count(*) FROM issue WHERE assignee = "John Stark" AND resolved_date BETWEEN '2014-10-01' AND '2014-10-31'	apache-pig
SELECT count(*) FROM issue WHERE created_date BETWEEN '2015-01-01' AND '2015-04-30'	apache-pig
SELECT created_date FROM issue GROUP BY created_date ORDER BY Count(issue_id) DESC LIMIT 1	apache-pig
SELECT resolved_date FROM issue GROUP BY resolved_date ORDER BY Count(issue_id) DESC LIMIT 1	apache-pig
SELECT Count(*) FROM issue	apache-pig
SELECT Count(DISTINCT type) FROM issue	apache-pig
SELECT type, Count(*) FROM issue GROUP BY type	apache-pig
SELECT Count(DISTINCT priority) FROM issue	apache-pig
SELECT priority, Count(*) FROM issue GROUP BY priority;	apache-pig
SELECT Count(DISTINCT status) FROM issue	apache-pig
SELECT Count(DISTINCT resolution) FROM issue	apache-pig
SELECT Count(DISTINCT assignee) FROM issue	apache-pig
SELECT assignee, Count(*) FROM issue GROUP BY assignee	apache-pig
SELECT Count(DISTINCT assignee_username) FROM issue	apache-pig
SELECT assignee_username, Count(*) FROM issue GROUP BY assignee_username	apache-pig
SELECT Count(DISTINCT reporter) FROM issue	apache-pig
SELECT username, Count(*) FROM issue_comment GROUP BY username	apache-pig
SELECT reporter, Count(*) FROM issue GROUP BY reporter	apache-pig
SELECT Count(DISTINCT reporter_username) FROM issue	apache-pig
SELECT reporter_username, Count(*) FROM issue GROUP BY reporter_username	apache-pig
SELECT Count(*) FROM change_set	apache-pig
SELECT Count(DISTINCT author) FROM change_set	apache-pig
SELECT display_name, Count(*) FROM issue_comment GROUP BY display_name	apache-pig
SELECT DISTINCT username FROM issue_comment	apache-pig
SELECT Count(DISTINCT component) FROM issue_component	apache-pig
SELECT T2.component, Count(*) FROM issue AS T1 JOIN issue_component AS T2 ON T1.issue_id = T2.issue_id GROUP BY T2.component	apache-pig
SELECT Count(DISTINCT name) FROM issue_link	apache-pig
SELECT name, Count(*) FROM issue_link GROUP BY name	apache-pig
SELECT Count(*) FROM issue WHERE type = 'Bug'	apache-pig
SELECT DISTINCT assignee FROM issue	apache-pig
SELECT DISTINCT assignee_username FROM issue	apache-pig
SELECT DISTINCT reporter FROM issue	apache-pig
SELECT DISTINCT reporter_username FROM issue	apache-pig
SELECT DISTINCT author FROM change_set	apache-pig
SELECT display_name, Count(message) FROM issue_comment WHERE issue_id = "PIG-3592" GROUP BY display_name	apache-pig
SELECT T1.issue_id, T1.created_date, T1.resolved_date, T3.commit_hash, T3.committed_date FROM issue AS T1 JOIN change_set_link AS T2 ON T1.issue_id = T2.issue_id JOIN change_set AS T3 ON T2.commit_hash = T3.commit_hash	apache-pig
SELECT * FROM issue AS T1 JOIN change_set_link AS T2 ON T1.issue_id = T2.issue_id	apache-pig
SELECT Count(*) FROM issue AS T1 WHERE T1.issue_id NOT IN (SELECT T2.issue_id FROM change_set_link AS T2)	apache-pig
SELECT Count(*) FROM (SELECT Count(commit_hash) FROM change_set_link GROUP BY issue_id HAVING Count(commit_hash) > 1)	apache-pig
SELECT Count(*) FROM (SELECT Count(commit_hash) FROM change_set_link GROUP BY issue_id HAVING Count(commit_hash) = 1)	apache-pig
SELECT username, Count(DISTINCT issue_id) FROM issue_comment GROUP BY username	apache-pig
SELECT issue_id, Count(DISTINCT username) FROM issue_comment GROUP BY issue_id	apache-pig
SELECT issue_id, Count(message) FROM issue_comment GROUP BY issue_id	apache-pig
SELECT issue_id, summary, description FROM issue	apache-pig
SELECT commit_hash FROM change_set WHERE committed_date >= (SELECT created_date FROM issue WHERE issue_id = 'PIG-3592') AND committed_date <= (SELECT resolved_date FROM issue WHERE issue_id = 'PIG-3592')	apache-pig
SELECT type, Count(*) FROM issue GROUP BY type HAVING type = 'Bug' OR type = 'Improvement'	apache-pig
SELECT Count(T1.file_path) FROM code_change AS T1 JOIN change_set_link AS T2 ON T1.commit_hash = T2.commit_hash JOIN issue AS T3 ON T2.issue_id = T3.issue_id WHERE T3.issue_id = 'PIG-3422'	apache-pig
SELECT Count(file_path) FROM code_change AS T1 JOIN change_set_link AS T2 ON T1.commit_hash = T2.commit_hash JOIN issue AS T3 ON T2.issue_id = T3.issue_id WHERE T3.type = 'Bug' GROUP BY T3.issue_id ORDER BY Count(file_path) ASC LIMIT 1	apache-pig
SELECT Count(*) FROM issue_link AS T1 JOIN issue AS T2 ON T1.source_issue_id = T2.issue_id JOIN issue AS T3 ON T1.target_issue_id = T3.issue_id WHERE T2.type = 'Bug' and T3.type = 'Improvement' GROUP BY T2.type, T3.type	apache-pig
SELECT T1.source_issue_id, T1.target_issue_id FROM issue_link AS T1 JOIN issue AS T2 ON T1.source_issue_id = T2.issue_id JOIN issue AS T3 ON T1.target_issue_id = T3.issue_id WHERE T2.type = 'Improvement' AND T3.type = 'Bug' ORDER BY T1.source_issue_id DESC	apache-pig
SELECT DISTINCT name FROM issue_link	apache-pig
SELECT T2.type, T3.type, Count(*) FROM issue_link AS T1 JOIN issue AS T2 ON T1.source_issue_id = T2.issue_id JOIN issue AS T3 ON T1.target_issue_id = T3.issue_id WHERE T1.name = "Cloners" GROUP BY T2.type, T3.type	apache-pig
SELECT DISTINCT T2.type, T3.type FROM issue_link AS T1 JOIN issue AS T2 ON T1.source_issue_id = T2.issue_id JOIN issue AS T3 ON T1.target_issue_id = T3.issue_id WHERE T1.name = "Cloners"	apache-pig
SELECT DISTINCT type FROM issue	apache-pig
SELECT * FROM issue WHERE type = 'Bug'	apache-pig
SELECT * FROM issue EXCEPT SELECT * FROM issue WHERE issue.status = 'In Progress'	apache-pig
SELECT Count(file_path) FROM code_change AS T1 JOIN change_set_link AS T2 ON T1.commit_hash = T2.commit_hash JOIN issue AS T3 ON T2.issue_id = T3.issue_id WHERE T3.type = 'Improvement' GROUP BY T3.issue_id ORDER BY Count(file_path) DESC LIMIT 1	apache-pig
SELECT issue_id FROM issue WHERE type = 'Bug'	apache-pig
SELECT * FROM issue WHERE status = "Closed" OR status = "Resolved" OR status = "Patch Available"	apache-pig
SELECT T1.issue_id, T1.type, T1.description FROM issue AS T1 JOIN issue_component AS T2 ON T1.issue_id = T2.issue_id WHERE T2.component = "impl"	apache-pig
SELECT issue_id FROM issue WHERE updated_date BETWEEN '2017-03-22' AND '2017-03-23'	apache-pig
SELECT * FROM issue WHERE issue_id = "PIG-3599"	apache-pig
SELECT * FROM issue WHERE assignee = "Daniel Ward" AND status = 'Open'	apache-pig
SELECT * FROM issue WHERE status = 'In Progress'	apache-pig
SELECT * FROM issue WHERE reporter = 'John Stark' AND type = 'Bug'	apache-pig
SELECT * FROM issue where priority = 'Blocker' OR priority = 'Critical'	apache-pig
SELECT * FROM issue WHERE updated_date > '2017-03-28'	apache-pig
SELECT * FROM issue WHERE assignee = '﻿Daniel Ward'	apache-pig
SELECT * FROM issue AS T1 WHERE T1.issue_id IN (SELECT T2.issue_id FROM issue_attachment AS T2)	apache-pig
SELECT issue_id, summary FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id, description FROM issue WHERE type = 'Bug'	apache-pig
SELECT * FROM issue AS T1 JOIN issue_component AS T2 ON T1.issue_id = T2.issue_id JOIN issue_component AS T3 ON T1.issue_id = T3.issue_id WHERE T2.component = 'grunt' AND T3.component = 'parser' AND T2.issue_id = T3.issue_id	apache-pig
SELECT status FROM issue WHERE issue_id = "PIG-3599"	apache-pig
SELECT issue_id, priority FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id, status, resolution, summary, description FROM issue WHERE type = "Bug" AND priority = "Major"	apache-pig
SELECT issue_id, type, priority FROM issue WHERE status = 'Open' ORDER BY type, priority	apache-pig
SELECT T1.field, T1.username FROM issue_changelog AS T1 JOIN issue_fix_version AS T2 ON T1.issue_id = T2.issue_id WHERE T2.fix_version = "0.12.1"	apache-pig
SELECT issue_id, type, summary, description FROM issue WHERE status = 'Open' AND priority = 'Major'	apache-pig
SELECT DISTINCT assignee FROM issue WHERE type = 'Bug'	apache-pig
SELECT author, Count(*) FROM change_set GROUP BY author	apache-pig
SELECT commit_hash, message FROM change_set	apache-pig
SELECT assignee FROM issue WHERE issue_id = "PIG-3599"	apache-pig
SELECT Count(*) FROM issue WHERE type = 'Improvement'	apache-pig
SELECT type FROM issue GROUP BY type ORDER BY Count(*) DESC LIMIT 1	apache-pig
SELECT Count(*) FROM issue where priority = 'Blocker' OR priority = 'Critical'	apache-pig
SELECT file_path, Count(commit_hash) FROM code_change GROUP BY file_path ORDER BY Count(*) DESC LIMIT 5	apache-pig
SELECT assignee FROM issue GROUP BY assignee HAVING Count(issue_id) = 1	apache-pig
SELECT assignee, Count(issue_id) FROM issue WHERE status = "Open" GROUP BY assignee ORDER BY Count(issue_id) DESC LIMIT 1	apache-pig
SELECT assignee, Count(issue_id) FROM issue WHERE status = "Open" GROUP BY assignee	apache-pig
SELECT status, Count(status) FROM issue GROUP BY status	apache-pig
SELECT resolution, Count(*) FROM issue GROUP BY resolution	apache-pig
SELECT source_issue_id, target_issue_id FROM issue_link WHERE name = 'Duplicate'	apache-pig
SELECT source_issue_id, target_issue_id FROM issue_link WHERE name = 'Blocker'	apache-pig
SELECT Count(*) FROM issue WHERE status = 'Open'	apache-pig
SELECT * FROM issue WHERE priority = "Blocker" OR priority = "Critical"	apache-pig
SELECT assignee, Count(*) FROM issue WHERE status = "Resolved" GROUP BY assignee	apache-pig
SELECT display_name, message FROM issue_comment WHERE issue_id = "PIG-3599" ORDER BY display_name	apache-pig
SELECT T1.author_email FROM change_set AS T1 JOIN change_set_link AS T2 ON T1.commit_hash = T2.commit_hash WHERE T2.issue_id = "PIG-3592"	apache-pig
SELECT Count(assignee) FROM issue AS T1 JOIN issue_component as T2 ON T1.issue_id = T2.issue_id WHERE T2.component = "impl" 	apache-pig
SELECT DISTINCT assignee FROM issue as T1 JOIN issue_component as T2 ON T1.issue_id = T2.issue_id WHERE T2.component = "impl"	apache-pig
SELECT reporter, issue_id FROM issue ORDER BY reporter ASC	apache-pig
SELECT T1.field FROM issue_changelog AS T1 JOIN issue_fix_version AS T2 ON T1.issue_id = T2.issue_id WHERE T2.fix_version = "0.12.1"	apache-pig
SELECT issue_id, assignee FROM issue WHERE resolved_date BETWEEN '2014-09-08' AND '2014-09-12'	apache-pig
SELECT DISTINCT T4.file_path FROM issue_changelog AS T1 JOIN issue_fix_version AS T2 ON T1.issue_id = T2.issue_id JOIN change_set_link AS T3 ON T1.issue_id = T3.issue_id JOIN code_change AS T4 ON T3.commit_hash = T4.commit_hash WHERE T2.fix_version = "0.12.1"	apache-pig
SELECT * FROM issue WHERE created_date < "2014-09-12"	apache-pig
SELECT * FROM issue WHERE created_date = '2017-03-28'	apache-pig
SELECT issue_id FROM issue WHERE resolved_date = '2013-10-23'	apache-pig
SELECT assignee FROM issue WHERE resolved_date BETWEEN '2015-03-01' AND '2015-03-31' GROUP BY assignee HAVING Count(issue_id) >= 3	apache-pig
SELECT Count(*) FROM issue WHERE resolved_date < '2013-10-27'	apache-pig
SELECT * FROM issue WHERE created_date > '2017-05-31'	apache-pig
SELECT issue_id FROM issue WHERE resolved_date BETWEEN '2017-10-01' AND '2017-10-31'	apache-pig
SELECT issue_id FROM issue WHERE created_date BETWEEN '2017-01-01' AND '2017-03-31'	apache-pig
SELECT issue_id, type, priority FROM issue WHERE status = 'Open' AND created_date BETWEEN '2013-11-16' AND '2013-11-28' ORDER BY type, priority	apache-pig
SELECT issue_id, status FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id, resolution FROM issue WHERE type = 'Bug'	apache-pig
SELECT type FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT resolved_date FROM issue WHERE issue_id = "PIG-3599"	apache-pig
SELECT * FROM issue	apache-pig
SELECT DISTINCT priority FROM issue	apache-pig
SELECT DISTINCT status FROM issue	apache-pig
SELECT DISTINCT resolution FROM issue	apache-pig
SELECT commit_hash FROM change_set	apache-pig
SELECT DISTINCT author_email FROM change_set	apache-pig
SELECT DISTINCT component FROM issue_component	apache-pig
SELECT fix_version, Count(issue_id) FROM issue_fix_version GROUP BY fix_version	apache-pig
SELECT fix_version FROM issue_fix_version GROUP BY fix_version ORDER BY Count(*) DESC LIMIT 1	apache-pig
SELECT status FROM issue ORDER BY created_date DESC LIMIT 1	apache-pig
SELECT fix_version FROM issue_fix_version WHERE issue_id = "PIG-3599"	apache-pig
SELECT created_date, Count(*) FROM issue GROUP BY created_date	apache-pig
SELECT updated_date, Count(*) FROM issue GROUP BY updated_date	apache-pig
SELECT resolved_date, Count(*) FROM issue GROUP BY resolved_date	apache-pig
SELECT committed_date, Count(*) FROM change_set GROUP BY committed_date	apache-pig
SELECT resolved_date, issue_id FROM issue WHERE assignee = "Daniel Ward" AND resolved_date != 'NULL' order by resolved_date DESC	apache-pig
SELECT Count(*) FROM issue WHERE assignee = "John Stark" AND resolved_date BETWEEN '2014-10-01' AND '2014-10-31'	apache-pig
SELECT count(*) FROM issue WHERE created_date BETWEEN '2015-01-01' AND '2015-04-30'	apache-pig
SELECT created_date FROM issue GROUP BY created_date ORDER BY Count(issue_id) DESC LIMIT 1	apache-pig
SELECT resolved_date FROM issue GROUP BY resolved_date ORDER BY Count(issue_id) DESC LIMIT 1	apache-pig
SELECT Count(*) FROM issue	apache-pig
SELECT Count(DISTINCT type) FROM issue	apache-pig
SELECT type, Count(*) FROM issue GROUP BY type	apache-pig
SELECT Count(DISTINCT priority) FROM issue	apache-pig
SELECT priority, Count(*) FROM issue GROUP BY priority;	apache-pig
SELECT Count(DISTINCT status) FROM issue	apache-pig
SELECT Count(DISTINCT resolution) FROM issue	apache-pig
SELECT Count(DISTINCT assignee) FROM issue	apache-pig
SELECT assignee, Count(*) FROM issue GROUP BY assignee	apache-pig
SELECT Count(DISTINCT assignee_username) FROM issue	apache-pig
SELECT assignee_username, Count(*) FROM issue GROUP BY assignee_username	apache-pig
SELECT Count(DISTINCT reporter) FROM issue	apache-pig
SELECT username, Count(*) FROM issue_comment GROUP BY username	apache-pig
SELECT reporter, Count(*) FROM issue GROUP BY reporter	apache-pig
SELECT Count(DISTINCT reporter_username) FROM issue	apache-pig
SELECT reporter_username, Count(*) FROM issue GROUP BY reporter_username	apache-pig
SELECT Count(*) FROM change_set	apache-pig
SELECT Count(DISTINCT author) FROM change_set	apache-pig
SELECT display_name, Count(*) FROM issue_comment GROUP BY display_name	apache-pig
SELECT DISTINCT username FROM issue_comment	apache-pig
SELECT Count(DISTINCT component) FROM issue_component	apache-pig
SELECT T2.component, Count(*) FROM issue AS T1 JOIN issue_component AS T2 ON T1.issue_id = T2.issue_id GROUP BY T2.component	apache-pig
SELECT Count(DISTINCT name) FROM issue_link	apache-pig
SELECT name, Count(*) FROM issue_link GROUP BY name	apache-pig
SELECT Count(*) FROM issue WHERE type = 'Bug'	apache-pig
SELECT DISTINCT assignee FROM issue	apache-pig
SELECT DISTINCT assignee_username FROM issue	apache-pig
SELECT DISTINCT reporter FROM issue	apache-pig
SELECT DISTINCT reporter_username FROM issue	apache-pig
SELECT DISTINCT author FROM change_set	apache-pig
SELECT display_name, Count(message) FROM issue_comment WHERE issue_id = "PIG-3592" GROUP BY display_name	apache-pig
SELECT T1.issue_id, T1.created_date, T1.resolved_date, T3.commit_hash, T3.committed_date FROM issue AS T1 JOIN change_set_link AS T2 ON T1.issue_id = T2.issue_id JOIN change_set AS T3 ON T2.commit_hash = T3.commit_hash	apache-pig
SELECT * FROM issue AS T1 JOIN change_set_link AS T2 ON T1.issue_id = T2.issue_id	apache-pig
SELECT Count(*) FROM issue AS T1 WHERE T1.issue_id NOT IN (SELECT T2.issue_id FROM change_set_link AS T2)	apache-pig
SELECT Count(*) FROM (SELECT Count(commit_hash) FROM change_set_link GROUP BY issue_id HAVING Count(commit_hash) > 1)	apache-pig
SELECT Count(*) FROM (SELECT Count(commit_hash) FROM change_set_link GROUP BY issue_id HAVING Count(commit_hash) = 1)	apache-pig
SELECT username, Count(DISTINCT issue_id) FROM issue_comment GROUP BY username	apache-pig
SELECT issue_id, Count(DISTINCT username) FROM issue_comment GROUP BY issue_id	apache-pig
SELECT issue_id, Count(message) FROM issue_comment GROUP BY issue_id	apache-pig
SELECT issue_id, summary, description FROM issue	apache-pig
SELECT commit_hash FROM change_set WHERE committed_date >= (SELECT created_date FROM issue WHERE issue_id = 'PIG-3592') AND committed_date <= (SELECT resolved_date FROM issue WHERE issue_id = 'PIG-3592')	apache-pig
SELECT type, Count(*) FROM issue GROUP BY type HAVING type = 'Bug' OR type = 'Improvement'	apache-pig
SELECT Count(T1.file_path) FROM code_change AS T1 JOIN change_set_link AS T2 ON T1.commit_hash = T2.commit_hash JOIN issue AS T3 ON T2.issue_id = T3.issue_id WHERE T3.issue_id = 'PIG-3422'	apache-pig
SELECT Count(file_path) FROM code_change AS T1 JOIN change_set_link AS T2 ON T1.commit_hash = T2.commit_hash JOIN issue AS T3 ON T2.issue_id = T3.issue_id WHERE T3.type = 'Bug' GROUP BY T3.issue_id ORDER BY Count(file_path) ASC LIMIT 1	apache-pig
SELECT Count(*) FROM issue_link AS T1 JOIN issue AS T2 ON T1.source_issue_id = T2.issue_id JOIN issue AS T3 ON T1.target_issue_id = T3.issue_id WHERE T2.type = 'Bug' and T3.type = 'Improvement' GROUP BY T2.type, T3.type	apache-pig
SELECT T1.source_issue_id, T1.target_issue_id FROM issue_link AS T1 JOIN issue AS T2 ON T1.source_issue_id = T2.issue_id JOIN issue AS T3 ON T1.target_issue_id = T3.issue_id WHERE T2.type = 'Improvement' AND T3.type = 'Bug' ORDER BY T1.source_issue_id DESC	apache-pig
SELECT DISTINCT name FROM issue_link	apache-pig
SELECT T2.type, T3.type, Count(*) FROM issue_link AS T1 JOIN issue AS T2 ON T1.source_issue_id = T2.issue_id JOIN issue AS T3 ON T1.target_issue_id = T3.issue_id WHERE T1.name = "Cloners" GROUP BY T2.type, T3.type	apache-pig
SELECT DISTINCT T2.type, T3.type FROM issue_link AS T1 JOIN issue AS T2 ON T1.source_issue_id = T2.issue_id JOIN issue AS T3 ON T1.target_issue_id = T3.issue_id WHERE T1.name = "Cloners"	apache-pig
SELECT DISTINCT type FROM issue	apache-pig
SELECT * FROM issue WHERE type = 'Bug'	apache-pig
SELECT * FROM issue EXCEPT SELECT * FROM issue WHERE issue.status = 'In Progress'	apache-pig
SELECT Count(file_path) FROM code_change AS T1 JOIN change_set_link AS T2 ON T1.commit_hash = T2.commit_hash JOIN issue AS T3 ON T2.issue_id = T3.issue_id WHERE T3.type = 'Improvement' GROUP BY T3.issue_id ORDER BY Count(file_path) DESC LIMIT 1	apache-pig
