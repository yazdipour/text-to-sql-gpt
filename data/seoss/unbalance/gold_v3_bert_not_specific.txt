SELECT issue_id FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id, status, resolution, summary, description FROM issue WHERE type = "Bug" AND priority = "Major"	apache-pig
SELECT issue_id, status, resolution, summary, description FROM issue WHERE type = "Bug" AND priority = "Major"	apache-pig
SELECT issue_id, status, resolution, summary, description FROM issue WHERE type = "Bug" AND priority = "Major"	apache-pig
SELECT issue_id, type, priority FROM issue WHERE status = 'Open' ORDER BY type, priority	apache-pig
SELECT issue_id, type, priority FROM issue WHERE status = 'Open' ORDER BY type, priority	apache-pig
SELECT issue_id, type, priority FROM issue WHERE status = 'Open' ORDER BY type, priority	apache-pig
SELECT commit_hash, message FROM change_set	apache-pig
SELECT commit_hash, message FROM change_set	apache-pig
SELECT commit_hash, message FROM change_set	apache-pig
SELECT type FROM issue GROUP BY type ORDER BY Count(*) DESC LIMIT 1	apache-pig
SELECT type FROM issue GROUP BY type ORDER BY Count(*) DESC LIMIT 1	apache-pig
SELECT type FROM issue GROUP BY type ORDER BY Count(*) DESC LIMIT 1	apache-pig
SELECT assignee, Count(issue_id) FROM issue WHERE status = "Open" GROUP BY assignee ORDER BY Count(issue_id) DESC LIMIT 1	apache-pig
SELECT assignee, Count(issue_id) FROM issue WHERE status = "Open" GROUP BY assignee ORDER BY Count(issue_id) DESC LIMIT 1	apache-pig
SELECT assignee, Count(issue_id) FROM issue WHERE status = "Open" GROUP BY assignee ORDER BY Count(issue_id) DESC LIMIT 1	apache-pig
SELECT status, Count(status) FROM issue GROUP BY status	apache-pig
SELECT status, Count(status) FROM issue GROUP BY status	apache-pig
SELECT status, Count(status) FROM issue GROUP BY status	apache-pig
SELECT source_issue_id, target_issue_id FROM issue_link WHERE name = 'Blocker'	apache-pig
SELECT source_issue_id, target_issue_id FROM issue_link WHERE name = 'Blocker'	apache-pig
SELECT source_issue_id, target_issue_id FROM issue_link WHERE name = 'Blocker'	apache-pig
SELECT * FROM issue WHERE priority = "Blocker" OR priority = "Critical"	apache-pig
SELECT * FROM issue WHERE priority = "Blocker" OR priority = "Critical"	apache-pig
SELECT * FROM issue WHERE priority = "Blocker" OR priority = "Critical"	apache-pig
SELECT T1.author_email FROM change_set AS T1 JOIN change_set_link AS T2 ON T1.commit_hash = T2.commit_hash WHERE T2.issue_id = "PIG-3592"	apache-pig
SELECT T1.author_email FROM change_set AS T1 JOIN change_set_link AS T2 ON T1.commit_hash = T2.commit_hash WHERE T2.issue_id = "PIG-3592"	apache-pig
SELECT T1.author_email FROM change_set AS T1 JOIN change_set_link AS T2 ON T1.commit_hash = T2.commit_hash WHERE T2.issue_id = "PIG-3592"	apache-pig
SELECT T1.field FROM issue_changelog AS T1 JOIN issue_fix_version AS T2 ON T1.issue_id = T2.issue_id WHERE T2.fix_version = "0.12.1"	apache-pig
SELECT T1.field FROM issue_changelog AS T1 JOIN issue_fix_version AS T2 ON T1.issue_id = T2.issue_id WHERE T2.fix_version = "0.12.1"	apache-pig
SELECT T1.field FROM issue_changelog AS T1 JOIN issue_fix_version AS T2 ON T1.issue_id = T2.issue_id WHERE T2.fix_version = "0.12.1"	apache-pig
SELECT DISTINCT T4.file_path FROM issue_changelog AS T1 JOIN issue_fix_version AS T2 ON T1.issue_id = T2.issue_id JOIN change_set_link AS T3 ON T1.issue_id = T3.issue_id JOIN code_change AS T4 ON T3.commit_hash = T4.commit_hash WHERE T2.fix_version = "0.12.1"	apache-pig
SELECT DISTINCT T4.file_path FROM issue_changelog AS T1 JOIN issue_fix_version AS T2 ON T1.issue_id = T2.issue_id JOIN change_set_link AS T3 ON T1.issue_id = T3.issue_id JOIN code_change AS T4 ON T3.commit_hash = T4.commit_hash WHERE T2.fix_version = "0.12.1"	apache-pig
SELECT DISTINCT T4.file_path FROM issue_changelog AS T1 JOIN issue_fix_version AS T2 ON T1.issue_id = T2.issue_id JOIN change_set_link AS T3 ON T1.issue_id = T3.issue_id JOIN code_change AS T4 ON T3.commit_hash = T4.commit_hash WHERE T2.fix_version = "0.12.1"	apache-pig
SELECT Count(*) FROM issue WHERE resolved_date < '2013-10-27'	apache-pig
SELECT Count(*) FROM issue WHERE resolved_date < '2013-10-27'	apache-pig
SELECT Count(*) FROM issue WHERE resolved_date < '2013-10-27'	apache-pig
SELECT DISTINCT resolution FROM issue	apache-pig
SELECT DISTINCT resolution FROM issue	apache-pig
SELECT DISTINCT resolution FROM issue	apache-pig
SELECT fix_version, Count(issue_id) FROM issue_fix_version GROUP BY fix_version	apache-pig
SELECT fix_version, Count(issue_id) FROM issue_fix_version GROUP BY fix_version	apache-pig
SELECT fix_version, Count(issue_id) FROM issue_fix_version GROUP BY fix_version	apache-pig
SELECT updated_date, Count(*) FROM issue GROUP BY updated_date	apache-pig
SELECT updated_date, Count(*) FROM issue GROUP BY updated_date	apache-pig
SELECT updated_date, Count(*) FROM issue GROUP BY updated_date	apache-pig
SELECT resolved_date FROM issue GROUP BY resolved_date ORDER BY Count(issue_id) DESC LIMIT 1	apache-pig
SELECT resolved_date FROM issue GROUP BY resolved_date ORDER BY Count(issue_id) DESC LIMIT 1	apache-pig
SELECT resolved_date FROM issue GROUP BY resolved_date ORDER BY Count(issue_id) DESC LIMIT 1	apache-pig
SELECT Count(DISTINCT resolution) FROM issue	apache-pig
SELECT Count(DISTINCT resolution) FROM issue	apache-pig
SELECT Count(DISTINCT resolution) FROM issue	apache-pig
SELECT Count(DISTINCT assignee_username) FROM issue	apache-pig
SELECT Count(DISTINCT assignee_username) FROM issue	apache-pig
SELECT Count(DISTINCT assignee_username) FROM issue	apache-pig
SELECT username, Count(*) FROM issue_comment GROUP BY username	apache-pig
SELECT username, Count(*) FROM issue_comment GROUP BY username	apache-pig
SELECT username, Count(*) FROM issue_comment GROUP BY username	apache-pig
SELECT display_name, Count(*) FROM issue_comment GROUP BY display_name	apache-pig
SELECT display_name, Count(*) FROM issue_comment GROUP BY display_name	apache-pig
SELECT display_name, Count(*) FROM issue_comment GROUP BY display_name	apache-pig
SELECT T2.component, Count(*) FROM issue AS T1 JOIN issue_component AS T2 ON T1.issue_id = T2.issue_id GROUP BY T2.component	apache-pig
SELECT T2.component, Count(*) FROM issue AS T1 JOIN issue_component AS T2 ON T1.issue_id = T2.issue_id GROUP BY T2.component	apache-pig
SELECT T2.component, Count(*) FROM issue AS T1 JOIN issue_component AS T2 ON T1.issue_id = T2.issue_id GROUP BY T2.component	apache-pig
SELECT display_name, Count(message) FROM issue_comment WHERE issue_id = "PIG-3592" GROUP BY display_name	apache-pig
SELECT display_name, Count(message) FROM issue_comment WHERE issue_id = "PIG-3592" GROUP BY display_name	apache-pig
SELECT display_name, Count(message) FROM issue_comment WHERE issue_id = "PIG-3592" GROUP BY display_name	apache-pig
SELECT commit_hash FROM change_set WHERE committed_date >= (SELECT created_date FROM issue WHERE issue_id = 'PIG-3592') AND committed_date <= (SELECT resolved_date FROM issue WHERE issue_id = 'PIG-3592')	apache-pig
SELECT commit_hash FROM change_set WHERE committed_date >= (SELECT created_date FROM issue WHERE issue_id = 'PIG-3592') AND committed_date <= (SELECT resolved_date FROM issue WHERE issue_id = 'PIG-3592')	apache-pig
SELECT commit_hash FROM change_set WHERE committed_date >= (SELECT created_date FROM issue WHERE issue_id = 'PIG-3592') AND committed_date <= (SELECT resolved_date FROM issue WHERE issue_id = 'PIG-3592')	apache-pig
SELECT type, Count(*) FROM issue GROUP BY type HAVING type = 'Bug' OR type = 'Improvement'	apache-pig
SELECT type, Count(*) FROM issue GROUP BY type HAVING type = 'Bug' OR type = 'Improvement'	apache-pig
SELECT type, Count(*) FROM issue GROUP BY type HAVING type = 'Bug' OR type = 'Improvement'	apache-pig
SELECT T2.type, T3.type, Count(*) FROM issue_link AS T1 JOIN issue AS T2 ON T1.source_issue_id = T2.issue_id JOIN issue AS T3 ON T1.target_issue_id = T3.issue_id WHERE T1.name = "Cloners" GROUP BY T2.type, T3.type	apache-pig
SELECT T2.type, T3.type, Count(*) FROM issue_link AS T1 JOIN issue AS T2 ON T1.source_issue_id = T2.issue_id JOIN issue AS T3 ON T1.target_issue_id = T3.issue_id WHERE T1.name = "Cloners" GROUP BY T2.type, T3.type	apache-pig
SELECT T2.type, T3.type, Count(*) FROM issue_link AS T1 JOIN issue AS T2 ON T1.source_issue_id = T2.issue_id JOIN issue AS T3 ON T1.target_issue_id = T3.issue_id WHERE T1.name = "Cloners" GROUP BY T2.type, T3.type	apache-pig
SELECT * FROM issue EXCEPT SELECT * FROM issue WHERE issue.status = 'In Progress'	apache-pig
SELECT * FROM issue EXCEPT SELECT * FROM issue WHERE issue.status = 'In Progress'	apache-pig
SELECT * FROM issue EXCEPT SELECT * FROM issue WHERE issue.status = 'In Progress'	apache-pig
