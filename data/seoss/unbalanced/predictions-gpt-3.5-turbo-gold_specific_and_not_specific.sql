SELECT issue_id FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id FROM issue WHERE status = 'buggy'	apache-pig
SELECT issue_id FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id, status, resolution, summary, description FROM issue WHERE type = 'Bug' AND priority = 'Major'	apache-pig
SELECT issue_id, status, resolution, summary, description FROM issue WHERE priority = 'Major' AND type = 'Bug'	apache-pig
SELECT issue_id, status, resolution, summary, description FROM issue WHERE priority = 'Major' AND type = 'Bug'	apache-pig
SELECT issue_id, status, resolution, summary, description FROM issue WHERE type = 'Bug' AND priority = 'Major'	apache-pig
SELECT issue_id, status, resolution, summary, description FROM issue WHERE type = 'bug' AND priority = 'major'	apache-pig
SELECT issue_id, status, resolution, summary, description FROM issue WHERE type = 'bug' AND priority = 'major'	apache-pig
SELECT issue_id, status, resolution, summary, description FROM issue WHERE type = 'bug' AND priority = 'major' ORDER BY issue_id	apache-pig
SELECT issue_id, type, priority FROM issue WHERE status = 'Open' ORDER BY type, priority	apache-pig
SELECT issue_id, status, resolution, summary, description FROM issue WHERE priority = 'Major' AND type = 'Bug'	apache-pig
SELECT issue_id, status, resolution, summary, description FROM issue WHERE priority = 'Major' AND type = 'Bug'	apache-pig
SELECT issue_id, status, resolution, summary, description FROM issue WHERE type = 'Bug' AND priority = 'Major'	apache-pig
SELECT issue_id, type, priority FROM issue WHERE status = 'open' ORDER BY type, priority	apache-pig
SELECT issue_id, type, priority FROM issue WHERE status = 'Open' ORDER BY type, priority	apache-pig
SELECT issue_id, type, priority FROM issue WHERE status = 'Open' ORDER BY type, priority	apache-pig
SELECT commit_hash, message FROM change_set	apache-pig
SELECT commit_hash, message FROM change_set	apache-pig
SELECT commit_hash, message FROM change_set	apache-pig
SELECT commit_hash, message FROM change_set	apache-pig
SELECT commit_hash, message FROM change_set	apache-pig
SELECT commit_hash, message FROM change_set	apache-pig
SELECT commit_hash, message FROM change_set	apache-pig
SELECT type FROM issue GROUP BY type ORDER BY Count(*) DESC LIMIT 1	apache-pig
SELECT type FROM issue GROUP BY type ORDER BY Count(*) DESC LIMIT 1	apache-pig
SELECT type FROM issue GROUP BY type ORDER BY Count(*) DESC LIMIT 1	apache-pig
SELECT type FROM issue GROUP BY type ORDER BY Count(*) DESC LIMIT 1	apache-pig
SELECT issue.type, COUNT(*) AS mentions FROM issue_comment JOIN issue ON issue_comment.issue_id = issue.issue_id GROUP BY issue.type ORDER BY mentions DESC LIMIT 1	apache-pig
SELECT type FROM issue GROUP BY type ORDER BY Count(*) DESC LIMIT 1	apache-pig
SELECT type FROM issue GROUP BY type ORDER BY Count(*) DESC LIMIT 1	apache-pig
SELECT assignee, Count(issue_id) FROM issue WHERE status = "Open" GROUP BY assignee ORDER BY Count(issue_id) DESC LIMIT 1	apache-pig
SELECT assignee_username AS developer, COUNT(*) AS num_assigned_issues FROM issue WHERE assignee_username IS NOT NULL GROUP BY assignee_username ORDER BY num_assigned_issues DESC LIMIT 1	apache-pig
SELECT assignee, COUNT(*) AS issue_count FROM issue WHERE assignee IS NOT NULL GROUP BY assignee ORDER BY issue_count DESC LIMIT 1	apache-pig
SELECT assignee, COUNT(*) AS assigned_issues_count FROM issue WHERE assignee IS NOT NULL GROUP BY assignee ORDER BY assigned_issues_count DESC LIMIT 1	apache-pig
SELECT assignee, Count(issue_id) FROM issue WHERE status = "Open" GROUP BY assignee ORDER BY Count(issue_id) DESC LIMIT 1	apache-pig
SELECT issue.assignee, COUNT(issue.issue_id) AS num_assigned_issues FROM issue WHERE issue.status = 'Open' GROUP BY issue.assignee HAVING COUNT(issue.issue_id) = (     SELECT MAX(num_assigned_issues)     FROM (         SELECT COUNT(issue.issue_id) AS num_assigned_issues         FROM issue         WHERE issue.status = 'Open'         GROUP BY issue.assignee     ) AS temp_table )	apache-pig
SELECT assignee, COUNT(*) AS assigned_issues_count FROM issue WHERE status = 'Open' GROUP BY assignee HAVING COUNT(*) = (     SELECT MAX(issue_count)     FROM (         SELECT COUNT(*) AS issue_count         FROM issue         WHERE status = 'Open'         GROUP BY assignee     ) AS issue_counts )	apache-pig
SELECT status, COUNT(*) AS num_occurrences FROM issue GROUP BY status	apache-pig
SELECT status, COUNT(*) AS frequency FROM issue GROUP BY status	apache-pig
SELECT type, status, COUNT(*)  FROM issue  GROUP BY type, status	apache-pig
SELECT type, COUNT(DISTINCT status) AS num_statuses FROM issue GROUP BY type	apache-pig
SELECT status, COUNT(*) AS count_of_status FROM issue GROUP BY status	apache-pig
SELECT status, COUNT(*) AS num_occurrences FROM issue GROUP BY status	apache-pig
SELECT status, COUNT(*) AS count FROM issue GROUP BY status	apache-pig
SELECT il.source_issue_id, il.target_issue_id FROM issue_link il WHERE il.name = 'Blocker'	apache-pig
SELECT DISTINCT il1.source_issue_id, il1.target_issue_id FROM issue_link il1 JOIN issue_link il2 ON il1.source_issue_id = il2.target_issue_id AND il1.target_issue_id = il2.source_issue_id WHERE il1.is_containment = 0 AND il2.is_containment = 0 AND il1.source_issue_id < il1.target_issue_id	apache-pig
SELECT DISTINCT il.source_issue_id, il.target_issue_id FROM issue_link il WHERE il.name = 'Blocks'	apache-pig
SELECT il.source_issue_id, il.target_issue_id FROM issue_link il WHERE il.name = 'Blocker'	apache-pig
SELECT source_issue_id, target_issue_id FROM issue_link WHERE name = 'Blocker'	apache-pig
SELECT il.source_issue_id, il.target_issue_id FROM issue_link il WHERE il.name = 'Blocker'	apache-pig
SELECT il.source_issue_id, il.target_issue_id FROM issue_link il WHERE il.name = 'Blocker'	apache-pig
SELECT DISTINCT i.issue_id, i.priority FROM issue i JOIN issue_link il ON i.issue_id = il.source_issue_id OR i.issue_id = il.target_issue_id WHERE i.priority = 'Blocker' OR i.priority = 'Critical'	apache-pig
SELECT issue_id, summary, priority  FROM issue  WHERE priority = 'Blocker' OR priority = 'Critical'	apache-pig
SELECT * FROM issue WHERE priority = 'blocking' OR priority = 'critical'	apache-pig
SELECT * FROM issue WHERE priority = 'blocking' OR priority = 'critical'	apache-pig
SELECT * FROM issue WHERE priority = 'Blocker' OR priority = 'Critical'	apache-pig
SELECT * FROM issue WHERE priority = 'Blocker' OR priority = 'Critical'	apache-pig
SELECT * FROM issue WHERE priority = 'Blocker' OR priority = 'Critical'	apache-pig
SELECT DISTINCT change_set.author_email FROM change_set JOIN change_set_link ON change_set.commit_hash = change_set_link.commit_hash WHERE change_set_link.issue_id = 'PIG-3592'	apache-pig
SELECT i.assignee FROM issue i WHERE i.issue_id = 'PIG-3592'	apache-pig
SELECT ia.username AS developer_email FROM issue_attachment ia JOIN issue i ON ia.issue_id = i.issue_id WHERE i.issue_id = 'PIG-3592' AND ia.mime_type = 'text/plain' AND ia.filename = 'patch.txt'	apache-pig
SELECT issue.assignee FROM issue WHERE issue.issue_id = 'PIG-3592'	apache-pig
SELECT DISTINCT change_set.author_email FROM change_set JOIN change_set_link ON change_set.commit_hash = change_set_link.commit_hash WHERE change_set_link.issue_id = 'PIG-3592'	apache-pig
SELECT DISTINCT author_email FROM change_set WHERE commit_hash IN (     SELECT commit_hash     FROM change_set_link     WHERE issue_id = 'PIG-3592' )	apache-pig
SELECT DISTINCT change_set.author_email FROM change_set JOIN change_set_link ON change_set.commit_hash = change_set_link.commit_hash WHERE change_set_link.issue_id = 'PIG-3592'	apache-pig
SELECT DISTINCT field FROM issue_changelog WHERE fix_version = '0.12.1'	apache-pig
SELECT ic.message FROM issue_fix_version ifv JOIN issue_changelog ic ON ifv.issue_id = ic.issue_id WHERE ifv.fix_version = '0.12.1' AND ic.field = 'status'	apache-pig
SELECT issue_changelog.issue_id, issue_changelog.username, issue_changelog.created_date, issue_changelog.field, issue_changelog.from_value, issue_changelog.to_value FROM issue_changelog JOIN issue_fix_version ON issue_changelog.issue_id = issue_fix_version.issue_id WHERE issue_fix_version.fix_version = '0.12.1'	apache-pig
SELECT cs.commit_hash, cs.committed_date, cs.message, cc.file_path, cc.change_type FROM change_set cs JOIN code_change cc ON cs.commit_hash = cc.commit_hash JOIN git_repository gr ON cs.git_repository_id = gr.git_repository_id JOIN issue_fix_version ifv ON cs.issue_id = ifv.issue_id WHERE ifv.fix_version = '0.12.1' AND gr.name = 'apache Pig'	apache-pig
SELECT DISTINCT field FROM issue_changelog WHERE issue_id IN (     SELECT issue_id     FROM issue_fix_version     WHERE fix_version = '0.12.1' )	apache-pig
SELECT DISTINCT field FROM issue_changelog WHERE to_value = '0.12.1'	apache-pig
SELECT DISTINCT field FROM issue_changelog WHERE issue_id IN (   SELECT issue_id   FROM issue_fix_version   WHERE fix_version = '0.12.1' )	apache-pig
SELECT DISTINCT cc.file_path FROM code_change cc JOIN change_set cs ON cc.commit_hash = cs.commit_hash JOIN issue_fix_version ifv ON cs.issue_id = ifv.issue_id WHERE ifv.fix_version = '0.12.1'	apache-pig
SELECT DISTINCT cc.file_path FROM code_change cc JOIN change_set cs ON cc.commit_hash = cs.commit_hash JOIN issue_fix_version ifv ON cs.issue_id = ifv.issue_id WHERE ifv.fix_version = '0.12.1' AND cc.change_type = 'MODIFY'	apache-pig
SELECT DISTINCT cc.file_path FROM code_change cc JOIN change_set cs ON cc.commit_hash = cs.commit_hash JOIN git_repository gr ON cs.git_repository_id = gr.git_repository_id JOIN issue_fix_version ifv ON cs.issue_id = ifv.issue_id WHERE ifv.fix_version = '0.12.1'	apache-pig
SELECT DISTINCT cc.file_path FROM code_change cc JOIN change_set cs ON cc.commit_hash = cs.commit_hash JOIN change_set_link csl ON cs.commit_hash = csl.commit_hash JOIN issue_fix_version ifv ON csl.issue_id = ifv.issue_id WHERE ifv.fix_version = '0.12.1'	apache-pig
SELECT DISTINCT cc.file_path FROM code_change cc JOIN change_set cs ON cc.commit_hash = cs.commit_hash JOIN issue_fix_version ifv ON cs.issue_id = ifv.issue_id WHERE ifv.fix_version = '0.12.1'	apache-pig
SELECT DISTINCT cc.file_path FROM code_change cc JOIN change_set cs ON cc.commit_hash = cs.commit_hash JOIN issue_fix_version ifv ON cs.issue_id = ifv.issue_id WHERE ifv.fix_version = '0.12.1'	apache-pig
SELECT DISTINCT cc.file_path FROM code_change cc JOIN change_set cs ON cc.commit_hash = cs.commit_hash JOIN issue_fix_version ifv ON cs.issue_id = ifv.issue_id WHERE ifv.fix_version = '0.12.1'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE resolved_date < '2013-10-27'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE resolved_date < '2013-10-27'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE resolved_date < '2013-10-27'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE resolution IS NOT NULL AND resolved_date < '2013-10-27'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE resolved_date < '2013-10-27'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE resolved_date < '2013-10-27'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE resolved_date < '2013-10-27'	apache-pig
SELECT DISTINCT resolution FROM issue WHERE resolution IS NOT NULL	apache-pig
SELECT DISTINCT resolution FROM issue WHERE resolution IS NOT NULL	apache-pig
SELECT DISTINCT resolution FROM issue WHERE resolution IS NOT NULL	apache-pig
SELECT DISTINCT resolution FROM issue WHERE resolution IS NOT NULL	apache-pig
SELECT DISTINCT resolution FROM issue WHERE resolution IS NOT NULL	apache-pig
SELECT DISTINCT resolution FROM issue WHERE resolution IS NOT NULL	apache-pig
SELECT DISTINCT resolution FROM issue WHERE resolution IS NOT NULL	apache-pig
SELECT fix_version, COUNT(issue_id) AS issue_count FROM issue_fix_version GROUP BY fix_version	apache-pig
SELECT fix_version, COUNT(issue_id) AS num_resolved_issues FROM issue_fix_version GROUP BY fix_version	apache-pig
SELECT fix_version, COUNT(issue_id) AS num_resolved_issues FROM issue_fix_version GROUP BY fix_version	apache-pig
SELECT fix_version, COUNT(issue_id) AS resolved_issues FROM issue_fix_version JOIN issue ON issue_fix_version.issue_id = issue.issue_id WHERE resolution IS NOT NULL GROUP BY fix_version	apache-pig
SELECT issue_fix_version.fix_version, COUNT(issue_fix_version.issue_id) AS num_resolved_issues, GROUP_CONCAT(issue_fix_version.issue_id) AS resolved_issue_ids FROM issue_fix_version JOIN issue ON issue_fix_version.issue_id = issue.issue_id WHERE issue.resolution IS NOT NULL GROUP BY issue_fix_version.fix_version	apache-pig
SELECT fix_version, COUNT(issue_id) AS issue_count FROM issue_fix_version GROUP BY fix_version	apache-pig
SELECT fix_version, COUNT(issue_id) AS issue_count FROM issue_fix_version GROUP BY fix_version	apache-pig
SELECT updated_date, COUNT(*) AS issue_count FROM issue WHERE updated_date IS NOT NULL GROUP BY updated_date ORDER BY updated_date ASC	apache-pig
SELECT updated_date, COUNT(*) AS num_updated_issues FROM issue WHERE updated_date IS NOT NULL GROUP BY updated_date ORDER BY updated_date ASC	apache-pig
SELECT updated_date, Count(*) FROM issue GROUP BY updated_date	apache-pig
SELECT DISTINCT issue_changelog.created_date AS date, COUNT(DISTINCT issue_changelog.issue_id) AS changed_issues FROM issue_changelog GROUP BY issue_changelog.created_date ORDER BY issue_changelog.created_date ASC	apache-pig
SELECT updated_date, COUNT(*) AS issue_count FROM issue GROUP BY updated_date	apache-pig
SELECT updated_date, COUNT(*) AS updated_issues_count FROM issue WHERE updated_date IS NOT NULL GROUP BY updated_date ORDER BY updated_date ASC	apache-pig
SELECT updated_date, COUNT(*) AS count FROM issue GROUP BY updated_date	apache-pig
SELECT resolved_date FROM issue WHERE resolved_date IS NOT NULL GROUP BY resolved_date ORDER BY COUNT(*) DESC LIMIT 1	apache-pig
SELECT resolved_date FROM issue WHERE resolved_date IS NOT NULL GROUP BY resolved_date ORDER BY COUNT(*) DESC LIMIT 1	apache-pig
SELECT resolved_date FROM issue WHERE resolved_date IS NOT NULL GROUP BY resolved_date ORDER BY COUNT(*) DESC LIMIT 1	apache-pig
SELECT resolved_date FROM issue WHERE resolved_date IS NOT NULL GROUP BY resolved_date ORDER BY COUNT(*) DESC LIMIT 1	apache-pig
SELECT resolved_date FROM issue GROUP BY resolved_date ORDER BY Count(issue_id) DESC LIMIT 1	apache-pig
SELECT resolved_date FROM issue GROUP BY resolved_date ORDER BY Count(issue_id) DESC LIMIT 1	apache-pig
SELECT resolved_date FROM issue WHERE resolved_date IS NOT NULL GROUP BY resolved_date ORDER BY COUNT(issue_id) DESC LIMIT 1	apache-pig
SELECT COUNT(DISTINCT resolution) AS distinct_resolutions FROM issue WHERE resolution IS NOT NULL	apache-pig
SELECT resolution, COUNT(*) AS resolution_count FROM issue WHERE resolution IS NOT NULL GROUP BY resolution	apache-pig
SELECT resolution, COUNT(*) AS count FROM issue WHERE resolution IS NOT NULL GROUP BY resolution	apache-pig
SELECT DISTINCT resolution FROM issue WHERE resolution IS NOT NULL	apache-pig
SELECT resolution, COUNT(*) AS resolution_count FROM issue WHERE resolution IS NOT NULL GROUP BY resolution	apache-pig
SELECT COUNT(DISTINCT resolution) AS num_resolutions FROM issue WHERE resolution IS NOT NULL	apache-pig
SELECT COUNT(DISTINCT resolution) AS unique_resolutions FROM issue WHERE resolution IS NOT NULL	apache-pig
SELECT COUNT(DISTINCT assignee_username) AS distinct_assignees FROM issue	apache-pig
SELECT issue_attachment.username, COUNT(*) AS count FROM issue_attachment JOIN issue ON issue_attachment.issue_id = issue.issue_id WHERE issue.type = 'Developer' GROUP BY issue_attachment.username ORDER BY count DESC	apache-pig
SELECT assignee_username, Count(*) FROM issue GROUP BY assignee_username	apache-pig
SELECT COUNT(DISTINCT assignee_username)  FROM issue  WHERE assignee_username IS NOT NULL	apache-pig
SELECT COUNT(DISTINCT assignee_username) AS num_assignees FROM issue WHERE assignee_username IS NOT NULL	apache-pig
SELECT COUNT(DISTINCT assignee_username) AS unique_assignees FROM issue WHERE assignee_username IS NOT NULL	apache-pig
SELECT COUNT(DISTINCT assignee_username) AS num_assignees FROM issue	apache-pig
SELECT username, COUNT(*) AS comment_count FROM issue_comment GROUP BY username	apache-pig
SELECT username, COUNT(*) AS comment_count FROM issue_comment GROUP BY username	apache-pig
SELECT username, COUNT(*) AS comment_count FROM issue_comment GROUP BY username	apache-pig
SELECT username, COUNT(*) AS num_occurrences FROM issue_comment GROUP BY username	apache-pig
SELECT username, COUNT(*) AS num_comments FROM issue_comment GROUP BY username	apache-pig
SELECT username, Count(*) FROM issue_comment GROUP BY username	apache-pig
SELECT username, COUNT(*) AS comment_count FROM issue_comment GROUP BY username	apache-pig
SELECT display_name, COUNT(*) AS comment_count FROM issue_comment GROUP BY display_name	apache-pig
SELECT username AS commenter_name, COUNT(*) AS comment_count FROM issue_comment GROUP BY username ORDER BY comment_count DESC	apache-pig
SELECT COUNT(*)  FROM issue_comment	apache-pig
SELECT username, COUNT(*) AS comment_count FROM issue_comment GROUP BY username	apache-pig
SELECT display_name, Count(*) FROM issue_comment GROUP BY display_name	apache-pig
SELECT DISTINCT display_name, created_date FROM issue_comment ORDER BY display_name, created_date	apache-pig
SELECT display_name, COUNT(DISTINCT username) AS developer_count FROM issue_comment GROUP BY display_name	apache-pig
SELECT component, COUNT(*) AS occurrence FROM issue_component GROUP BY component	apache-pig
SELECT component, COUNT(*) AS count FROM issue_component GROUP BY component ORDER BY count DESC	apache-pig
SELECT component, COUNT(*) AS occurrences FROM issue_component GROUP BY component	apache-pig
SELECT COUNT(DISTINCT component) AS num_components FROM issue_component	apache-pig
SELECT T2.component, Count(*) FROM issue AS T1 JOIN issue_component AS T2 ON T1.issue_id = T2.issue_id GROUP BY T2.component	apache-pig
SELECT component, COUNT(*) AS count FROM issue_component GROUP BY component	apache-pig
SELECT component, COUNT(*) AS count FROM issue_component GROUP BY component	apache-pig
SELECT ic.display_name, COUNT(ic.message) AS num_messages FROM issue_comment ic WHERE ic.issue_id = 'PIG-3592' GROUP BY ic.display_name	apache-pig
SELECT username, COUNT(*) AS comment_count FROM issue_comment WHERE issue_id = 'PIG-3592' GROUP BY username	apache-pig
SELECT COUNT(*) AS comment_count, username FROM issue_comment WHERE issue_id = 'PIG-3592' GROUP BY username	apache-pig
SELECT username, COUNT(*) AS comment_count FROM issue_comment WHERE issue_id = 'PIG-3592' GROUP BY username	apache-pig
SELECT display_name, COUNT(*) AS message_count FROM issue_comment WHERE issue_id = 'PIG-3592' GROUP BY display_name	apache-pig
SELECT display_name, COUNT(message) AS message_count FROM issue_comment WHERE issue_id = 'PIG-3592' GROUP BY display_name	apache-pig
SELECT issue_comment.display_name, COUNT(issue_comment.message) AS message_count FROM issue_comment WHERE issue_comment.issue_id = 'PIG-3592' GROUP BY issue_comment.display_name	apache-pig
SELECT DISTINCT change_set.commit_hash FROM change_set JOIN issue_changelog ON change_set.commit_hash = issue_changelog.to_value JOIN issue ON issue_changelog.issue_id = issue.issue_id WHERE issue.issue_id = 'PIG-3592' AND change_set.committed_date >= issue.created_date AND change_set.committed_date <= issue.resolved_date	apache-pig
SELECT commit_hash FROM change_set WHERE committed_date >= (     SELECT created_date     FROM issue     WHERE issue_id = 'PIG-3592' ) AND committed_date <= (     SELECT resolved_date     FROM issue     WHERE issue_id = 'PIG-3592' )	apache-pig
SELECT DISTINCT change_set.commit_hash FROM change_set JOIN change_set_link ON change_set.commit_hash = change_set_link.commit_hash JOIN issue ON change_set_link.issue_id = issue.issue_id WHERE issue.issue_id = 'PIG-3592' AND change_set.committed_date >= issue.created_date AND change_set.committed_date <= issue.resolved_date	apache-pig
SELECT commit_hash FROM change_set WHERE committed_date_zoned >= (     SELECT created_date_zoned     FROM issue     WHERE issue_id = 'PIG-3592' ) AND committed_date_zoned <= (     SELECT COALESCE(resolved_date_zoned, NOW())     FROM issue     WHERE issue_id = 'PIG-3592' )	apache-pig
SELECT DISTINCT change_set.commit_hash FROM change_set JOIN issue ON change_set.commit_hash = issue_fix_version.issue_id WHERE issue.issue_id = 'PIG-3592' AND change_set.committed_date >= issue.created_date AND change_set.committed_date <= issue.resolved_date	apache-pig
SELECT commit_hash FROM change_set WHERE committed_date >= (     SELECT created_date     FROM issue     WHERE issue_id = 'PIG-3592' ) AND committed_date <= (     SELECT resolved_date     FROM issue     WHERE issue_id = 'PIG-3592' )	apache-pig
SELECT DISTINCT change_set_link.commit_hash FROM change_set_link JOIN change_set ON change_set_link.commit_hash = change_set.commit_hash JOIN issue ON change_set_link.issue_id = issue.issue_id WHERE issue.issue_id = 'PIG-3592' AND change_set.committed_date >= issue.created_date AND change_set.committed_date <= issue.resolved_date	apache-pig
SELECT type, COUNT(*) AS issue_count FROM issue WHERE type IN ('bug', 'improvement') GROUP BY type	apache-pig
SELECT type, COUNT(*) AS count FROM issue WHERE type IN ('Bug', 'Improvement') GROUP BY type	apache-pig
SELECT COUNT(*)  FROM issue  WHERE type IN ('Bug', 'Improvement')	apache-pig
SELECT    type,    COUNT(*) AS count  FROM    issue  GROUP BY    type	apache-pig
SELECT type, COUNT(*) AS count FROM issue WHERE type = 'Bug' OR type = 'Improvement' GROUP BY type	apache-pig
SELECT type, COUNT(*) AS count FROM issue WHERE type IN ('Bug', 'Improvement') GROUP BY type	apache-pig
SELECT type, COUNT(*) AS count FROM issue WHERE type IN ('Bug', 'Improvement') GROUP BY type	apache-pig
SELECT source.type AS source_issue_type, target.type AS target_issue_type, COUNT(*) AS count FROM issue_link JOIN issue AS source ON issue_link.source_issue_id = source.issue_id JOIN issue AS target ON issue_link.target_issue_id = target.issue_id WHERE issue_link.name = 'cloners' GROUP BY source.type, target.type	apache-pig
SELECT T1.type, COUNT(*) AS count FROM issue AS T1 JOIN issue_link AS T2 ON T1.issue_id = T2.target_issue_id WHERE T2.name = 'cloners' GROUP BY T1.type	apache-pig
SELECT T2.type, T3.type, Count(*) FROM issue_link AS T1 JOIN issue AS T2 ON T1.source_issue_id = T2.issue_id JOIN issue AS T3 ON T1.target_issue_id = T3.issue_id WHERE T1.name = "Cloners" GROUP BY T2.type, T3.type	apache-pig
SELECT i.type, COUNT(*) as count FROM issue_link il JOIN issue i ON il.target_issue_id = i.issue_id WHERE il.name = 'Cloners' GROUP BY i.type	apache-pig
SELECT source.type AS source_type, target.type AS target_type, COUNT(*) AS count FROM issue_link JOIN issue AS source ON issue_link.source_issue_id = source.issue_id JOIN issue AS target ON issue_link.target_issue_id = target.issue_id WHERE issue_link.name = 'Cloners' GROUP BY source_type, target_type	apache-pig
SELECT i1.type AS source_type, i2.type AS target_type, COUNT(*) AS count FROM issue_link il JOIN issue i1 ON il.source_issue_id = i1.issue_id JOIN issue i2 ON il.target_issue_id = i2.issue_id WHERE il.name = 'Cloners' GROUP BY i1.type, i2.type	apache-pig
SELECT      i1.type AS source_issue_type,      i2.type AS target_issue_type,      COUNT(*) AS combination_count FROM      issue_link il      JOIN issue i1 ON il.source_issue_id = i1.issue_id      JOIN issue i2 ON il.target_issue_id = i2.issue_id  WHERE      il.name = 'Cloners' GROUP BY      i1.type, i2.type	apache-pig
SELECT * FROM issue WHERE status = 'In Progress'	apache-pig
SELECT * FROM issue WHERE status != 'In Progress'	apache-pig
SELECT issue_id, summary, description, priority, status, resolution, assignee, reporter FROM issue WHERE status != 'In Progress'	apache-pig
SELECT * FROM issue WHERE status != 'In Progress'	apache-pig
SELECT * FROM issue WHERE status != 'In Progress'	apache-pig
SELECT * FROM issue WHERE status != 'In Progress'	apache-pig
SELECT issue_id, status FROM issue WHERE status != 'In Progress'	apache-pig
