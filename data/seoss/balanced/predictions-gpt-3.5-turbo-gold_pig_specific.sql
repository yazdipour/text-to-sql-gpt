SELECT issue_id FROM issue WHERE type = 'Bug'	apache-pig
SELECT * FROM issue WHERE status IN ('Closed', 'Resolved', 'Patch Available')	apache-pig
SELECT issue_id, type, description FROM issue JOIN issue_component ON issue.issue_id = issue_component.issue_id WHERE component = 'impl'	apache-pig
SELECT issue_id FROM issue WHERE updated_date >= '2017-03-22' AND updated_date < '2017-03-24'	apache-pig
SELECT * FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT * FROM issue WHERE assignee = 'Daniel Ward' AND status = 'Open'	apache-pig
SELECT * FROM issue WHERE status = 'In Progress'	apache-pig
SELECT issue_id  FROM issue  WHERE reporter = 'John Stark' AND type = 'bug'	apache-pig
SELECT * FROM issue WHERE priority = 'Blocker' OR priority = 'Critical'	apache-pig
SELECT * FROM issue WHERE updated_date > '2017-03-28'	apache-pig
SELECT issue_id, summary, assignee FROM issue WHERE assignee = 'Daniel Ward'	apache-pig
SELECT * FROM issue WHERE issue_id IN (     SELECT DISTINCT issue_id     FROM issue_attachment )	apache-pig
SELECT issue_id, summary FROM issue WHERE type = 'bug'	apache-pig
SELECT issue_id, description FROM issue WHERE type = 'Bug'	apache-pig
SELECT * FROM issue WHERE issue_id IN (     SELECT issue_id     FROM issue_component     WHERE component = 'grunt'     INTERSECT     SELECT issue_id     FROM issue_component     WHERE component = 'parser' )	apache-pig
SELECT status FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT issue_id, priority FROM issue WHERE type = 'bug'	apache-pig
SELECT issue_id, status, resolution, summary, description FROM issue WHERE type = 'bug' AND priority = 'major'	apache-pig
SELECT issue_id, type, priority FROM issue WHERE status = 'open' ORDER BY type, priority	apache-pig
SELECT field, username FROM issue_changelog WHERE fix_version = '0.12.1' AND username IS NOT NULL	apache-pig
SELECT issue_id, type, summary, description FROM issue WHERE status = 'Open' AND priority = 'Major'	apache-pig
SELECT DISTINCT assignee FROM issue WHERE type = 'Bug'	apache-pig
SELECT author, COUNT(*) AS commit_count FROM change_set GROUP BY author ORDER BY commit_count DESC	apache-pig
SELECT commit_hash, message FROM change_set	apache-pig
SELECT assignee FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE type = 'Improvement'	apache-pig
SELECT issue.type, COUNT(*) AS mentions FROM issue_comment JOIN issue ON issue_comment.issue_id = issue.issue_id GROUP BY issue.type ORDER BY mentions DESC LIMIT 1	apache-pig
SELECT COUNT(*)  FROM issue  WHERE priority = 'Blocker' OR priority = 'Critical'	apache-pig
SELECT file_path, COUNT(commit_hash) AS num_commits FROM code_change GROUP BY file_path ORDER BY num_commits DESC LIMIT 5	apache-pig
SELECT assignee FROM issue GROUP BY assignee HAVING COUNT(DISTINCT issue_id) = 1	apache-pig
SELECT assignee, COUNT(issue_id) AS num_issues FROM issue WHERE status = 'Open' GROUP BY assignee ORDER BY num_issues DESC LIMIT 1	apache-pig
SELECT assignee, COUNT(issue_id) AS issue_count FROM issue WHERE status = 'Open' GROUP BY assignee	apache-pig
SELECT status, COUNT(*) AS count_of_status FROM issue GROUP BY status	apache-pig
SELECT resolution, COUNT(*) AS count FROM issue WHERE resolution IS NOT NULL GROUP BY resolution ORDER BY count DESC	apache-pig
SELECT il.source_issue_id, il.target_issue_id FROM issue_link il WHERE il.name = 'Duplicate'	apache-pig
SELECT source_issue_id, target_issue_id FROM issue_link WHERE name = 'Blocker'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE status = 'Open'	apache-pig
SELECT * FROM issue WHERE priority = 'Blocker' OR priority = 'Critical'	apache-pig
SELECT assignee, COUNT(*) AS resolved_issues_count FROM issue WHERE resolution = 'Resolved' GROUP BY assignee	apache-pig
SELECT display_name, message FROM issue_comment WHERE issue_id = 'PIG-3599'	apache-pig
SELECT DISTINCT change_set.author_email FROM change_set JOIN change_set_link ON change_set.commit_hash = change_set_link.commit_hash WHERE change_set_link.issue_id = 'PIG-3592'	apache-pig
SELECT COUNT(DISTINCT issue.assignee)  FROM issue  JOIN issue_component ON issue.issue_id = issue_component.issue_id  WHERE issue_component.component = 'impl'	apache-pig
SELECT DISTINCT(issue.assignee)  FROM issue  JOIN issue_component ON issue.issue_id = issue_component.issue_id  WHERE issue_component.component = 'impl'  AND issue.assignee IS NOT NULL	apache-pig
SELECT reporter, issue_id FROM issue ORDER BY reporter ASC	apache-pig
SELECT DISTINCT field FROM issue_changelog WHERE issue_id IN (     SELECT issue_id     FROM issue_fix_version     WHERE fix_version = '0.12.1' )	apache-pig
SELECT issue_id, assignee FROM issue WHERE resolved_date >= '2014-09-08' AND resolved_date <= '2014-09-12'	apache-pig
SELECT DISTINCT cc.file_path FROM code_change cc JOIN change_set cs ON cc.commit_hash = cs.commit_hash JOIN issue_fix_version ifv ON cs.issue_id = ifv.issue_id WHERE ifv.fix_version = '0.12.1'	apache-pig
SELECT issue_id, created_date FROM issue WHERE created_date < '2014-09-12'	apache-pig
SELECT * FROM issue WHERE created_date = '2017-03-28'	apache-pig
SELECT issue_id FROM issue WHERE resolved_date = '2013-10-23'	apache-pig
SELECT assignee, COUNT(issue_id) AS issue_count FROM issue WHERE resolved_date >= '2015-03-01' AND resolved_date <= '2015-03-31' GROUP BY assignee HAVING COUNT(issue_id) >= 3	apache-pig
SELECT COUNT(*)  FROM issue  WHERE resolved_date < '2013-10-27'	apache-pig
SELECT issue_id FROM issue WHERE created_date > '2017-05-31'	apache-pig
SELECT issue_id FROM issue WHERE resolved_date >= '2017-10-01' AND resolved_date <= '2017-10-31'	apache-pig
SELECT issue_id FROM issue WHERE created_date >= '2017-01-01' AND created_date <= '2017-03-31'	apache-pig
SELECT issue_id, type, priority FROM issue WHERE status = 'Open' AND created_date BETWEEN '2013-11-16' AND '2013-11-28' ORDER BY type, priority	apache-pig
SELECT issue_id, status FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id, resolution FROM issue WHERE type = 'bug'	apache-pig
SELECT type FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT resolved_date FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT issue_id, description FROM issue	apache-pig
SELECT DISTINCT priority FROM issue WHERE priority IS NOT NULL	apache-pig
SELECT DISTINCT status FROM issue WHERE type = 'Apache Pig'	apache-pig
SELECT DISTINCT resolution FROM issue WHERE resolution IS NOT NULL	apache-pig
SELECT commit_hash FROM change_set	apache-pig
SELECT DISTINCT author_email FROM change_set	apache-pig
SELECT DISTINCT component FROM issue_component WHERE component IS NOT NULL	apache-pig
SELECT issue_fix_version.fix_version, COUNT(issue_fix_version.issue_id) AS num_resolved_issues, GROUP_CONCAT(issue_fix_version.issue_id) AS resolved_issue_ids FROM issue_fix_version JOIN issue ON issue_fix_version.issue_id = issue.issue_id WHERE issue.resolution IS NOT NULL GROUP BY issue_fix_version.fix_version	apache-pig
SELECT fix_version, COUNT(issue_id) AS num_issues FROM issue_fix_version GROUP BY fix_version ORDER BY num_issues DESC LIMIT 1	apache-pig
SELECT status FROM issue WHERE created_date = (SELECT MAX(created_date) FROM issue) LIMIT 1	apache-pig
SELECT fix_version FROM issue_fix_version WHERE issue_id = 'PIG-3599'	apache-pig
SELECT created_date, COUNT(*) AS issue_count FROM issue GROUP BY created_date	apache-pig
SELECT updated_date, COUNT(*) AS issue_count FROM issue GROUP BY updated_date	apache-pig
SELECT resolved_date, COUNT(*) AS resolved_count FROM issue WHERE resolved_date IS NOT NULL GROUP BY resolved_date ORDER BY resolved_date	apache-pig
SELECT committed_date, COUNT(*) AS commit_count FROM change_set GROUP BY committed_date	apache-pig
SELECT issue_id, resolved_date FROM issue WHERE assignee = 'Daniel Ward' AND resolution IS NOT NULL ORDER BY resolved_date DESC	apache-pig
SELECT COUNT(*)  FROM issue  WHERE resolved_date >= '2014-10-01'  AND resolved_date <= '2014-10-31'  AND assignee = 'John Stark'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE created_date >= '2015-01-01' AND created_date <= '2015-04-30'	apache-pig
SELECT created_date, COUNT(issue_id) AS issue_count FROM issue GROUP BY created_date ORDER BY issue_count DESC LIMIT 1	apache-pig
SELECT resolved_date, COUNT(issue_id) AS num_resolved FROM issue WHERE resolved_date IS NOT NULL GROUP BY resolved_date ORDER BY num_resolved DESC LIMIT 1	apache-pig
SELECT COUNT(*)  FROM issue	apache-pig
SELECT COUNT(DISTINCT type) AS unique_issue_types FROM issue	apache-pig
SELECT type, COUNT(*) AS count FROM issue GROUP BY type	apache-pig
SELECT COUNT(DISTINCT priority) AS unique_priority_types FROM issue	apache-pig
SELECT priority, COUNT(*) AS issue_count FROM issue WHERE priority IS NOT NULL GROUP BY priority	apache-pig
SELECT COUNT(DISTINCT status) AS num_distinct_status_types FROM issue	apache-pig
SELECT resolution, COUNT(*) AS resolution_count FROM issue WHERE resolution IS NOT NULL GROUP BY resolution	apache-pig
SELECT COUNT(DISTINCT assignee) AS unique_assignees FROM issue WHERE assignee IS NOT NULL	apache-pig
SELECT assignee, COUNT(*) AS assignee_count FROM issue WHERE assignee IS NOT NULL GROUP BY assignee ORDER BY assignee_count DESC	apache-pig
SELECT COUNT(DISTINCT assignee_username) AS num_assignees FROM issue WHERE assignee_username IS NOT NULL	apache-pig
SELECT assignee_username, COUNT(*) AS count FROM issue WHERE assignee_username IS NOT NULL GROUP BY assignee_username ORDER BY count DESC	apache-pig
SELECT COUNT(DISTINCT reporter) AS unique_reporters FROM issue	apache-pig
SELECT username, COUNT(*) AS num_comments FROM issue_comment GROUP BY username	apache-pig
SELECT reporter, COUNT(*) AS mentions FROM issue WHERE reporter IS NOT NULL GROUP BY reporter ORDER BY mentions DESC	apache-pig
SELECT reporter_username, COUNT(*) AS frequency FROM issue GROUP BY reporter_username ORDER BY frequency DESC	apache-pig
SELECT reporter_username, COUNT(*) AS count_issues FROM issue WHERE reporter_username IS NOT NULL GROUP BY reporter_username	apache-pig
SELECT COUNT(*) AS commit_count FROM change_set	apache-pig
SELECT COUNT(DISTINCT author) AS num_authors FROM change_set	apache-pig
SELECT display_name, COUNT(*) AS comment_count FROM issue_comment GROUP BY display_name ORDER BY comment_count DESC	apache-pig
SELECT DISTINCT username FROM issue_comment	apache-pig
SELECT COUNT(DISTINCT component)  FROM issue_component	apache-pig
SELECT ic.component, COUNT(*) AS mentions FROM issue_component ic JOIN issue i ON ic.issue_id = i.issue_id WHERE ic.component IS NOT NULL GROUP BY ic.component ORDER BY mentions DESC	apache-pig
SELECT COUNT(DISTINCT name) AS unique_link_names FROM issue_link	apache-pig
SELECT issue_link.name, COUNT(*) AS link_count FROM issue_link GROUP BY issue_link.name	apache-pig
SELECT COUNT(*)  FROM issue  WHERE type = 'bug'	apache-pig
SELECT DISTINCT assignee FROM issue WHERE assignee IS NOT NULL	apache-pig
SELECT DISTINCT assignee_username FROM issue WHERE assignee_username IS NOT NULL	apache-pig
SELECT DISTINCT reporter FROM issue WHERE reporter IS NOT NULL	apache-pig
SELECT DISTINCT reporter_username FROM issue WHERE reporter_username IS NOT NULL	apache-pig
SELECT DISTINCT author FROM change_set	apache-pig
SELECT display_name, COUNT(*) AS message_count FROM issue_comment WHERE issue_id = 'PIG-3592' GROUP BY display_name	apache-pig
SELECT DISTINCT issue.issue_id, issue.created_date, issue.resolved_date, change_set.commit_hash, change_set.committed_date FROM issue_link JOIN issue ON issue_link.target_issue_id = issue.issue_id JOIN change_set_link ON issue_link.source_issue_id = change_set_link.issue_id JOIN change_set ON change_set_link.commit_hash = change_set.commit_hash	apache-pig
SELECT DISTINCT issue.* FROM issue JOIN change_set_link ON issue.issue_id = change_set_link.issue_id	apache-pig
SELECT COUNT(DISTINCT issue_id)  FROM issue  LEFT JOIN change_set_link ON issue.issue_id = change_set_link.issue_id  WHERE change_set_link.commit_hash IS NULL	apache-pig
SELECT COUNT(DISTINCT issue_id)  FROM change_set_link  GROUP BY issue_id  HAVING COUNT(commit_hash) > 1	apache-pig
SELECT COUNT(DISTINCT issue_id)  FROM change_set_link  GROUP BY issue_id  HAVING COUNT(commit_hash) = 1	apache-pig
SELECT username, COUNT(DISTINCT issue_id) AS issue_count FROM issue_comment GROUP BY username	apache-pig
SELECT issue_id, COUNT(DISTINCT username) AS count_usernames FROM issue_comment GROUP BY issue_id	apache-pig
SELECT issue_id, COUNT(*) AS message_count FROM issue_comment GROUP BY issue_id	apache-pig
SELECT issue_id, summary, description FROM issue	apache-pig
SELECT DISTINCT change_set.commit_hash FROM change_set JOIN issue ON change_set.commit_hash = issue_fix_version.issue_id WHERE issue.issue_id = 'PIG-3592' AND change_set.committed_date >= issue.created_date AND change_set.committed_date <= issue.resolved_date	apache-pig
ERROR	apache-pig
SELECT COUNT(DISTINCT file_path)  FROM code_change  WHERE commit_hash IN (     SELECT commit_hash      FROM change_set_link      WHERE issue_id = 'PIG-3599' )	apache-pig
SELECT MIN(sum_added_lines + sum_removed_lines) AS min_file_paths FROM code_change INNER JOIN change_set_link ON code_change.commit_hash = change_set_link.commit_hash INNER JOIN issue_fix_version ON change_set_link.issue_id = issue_fix_version.issue_id INNER JOIN issue ON issue_fix_version.issue_id = issue.issue_id WHERE issue.type = 'Bug'	apache-pig
SELECT COUNT(*)  FROM issue_link  WHERE source_issue_id IN (     SELECT issue_id      FROM issue      WHERE type = 'bug' )  AND target_issue_id IN (     SELECT issue_id      FROM issue      WHERE type = 'improvement' )	apache-pig
SELECT il.source_issue_id, il.target_issue_id FROM issue_link il JOIN issue i1 ON il.source_issue_id = i1.issue_id AND i1.type = 'bug' JOIN issue i2 ON il.target_issue_id = i2.issue_id AND i2.type = 'improvement'	apache-pig
SELECT DISTINCT name FROM issue_link WHERE source_issue_id IN (     SELECT issue_id     FROM issue     WHERE type = 'apache pig' )	apache-pig
SELECT source.type AS source_type, target.type AS target_type, COUNT(*) AS count FROM issue_link JOIN issue AS source ON issue_link.source_issue_id = source.issue_id JOIN issue AS target ON issue_link.target_issue_id = target.issue_id WHERE issue_link.name = 'Cloners' GROUP BY source_type, target_type	apache-pig
SELECT DISTINCT source.type AS source_issue_type, target.type AS target_issue_type FROM issue_link JOIN issue AS source ON source.issue_id = issue_link.source_issue_id JOIN issue AS target ON target.issue_id = issue_link.target_issue_id WHERE issue_link.name = 'Cloners'	apache-pig
SELECT DISTINCT type FROM issue	apache-pig
SELECT * FROM issue WHERE type = 'Bug'	apache-pig
SELECT * FROM issue WHERE status != 'In Progress'	apache-pig
SELECT MAX(num_file_paths) AS max_file_paths FROM (   SELECT COUNT(DISTINCT cc.file_path) AS num_file_paths   FROM issue i   JOIN issue_fix_version ifv ON i.issue_id = ifv.issue_id   JOIN change_set_link csl ON i.issue_id = csl.issue_id   JOIN change_set cs ON csl.commit_hash = cs.commit_hash   JOIN code_change cc ON cs.commit_hash = cc.commit_hash   WHERE	apache-pig
