SELECT issue_id FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id, status, resolution, summary, description FROM issue WHERE type = 'Bug' AND priority = 'Major'	apache-pig
SELECT issue_id, status, resolution, summary, description FROM issue WHERE type = 'bug' AND priority = 'major'	apache-pig
SELECT issue_id, status, resolution, summary, description FROM issue WHERE type = 'bug' AND priority = 'major'	apache-pig
SELECT issue_id, status, resolution, summary, description FROM issue WHERE type = 'bug' AND priority = 'major' ORDER BY issue_id	apache-pig
SELECT issue_id, type, priority FROM issue WHERE status = 'Open' ORDER BY type, priority	apache-pig
SELECT issue_id, type, priority FROM issue WHERE status = 'open' ORDER BY type, priority	apache-pig
SELECT issue_id, type, priority FROM issue WHERE status = 'Open' ORDER BY type, priority	apache-pig
SELECT issue_id, type, priority FROM issue WHERE status = 'Open' ORDER BY type, priority	apache-pig
SELECT commit_hash, message FROM change_set	apache-pig
SELECT commit_hash, message FROM change_set	apache-pig
SELECT commit_hash, message FROM change_set	apache-pig
SELECT commit_hash, message FROM change_set	apache-pig
SELECT type FROM issue GROUP BY type ORDER BY Count(*) DESC LIMIT 1	apache-pig
SELECT issue.type, COUNT(*) AS mentions FROM issue_comment JOIN issue ON issue_comment.issue_id = issue.issue_id GROUP BY issue.type ORDER BY mentions DESC LIMIT 1	apache-pig
SELECT type FROM issue GROUP BY type ORDER BY Count(*) DESC LIMIT 1	apache-pig
SELECT type FROM issue GROUP BY type ORDER BY Count(*) DESC LIMIT 1	apache-pig
SELECT assignee, Count(issue_id) FROM issue WHERE status = "Open" GROUP BY assignee ORDER BY Count(issue_id) DESC LIMIT 1	apache-pig
SELECT assignee, Count(issue_id) FROM issue WHERE status = "Open" GROUP BY assignee ORDER BY Count(issue_id) DESC LIMIT 1	apache-pig
SELECT issue.assignee, COUNT(issue.issue_id) AS num_assigned_issues FROM issue WHERE issue.status = 'Open' GROUP BY issue.assignee HAVING COUNT(issue.issue_id) = (     SELECT MAX(num_assigned_issues)     FROM (         SELECT COUNT(issue.issue_id) AS num_assigned_issues         FROM issue         WHERE issue.status = 'Open'         GROUP BY issue.assignee     ) AS temp_table )	apache-pig
SELECT assignee, COUNT(*) AS assigned_issues_count FROM issue WHERE status = 'Open' GROUP BY assignee HAVING COUNT(*) = (     SELECT MAX(issue_count)     FROM (         SELECT COUNT(*) AS issue_count         FROM issue         WHERE status = 'Open'         GROUP BY assignee     ) AS issue_counts )	apache-pig
SELECT status, COUNT(*) AS num_occurrences FROM issue GROUP BY status	apache-pig
SELECT status, COUNT(*) AS count_of_status FROM issue GROUP BY status	apache-pig
SELECT status, COUNT(*) AS num_occurrences FROM issue GROUP BY status	apache-pig
SELECT status, COUNT(*) AS count FROM issue GROUP BY status	apache-pig
SELECT il.source_issue_id, il.target_issue_id FROM issue_link il WHERE il.name = 'Blocker'	apache-pig
SELECT source_issue_id, target_issue_id FROM issue_link WHERE name = 'Blocker'	apache-pig
SELECT source_issue_id, target_issue_id FROM issue_link WHERE name = 'Blocker'	apache-pig
SELECT il.source_issue_id, il.target_issue_id FROM issue_link il WHERE il.name = 'Blocker'	apache-pig
SELECT DISTINCT i.issue_id, i.priority FROM issue i JOIN issue_link il ON i.issue_id = il.source_issue_id OR i.issue_id = il.target_issue_id WHERE i.priority = 'Blocker' OR i.priority = 'Critical'	apache-pig
SELECT * FROM issue WHERE priority = 'Blocker' OR priority = 'Critical'	apache-pig
SELECT * FROM issue WHERE priority = 'Blocker' OR priority = 'Critical'	apache-pig
SELECT * FROM issue WHERE priority = 'Blocker' OR priority = 'Critical'	apache-pig
SELECT DISTINCT change_set.author_email FROM change_set JOIN change_set_link ON change_set.commit_hash = change_set_link.commit_hash WHERE change_set_link.issue_id = 'PIG-3592'	apache-pig
SELECT DISTINCT change_set.author_email FROM change_set JOIN change_set_link ON change_set.commit_hash = change_set_link.commit_hash WHERE change_set_link.issue_id = 'PIG-3592'	apache-pig
SELECT DISTINCT change_set.author_email FROM change_set JOIN change_set_link ON change_set.commit_hash = change_set_link.commit_hash WHERE change_set_link.issue_id = 'PIG-3592'	apache-pig
SELECT DISTINCT change_set.author_email FROM change_set JOIN change_set_link ON change_set.commit_hash = change_set_link.commit_hash WHERE change_set_link.issue_id = 'PIG-3592'	apache-pig
SELECT DISTINCT field FROM issue_changelog WHERE fix_version = '0.12.1'	apache-pig
SELECT DISTINCT field FROM issue_changelog WHERE issue_id IN (     SELECT issue_id     FROM issue_fix_version     WHERE fix_version = '0.12.1' )	apache-pig
SELECT DISTINCT field FROM issue_changelog WHERE to_value = '0.12.1'	apache-pig
SELECT DISTINCT field FROM issue_changelog WHERE issue_id IN (   SELECT issue_id   FROM issue_fix_version   WHERE fix_version = '0.12.1' )	apache-pig
SELECT DISTINCT cc.file_path FROM code_change cc JOIN change_set cs ON cc.commit_hash = cs.commit_hash JOIN issue_fix_version ifv ON cs.issue_id = ifv.issue_id WHERE ifv.fix_version = '0.12.1'	apache-pig
SELECT DISTINCT cc.file_path FROM code_change cc JOIN change_set cs ON cc.commit_hash = cs.commit_hash JOIN issue_fix_version ifv ON cs.issue_id = ifv.issue_id WHERE ifv.fix_version = '0.12.1'	apache-pig
SELECT DISTINCT cc.file_path FROM code_change cc JOIN change_set cs ON cc.commit_hash = cs.commit_hash JOIN issue_fix_version ifv ON cs.issue_id = ifv.issue_id WHERE ifv.fix_version = '0.12.1'	apache-pig
SELECT DISTINCT cc.file_path FROM code_change cc JOIN change_set cs ON cc.commit_hash = cs.commit_hash JOIN issue_fix_version ifv ON cs.issue_id = ifv.issue_id WHERE ifv.fix_version = '0.12.1'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE resolved_date < '2013-10-27'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE resolved_date < '2013-10-27'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE resolved_date < '2013-10-27'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE resolved_date < '2013-10-27'	apache-pig
SELECT DISTINCT resolution FROM issue WHERE resolution IS NOT NULL	apache-pig
SELECT DISTINCT resolution FROM issue WHERE resolution IS NOT NULL	apache-pig
SELECT DISTINCT resolution FROM issue WHERE resolution IS NOT NULL	apache-pig
SELECT DISTINCT resolution FROM issue WHERE resolution IS NOT NULL	apache-pig
SELECT fix_version, COUNT(issue_id) AS issue_count FROM issue_fix_version GROUP BY fix_version	apache-pig
SELECT issue_fix_version.fix_version, COUNT(issue_fix_version.issue_id) AS num_resolved_issues, GROUP_CONCAT(issue_fix_version.issue_id) AS resolved_issue_ids FROM issue_fix_version JOIN issue ON issue_fix_version.issue_id = issue.issue_id WHERE issue.resolution IS NOT NULL GROUP BY issue_fix_version.fix_version ORDER BY issue_fix_version.fix_version ASC	apache-pig
SELECT fix_version, COUNT(issue_id) AS issue_count FROM issue_fix_version GROUP BY fix_version	apache-pig
SELECT fix_version, COUNT(issue_id) AS issue_count FROM issue_fix_version GROUP BY fix_version	apache-pig
SELECT updated_date, COUNT(*) AS issue_count FROM issue WHERE updated_date IS NOT NULL GROUP BY updated_date ORDER BY updated_date ASC	apache-pig
SELECT updated_date, COUNT(*) AS issue_count FROM issue GROUP BY updated_date	apache-pig
SELECT updated_date, COUNT(*) AS updated_issues_count FROM issue WHERE updated_date IS NOT NULL GROUP BY updated_date ORDER BY updated_date ASC	apache-pig
SELECT updated_date, COUNT(*) AS count FROM issue GROUP BY updated_date	apache-pig
SELECT resolved_date FROM issue WHERE resolved_date IS NOT NULL GROUP BY resolved_date ORDER BY COUNT(*) DESC LIMIT 1	apache-pig
SELECT resolved_date FROM issue GROUP BY resolved_date ORDER BY Count(issue_id) DESC LIMIT 1	apache-pig
SELECT resolved_date FROM issue GROUP BY resolved_date ORDER BY Count(issue_id) DESC LIMIT 1	apache-pig
SELECT resolved_date FROM issue WHERE resolved_date IS NOT NULL GROUP BY resolved_date ORDER BY COUNT(issue_id) DESC LIMIT 1	apache-pig
SELECT COUNT(DISTINCT resolution) AS distinct_resolutions FROM issue WHERE resolution IS NOT NULL	apache-pig
SELECT resolution, COUNT(*) AS resolution_count FROM issue WHERE resolution IS NOT NULL GROUP BY resolution	apache-pig
SELECT COUNT(DISTINCT resolution) AS num_resolutions FROM issue WHERE resolution IS NOT NULL	apache-pig
SELECT COUNT(DISTINCT resolution) AS unique_resolutions FROM issue WHERE resolution IS NOT NULL	apache-pig
SELECT COUNT(DISTINCT assignee_username) AS distinct_assignees FROM issue	apache-pig
SELECT COUNT(DISTINCT assignee_username) AS num_assignees FROM issue WHERE assignee_username IS NOT NULL	apache-pig
SELECT COUNT(DISTINCT assignee_username) AS unique_assignees FROM issue WHERE assignee_username IS NOT NULL	apache-pig
SELECT COUNT(DISTINCT assignee_username) AS num_assignees FROM issue	apache-pig
SELECT username, COUNT(*) AS comment_count FROM issue_comment GROUP BY username	apache-pig
SELECT username, COUNT(*) AS num_comments FROM issue_comment GROUP BY username	apache-pig
SELECT username, Count(*) FROM issue_comment GROUP BY username	apache-pig
SELECT username, COUNT(*) AS comment_count FROM issue_comment GROUP BY username	apache-pig
SELECT display_name, COUNT(*) AS comment_count FROM issue_comment GROUP BY display_name	apache-pig
SELECT display_name, Count(*) FROM issue_comment GROUP BY display_name	apache-pig
SELECT DISTINCT display_name, created_date FROM issue_comment ORDER BY display_name, created_date	apache-pig
SELECT display_name, COUNT(DISTINCT username) AS developer_count FROM issue_comment GROUP BY display_name	apache-pig
SELECT component, COUNT(*) AS occurrence FROM issue_component GROUP BY component	apache-pig
SELECT T2.component, Count(*) FROM issue AS T1 JOIN issue_component AS T2 ON T1.issue_id = T2.issue_id GROUP BY T2.component	apache-pig
SELECT component, COUNT(*) AS count FROM issue_component GROUP BY component	apache-pig
SELECT component, COUNT(*) AS count FROM issue_component GROUP BY component	apache-pig
SELECT ic.display_name, COUNT(ic.message) AS num_messages FROM issue_comment ic WHERE ic.issue_id = 'PIG-3592' GROUP BY ic.display_name	apache-pig
SELECT display_name, COUNT(*) AS message_count FROM issue_comment WHERE issue_id = 'PIG-3592' GROUP BY display_name	apache-pig
SELECT display_name, COUNT(message) AS message_count FROM issue_comment WHERE issue_id = 'PIG-3592' GROUP BY display_name	apache-pig
SELECT issue_comment.display_name, COUNT(issue_comment.message) AS message_count FROM issue_comment WHERE issue_comment.issue_id = 'PIG-3592' GROUP BY issue_comment.display_name	apache-pig
SELECT DISTINCT change_set.commit_hash FROM change_set JOIN issue_changelog ON change_set.commit_hash = issue_changelog.to_value JOIN issue ON issue_changelog.issue_id = issue.issue_id WHERE issue.issue_id = 'PIG-3592' AND change_set.committed_date >= issue.created_date AND change_set.committed_date <= issue.resolved_date	apache-pig
SELECT DISTINCT change_set.commit_hash FROM change_set JOIN change_set_link ON change_set.commit_hash = change_set_link.commit_hash JOIN issue ON change_set_link.issue_id = issue.issue_id WHERE change_set.committed_date_zoned BETWEEN issue.created_date_zoned AND issue.resolved_date_zoned AND issue.issue_id = 'PIG-3592'	apache-pig
SELECT commit_hash  FROM change_set  WHERE committed_date >= (SELECT created_date FROM issue WHERE issue_id = 'PIG-3592')  AND committed_date <= (SELECT resolved_date FROM issue WHERE issue_id = 'PIG-3592')	apache-pig
SELECT DISTINCT change_set_link.commit_hash FROM change_set_link JOIN change_set ON change_set_link.commit_hash = change_set.commit_hash JOIN issue ON change_set_link.issue_id = issue.issue_id WHERE issue.issue_id = 'PIG-3592' AND change_set.committed_date >= issue.created_date AND change_set.committed_date <= issue.resolved_date	apache-pig
SELECT type, COUNT(*) AS issue_count FROM issue WHERE type IN ('bug', 'improvement') GROUP BY type	apache-pig
SELECT type, COUNT(*) AS count FROM issue WHERE type = 'Bug' OR type = 'Improvement' GROUP BY type	apache-pig
SELECT type, COUNT(*) AS count FROM issue WHERE type IN ('Bug', 'Improvement') GROUP BY type	apache-pig
ERROR	apache-pig
SELECT source.type AS source_issue_type, target.type AS target_issue_type, COUNT(*) AS count FROM issue_link JOIN issue AS source ON issue_link.source_issue_id = source.issue_id JOIN issue AS target ON issue_link.target_issue_id = target.issue_id WHERE issue_link.name = 'cloners' GROUP BY source.type, target.type	apache-pig
SELECT source.type AS source_type, target.type AS target_type, COUNT(*) AS count FROM issue_link JOIN issue AS source ON issue_link.source_issue_id = source.issue_id JOIN issue AS target ON issue_link.target_issue_id = target.issue_id WHERE issue_link.name = 'Cloners' GROUP BY source_type, target_type	apache-pig
SELECT i1.type AS source_type, i2.type AS target_type, COUNT(*) AS count FROM issue_link il JOIN issue i1 ON il.source_issue_id = i1.issue_id JOIN issue i2 ON il.target_issue_id = i2.issue_id WHERE il.name = 'Cloners' GROUP BY i1.type, i2.type	apache-pig
SELECT      i1.type AS source_issue_type,      i2.type AS target_issue_type,      COUNT(*) AS combination_count FROM      issue_link il      JOIN issue i1 ON il.source_issue_id = i1.issue_id      JOIN issue i2 ON il.target_issue_id = i2.issue_id  WHERE      il.name = 'Cloners' GROUP BY      i1.type, i2.type	apache-pig
SELECT * FROM issue WHERE status = 'In Progress'	apache-pig
SELECT * FROM issue WHERE status != 'In Progress'	apache-pig
SELECT * FROM issue WHERE status != 'In Progress'	apache-pig
SELECT issue_id, status FROM issue WHERE status != 'In Progress'	apache-pig
