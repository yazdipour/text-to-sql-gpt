SELECT issue_id FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id FROM issue_fix_version WHERE fix_version = 'buggy'	apache-pig
SELECT issue_id FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id FROM issue WHERE type = 'Bug'	apache-pig
SELECT * FROM issue WHERE status IN ('Closed', 'Resolved', 'Patch Available')	apache-pig
SELECT DISTINCT issue.issue_id, issue.summary, issue.status FROM issue LEFT JOIN issue_fix_version ON issue.issue_id = issue_fix_version.issue_id WHERE issue.status IN ('closed', 'resolved') OR issue.issue_id IN (SELECT DISTINCT issue_id FROM code_change) 	apache-pig
SELECT issue_id, summary, status, resolution FROM issue WHERE status IN ('Closed', 'Resolved') OR resolution = 'Patchable'	apache-pig
SELECT * FROM issue WHERE status IN ('closed', 'resolved') OR resolution = 'patch available'	apache-pig
SELECT * FROM issue WHERE status IN ('Closed', 'Resolved', 'Patch Available')	apache-pig
SELECT issue_id, status FROM issue WHERE status IN ('Closed', 'Resolved', 'Patch Available')	apache-pig
SELECT issue_id, status FROM issue WHERE status IN ('closed', 'resolved', 'patch available')	apache-pig
SELECT issue.issue_id, issue.type, issue.description FROM issue JOIN issue_component ON issue.issue_id = issue_component.issue_id WHERE issue_component.component = 'impl'	apache-pig
SELECT issue_id, type, description FROM issue WHERE issue_id IN (  SELECT issue_id   FROM issue_component   WHERE component = 'impl' )	apache-pig
SELECT issue.issue_id, issue.type, issue.description FROM issue JOIN issue_component ON issue.issue_id = issue_component.issue_id WHERE issue_component.component = 'impl'	apache-pig
SELECT issue_id, type, description FROM issue WHERE issue_id IN (  SELECT issue_id   FROM issue_component   WHERE component = 'impl' )	apache-pig
SELECT issue.issue_id, issue.type, issue.description FROM issue JOIN issue_component ON issue.issue_id = issue_component.issue_id WHERE issue_component.component = 'impl' 	apache-pig
SELECT issue.issue_id, issue.type, issue.description FROM issue JOIN issue_component ON issue.issue_id = issue_component.issue_id WHERE issue_component.component = 'impl' 	apache-pig
SELECT issue.issue_id, issue.type, issue.description FROM issue JOIN issue_component ON issue.issue_id = issue_component.issue_id WHERE issue_component.component LIKE '%impl%' 	apache-pig
SELECT issue_id FROM issue WHERE updated_date >= '2017-03-22' AND updated_date <= '2017-03-22' 	apache-pig
SELECT issue_id FROM issue WHERE updated_date BETWEEN '2017-03-22' AND '2017-03-23'	apache-pig
SELECT issue_id FROM issue WHERE updated_date >= '2017-03-22' AND updated_date < '2017-03-23'	apache-pig
SELECT issue_id FROM issue WHERE updated_date >= '2017-03-22' AND updated_date < '2017-03-23' 	apache-pig
SELECT issue_id FROM issue WHERE updated_date >= '2017-03-22' AND updated_date < '2017-03-24'	apache-pig
SELECT issue_id FROM issue WHERE updated_date IN ('2017-03-22', '2017-03-23') 	apache-pig
SELECT issue_id FROM issue WHERE updated_date BETWEEN '2017-03-22' AND '2017-03-23'	apache-pig
SELECT * FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT * FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT * FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT * FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT * FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT * FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT * FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT * FROM issue WHERE assignee = 'Daniel Ward' AND status = 'Open'	apache-pig
SELECT * FROM issue WHERE status = 'Open' AND assignee = 'Daniel Ward'	apache-pig
SELECT * FROM issue WHERE status = 'Open' AND assignee = 'Daniel Ward'	apache-pig
SELECT * FROM issue WHERE status = 'Open' AND assignee = 'Daniel Ward'	apache-pig
SELECT * FROM issue WHERE assignee = 'Daniel Ward' AND status = 'Open'	apache-pig
SELECT * FROM issue WHERE assignee = 'Daniel Ward' AND status = 'Open'	apache-pig
SELECT * FROM issue WHERE assignee = 'Daniel Ward' AND status = 'Open'	apache-pig
SELECT * FROM issue WHERE status = 'In Progress'	apache-pig
SELECT * FROM issue WHERE status = 'In Progress' 	apache-pig
SELECT DISTINCT issue.issue_id, issue.summary, issue.description, issue.priority, issue.status, issue.resolution, issue.assignee, issue.assignee_username FROM issue WHERE issue.assignee = 'developer_name'	apache-pig
SELECT issue_id, summary, assignee, status  FROM issue  WHERE status NOT IN ('Done', 'Closed', 'Resolved')  AND assignee IS NOT NULL 	apache-pig
SELECT * FROM issue WHERE status = 'In Progress'	apache-pig
SELECT * FROM issue WHERE status = 'In Progress'	apache-pig
SELECT * FROM issue WHERE status = 'In Progress'	apache-pig
SELECT * FROM issue WHERE reporter = 'John Stark' AND type = 'Bug'	apache-pig
SELECT * FROM issue WHERE type = 'Bug' AND reporter = 'John Stark'	apache-pig
SELECT * FROM issue WHERE reporter = 'John Stark' AND type = 'Bug'	apache-pig
SELECT * FROM issue WHERE type = 'Bug' AND reporter = 'John Stark'	apache-pig
SELECT issue_id, summary, description, priority, status, resolution, assignee, reporter FROM issue WHERE reporter = 'John Stark' AND type = 'bug'	apache-pig
SELECT * FROM issue WHERE reporter = 'John Stark' AND type = 'bug'	apache-pig
SELECT * FROM issue WHERE reporter = 'John Stark' AND type = 'Bug'	apache-pig
SELECT * FROM issue WHERE priority IN ('Blocker', 'Critical')	apache-pig
SELECT issue_id, summary, priority  FROM issue  WHERE priority IN ('Blocker', 'Critical')  	apache-pig
SELECT issue_id, summary, priority, status  FROM issue  WHERE priority IN ('Blocking', 'Critical')  AND status != 'Resolved' 	apache-pig
SELECT * FROM issue WHERE priority IN ('blocking', 'critical')	apache-pig
SELECT * FROM issue WHERE priority IN ('Blocker', 'Critical')	apache-pig
SELECT * FROM issue WHERE priority IN ('Blocker', 'Critical')	apache-pig
SELECT * FROM issue WHERE priority IN ('Blocker', 'Critical')	apache-pig
SELECT * FROM issue WHERE updated_date > '2017-03-28'	apache-pig
SELECT DISTINCT issue.issue_id FROM issue JOIN issue_changelog ON issue.issue_id = issue_changelog.issue_id WHERE issue_changelog.created_date > '2017-03-28' 	apache-pig
SELECT issue_id, type, updated_date, summary, description, priority, status, resolution, assignee, reporter FROM issue WHERE updated_date > '2017-03-28'	apache-pig
SELECT * FROM issue WHERE updated_date >= '2017-03-28'	apache-pig
SELECT * FROM issue WHERE updated_date > '2017-03-28'	apache-pig
SELECT * FROM issue WHERE updated_date > '2017-03-28'	apache-pig
SELECT * FROM issue WHERE updated_date > '2017-03-28'	apache-pig
SELECT * FROM issue WHERE assignee = 'Daniel Ward'	apache-pig
SELECT * FROM issue WHERE assignee = 'Daniel Ward'	apache-pig
SELECT * FROM issue WHERE assignee = 'Daniel Ward'	apache-pig
SELECT * FROM issue WHERE assignee = 'Daniel Ward'	apache-pig
SELECT * FROM issue WHERE assignee = 'Daniel Ward'	apache-pig
SELECT * FROM issue WHERE assignee = 'Daniel Ward'	apache-pig
SELECT * FROM issue WHERE assignee = 'Daniel Ward'	apache-pig
SELECT DISTINCT issue.issue_id, issue.summary FROM issue_attachment INNER JOIN issue ON issue_attachment.issue_id = issue.issue_id	apache-pig
SELECT DISTINCT issue.issue_id, issue.type, issue.summary, issue.description, issue.priority, issue.status, issue.resolution, issue.assignee, issue.assignee_username, issue.reporter, issue.reporter_username FROM issue_attachment INNER JOIN issue ON issue_attachment.issue_id = issue.issue_id 	apache-pig
SELECT DISTINCT issue.issue_id, issue.summary, issue.description FROM issue INNER JOIN issue_attachment ON issue.issue_id = issue_attachment.issue_id	apache-pig
SELECT DISTINCT issue.issue_id, issue.summary FROM issue_attachment INNER JOIN issue ON issue_attachment.issue_id = issue.issue_id	apache-pig
SELECT * FROM issue WHERE issue_id IN (  SELECT DISTINCT issue_id   FROM issue_attachment ) 	apache-pig
SELECT DISTINCT issue.issue_id, issue.type, issue.summary, issue.description, issue.priority, issue.status, issue.resolution, issue.assignee, issue.reporter FROM issue_attachment INNER JOIN issue ON issue_attachment.issue_id = issue.issue_id	apache-pig
SELECT * FROM issue JOIN issue_attachment ON issue.issue_id = issue_attachment.issue_id	apache-pig
SELECT issue_id, summary FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id, summary FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id, summary FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id, summary FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id, summary FROM issue WHERE type = 'bug'	apache-pig
SELECT issue_id, summary FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id, summary FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id, description FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id, description FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id, description FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id, description FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id, description FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id, description FROM issue WHERE type = 'bug'	apache-pig
SELECT issue_id, description FROM issue WHERE type = 'Bug'	apache-pig
SELECT * FROM issue WHERE issue_id IN (    SELECT issue_id FROM issue_component     WHERE component = 'grunt' OR component = 'parser' ) 	apache-pig
SELECT DISTINCT issue.issue_id, issue.summary, issue.description FROM issue JOIN issue_component ON issue.issue_id = issue_component.issue_id WHERE issue_component.component IN ('grunt', 'parser') 	apache-pig
SELECT DISTINCT issue.issue_id, issue.summary, issue.description, issue.priority, issue.status, issue.resolution, issue.assignee, issue.reporter FROM issue JOIN issue_component ON issue.issue_id = issue_component.issue_id WHERE issue_component.component IN ('grunt', 'parser') 	apache-pig
SELECT DISTINCT issue.issue_id, issue.summary, issue.description FROM issue JOIN issue_component ON issue.issue_id = issue_component.issue_id WHERE issue_component.component = 'grunt' AND issue.issue_id IN (  SELECT issue_id   FROM issue_component   WHERE component = 'parser' )	apache-pig
SELECT * FROM issue WHERE issue_id IN (  SELECT issue_id   FROM issue_component   WHERE component = 'grunt'   INTERSECT  SELECT issue_id   FROM issue_component   WHERE component = 'parser' )	apache-pig
SELECT *  FROM issue  WHERE issue_id IN (    SELECT issue_id      FROM issue_component      WHERE component IN ('grunt', 'parser') )	apache-pig
SELECT *  FROM issue  WHERE issue_id IN (    SELECT issue_id      FROM issue_component      WHERE component IN ('grunt', 'parser') )	apache-pig
SELECT status FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT status FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT status FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT status FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT status FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT status FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT status FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT issue_id, priority FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id, priority FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id, priority FROM issue WHERE type = 'Bug' ORDER BY issue_id ASC, priority DESC	apache-pig
SELECT issue_id, priority FROM issue WHERE type = 'bug'	apache-pig
SELECT issue_id, priority FROM issue WHERE type = 'bug'	apache-pig
SELECT issue_id, priority FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id, priority FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id, status, resolution, summary, description FROM issue WHERE type = 'Bug' AND priority = 'Major' 	apache-pig
SELECT issue.issue_id, issue.status, issue.resolution, issue.summary, issue.description FROM issue WHERE issue.priority = 'Major' AND issue.type = 'Bug' 	apache-pig
SELECT issue_id, status, resolution, summary, description FROM issue WHERE priority = 'Major' AND type = 'Bug' 	apache-pig
SELECT issue_id, status, resolution, summary, description FROM issue WHERE type = 'Bug' AND priority = 'Major' 	apache-pig
SELECT issue_id, status, resolution, summary, description FROM issue WHERE type = 'bug' AND priority = 'major' 	apache-pig
SELECT issue_id, status, resolution, summary, description FROM issue WHERE type = 'bug' AND priority = 'major' 	apache-pig
SELECT issue_id, status, resolution, summary, description FROM issue WHERE type = 'bug' AND priority = 'major' ORDER BY issue_id	apache-pig
SELECT issue_id, type, priority FROM issue WHERE status = 'Open' ORDER BY type, priority	apache-pig
SELECT issue.issue_id, issue.status, issue.resolution, issue.summary, issue.description FROM issue WHERE issue.priority = 'Major' AND issue.type = 'Bug' 	apache-pig
SELECT issue_id, status, resolution, summary, description FROM issue WHERE priority = 'Major' AND type = 'Bug' 	apache-pig
SELECT issue_id, status, resolution, summary, description FROM issue WHERE type = 'Bug' AND priority = 'Major' 	apache-pig
SELECT issue_id, type, priority FROM issue WHERE status = 'open' ORDER BY type, priority 	apache-pig
SELECT issue_id, type, priority FROM issue WHERE status = 'Open' ORDER BY type, priority	apache-pig
SELECT issue_id, type, priority FROM issue WHERE status = 'Open' ORDER BY type, priority	apache-pig
SELECT DISTINCT ic.username FROM issue_changelog ic JOIN issue_fix_version ifv ON ic.issue_id = ifv.issue_id WHERE ifv.fix_version = '0.12.1' 	apache-pig
SELECT ic.username, ic.display_name, ic.created_date, ic.message, ic.issue_id FROM issue_comment ic JOIN issue_fix_version ifv ON ic.issue_id = ifv.issue_id WHERE ifv.fix_version = '0.12.1' 	apache-pig
SELECT ic.username, ic.display_name, ic.created_date, ic.message, ic.issue_id FROM issue_comment ic JOIN issue_fix_version ifv ON ic.issue_id = ifv.issue_id WHERE ifv.fix_version = '0.12.1' 	apache-pig
SELECT code_change.commit_hash, code_change.file_path, code_change.change_type, code_change.patch_type, code_change.is_deleted, code_change.sum_added_lines, code_change.sum_removed_lines, change_set.author FROM code_change JOIN change_set ON code_change.commit_hash = change_set.commit_hash JOIN git_repository ON change_set.git_repository_id = git_repository.git_repository_id JOIN issue_fix_version ON git_repository.name = issue_fix_version.fix_version WHERE issue_fix_version.fix_version	apache-pig
SELECT field, username FROM issue_changelog WHERE fix_version = '0.12.1' 	apache-pig
SELECT DISTINCT cl.field, cl.username FROM issue_fix_version fv JOIN issue_changelog cl ON fv.issue_id = cl.issue_id WHERE fv.fix_version = '0.12.1' 	apache-pig
SELECT DISTINCT field, username FROM issue_changelog WHERE fix_version = '0.12.1' AND field_type != 'Attachment' AND field_type != 'Comment' AND field_type != 'Component' AND field_type != 'Link' AND field_type != 'Fix Version' AND field_type != 'Epic Link' AND field_type != 'Sprint' AND field_type != 'Rank' AND field_type != 'Time Tracking' AND field_type != 'Flagged' 	apache-pig
SELECT issue_id, type, summary, description FROM issue WHERE status = 'Open' AND priority = 'Major' 	apache-pig
SELECT issue_id, type, summary, description FROM issue WHERE status = 'Open' AND priority = 'Major' 	apache-pig
SELECT issue_id, type, summary, description FROM issue WHERE status = 'Open' AND priority = 'Major' 	apache-pig
SELECT issue_id, type, summary, description FROM issue WHERE status = 'Open' AND priority = 'Major' 	apache-pig
SELECT issue_id, type, summary, description FROM issue WHERE status = 'Open' AND priority = 'Major' 	apache-pig
SELECT issue_id, type, summary, description FROM issue WHERE status = 'Open' AND priority = 'Major' 	apache-pig
SELECT issue_id, type, summary, description  FROM issue  WHERE status = 'open' AND priority = 'Major'	apache-pig
SELECT DISTINCT assignee FROM issue WHERE type = 'Bug' 	apache-pig
SELECT assignee AS assigned_to FROM issue WHERE type = 'Bug'	apache-pig
SELECT DISTINCT assignee_username FROM issue WHERE type = 'bug' AND assignee_username IS NOT NULL	apache-pig
SELECT DISTINCT assignee_username FROM issue WHERE type = 'bug' 	apache-pig
SELECT DISTINCT assignee FROM issue WHERE type = 'Bug' 	apache-pig
SELECT DISTINCT assignee FROM issue WHERE type = 'bug' AND assignee IS NOT NULL	apache-pig
SELECT DISTINCT assignee FROM issue WHERE type = 'bug' 	apache-pig
SELECT author, COUNT(*) as num_occurrences FROM change_set GROUP BY author	apache-pig
SELECT change_set.author, COUNT(*) AS mentions FROM change_set JOIN change_set_link ON change_set.commit_hash = change_set_link.commit_hash JOIN issue ON change_set_link.issue_id = issue.issue_id WHERE issue.description LIKE '%' || change_set.author || '%' GROUP BY change_set.author ORDER BY mentions DESC	apache-pig
SELECT author, COUNT(*) as commit_count FROM change_set GROUP BY author 	apache-pig
SELECT author, COUNT(*) AS commit_count FROM change_set GROUP BY author	apache-pig
SELECT author, COUNT(*) AS commit_count FROM change_set GROUP BY author ORDER BY commit_count DESC	apache-pig
SELECT author, COUNT(*) AS commit_count FROM change_set GROUP BY author ORDER BY commit_count DESC	apache-pig
SELECT author, COUNT(*) AS mentions FROM change_set GROUP BY author ORDER BY mentions DESC	apache-pig
SELECT commit_hash, message FROM change_set 	apache-pig
SELECT commit_hash, message FROM change_set 	apache-pig
SELECT commit_hash, message FROM change_set 	apache-pig
SELECT commit_hash, message FROM change_set 	apache-pig
SELECT commit_hash, message FROM change_set 	apache-pig
SELECT commit_hash, message FROM change_set	apache-pig
SELECT commit_hash, message FROM change_set 	apache-pig
SELECT assignee FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT assignee  FROM issue  WHERE issue_id = 'PIG-3599'	apache-pig
SELECT assignee  FROM issue  WHERE issue_id = 'PIG-3599'	apache-pig
SELECT assignee FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT assignee FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT assignee FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT assignee FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE type = 'Improvement'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE type = 'Improvement' AND summary LIKE '%Apache pig%' 	apache-pig
I am sorry, but I need more information to answer your question. Which table or tables contain the information about improvements? Please provide more details about the data you are working with.	apache-pig
SELECT COUNT(*)  FROM issue  WHERE type = 'Improvement' 	apache-pig
SELECT COUNT(*)  FROM issue  WHERE type = 'Improvement'	apache-pig
SELECT COUNT(*) AS total_improvement_issues FROM issue WHERE type = 'improvement'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE type = 'Improvement'	apache-pig
SELECT issue.type, COUNT(*) AS frequency FROM issue GROUP BY issue.type ORDER BY frequency DESC LIMIT 1	apache-pig
SELECT type, COUNT(*) AS num_reports FROM issue GROUP BY type ORDER BY num_reports DESC LIMIT 1	apache-pig
SELECT type, COUNT(*) AS count FROM issue GROUP BY type ORDER BY count DESC LIMIT 1	apache-pig
SELECT type, COUNT(*) AS num_issues FROM issue GROUP BY type ORDER BY num_issues DESC LIMIT 1	apache-pig
SELECT issue.type, COUNT(*) AS mentions FROM issue GROUP BY issue.type ORDER BY mentions DESC LIMIT 1	apache-pig
SELECT type, COUNT(*) AS count FROM issue GROUP BY type ORDER BY count DESC LIMIT 1	apache-pig
SELECT issue.type, COUNT(*) AS count FROM issue GROUP BY issue.type ORDER BY count DESC LIMIT 1	apache-pig
SELECT COUNT(*)  FROM issue  WHERE priority IN ('blocker', 'critical') 	apache-pig
SELECT COUNT(*)  FROM issue  WHERE priority IN ('Blocker', 'Critical')  	apache-pig
SELECT COUNT(*)  FROM issue  WHERE priority IN ('blocking', 'critical') 	apache-pig
SELECT COUNT(*)  FROM issue  WHERE priority IN ('blocker', 'critical')	apache-pig
SELECT COUNT(*)  FROM issue  WHERE priority = 'Blocker' OR priority = 'Critical'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE priority IN ('blocker', 'critical') 	apache-pig
SELECT COUNT(*) AS total_issues FROM issue WHERE priority IN ('blocker', 'critical')	apache-pig
SELECT file_path, COUNT(commit_hash) AS commit_count FROM code_change GROUP BY file_path ORDER BY commit_count DESC LIMIT 5	apache-pig
SELECT file_path, COUNT(commit_hash) AS commit_count FROM code_change GROUP BY file_path ORDER BY commit_count DESC LIMIT 5	apache-pig
SELECT file_path, SUM(sum_added_lines + sum_removed_lines) AS total_changes FROM code_change GROUP BY file_path ORDER BY total_changes DESC LIMIT 5	apache-pig
SELECT file_path, SUM(sum_added_lines + sum_removed_lines) AS num_changes FROM code_change GROUP BY file_path ORDER BY num_changes DESC LIMIT 5	apache-pig
SELECT file_path, COUNT(commit_hash) AS num_commits FROM code_change GROUP BY file_path ORDER BY num_commits DESC LIMIT 5	apache-pig
SELECT file_path, COUNT(commit_hash) AS num_commits FROM code_change GROUP BY file_path ORDER BY num_commits DESC LIMIT 5	apache-pig
SELECT file_path, COUNT(commit_hash) AS commit_count FROM code_change GROUP BY file_path ORDER BY commit_count DESC LIMIT 5	apache-pig
SELECT assignee FROM issue GROUP BY assignee HAVING COUNT(DISTINCT issue_id) = 1 	apache-pig
SELECT assignee, COUNT(*) as num_assigned_issues FROM issue GROUP BY assignee HAVING COUNT(*) = 1	apache-pig
SELECT DISTINCT assignee AS developer_name FROM issue WHERE assignee IS NOT NULL GROUP BY assignee HAVING COUNT(DISTINCT issue_id) = 1	apache-pig
SELECT assignee_username FROM issue GROUP BY assignee_username HAVING COUNT(DISTINCT issue_id) = 1 	apache-pig
SELECT assignee FROM issue GROUP BY assignee HAVING COUNT(DISTINCT issue_id) = 1 	apache-pig
SELECT COUNT(DISTINCT assignee) AS num_assignees FROM issue GROUP BY assignee HAVING COUNT(DISTINCT issue_id) = 1	apache-pig
SELECT DISTINCT assignee FROM issue WHERE issue_id = 'your_issue_id_here'	apache-pig
SELECT assignee, COUNT(issue_id) AS issue_count FROM issue WHERE status = 'Open' GROUP BY assignee ORDER BY issue_count DESC LIMIT 1	apache-pig
SELECT assignee_username AS developer, COUNT(*) AS num_assigned_issues FROM issue WHERE assignee_username IS NOT NULL GROUP BY assignee_username ORDER BY num_assigned_issues DESC LIMIT 1	apache-pig
SELECT assignee, COUNT(*) AS issue_count FROM issue WHERE assignee IS NOT NULL AND assignee_username LIKE '%@apache.org' GROUP BY assignee ORDER BY issue_count DESC LIMIT 1	apache-pig
SELECT assignee, COUNT(*) as assigned_issues_count FROM issue WHERE assignee IS NOT NULL GROUP BY assignee ORDER BY assigned_issues_count DESC LIMIT 1	apache-pig
SELECT assignee, COUNT(issue_id) AS num_issues FROM issue WHERE status = 'Open' GROUP BY assignee ORDER BY num_issues DESC LIMIT 1	apache-pig
SELECT issue.assignee, COUNT(issue.issue_id) AS num_assigned_issues FROM issue WHERE issue.status = 'Open' GROUP BY issue.assignee ORDER BY num_assigned_issues DESC LIMIT 1	apache-pig
SELECT assignee, COUNT(*) AS assigned_issues_count FROM issue WHERE status = 'Open' GROUP BY assignee HAVING assignee = (    SELECT assignee     FROM issue     WHERE status = 'Open'     GROUP BY assignee     ORDER BY COUNT(*) DESC     LIMIT 1 ) 	apache-pig
SELECT assignee, COUNT(issue_id) AS assigned_issues FROM issue WHERE status = 'Open' GROUP BY assignee	apache-pig
SELECT assignee_username AS developer, COUNT(*) AS num_assigned_issues FROM issue WHERE assignee_username IS NOT NULL GROUP BY assignee_username	apache-pig
SELECT assignee_username, COUNT(*) AS open_issues_count FROM issue WHERE status != 'Closed' GROUP BY assignee_username	apache-pig
SELECT assignee, COUNT(*) AS num_open_issues FROM issue WHERE status = 'Open' GROUP BY assignee	apache-pig
SELECT assignee, COUNT(issue_id) AS issue_count FROM issue WHERE status = 'Open' GROUP BY assignee	apache-pig
SELECT assignee, COUNT(issue_id) AS num_issues FROM issue WHERE status = 'Open' GROUP BY assignee	apache-pig
SELECT assignee, COUNT(issue_id) AS open_issue_count FROM issue WHERE status = 'Open' GROUP BY assignee	apache-pig
SELECT status, COUNT(*) AS num_occurrences FROM issue GROUP BY status	apache-pig
SELECT status, COUNT(*) AS status_count FROM issue GROUP BY status	apache-pig
SELECT type, status, COUNT(*) AS count FROM issue GROUP BY type, status	apache-pig
SELECT issue.type, COUNT(DISTINCT issue.status) AS num_statuses FROM issue GROUP BY issue.type	apache-pig
SELECT status, COUNT(*) AS count FROM issue GROUP BY status	apache-pig
SELECT status, COUNT(*) AS num_occurrences FROM issue GROUP BY status	apache-pig
SELECT status, COUNT(*) AS count FROM issue GROUP BY status	apache-pig
SELECT resolution, COUNT(*) AS num_occurrences FROM issue WHERE resolution IS NOT NULL GROUP BY resolution	apache-pig
SELECT resolution, COUNT(*) AS count FROM issue WHERE resolution IS NOT NULL GROUP BY resolution	apache-pig
SELECT resolution, COUNT(*) AS count FROM issue WHERE resolution IS NOT NULL GROUP BY resolution	apache-pig
SELECT resolution, COUNT(DISTINCT resolution_type) AS num_resolution_types FROM issue_changelog WHERE field = 'resolution' GROUP BY resolution 	apache-pig
SELECT resolution, COUNT(*) AS count FROM issue WHERE resolution IS NOT NULL GROUP BY resolution	apache-pig
SELECT resolution, COUNT(*) AS count FROM issue GROUP BY resolution	apache-pig
SELECT resolution, COUNT(*) AS count FROM issue WHERE project = 'Apache Pig' GROUP BY resolution	apache-pig
SELECT source_issue_id, target_issue_id FROM issue_link WHERE name = 'Duplicate'	apache-pig
SELECT DISTINCT i1.issue_id, i2.issue_id FROM issue i1 JOIN issue i2 ON i1.issue_id <> i2.issue_id AND i1.issue_id = i2.resolution WHERE i1.resolution IS NOT NULL 	apache-pig
SELECT il1.source_issue_id, il1.target_issue_id FROM issue_link il1 JOIN issue_link il2 ON il1.source_issue_id = il2.target_issue_id AND il1.target_issue_id = il2.source_issue_id WHERE il1.name = 'Duplicate' AND il2.name = 'Duplicate' 	apache-pig
SELECT il.source_issue_id, il.target_issue_id FROM issue_link il WHERE il.name = 'Duplicate' 	apache-pig
SELECT source_issue_id, target_issue_id FROM issue_link WHERE name = 'Duplicate'	apache-pig
SELECT source_issue_id, target_issue_id FROM issue_link WHERE name = 'Duplicate' 	apache-pig
SELECT source_issue_id, target_issue_id FROM issue_link WHERE name = 'Duplicate'	apache-pig
SELECT il.source_issue_id, il.target_issue_id FROM issue_link il WHERE il.name = 'Blocker' 	apache-pig
SELECT DISTINCT il1.source_issue_id AS blocking_issue, il1.target_issue_id AS blocked_issue FROM issue_link il1 JOIN issue_link il2 ON il1.target_issue_id = il2.source_issue_id AND il1.source_issue_id <> il2.target_issue_id WHERE il1.outward_label = 'blocks' AND il2.outward_label = 'blocks' 	apache-pig
SELECT il.source_issue_id, il.target_issue_id FROM issue_link il WHERE il.name = 'Blocks' 	apache-pig
SELECT il.source_issue_id, il.target_issue_id FROM issue_link il WHERE il.name = 'Blocker' 	apache-pig
SELECT source_issue_id, target_issue_id FROM issue_link WHERE name = 'Blocker'	apache-pig
SELECT source_issue_id, target_issue_id FROM issue_link WHERE name = 'Blocker' 	apache-pig
SELECT source_issue_id, target_issue_id FROM issue_link WHERE name = 'Blocker' 	apache-pig
SELECT COUNT(*)  FROM issue  WHERE status = 'Open'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE status = 'Open' 	apache-pig
SELECT COUNT(*)  FROM issue  WHERE status != 'Closed' AND resolution IS NULL	apache-pig
SELECT COUNT(*)  FROM issue  WHERE resolution IS NULL 	apache-pig
SELECT COUNT(*)  FROM issue  WHERE status = 'Open'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE status = 'open'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE status = 'Open'	apache-pig
SELECT DISTINCT i.issue_id, i.summary, i.priority FROM issue i JOIN issue_link il ON i.issue_id = il.source_issue_id OR i.issue_id = il.target_issue_id WHERE i.priority = 'Blocker' OR i.priority = 'Critical' 	apache-pig
SELECT issue_id, summary, priority  FROM issue  WHERE priority IN ('Blocker', 'Critical') 	apache-pig
SELECT * FROM issue WHERE priority IN ('blocking', 'critical') 	apache-pig
SELECT issue_id, summary, priority, status  FROM issue  WHERE priority IN ('Blocking', 'Critical')  AND status NOT IN ('Resolved', 'Closed') 	apache-pig
SELECT * FROM issue WHERE priority IN ('Blocker', 'Critical')	apache-pig
SELECT * FROM issue WHERE priority = 'Blocker' OR priority = 'Critical'	apache-pig
SELECT * FROM issue WHERE priority = 'Blocker' OR priority = 'Critical'	apache-pig
SELECT assignee, COUNT(*) AS resolved_issues_count FROM issue WHERE status = 'Resolved' GROUP BY assignee	apache-pig
SELECT assignee_username AS developer, COUNT(DISTINCT issue_id) AS num_solved_issues FROM issue WHERE resolution = 'Done' GROUP BY assignee_username ORDER BY num_solved_issues DESC	apache-pig
SELECT issue_fix_version.issue_id, issue_fix_version.fix_version, issue.resolved_date_zoned, issue.assignee_username FROM issue_fix_version JOIN issue ON issue_fix_version.issue_id = issue.issue_id WHERE issue.resolved_date_zoned IS NOT NULL GROUP BY issue_fix_version.issue_id, issue_fix_version.fix_version, issue.resolved_date_zoned, issue.assignee_username ORDER BY issue.assignee_username 	apache-pig
SELECT assignee, COUNT(*) AS num_solved_issues FROM issue WHERE resolution IS NOT NULL GROUP BY assignee	apache-pig
SELECT assignee, COUNT(*) AS resolved_count FROM issue WHERE status = 'Resolved' GROUP BY assignee	apache-pig
SELECT assignee, COUNT(*) AS num_resolved_issues FROM issue WHERE status = 'Resolved' GROUP BY assignee	apache-pig
SELECT issue.assignee, COUNT(issue.issue_id) AS resolved_count FROM issue WHERE issue.status = 'Resolved' GROUP BY issue.assignee 	apache-pig
SELECT display_name, message FROM issue_comment WHERE issue_id = 'PIG-3599'	apache-pig
SELECT username, message FROM issue_comment WHERE issue_id = 'PIG-3599'	apache-pig
SELECT issue_comment.username AS assignee, issue_comment.message AS comment FROM issue_comment WHERE issue_comment.issue_id = 'PIG-3599'	apache-pig
SELECT DISTINCT issue_comment.username, issue_comment.display_name, issue_comment.message FROM issue_comment JOIN issue ON issue_comment.issue_id = issue.issue_id WHERE issue.issue_id = 'PIG-3599' AND issue.assignee IS NOT NULL	apache-pig
SELECT display_name, message FROM issue_comment WHERE issue_id = 'PIG-3599'	apache-pig
SELECT ic.display_name, ic.message FROM issue_comment ic WHERE ic.issue_id = 'PIG-3599'	apache-pig
SELECT display_name, message FROM issue_comment WHERE issue_id = 'PIG-3592'	apache-pig
SELECT DISTINCT change_set.author_email FROM change_set JOIN change_set_link ON change_set.commit_hash = change_set_link.commit_hash WHERE change_set_link.issue_id = 'PIG-3592'	apache-pig
SELECT assignee FROM issue WHERE issue_id = 'PIG-3592'	apache-pig
SELECT issue.assignee FROM issue WHERE issue.issue_id = 'PIG-3592'	apache-pig
SELECT issue.assignee FROM issue WHERE issue.issue_id = 'PIG-3592'	apache-pig
SELECT DISTINCT change_set.author_email FROM change_set JOIN change_set_link ON change_set.commit_hash = change_set_link.commit_hash WHERE change_set_link.issue_id = 'PIG-3592'	apache-pig
SELECT DISTINCT change_set.author_email FROM change_set JOIN change_set_link ON change_set.commit_hash = change_set_link.commit_hash WHERE change_set_link.issue_id = 'PIG-3592'	apache-pig
SELECT DISTINCT change_set.author_email FROM change_set JOIN change_set_link ON change_set.commit_hash = change_set_link.commit_hash WHERE change_set_link.issue_id = 'PIG-3592' 	apache-pig
SELECT COUNT(DISTINCT issue.assignee)  FROM issue  JOIN issue_component ON issue.issue_id = issue_component.issue_id  WHERE issue_component.component = 'impl' 	apache-pig
SELECT COUNT(DISTINCT username) AS num_developers FROM issue_attachment WHERE issue_id IN (  SELECT issue_id   FROM issue_component   WHERE component = 'impl' ) 	apache-pig
SELECT COUNT(DISTINCT issue.assignee)  FROM issue  JOIN issue_component ON issue.issue_id = issue_component.issue_id  WHERE issue_component.component = 'impl'	apache-pig
SELECT COUNT(DISTINCT assignee)  FROM issue  JOIN issue_component ON issue.issue_id = issue_component.issue_id  WHERE component = 'impl'	apache-pig
SELECT COUNT(DISTINCT issue.assignee) AS assignee_count FROM issue JOIN issue_component ON issue.issue_id = issue_component.issue_id WHERE issue_component.component = 'impl' 	apache-pig
SELECT COUNT(DISTINCT assignee)  FROM issue  JOIN issue_component ON issue.issue_id = issue_component.issue_id  WHERE component = 'impl' 	apache-pig
SELECT COUNT(DISTINCT assignee)  FROM issue  WHERE issue_id IN (    SELECT issue_id      FROM issue_component      WHERE component = 'impl' )  AND assignee IS NOT NULL	apache-pig
SELECT DISTINCT(issue.assignee)  FROM issue  INNER JOIN issue_component ON issue.issue_id = issue_component.issue_id  WHERE issue_component.component = 'impl' 	apache-pig
SELECT DISTINCT assignee FROM issue JOIN issue_component ON issue.issue_id = issue_component.issue_id WHERE component = 'impl' 	apache-pig
SELECT DISTINCT(issue_attachment.username) AS developer_name FROM issue_attachment JOIN issue_component ON issue_attachment.issue_id = issue_component.issue_id WHERE issue_component.component = 'imp' 	apache-pig
SELECT DISTINCT assignee_username FROM issue JOIN issue_component ON issue.issue_id = issue_component.issue_id WHERE component = 'imp' AND assignee_username IN (    SELECT username     FROM meta     WHERE key = 'group' AND value = 'developers' )	apache-pig
SELECT DISTINCT issue.assignee FROM issue_component JOIN issue ON issue_component.issue_id = issue.issue_id WHERE issue_component.component = 'impl' 	apache-pig
SELECT DISTINCT issue.assignee FROM issue_component JOIN issue ON issue_component.issue_id = issue.issue_id WHERE issue_component.component = 'impl'	apache-pig
SELECT DISTINCT issue.assignee FROM issue JOIN issue_component ON issue.issue_id = issue_component.issue_id WHERE issue_component.component = 'impl' AND issue.resolution IS NOT NULL 	apache-pig
SELECT reporter, issue_id FROM issue ORDER BY reporter	apache-pig
SELECT DISTINCT reporter_username AS developer, issue_id FROM issue ORDER BY developer, issue_id	apache-pig
SELECT reporter, issue_id FROM issue WHERE reporter IS NOT NULL 	apache-pig
SELECT DISTINCT issue_reporter.display_name, issue.issue_id FROM issue JOIN jira_repository ON issue.key = jira_repository.key JOIN issue_attachment ON issue.issue_id = issue_attachment.issue_id JOIN issue_comment ON issue.issue_id = issue_comment.issue_id JOIN issue_changelog ON issue.issue_id = issue_changelog.issue_id JOIN issue_component ON issue.issue_id = issue_component.issue_id JOIN issue_fix_version ON issue.issue_id = issue_fix_version.issue_id WHERE	apache-pig
SELECT reporter, issue_id FROM issue ORDER BY reporter ASC	apache-pig
SELECT issue_id, reporter FROM issue ORDER BY reporter ASC	apache-pig
SELECT DISTINCT reporter, issue_id FROM issue WHERE reporter IS NOT NULL ORDER BY reporter ASC 	apache-pig
SELECT DISTINCT field FROM issue_changelog WHERE to_value = '0.12.1' 	apache-pig
SELECT ic.issue_id, ic.component, icc.field, icc.from_value, icc.to_value FROM issue_fix_version ifv JOIN issue_component ic ON ifv.issue_id = ic.issue_id JOIN issue_changelog icc ON ifv.issue_id = icc.issue_id WHERE ifv.fix_version = '0.12.1' AND icc.field_type = 'Fix Version' 	apache-pig
SELECT * FROM issue_fix_version JOIN issue_changelog ON issue_fix_version.issue_id = issue_changelog.issue_id WHERE issue_fix_version.fix_version = '0.12.1' 	apache-pig
SELECT cs.commit_hash, cs.committed_date, cs.message, cc.file_path, cc.change_type FROM change_set cs JOIN git_repository gr ON cs.git_repository_id = gr.git_repository_id JOIN code_change cc ON cs.commit_hash = cc.commit_hash JOIN issue_fix_version ifv ON cs.issue_id = ifv.issue_id WHERE gr.name = 'apache Pig' AND ifv.fix_version = '0.12.1' 	apache-pig
SELECT DISTINCT field FROM issue_changelog WHERE to_value = '0.12.1' 	apache-pig
SELECT issue_id, field_type, from_value, to_value FROM issue_changelog WHERE to_value IS NOT NULL AND fix_version = '0.12.1'	apache-pig
SELECT DISTINCT field FROM issue_changelog WHERE to_value = '0.12.1' 	apache-pig
SELECT issue_id, assignee FROM issue WHERE resolved_date >= '2014-09-08' AND resolved_date <= '2014-09-12'	apache-pig
SELECT issue_id, assignee FROM issue WHERE resolved_date >= '2014-09-08' AND resolved_date <= '2014-09-12' 	apache-pig
SELECT issue_fix_version.issue_id, issue.resolver FROM issue_fix_version JOIN issue ON issue_fix_version.issue_id = issue.issue_id WHERE issue.resolution IS NOT NULL AND issue.resolved_date >= '2014-09-08' AND issue.resolved_date <= '2014-09-12'	apache-pig
SELECT issue_id, assignee FROM issue WHERE resolved_date >= '2014-09-08' AND resolved_date <= '2014-09-12' 	apache-pig
SELECT issue_id, assignee FROM issue WHERE resolved_date >= '2014-09-08' AND resolved_date <= '2014-09-12'	apache-pig
SELECT issue.issue_id, issue.assignee FROM issue WHERE issue.resolved_date >= '2014-09-08' AND issue.resolved_date <= '2014-09-12' 	apache-pig
SELECT issue_id, assignee FROM issue WHERE resolved_date >= '2014-09-08' AND resolved_date <= '2014-09-12'	apache-pig
SELECT file_path FROM code_change WHERE commit_hash IN (  SELECT commit_hash   FROM change_set   WHERE git_repository_id = (    SELECT git_repository_id     FROM git_repository     WHERE checkout_hash = '0.12.1'   ) ) 	apache-pig
SELECT DISTINCT file_path FROM code_change JOIN issue_fix_version ON code_change.commit_hash = issue_fix_version.issue_id WHERE issue_fix_version.fix_version = '0.12.1' AND code_change.change_type =	apache-pig
SELECT DISTINCT cc.file_path FROM code_change cc JOIN change_set cs ON cc.commit_hash = cs.commit_hash JOIN issue_fix_version ifv ON cs.issue_id = ifv.issue_id WHERE ifv.fix_version = '0.12.1' 	apache-pig
SELECT DISTINCT code_change.file_path FROM code_change JOIN change_set ON code_change.commit_hash = change_set.commit_hash JOIN git_repository ON change_set.git_repository_id = git_repository.git_repository_id JOIN issue_fix_version ON change_set.issue_id = issue_fix_version.issue_id WHERE issue_fix_version.fix_version = '0.12.1' 	apache-pig
SELECT DISTINCT code_change.file_path FROM code_change JOIN change_set ON code_change.commit_hash = change_set.commit_hash JOIN issue_fix_version ON issue_fix_version.issue_id = change_set.issue_id WHERE issue_fix_version.fix_version = '0.12.1' 	apache-pig
SELECT DISTINCT cc.file_path FROM code_change cc JOIN change_set cs ON cc.commit_hash = cs.commit_hash JOIN issue_fix_version ifv ON cs.issue_id = ifv.issue_id WHERE ifv.fix_version = '0.12.1' 	apache-pig
SELECT DISTINCT cc.file_path FROM code_change cc JOIN change_set cs ON cc.commit_hash = cs.commit_hash JOIN issue_fix_version ifv ON cs.issue_id = ifv.issue_id WHERE ifv.fix_version = '0.12.1' 	apache-pig
SELECT * FROM issue WHERE created_date < '2014-09-12'	apache-pig
SELECT * FROM issue WHERE created_date < '2014-09-12'	apache-pig
SELECT * FROM issue WHERE created_date < '2014-09-12'	apache-pig
SELECT issue_id, type, created_date, created_date_zoned, updated_date, updated_date_zoned, resolved_date, resolved_date_zoned, summary, description, priority, status, resolution, assignee, assignee_username, reporter, reporter_username FROM issue WHERE created_date < '2014-09-12' 	apache-pig
SELECT * FROM issue WHERE created_date < '2014-09-12'	apache-pig
SELECT * FROM issue WHERE created_date < '2014-09-12'	apache-pig
SELECT * FROM issue WHERE created_date < '2014-09-12'	apache-pig
SELECT * FROM issue WHERE created_date = '2017-03-28'	apache-pig
SELECT * FROM issue WHERE created_date = '2017-03-28' 	apache-pig
SELECT * FROM issue WHERE created_date = '2017-03-28'	apache-pig
SELECT * FROM issue WHERE created_date = '2017-03-28'	apache-pig
SELECT * FROM issue WHERE created_date = '2017-03-28'	apache-pig
SELECT * FROM issue WHERE created_date = '2017-03-28'	apache-pig
SELECT * FROM issue WHERE created_date = '2017-03-28'	apache-pig
SELECT issue_id FROM issue WHERE resolved_date = '2013-10-23' 	apache-pig
SELECT issue_id FROM issue WHERE resolved_date = '2013-10-23' 	apache-pig
SELECT issue_id FROM issue WHERE resolution_date = '2013-10-23'	apache-pig
SELECT issue_id FROM issue WHERE resolved_date = '2013-10-23' 	apache-pig
SELECT issue_id FROM issue WHERE resolved_date = '2013-10-23' 	apache-pig
SELECT issue_id FROM issue WHERE resolved_date = '2013-10-23'	apache-pig
SELECT issue_id FROM issue WHERE resolved_date = '2013-10-23'	apache-pig
SELECT assignee, COUNT(DISTINCT issue_id) AS num_resolved_issues FROM issue WHERE resolved_date >= '2015-03-01' AND resolved_date <= '2015-03-31' GROUP BY assignee HAVING COUNT(DISTINCT issue_id) >= 3 	apache-pig
SELECT DISTINCT(issue_fix_version.username)  FROM issue_fix_version  WHERE issue_fix_version.issue_id IN (    SELECT issue_id      FROM issue      WHERE resolved_date >= '2015-03-01'      AND resolved_date <= '2015-03-31'     GROUP BY issue_id      HAVING COUNT(*) >= 3 )  	apache-pig
SELECT username, COUNT(DISTINCT issue_id) AS num_solved_issues FROM issue_fix_version JOIN issue ON issue_fix_version.issue_id = issue.issue_id WHERE issue.status = 'Resolved' AND issue.resolved_date >= '2015-03-01'  AND issue.resolved_date <= '2015-03-31' GROUP BY username HAVING COUNT(DISTINCT issue_id) >= 3	apache-pig
SELECT assignee_username FROM issue WHERE resolved_date BETWEEN '2015-03-01' AND '2015-03-31' GROUP BY assignee_username HAVING COUNT(DISTINCT issue_id) >= 3	apache-pig
SELECT assignee, COUNT(DISTINCT issue_id) AS issue_count FROM issue WHERE resolved_date BETWEEN '2015-03-01' AND '2015-03-31' GROUP BY assignee HAVING COUNT(DISTINCT issue_id) >= 3	apache-pig
SELECT assignee, COUNT(DISTINCT issue_id) AS resolved_issues_count FROM issue WHERE resolved_date BETWEEN '2015-03-01' AND '2015-03-31' GROUP BY assignee HAVING COUNT(DISTINCT issue_id) >= 3 	apache-pig
SELECT assignee, assignee_username FROM issue WHERE resolution = 'Resolved' AND resolved_date BETWEEN '2015-03-01' AND '2015-03-31' GROUP BY assignee, assignee_username HAVING COUNT(DISTINCT issue_id) >= 3	apache-pig
SELECT COUNT(*)  FROM issue  WHERE resolved_date < '2013-10-27'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE resolved_date < '2013-10-27'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE resolved_date < '2013-10-27'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE resolution IS NOT NULL AND resolved_date < '2013-10-27'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE resolved_date < '2013-10-27'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE resolved_date < '2013-10-27'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE resolved_date < '2013-10-27'	apache-pig
SELECT * FROM issue WHERE created_date > '2017-05-31'	apache-pig
SELECT * FROM issue WHERE created_date > '2017-05-31'	apache-pig
SELECT * FROM issue WHERE created_date > '2017-05-31'	apache-pig
SELECT issue_id, type, created_date, created_date_zoned, updated_date, updated_date_zoned, resolved_date, resolved_date_zoned, summary, description, priority, status, resolution, assignee, assignee_username, reporter, reporter_username FROM issue WHERE created_date > '2017-05-31' AND project = 'Apache Pig'	apache-pig
SELECT * FROM issue WHERE created_date > '2017-05-31'	apache-pig
SELECT * FROM issue WHERE created_date > '2017-05-31' 	apache-pig
SELECT * FROM issue WHERE created_date > '2017-05-31'	apache-pig
SELECT issue_id FROM issue WHERE resolved_date >= '2017-10-01' AND resolved_date <= '2017-10-31' 	apache-pig
SELECT issue_id FROM issue WHERE resolved_date >= '2017-10-01' AND resolved_date <= '2017-10-31' 	apache-pig
SELECT issue_id FROM issue WHERE resolution IS NOT NULL AND resolved_date >= '2017-10-01' AND resolved_date <= '2017-10-31'	apache-pig
SELECT issue_id FROM issue WHERE resolved_date >= '2017-10-01' AND resolved_date <= '2017-10-31' 	apache-pig
SELECT issue_id FROM issue WHERE resolved_date >= '2017-10-01' AND resolved_date <= '2017-10-31'	apache-pig
SELECT issue_id FROM issue WHERE resolved_date >= '2017-10-01' AND resolved_date <= '2017-10-31' 	apache-pig
SELECT issue_id FROM issue WHERE resolved_date >= '2017-10-01' AND resolved_date <= '2017-10-31' 	apache-pig
SELECT issue_id FROM issue WHERE created_date BETWEEN '2017-01-01' AND '2017-03-31'	apache-pig
SELECT issue_id FROM issue WHERE created_date >= '2017-01-01' AND created_date <= '2017-03-31' 	apache-pig
SELECT issue_id FROM issue WHERE created_date >= '2017-01-01' AND created_date <= '2017-03-31'	apache-pig
SELECT issue_id FROM issue WHERE created_date >= '2017-01-01' AND created_date <= '2017-03-31' 	apache-pig
SELECT issue_id FROM issue WHERE created_date >= '2017-01-01' AND created_date <= '2017-03-31' 	apache-pig
SELECT issue_id FROM issue WHERE created_date BETWEEN '2017-01-01' AND '2017-03-31'	apache-pig
SELECT issue_id FROM issue WHERE created_date BETWEEN '2017-01-01' AND '2017-03-31'	apache-pig
SELECT issue_id, type, priority FROM issue WHERE status = 'Open' AND created_date BETWEEN '2013-11-16' AND '2013-11-28' ORDER BY type, priority	apache-pig
SELECT issue_id, type, priority FROM issue WHERE status = 'Open' AND created_date >= '2013-11-16' AND created_date <= '2013-11-28' ORDER BY type, priority	apache-pig
SELECT issue_id, type, priority FROM issue WHERE status = 'Open' AND created_date >= '2013-11-16' AND created_date <= '2013-11-28' ORDER BY type, priority	apache-pig
SELECT issue_id, type, priority FROM issue WHERE status = 'Open' AND created_date BETWEEN '2013-11-16' AND '2013-11-28' ORDER BY type, priority	apache-pig
SELECT issue_id, type, priority FROM issue WHERE status = 'Open' AND created_date BETWEEN '2013-11-16' AND '2013-11-28' ORDER BY type, priority	apache-pig
SELECT issue_id, type, priority FROM issue WHERE status = 'Open' AND created_date BETWEEN '2013-11-16' AND '2013-11-28' ORDER BY type, priority	apache-pig
SELECT issue_id, type, priority FROM issue WHERE status = 'Open' AND created_date BETWEEN '2013-11-16' AND '2013-11-28' ORDER BY type, priority	apache-pig
SELECT issue_id, status FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id, status FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id, status FROM issue WHERE type = 'Bug' 	apache-pig
SELECT issue_id, status FROM issue WHERE type = 'Bug' AND project = 'Apache Pig'	apache-pig
SELECT issue_id, status FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id, status FROM issue WHERE type = 'bug'	apache-pig
SELECT issue_id, status FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id, resolution FROM issue WHERE type = 'Bug' 	apache-pig
SELECT issue_id, resolution FROM issue WHERE type = 'Bug' AND resolution IS NOT NULL	apache-pig
SELECT issue_id, resolution FROM issue WHERE type = 'Bug' 	apache-pig
SELECT issue.issue_id, issue.resolution FROM issue INNER JOIN issue_fix_version ON issue.issue_id = issue_fix_version.issue_id WHERE issue.type = 'Bug' AND issue.project = 'Apache Pig' 	apache-pig
SELECT issue_id, resolution FROM issue WHERE type = 'bug' 	apache-pig
SELECT issue_id, resolution FROM issue WHERE type = 'Bug'	apache-pig
SELECT issue_id, resolution FROM issue WHERE type = 'Bug'	apache-pig
SELECT type FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT type FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT type FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT type FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT type FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT type FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT type FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT resolved_date FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT resolved_date FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT resolved_date, resolved_date_zoned FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT resolved_date FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT resolved_date FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT resolved_date FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT resolved_date FROM issue WHERE issue_id = 'PIG-3599'	apache-pig
SELECT * FROM issue	apache-pig
SELECT * FROM issue	apache-pig
SELECT * FROM issue	apache-pig
SELECT * FROM issue	apache-pig
SELECT content FROM issue_attachment 	apache-pig
SELECT * FROM issue	apache-pig
SELECT * FROM issue	apache-pig
SELECT DISTINCT priority FROM issue	apache-pig
SELECT DISTINCT priority FROM issue 	apache-pig
SELECT DISTINCT priority  FROM issue 	apache-pig
SELECT DISTINCT priority FROM issue	apache-pig
SELECT DISTINCT priority FROM issue WHERE project = 'Apache Pig'	apache-pig
SELECT DISTINCT priority  FROM issue 	apache-pig
SELECT DISTINCT priority  FROM issue 	apache-pig
SELECT DISTINCT status FROM issue	apache-pig
SELECT DISTINCT status FROM issue 	apache-pig
SELECT DISTINCT status FROM issue	apache-pig
SELECT DISTINCT status FROM issue 	apache-pig
SELECT DISTINCT status FROM issue WHERE type = 'Apache Pig' 	apache-pig
SELECT DISTINCT status FROM issue 	apache-pig
SELECT DISTINCT status FROM issue	apache-pig
SELECT DISTINCT resolution FROM issue WHERE resolution IS NOT NULL	apache-pig
SELECT DISTINCT resolution FROM issue 	apache-pig
SELECT DISTINCT resolution FROM issue WHERE resolution IS NOT NULL	apache-pig
SELECT DISTINCT resolution FROM issue 	apache-pig
SELECT DISTINCT resolution FROM issue WHERE resolution IS NOT NULL	apache-pig
SELECT DISTINCT resolution FROM issue WHERE resolution IS NOT NULL AND resolution != '' AND project = 'Apache Pig'	apache-pig
SELECT DISTINCT resolution FROM issue WHERE resolution IS NOT NULL	apache-pig
SELECT commit_hash FROM change_set 	apache-pig
SELECT commit_hash FROM change_set 	apache-pig
SELECT commit_hash FROM change_set 	apache-pig
SELECT commit_hash FROM change_set WHERE git_repository_id = (SELECT git_repository_id FROM git_repository WHERE name = 'Apache') 	apache-pig
SELECT commit_hash FROM change_set 	apache-pig
SELECT commit_hash FROM change_set 	apache-pig
SELECT commit_hash FROM change_set 	apache-pig
I am sorry, but I cannot answer this question as there is no table with an "e-mail" column in the provided database schema. Please provide a valid question related to the tables and columns provided.	apache-pig
SELECT DISTINCT author_email FROM change_set cs JOIN git_repository gr ON cs.git_repository_id = gr.git_repository_id JOIN jira_repository jr ON gr.name = jr.key WHERE jr.base_url LIKE '%apache.org%' AND gr.name = 'PIG' 	apache-pig
SELECT DISTINCT author_email FROM change_set cs JOIN git_repository gr ON cs.git_repository_id = gr.git_repository_id WHERE gr.name = 'Apache Pig' 	apache-pig
SELECT DISTINCT author_email FROM change_set 	apache-pig
SELECT DISTINCT author_email FROM change_set 	apache-pig
Unfortunately, the required information is not available in the given tables. The `change_set` table contains the `author_email` column, but it does not have any information about the email addresses of the authors of commits in the database.	apache-pig
SELECT DISTINCT author_email FROM change_set 	apache-pig
SELECT DISTINCT component FROM issue_component	apache-pig
SELECT DISTINCT component  FROM issue_component	apache-pig
SELECT DISTINCT component FROM issue_component JOIN issue ON issue_component.issue_id = issue.issue_id WHERE issue.project = 'Apache Pig' 	apache-pig
SELECT DISTINCT component FROM issue_component JOIN issue ON issue_component.issue_id = issue.issue_id WHERE issue.project = 'Apache Pig' 	apache-pig
SELECT DISTINCT component FROM issue_component	apache-pig
SELECT DISTINCT component FROM issue_component	apache-pig
SELECT DISTINCT component  FROM issue_component	apache-pig
SELECT fix_version, COUNT(issue_id) AS issue_count FROM issue_fix_version GROUP BY fix_version	apache-pig
SELECT fix_version, COUNT(issue_id) AS num_resolved_issues FROM issue_fix_version GROUP BY fix_version	apache-pig
SELECT fix_version, COUNT(issue_id) AS num_resolved_issues FROM issue_fix_version GROUP BY fix_version	apache-pig
SELECT fix_version, COUNT(DISTINCT issue_id) AS resolved_issues_count FROM issue_fix_version INNER JOIN issue ON issue_fix_version.issue_id = issue.issue_id WHERE resolution IS NOT NULL GROUP BY fix_version	apache-pig
SELECT issue_fix_version.fix_version, COUNT(issue_fix_version.issue_id) AS num_resolved_issues, GROUP_CONCAT(issue_fix_version.issue_id) AS resolved_issue_ids FROM issue_fix_version JOIN issue ON issue_fix_version.issue_id = issue.issue_id WHERE issue.resolution IS NOT NULL GROUP BY issue_fix_version.fix_version	apache-pig
SELECT fix_version, COUNT(issue_id) AS issue_count FROM issue_fix_version GROUP BY fix_version	apache-pig
SELECT fix_version, COUNT(issue_id) AS issue_count FROM issue_fix_version GROUP BY fix_version	apache-pig
SELECT fix_version, COUNT(issue_id) AS num_fixed_issues FROM issue_fix_version GROUP BY fix_version ORDER BY num_fixed_issues DESC LIMIT 1	apache-pig
SELECT fix_version, COUNT(issue_id) AS num_fixed_issues FROM issue_fix_version GROUP BY fix_version ORDER BY num_fixed_issues DESC LIMIT 1	apache-pig
SELECT fix_version, COUNT(issue_id) AS num_fixed_issues FROM issue_fix_version GROUP BY fix_version ORDER BY num_fixed_issues DESC LIMIT 1	apache-pig
SELECT fix_version, COUNT(issue_id) AS num_fixed_issues FROM issue_fix_version GROUP BY fix_version ORDER BY num_fixed_issues DESC LIMIT 1	apache-pig
SELECT fix_version, COUNT(issue_id) AS num_issues FROM issue_fix_version GROUP BY fix_version ORDER BY num_issues DESC LIMIT 1	apache-pig
SELECT fix_version FROM issue_fix_version GROUP BY fix_version ORDER BY COUNT(issue_id) DESC LIMIT 1	apache-pig
SELECT fix_version, COUNT(issue_id) AS num_fixed_issues FROM issue_fix_version GROUP BY fix_version ORDER BY num_fixed_issues DESC LIMIT 1	apache-pig
SELECT status FROM issue WHERE created_date = (SELECT MAX(created_date) FROM issue) 	apache-pig
SELECT status FROM issue ORDER BY created_date DESC LIMIT 1	apache-pig
SELECT status  FROM issue  ORDER BY created_date DESC  LIMIT 1	apache-pig
SELECT status FROM issue ORDER BY created_date DESC LIMIT 1	apache-pig
SELECT status FROM issue WHERE created_date = (SELECT MAX(created_date) FROM issue) 	apache-pig
SELECT status FROM issue WHERE created_date = (SELECT MAX(created_date) FROM issue) 	apache-pig
SELECT issue.status FROM issue WHERE issue.created_date = (  SELECT MAX(created_date)   FROM issue ) 	apache-pig
SELECT fix_version FROM issue_fix_version WHERE issue_id = 'PIG-3599'	apache-pig
SELECT fix_version FROM issue_fix_version WHERE issue_id = 'PIG-3599'	apache-pig
SELECT fix_version FROM issue_fix_version WHERE issue_id = 'PIG-3599'	apache-pig
SELECT fix_version FROM issue_fix_version WHERE issue_id = 'PIG-3599'	apache-pig
SELECT fix_version FROM issue_fix_version WHERE issue_id = 'PIG-3599'	apache-pig
SELECT fix_version FROM issue_fix_version WHERE issue_id = 'PIG-3599'	apache-pig
SELECT fix_version FROM issue_fix_version WHERE issue_id = 'PIG-3599'	apache-pig
SELECT created_date, COUNT(issue_id) AS num_issues FROM issue GROUP BY created_date 	apache-pig
SELECT created_date, COUNT(issue_id) AS num_issues FROM issue GROUP BY created_date 	apache-pig
	apache-pig
SELECT created_date, COUNT(issue_id) AS num_issues FROM issue GROUP BY created_date ORDER BY created_date ASC	apache-pig
SELECT created_date, COUNT(*) AS issue_count FROM issue GROUP BY created_date 	apache-pig
SELECT created_date, COUNT(issue_id) AS created_issues_count FROM issue GROUP BY created_date 	apache-pig
SELECT created_date, COUNT(issue_id) AS issue_count FROM issue GROUP BY created_date ORDER BY created_date ASC	apache-pig
SELECT updated_date, COUNT(issue_id) AS num_updated_issues FROM issue GROUP BY updated_date	apache-pig
SELECT updated_date, COUNT(DISTINCT issue_id) AS num_updated_issues FROM issue GROUP BY updated_date 	apache-pig
SELECT DATE_TRUNC('day', updated_date_zoned) AS modified_date, COUNT(DISTINCT issue_id) AS modified_issues FROM issue GROUP BY modified_date ORDER BY modified_date ASC	apache-pig
SELECT DISTINCT ic.created_date, COUNT(DISTINCT ic.issue_id) AS changed_issues FROM issue_changelog ic GROUP BY ic.created_date ORDER BY ic.created_date ASC	apache-pig
SELECT updated_date, COUNT(*) AS issue_count FROM issue GROUP BY updated_date 	apache-pig
SELECT updated_date, COUNT(issue_id) AS updated_issues_count FROM issue GROUP BY updated_date 	apache-pig
SELECT updated_date, COUNT(*) AS count FROM issue GROUP BY updated_date ORDER BY updated_date ASC	apache-pig
SELECT resolved_date, COUNT(issue_id) AS num_resolved_issues FROM issue WHERE resolution IS NOT NULL GROUP BY resolved_date ORDER BY resolved_date ASC	apache-pig
SELECT resolved_date, COUNT(*) AS num_resolved_issues FROM issue WHERE resolved_date IS NOT NULL GROUP BY resolved_date 	apache-pig
SELECT resolved_date, COUNT(issue_id) AS num_issues_solved FROM issue WHERE resolved_date IS NOT NULL GROUP BY resolved_date ORDER BY resolved_date ASC	apache-pig
SELECT resolved_date, COUNT(DISTINCT issue_id) AS num_resolved_issues FROM issue WHERE resolution IS NOT NULL GROUP BY resolved_date ORDER BY resolved_date	apache-pig
SELECT resolved_date, COUNT(*) AS count_resolved FROM issue WHERE resolved_date IS NOT NULL GROUP BY resolved_date ORDER BY resolved_date ASC	apache-pig
SELECT resolved_date, COUNT(*) AS resolved_count FROM issue WHERE resolved_date IS NOT NULL GROUP BY resolved_date ORDER BY resolved_date	apache-pig
SELECT resolved_date, COUNT(*) AS count FROM issue WHERE resolved_date IS NOT NULL GROUP BY resolved_date ORDER BY resolved_date ASC	apache-pig
SELECT committed_date, COUNT(commit_hash) AS num_commits FROM change_set GROUP BY committed_date ORDER BY committed_date ASC	apache-pig
SELECT committed_date, COUNT(commit_hash) AS num_commits FROM change_set GROUP BY committed_date ORDER BY committed_date ASC	apache-pig
SELECT committed_date, COUNT(commit_hash) AS num_commits FROM change_set GROUP BY committed_date ORDER BY committed_date ASC	apache-pig
SELECT committed_date, COUNT(commit_hash) AS commit_count FROM change_set GROUP BY committed_date 	apache-pig
SELECT committed_date, COUNT(*) AS commit_count FROM change_set GROUP BY committed_date 	apache-pig
SELECT committed_date, COUNT(commit_hash) AS commit_count FROM change_set GROUP BY committed_date ORDER BY committed_date	apache-pig
SELECT committed_date, COUNT(commit_hash) AS commit_count FROM change_set GROUP BY committed_date ORDER BY committed_date ASC	apache-pig
SELECT issue_id, resolved_date FROM issue WHERE resolution = 'Resolved' AND assignee = 'Daniel Ward' ORDER BY resolved_date DESC 	apache-pig
SELECT issue_id, resolved_date_zoned FROM issue WHERE resolution = 'Resolved' AND assignee = 'Daniel Ward' ORDER BY resolved_date_zoned DESC 	apache-pig
SELECT issue_id, resolved_date FROM issue WHERE assignee = 'Daniel Ward' AND resolution IS NOT NULL ORDER BY resolved_date DESC 	apache-pig
SELECT issue_id, resolved_date FROM issue WHERE assignee = 'Daniel Ward' AND resolution IS NOT NULL ORDER BY resolved_date DESC, issue_id ASC 	apache-pig
SELECT issue_id, resolved_date FROM issue WHERE assignee = 'Daniel Ward' AND resolution IS NOT NULL ORDER BY resolved_date DESC 	apache-pig
SELECT issue_id, resolved_date FROM issue WHERE assignee = 'Daniel Ward' AND resolution IS NOT NULL ORDER BY resolved_date DESC 	apache-pig
SELECT issue_id, resolved_date FROM issue WHERE assignee = 'Daniel Ward' AND resolution IS NOT NULL ORDER BY resolved_date DESC 	apache-pig
SELECT COUNT(*)  FROM issue  WHERE assignee = 'John Stark'  AND resolved_date >= '2014-10-01'  AND resolved_date <= '2014-10-31' 	apache-pig
SELECT COUNT(*)  FROM issue  WHERE resolved_date >= '2014-10-01'  AND resolved_date <= '2014-10-31'  AND assignee = 'John Stark' 	apache-pig
SELECT COUNT(*)  FROM issue  WHERE resolved_date >= '2014-10-01'  AND resolved_date < '2014-11-01'  AND assignee = 'John Stark' 	apache-pig
SELECT COUNT(*)  FROM issue  WHERE resolution IS NOT NULL  AND resolved_date >= '2014-10-01'  AND resolved_date < '2014-11-01'  AND assignee = 'John Stark'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE resolved_date >= '2014-10-01'  AND resolved_date <= '2014-10-31'  AND assignee = 'John Stark'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE assignee = 'John Stark'  AND resolved_date >= '2014-10-01'  AND resolved_date <= '2014-10-31' 	apache-pig
SELECT * FROM issue WHERE resolved_date >= '2014-10-01' AND resolved_date <= '2014-10-31' AND assignee = 'John Stark'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE created_date >= '2015-01-01' AND created_date <= '2015-04-30'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE created_date >= '2015-01-01'  AND created_date < '2015-05-01' 	apache-pig
SELECT COUNT(*)  FROM issue  WHERE created_date >= '2015-01-01' AND created_date < '2015-04-01' 	apache-pig
SELECT COUNT(*)  FROM issue  WHERE created_date >= '2015-01-01' AND created_date < '2015-04-01' 	apache-pig
SELECT COUNT(*)  FROM issue  WHERE created_date >= '2015-01-01' AND created_date <= '2015-04-30'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE created_date >= '2015-01-01' AND created_date <= '2015-04-30'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE created_date >= '2015-01-01' AND created_date <= '2015-04-30'	apache-pig
SELECT created_date FROM issue GROUP BY created_date ORDER BY COUNT(*) DESC LIMIT 1	apache-pig
SELECT created_date FROM issue GROUP BY created_date ORDER BY COUNT(*) DESC LIMIT 1	apache-pig
SELECT created_date FROM issue GROUP BY created_date ORDER BY COUNT(*) DESC LIMIT 1	apache-pig
SELECT created_date, COUNT(*) AS num_issues FROM issue GROUP BY created_date ORDER BY num_issues DESC LIMIT 1	apache-pig
SELECT created_date, COUNT(issue_id) AS issue_count FROM issue GROUP BY created_date ORDER BY issue_count DESC LIMIT 1	apache-pig
SELECT created_date, COUNT(issue_id) AS issue_count FROM issue GROUP BY created_date ORDER BY issue_count DESC LIMIT 1	apache-pig
SELECT created_date, COUNT(issue_id) AS issue_count FROM issue GROUP BY created_date ORDER BY issue_count DESC LIMIT 1	apache-pig
SELECT resolved_date FROM issue WHERE resolved_date IS NOT NULL GROUP BY resolved_date ORDER BY COUNT(*) DESC LIMIT 1	apache-pig
SELECT resolved_date FROM issue WHERE resolved_date IS NOT NULL GROUP BY resolved_date ORDER BY COUNT(*) DESC LIMIT 1	apache-pig
SELECT resolved_date FROM issue WHERE resolved_date IS NOT NULL GROUP BY resolved_date ORDER BY COUNT(*) DESC LIMIT 1	apache-pig
SELECT resolved_date FROM issue WHERE resolution IS NOT NULL GROUP BY resolved_date ORDER BY COUNT(*) DESC LIMIT 1	apache-pig
SELECT resolved_date FROM issue WHERE resolved_date IS NOT NULL GROUP BY resolved_date ORDER BY COUNT(issue_id) DESC LIMIT 1	apache-pig
SELECT resolved_date, COUNT(issue_id) AS resolved_count FROM issue WHERE resolved_date IS NOT NULL GROUP BY resolved_date ORDER BY resolved_count DESC LIMIT 1	apache-pig
SELECT resolved_date, COUNT(issue_id) AS count_resolved FROM issue WHERE resolved_date IS NOT NULL GROUP BY resolved_date ORDER BY count_resolved DESC LIMIT 1	apache-pig
SELECT COUNT(*) FROM issue	apache-pig
SELECT COUNT(*) AS num_issues FROM issue 	apache-pig
SELECT COUNT(*) AS total_issues FROM issue	apache-pig
SELECT COUNT(*) FROM issue	apache-pig
SELECT COUNT(*)  FROM issue  WHERE issue_id LIKE 'PIG-%' 	apache-pig
SELECT COUNT(*) FROM issue	apache-pig
SELECT COUNT(*) FROM issue	apache-pig
SELECT COUNT(DISTINCT type) AS unique_issue_types FROM issue 	apache-pig
SELECT COUNT(DISTINCT type) AS num_issue_types FROM issue 	apache-pig
SELECT COUNT(DISTINCT type) AS issue_type_count FROM issue 	apache-pig
SELECT COUNT(DISTINCT type) AS num_issue_types FROM issue 	apache-pig
SELECT COUNT(DISTINCT type) AS unique_issue_types FROM issue 	apache-pig
SELECT COUNT(DISTINCT type) AS num_issue_types FROM issue 	apache-pig
SELECT COUNT(DISTINCT type) AS num_issue_types FROM issue 	apache-pig
SELECT type, COUNT(*) AS num_occurrences FROM issue GROUP BY type	apache-pig
SELECT type, COUNT(*) AS issue_count FROM issue GROUP BY type	apache-pig
SELECT issue.type, COUNT(*) AS occurrence_count FROM issue GROUP BY issue.type	apache-pig
SELECT type, COUNT(*) AS issue_count FROM issue GROUP BY type	apache-pig
SELECT type, COUNT(*) AS count FROM issue GROUP BY type	apache-pig
SELECT type, COUNT(*) AS count FROM issue GROUP BY type	apache-pig
SELECT type, COUNT(*) AS num_occurrences FROM issue GROUP BY type	apache-pig
SELECT COUNT(DISTINCT priority) AS distinct_priorities FROM issue 	apache-pig
SELECT COUNT(DISTINCT priority) AS num_priorities FROM issue 	apache-pig
SELECT COUNT(DISTINCT priority) AS priority_count FROM issue 	apache-pig
SELECT COUNT(DISTINCT priority) AS num_priorities FROM issue 	apache-pig
SELECT COUNT(DISTINCT priority) AS unique_priority_types FROM issue 	apache-pig
SELECT COUNT(DISTINCT priority) AS num_priorities FROM issue 	apache-pig
SELECT COUNT(DISTINCT priority) AS num_priorities FROM issue 	apache-pig
SELECT priority, COUNT(*) AS num_occurrences FROM issue GROUP BY priority	apache-pig
SELECT priority, COUNT(*) AS issue_count FROM issue GROUP BY priority	apache-pig
SELECT priority, COUNT(*) AS issue_count FROM issue GROUP BY priority	apache-pig
SELECT priority, COUNT(issue_id) AS issue_count FROM issue GROUP BY priority	apache-pig
SELECT priority, COUNT(*) AS issue_count FROM issue GROUP BY priority	apache-pig
SELECT priority, COUNT(*) AS issue_count FROM issue GROUP BY priority	apache-pig
SELECT priority, COUNT(*) AS issue_count FROM issue GROUP BY priority	apache-pig
SELECT COUNT(DISTINCT status) AS distinct_statuses_count FROM issue 	apache-pig
SELECT COUNT(DISTINCT status) AS num_statuses FROM issue 	apache-pig
SELECT COUNT(DISTINCT status) AS num_status_types FROM issue 	apache-pig
SELECT COUNT(DISTINCT status) AS num_status_types FROM issue 	apache-pig
SELECT COUNT(DISTINCT status) AS num_distinct_status_types FROM issue 	apache-pig
SELECT COUNT(DISTINCT status) AS num_statuses FROM issue 	apache-pig
SELECT COUNT(DISTINCT status) AS unique_status_count FROM issue 	apache-pig
SELECT COUNT(DISTINCT resolution) AS distinct_resolutions FROM issue 	apache-pig
SELECT resolution, COUNT(*) AS count FROM issue WHERE resolution IS NOT NULL GROUP BY resolution	apache-pig
SELECT resolution, COUNT(*) AS count FROM issue WHERE resolution IS NOT NULL GROUP BY resolution	apache-pig
SELECT DISTINCT resolution FROM issue WHERE issue_id IN (  SELECT issue_id   FROM issue_fix_version   WHERE fix_version LIKE 'pig-%' ) AND resolution IS NOT NULL	apache-pig
SELECT resolution, COUNT(*) AS count FROM issue GROUP BY resolution	apache-pig
SELECT COUNT(DISTINCT resolution) AS num_resolutions FROM issue 	apache-pig
SELECT COUNT(DISTINCT resolution) AS unique_resolutions FROM issue 	apache-pig
SELECT COUNT(DISTINCT assignee)  FROM issue 	apache-pig
SELECT COUNT(DISTINCT assignee_username) AS num_developers FROM issue WHERE assignee IS NOT NULL 	apache-pig
SELECT COUNT(DISTINCT assignee_username)  FROM issue WHERE assignee_username IS NOT NULL 	apache-pig
SELECT COUNT(DISTINCT username) AS num_developers FROM issue_comment 	apache-pig
SELECT COUNT(DISTINCT assignee) AS unique_assignees FROM issue 	apache-pig
SELECT COUNT(DISTINCT assignee) AS num_assignees FROM issue 	apache-pig
SELECT COUNT(DISTINCT assignee) AS num_assignees FROM issue 	apache-pig
SELECT assignee, COUNT(*) as num_occurrences FROM issue GROUP BY assignee 	apache-pig
SELECT assignee, COUNT(issue_id) AS issue_count FROM issue GROUP BY assignee	apache-pig
SELECT assignee, COUNT(issue_id) AS num_issues FROM issue GROUP BY assignee	apache-pig
SELECT assignee, COUNT(*) AS assignee_count FROM issue WHERE project = 'Apache PIG' GROUP BY assignee ORDER BY assignee_count DESC	apache-pig
SELECT assignee, COUNT(*) AS occurrences FROM issue WHERE assignee IS NOT NULL GROUP BY assignee	apache-pig
SELECT assignee, COUNT(*) AS assignee_count FROM issue GROUP BY assignee ORDER BY assignee_count DESC	apache-pig
SELECT assignee, COUNT(*) AS num_occurrences FROM issue GROUP BY assignee	apache-pig
SELECT COUNT(DISTINCT assignee_username)  FROM issue 	apache-pig
SELECT issue_attachment.username, COUNT(*) AS count FROM issue_attachment JOIN issue ON issue_attachment.issue_id = issue.issue_id JOIN jira_repository ON issue_attachment.issue_id LIKE CONCAT(jira_repository.key, '-%') WHERE jira_repository.base_url LIKE '%Apache%Pig%' GROUP BY issue_attachment.username ORDER BY count DESC	apache-pig
SELECT assignee_username, COUNT(*) AS count FROM issue GROUP BY assignee_username ORDER BY count DESC	apache-pig
SELECT COUNT(DISTINCT assignee_username)  FROM issue WHERE assignee_username IS NOT NULL 	apache-pig
SELECT COUNT(DISTINCT assignee_username) AS num_assignees FROM issue 	apache-pig
SELECT COUNT(DISTINCT assignee_username) AS unique_assignees FROM issue 	apache-pig
SELECT COUNT(DISTINCT assignee_username)  FROM issue 	apache-pig
SELECT assignee_username, COUNT(*) AS num_occurrences FROM issue WHERE assignee_username IS NOT NULL GROUP BY assignee_username	apache-pig
SELECT assignee_username, COUNT(*) AS occurrences FROM issue GROUP BY assignee_username ORDER BY occurrences DESC	apache-pig
SELECT assignee_username, COUNT(issue_id) AS issue_count FROM issue GROUP BY assignee_username	apache-pig
SELECT assignee_username, COUNT(issue_id) AS issue_count FROM issue GROUP BY assignee_username	apache-pig
SELECT assignee_username, COUNT(*) AS count FROM issue GROUP BY assignee_username	apache-pig
SELECT assignee_username, COUNT(*) AS count FROM issue WHERE assignee_username IS NOT NULL GROUP BY assignee_username	apache-pig
SELECT assignee_username, COUNT(*) AS count FROM issue WHERE assignee_username IS NOT NULL GROUP BY assignee_username ORDER BY count DESC	apache-pig
SELECT COUNT(DISTINCT reporter)  FROM issue 	apache-pig
SELECT COUNT(DISTINCT username) AS num_developers FROM issue_attachment UNIONSELECT COUNT(DISTINCT username) AS num_developers FROM issue_comment UNIONSELECT COUNT(DISTINCT username) AS num_developers FROM issue_changelog 	apache-pig
SELECT COUNT(DISTINCT reporter) AS unique_developers FROM issue 	apache-pig
SELECT reporter, COUNT(*) AS frequency FROM issue WHERE type = 'Apache Pig' GROUP BY reporter	apache-pig
SELECT COUNT(DISTINCT reporter) AS unique_reporters FROM issue 	apache-pig
SELECT COUNT(DISTINCT reporter) AS num_reporters FROM issue 	apache-pig
SELECT COUNT(DISTINCT reporter) AS num_reporters FROM issue 	apache-pig
SELECT username, COUNT(*) AS comment_count FROM issue_comment GROUP BY username	apache-pig
SELECT username, COUNT(*) AS comment_count FROM issue_comment GROUP BY username	apache-pig
SELECT username, COUNT(*) AS comment_count FROM issue_comment GROUP BY username	apache-pig
SELECT username, COUNT(*) AS num_occurrences FROM issue_comment GROUP BY username	apache-pig
SELECT username, COUNT(*) AS num_comments FROM issue_comment GROUP BY username	apache-pig
SELECT username, COUNT(*) AS comment_count FROM issue_comment GROUP BY username ORDER BY comment_count DESC	apache-pig
SELECT username, COUNT(*) AS comment_count FROM issue_comment GROUP BY username ORDER BY comment_count DESC	apache-pig
SELECT reporter, COUNT(*) AS num_occurrences FROM issue GROUP BY reporter	apache-pig
SELECT reporter, COUNT(*) AS occurrences FROM issue GROUP BY reporter	apache-pig
SELECT reporter, COUNT(issue_id) AS issue_count FROM issue GROUP BY reporter	apache-pig
SELECT reporter, COUNT(issue_id) AS num_issues FROM issue GROUP BY reporter	apache-pig
SELECT reporter, COUNT(*) AS mentions FROM issue GROUP BY reporter ORDER BY mentions DESC	apache-pig
SELECT reporter, COUNT(*) AS count FROM issue GROUP BY reporter	apache-pig
SELECT reporter, COUNT(*) AS num_occurrences FROM issue GROUP BY reporter	apache-pig
SELECT COUNT(DISTINCT reporter_username)  FROM issue 	apache-pig
SELECT COUNT(DISTINCT reporter_username)  FROM issue 	apache-pig
SELECT COUNT(DISTINCT username) AS unique_usernames FROM issue 	apache-pig
SELECT COUNT(DISTINCT reporter_username)  FROM issue 	apache-pig
SELECT reporter_username, COUNT(DISTINCT issue_id) AS frequency FROM issue GROUP BY reporter_username ORDER BY frequency DESC	apache-pig
SELECT reporter_username, COUNT(*) AS occurrences FROM issue GROUP BY reporter_username	apache-pig
SELECT COUNT(DISTINCT reporter_username) AS num_reporters FROM issue 	apache-pig
SELECT reporter_username, COUNT(*) AS num_occurrences FROM issue GROUP BY reporter_username	apache-pig
SELECT reporter_username AS username, COUNT(*) AS count FROM issue GROUP BY reporter_username ORDER BY count DESC	apache-pig
SELECT reporter_username, COUNT(*) AS frequency FROM issue GROUP BY reporter_username ORDER BY frequency DESC	apache-pig
SELECT username, COUNT(*) AS count FROM issue GROUP BY username	apache-pig
SELECT reporter_username, COUNT(*) AS count FROM issue GROUP BY reporter_username	apache-pig
SELECT reporter_username, COUNT(*) AS num_occurrences FROM issue GROUP BY reporter_username 	apache-pig
SELECT reporter_username, COUNT(*) AS count FROM issue GROUP BY reporter_username	apache-pig
SELECT COUNT(*) FROM change_set	apache-pig
SELECT COUNT(*) AS num_change_sets FROM change_set 	apache-pig
SELECT COUNT(*) AS num_change_sets FROM change_set 	apache-pig
SELECT COUNT(*) AS num_change_sets FROM change_set 	apache-pig
SELECT COUNT(*) FROM change_set	apache-pig
SELECT COUNT(commit_hash) AS num_commits FROM change_set 	apache-pig
I am sorry, I need more information to answer your question. Commits in which table? Please specify the table name.	apache-pig
SELECT COUNT(DISTINCT author) FROM change_set 	apache-pig
SELECT COUNT(DISTINCT author) AS total_distinct_authors FROM change_set 	apache-pig
SELECT COUNT(DISTINCT author) AS total_developers FROM change_set 	apache-pig
SELECT COUNT(DISTINCT author) AS committers FROM change_set 	apache-pig
SELECT COUNT(DISTINCT author)  FROM change_set 	apache-pig
SELECT COUNT(DISTINCT author) AS unique_authors FROM change_set 	apache-pig
SELECT COUNT(DISTINCT author) AS num_authors FROM change_set 	apache-pig
SELECT display_name, COUNT(*) AS comment_count FROM issue_comment GROUP BY display_name	apache-pig
SELECT username AS commenter_name, COUNT(*) AS comment_count FROM issue_comment GROUP BY username ORDER BY comment_count DESC	apache-pig
SELECT username, COUNT(*) AS comment_count FROM issue_comment GROUP BY username	apache-pig
SELECT username, COUNT(*) AS comment_count FROM issue_comment GROUP BY username	apache-pig
SELECT display_name, COUNT(*) AS comment_count FROM issue_comment GROUP BY display_name ORDER BY comment_count DESC	apache-pig
SELECT DISTINCT display_name, created_date_zoned FROM issue_comment ORDER BY created_date_zoned ASC	apache-pig
SELECT display_name, COUNT(DISTINCT username) AS developer_count FROM issue_comment GROUP BY display_name	apache-pig
SELECT DISTINCT username FROM issue_comment	apache-pig
SELECT DISTINCT username FROM issue_comment 	apache-pig
SELECT DISTINCT username FROM issue_comment 	apache-pig
SELECT DISTINCT username FROM issue_comment 	apache-pig
SELECT DISTINCT username FROM issue_comment 	apache-pig
SELECT DISTINCT username FROM issue_comment 	apache-pig
SELECT DISTINCT username FROM issue_comment 	apache-pig
SELECT COUNT(DISTINCT component) FROM issue_component	apache-pig
SELECT COUNT(DISTINCT component)  FROM issue_component  WHERE issue_id IN (    SELECT issue_id      FROM issue      WHERE project = 'Apache Pig' )	apache-pig
SELECT COUNT(DISTINCT component) AS num_components FROM issue_component 	apache-pig
SELECT COUNT(DISTINCT component)  FROM issue_component  WHERE issue_id IN (    SELECT issue_id      FROM issue      WHERE project = 'Apache Pig' )	apache-pig
SELECT COUNT(DISTINCT component)  FROM issue_component  WHERE issue_id IN (    SELECT issue_id      FROM issue      WHERE project = 'Apache Pig' )	apache-pig
SELECT COUNT(DISTINCT component) AS num_components FROM issue_component WHERE issue_id IN (  SELECT issue_id   FROM issue   WHERE summary LIKE '%Apache Pig%' )	apache-pig
SELECT COUNT(DISTINCT component) AS unique_components FROM issue_component	apache-pig
SELECT component, COUNT(*) AS occurrence FROM issue_component GROUP BY component	apache-pig
SELECT component, COUNT(*) AS count FROM issue_component GROUP BY component ORDER BY count DESC	apache-pig
SELECT component, COUNT(*) AS occurrences FROM issue_component GROUP BY component	apache-pig
SELECT COUNT(DISTINCT component) FROM issue_component	apache-pig
SELECT component, COUNT(*) AS mentions FROM issue_component GROUP BY component ORDER BY mentions DESC	apache-pig
SELECT component, COUNT(*) AS count FROM issue_component GROUP BY component	apache-pig
SELECT component, COUNT(*) AS count FROM issue_component GROUP BY component	apache-pig
SELECT COUNT(DISTINCT name) AS distinct_link_names FROM issue_link	apache-pig
SELECT COUNT(DISTINCT name) AS num_link_types FROM issue_link WHERE source_issue_id LIKE 'PIG-%' 	apache-pig
SELECT COUNT(DISTINCT source_issue_id, target_issue_id) AS unique_issue_links FROM issue_link	apache-pig
SELECT COUNT(DISTINCT source_issue_id, target_issue_id) AS num_distinct_issue_links FROM issue_link 	apache-pig
SELECT COUNT(DISTINCT name) AS unique_link_names FROM issue_link	apache-pig
SELECT COUNT(DISTINCT source_issue_id, target_issue_id) AS unique_issue_links FROM issue_link	apache-pig
SELECT COUNT(DISTINCT name) AS count_of_issue_link_names FROM issue_link	apache-pig
SELECT name, COUNT(*) AS occurrence FROM issue_link GROUP BY name	apache-pig
SELECT name, COUNT(*) AS link_count FROM issue_link GROUP BY name	apache-pig
SELECT name, outward_label, COUNT(*) AS occurrence FROM issue_link GROUP BY name, outward_label ORDER BY occurrence DESC	apache-pig
SELECT source_issue_id, target_issue_id, COUNT(*) AS link_occurence FROM issue_link GROUP BY source_issue_id, target_issue_id ORDER BY link_occurence DESC	apache-pig
SELECT name, COUNT(*) AS num_mentions FROM issue_link GROUP BY name	apache-pig
SELECT name AS issue_link_name, COUNT(*) AS mention_count FROM issue_link GROUP BY name	apache-pig
SELECT name, COUNT(*) AS link_count FROM issue_link il JOIN issue i ON il.source_issue_id = i.issue_id WHERE i.summary LIKE '%Apache Pig%' GROUP BY name ORDER BY link_count DESC	apache-pig
SELECT COUNT(*) FROM issue WHERE type = 'Bug'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE type = 'Bug' AND summary LIKE '%Apache Pig%' 	apache-pig
SELECT COUNT(*)  FROM issue  WHERE type = 'Bug'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE type = 'Bug'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE type = 'bug'	apache-pig
SELECT COUNT(*) AS num_bugs FROM issue WHERE type = 'bug'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE type = 'Bug'	apache-pig
SELECT DISTINCT assignee FROM issue 	apache-pig
SELECT DISTINCT assignee  FROM issue	apache-pig
SELECT DISTINCT assignee AS developer_name FROM issue WHERE assignee IS NOT NULL	apache-pig
SELECT DISTINCT assignee FROM issue 	apache-pig
SELECT DISTINCT assignee FROM issue WHERE assignee IS NOT NULL	apache-pig
SELECT DISTINCT assignee FROM issue WHERE assignee IS NOT NULL	apache-pig
SELECT DISTINCT assignee FROM issue WHERE assignee IS NOT NULL	apache-pig
SELECT DISTINCT assignee_username FROM issue WHERE assignee_username IS NOT NULL	apache-pig
SELECT DISTINCT assignee_username FROM issue WHERE assignee_username IS NOT NULL 	apache-pig
SELECT DISTINCT assignee_username FROM issue WHERE assignee_username IS NOT NULL 	apache-pig
SELECT DISTINCT assignee_username FROM issue WHERE assignee_username IS NOT NULL 	apache-pig
SELECT DISTINCT assignee_username FROM issue WHERE assignee_username IS NOT NULL	apache-pig
SELECT DISTINCT assignee_username FROM issue WHERE assignee_username IS NOT NULL	apache-pig
SELECT DISTINCT assignee_username FROM issue WHERE assignee_username IS NOT NULL	apache-pig
SELECT DISTINCT reporter FROM issue 	apache-pig
SELECT DISTINCT reporter_username FROM issue WHERE reporter_username IS NOT NULL 	apache-pig
SELECT DISTINCT reporter  FROM issue 	apache-pig
SELECT DISTINCT reporter FROM issue	apache-pig
SELECT DISTINCT reporter FROM issue 	apache-pig
SELECT DISTINCT reporter FROM issue	apache-pig
SELECT DISTINCT reporter FROM issue	apache-pig
SELECT DISTINCT reporter_username FROM issue 	apache-pig
SELECT DISTINCT reporter_username FROM issue WHERE type = 'Bug' 	apache-pig
SELECT DISTINCT reporter_username FROM issue WHERE reporter_username IS NOT NULL	apache-pig
SELECT DISTINCT reporter_username FROM issue WHERE reporter_username IS NOT NULL 	apache-pig
SELECT DISTINCT reporter_username FROM issue WHERE reporter_username IS NOT NULL	apache-pig
SELECT DISTINCT reporter_username FROM issue WHERE reporter_username IS NOT NULL	apache-pig
SELECT DISTINCT reporter_username FROM issue 	apache-pig
SELECT DISTINCT author FROM change_set 	apache-pig
SELECT cs.author FROM change_set cs JOIN git_repository gr ON cs.git_repository_id = gr.git_repository_id	apache-pig
SELECT DISTINCT author FROM change_set 	apache-pig
SELECT DISTINCT author FROM change_set 	apache-pig
SELECT DISTINCT author FROM change_set 	apache-pig
SELECT DISTINCT author FROM change_set 	apache-pig
SELECT DISTINCT author FROM change_set 	apache-pig
SELECT display_name, COUNT(*) AS num_messages FROM issue_comment WHERE issue_id = 'PIG-3592' GROUP BY display_name	apache-pig
SELECT username, COUNT(*) AS comment_count FROM issue_comment WHERE issue_id = 'PIG-3592' GROUP BY username	apache-pig
SELECT username, display_name, COUNT(*) AS comment_count FROM issue_comment WHERE issue_id = 'PIG-3592' GROUP BY username, display_name	apache-pig
SELECT username, COUNT(*) AS comment_count FROM issue_comment WHERE issue_id = 'PIG-3592' GROUP BY username	apache-pig
SELECT display_name, COUNT(*) AS message_count FROM issue_comment WHERE issue_id = 'PIG-3592' GROUP BY display_name	apache-pig
SELECT display_name, COUNT(message) AS message_count FROM issue_comment WHERE issue_id = 'PIG-3592' GROUP BY display_name	apache-pig
SELECT display_name, COUNT(*) AS message_count FROM issue_comment WHERE issue_id = 'PIG-3592' GROUP BY display_name	apache-pig
SELECT issue.issue_id, issue.created_date, issue.resolved_date, change_set.commit_hash, change_set.committed_date FROM issue LEFT JOIN change_set_link ON issue.issue_id = change_set_link.issue_id LEFT JOIN change_set ON change_set_link.commit_hash = change_set.commit_hash 	apache-pig
SELECT issue.issue_id, issue.created_date, issue.resolved_date, change_set.commit_hash, change_set.committed_date FROM issue JOIN change_set_link ON issue.issue_id = change_set_link.issue_id JOIN change_set ON change_set_link.commit_hash = change_set.commit_hash 	apache-pig
SELECT issue.issue_id, issue.created_date, issue.resolved_date, change_set.commit_hash, change_set.committed_date FROM issue JOIN change_set_link ON issue.issue_id = change_set_link.issue_id JOIN change_set ON change_set_link.commit_hash = change_set.commit_hash 	apache-pig
SELECT issue.issue_id, issue.created_date, issue.resolved_date, change_set.commit_hash, change_set.committed_date FROM issue LEFT JOIN change_set_link ON issue.issue_id = change_set_link.issue_id LEFT JOIN change_set ON change_set_link.commit_hash = change_set.commit_hash 	apache-pig
SELECT DISTINCT issue.issue_id, issue.created_date, issue.resolved_date, change_set.commit_hash, change_set.committed_date FROM issue_link JOIN issue ON issue_link.target_issue_id = issue.issue_id JOIN change_set_link ON issue_link.source_issue_id = change_set_link.issue_id JOIN change_set ON change_set_link.commit_hash = change_set.commit_hash	apache-pig
SELECT i.issue_id, i.created_date, i.resolved_date, c.commit_hash, c.committed_date FROM issue i JOIN change_set_link cl ON i.issue_id = cl.issue_id JOIN change_set c ON cl.commit_hash = c.commit_hash 	apache-pig
SELECT issue.issue_id, issue.created_date, issue.resolved_date, change_set.commit_hash, change_set.committed_date FROM issue JOIN change_set_link ON issue.issue_id = change_set_link.issue_id JOIN change_set ON change_set_link.commit_hash = change_set.commit_hash	apache-pig
SELECT DISTINCT issue.issue_id, issue.summary, change_set.commit_hash FROM issue_link JOIN issue ON issue_link.source_issue_id = issue.issue_id JOIN change_set_link ON issue_link.target_issue_id = change_set_link.issue_id JOIN change_set ON change_set_link.commit_hash = change_set.commit_hash	apache-pig
SELECT DISTINCT issue_id FROM change_set_link JOIN issue ON change_set_link.issue_id = issue.issue_id 	apache-pig
SELECT DISTINCT issue.issue_id, issue.summary, issue.description FROM issue JOIN issue_link ON issue.issue_id = issue_link.source_issue_id JOIN change_set_link ON issue_link.target_issue_id = change_set_link.issue_id 	apache-pig
SELECT DISTINCT issue.issue_id FROM issue INNER JOIN issue_link ON issue.issue_id = issue_link.source_issue_id INNER JOIN change_set_link ON issue_link.target_issue_id = change_set_link.issue_id 	apache-pig
SELECT * FROM issue WHERE issue_id IN (  SELECT issue_id   FROM change_set_link   GROUP BY issue_id ) 	apache-pig
SELECT * FROM issue WHERE issue.issue_id IN (  SELECT issue_id   FROM change_set_link ) 	apache-pig
SELECT issue.* FROM issue JOIN issue_link ON issue.issue_id = issue_link.source_issue_id JOIN change_set_link ON issue_link.target_issue_id = change_set_link.issue_id WHERE change_set_link.commit_hash = [insert commit hash here]	apache-pig
SELECT COUNT(DISTINCT issue_id)  FROM issue  WHERE issue_id NOT IN      (SELECT DISTINCT issue_id       FROM change_set_link) 	apache-pig
SELECT COUNT(DISTINCT issue_id)  FROM issue  LEFT JOIN change_set_link ON issue.issue_id = change_set_link.issue_id  WHERE commit_hash IS NULL 	apache-pig
SELECT COUNT(DISTINCT issue_id)  FROM issue  LEFT JOIN change_set_link ON issue.issue_id = change_set_link.issue_id  WHERE change_set_link.commit_hash IS NULL 	apache-pig
SELECT COUNT(*) AS num_commits_without_issue_link FROM change_set WHERE commit_hash NOT IN (  SELECT commit_hash   FROM change_set_link ) 	apache-pig
SELECT COUNT(DISTINCT issue_id)  FROM issue  LEFT JOIN change_set_link ON issue.issue_id = change_set_link.issue_id  WHERE change_set_link.commit_hash IS NULL	apache-pig
SELECT COUNT(*) AS num_issues_without_change_set_link FROM issue WHERE issue_id NOT IN (  SELECT issue_id   FROM change_set_link ) 	apache-pig
SELECT COUNT(DISTINCT issue_id) AS num_issues_no_link_to_change_set FROM issue WHERE issue_id NOT IN (SELECT DISTINCT issue_id FROM change_set_link) 	apache-pig
SELECT COUNT(DISTINCT issue_id) AS num_issues FROM change_set_link GROUP BY issue_id HAVING COUNT(commit_hash) > 1	apache-pig
SELECT COUNT(DISTINCT issue_id) FROM change_set_link GROUP BY issue_id HAVING COUNT(commit_hash) > 1	apache-pig
SELECT COUNT(DISTINCT issue_id) FROM change_set_link GROUP BY issue_id HAVING COUNT(commit_hash) > 1	apache-pig
SELECT COUNT(DISTINCT issue_id) FROM change_set_link GROUP BY issue_id HAVING COUNT(commit_hash) > 1	apache-pig
SELECT COUNT(DISTINCT issue_id)  FROM change_set_link  GROUP BY issue_id  HAVING COUNT(commit_hash) > 1	apache-pig
SELECT COUNT(DISTINCT issue_id) AS num_issues FROM change_set_link GROUP BY issue_id HAVING COUNT(commit_hash) > 1	apache-pig
SELECT COUNT(DISTINCT il.source_issue_id) AS num_issues FROM issue_link il JOIN change_set_link csl ON il.target_issue_id = csl.issue_id GROUP BY il.source_issue_id HAVING COUNT(DISTINCT csl.commit_hash) > 1	apache-pig
SELECT COUNT(DISTINCT issue_id) AS num_issues FROM change_set_link GROUP BY issue_id HAVING COUNT(commit_hash) = 1 	apache-pig
SELECT COUNT(DISTINCT issue_id) FROM change_set_link GROUP BY issue_id HAVING COUNT(commit_hash) = 1	apache-pig
SELECT COUNT(DISTINCT issue_id) AS num_issues FROM change_set_link GROUP BY issue_id HAVING COUNT(commit_hash) = 1	apache-pig
SELECT COUNT(DISTINCT issue_id) FROM change_set_link GROUP BY issue_id HAVING COUNT(commit_hash) = 1	apache-pig
SELECT COUNT(DISTINCT issue_id) AS num_issues FROM change_set_link GROUP BY issue_id HAVING COUNT(commit_hash) = 1	apache-pig
SELECT COUNT(DISTINCT issue_id) AS num_issues FROM change_set_link GROUP BY issue_id HAVING COUNT(commit_hash) = 1	apache-pig
SELECT COUNT(DISTINCT il.source_issue_id) AS num_issues FROM issue_link il LEFT JOIN change_set_link csl ON il.target_issue_id = csl.issue_id GROUP BY il.source_issue_id HAVING COUNT(csl.commit_hash) = 1	apache-pig
SELECT username, COUNT(DISTINCT issue_id) AS num_issues FROM issue_comment GROUP BY username	apache-pig
SELECT username, COUNT(DISTINCT issue_id) AS num_issues_commented FROM issue_comment GROUP BY username	apache-pig
SELECT username, COUNT(DISTINCT issue_id) AS comment_count FROM issue_comment GROUP BY username	apache-pig
SELECT username, COUNT(issue_id) AS comment_count FROM issue_comment GROUP BY username	apache-pig
SELECT username, COUNT(DISTINCT issue_id) AS issue_count FROM issue_comment GROUP BY username 	apache-pig
SELECT username, COUNT(DISTINCT issue_id) AS unique_issue_count FROM issue_comment GROUP BY username	apache-pig
SELECT ic.username, COUNT(DISTINCT ic.issue_id) AS comment_count FROM issue_comment ic JOIN issue i ON ic.issue_id = i.issue_id WHERE ic.username != i.reporter_username AND ic.username != i.assignee_username GROUP BY ic.username	apache-pig
SELECT issue_comment.issue_id, COUNT(DISTINCT issue_comment.username) AS unique_usernames FROM issue_comment GROUP BY issue_comment.issue_id HAVING COUNT(issue_comment.username) > 0	apache-pig
SELECT issue_id, COUNT(DISTINCT username) AS num_commenters FROM issue_comment GROUP BY issue_id	apache-pig
SELECT issue.issue_id, COUNT(DISTINCT issue_comment.username) AS num_developers FROM issue LEFT JOIN issue_comment ON issue.issue_id = issue_comment.issue_id GROUP BY issue.issue_id	apache-pig
SELECT issue_id, COUNT(DISTINCT username) AS unique_commenters FROM issue_comment GROUP BY issue_id	apache-pig
SELECT issue_id, COUNT(DISTINCT username) AS username_count FROM issue_comment GROUP BY issue_id	apache-pig
SELECT issue_id, COUNT(DISTINCT username) AS commenters_count FROM issue_comment GROUP BY issue_id 	apache-pig
SELECT ic.issue_id, COUNT(DISTINCT ic.username) AS distinct_usernames FROM issue_comment ic GROUP BY ic.issue_id 	apache-pig
SELECT issue_id, COUNT(*) AS num_messages FROM issue_comment GROUP BY issue_id 	apache-pig
SELECT issue_id, COUNT(*) AS num_comments FROM issue_comment GROUP BY issue_id HAVING COUNT(*) >= 1	apache-pig
SELECT issue_id, COUNT(*) AS comment_count FROM issue_comment GROUP BY issue_id	apache-pig
SELECT issue_id, COUNT(*) AS num_comments FROM issue_comment GROUP BY issue_id	apache-pig
SELECT issue_id, COUNT(*) AS message_count FROM issue_comment GROUP BY issue_id	apache-pig
SELECT issue_id, COUNT(*) AS comment_count FROM issue_comment GROUP BY issue_id	apache-pig
SELECT issue_id, COUNT(*) AS num_messages FROM issue_comment GROUP BY issue_id	apache-pig
SELECT issue_id, summary, description FROM issue	apache-pig
SELECT issue_id, summary, description FROM issue	apache-pig
SELECT issue_id, summary, description FROM issue	apache-pig
SELECT issue_id, summary, description FROM issue	apache-pig
SELECT issue_id, summary, description FROM issue	apache-pig
SELECT issue_id, summary, description FROM issue	apache-pig
SELECT issue_id, summary, description FROM issue	apache-pig
SELECT commit_hash FROM change_set WHERE committed_date_zoned >= (  SELECT created_date_zoned   FROM issue   WHERE issue_id = 'PIG-3592' ) AND committed_date_zoned <= (  SELECT resolved_date_zoned   FROM issue   WHERE issue_id = 'PIG-3592' ) 	apache-pig
SELECT commit_hash FROM change_set WHERE committed_date >= (    SELECT created_date     FROM issue     WHERE issue_id = 'PIG-3592' ) AND committed_date <= (    SELECT resolved_date     FROM issue     WHERE issue_id = 'PIG-3592' ) 	apache-pig
SELECT commit_hash FROM change_set_link WHERE issue_id = 'PIG-3592' AND commit_hash IN (    SELECT commit_hash     FROM change_set     WHERE committed_date_zoned >= (        SELECT created_date_zoned         FROM issue         WHERE issue_id = 'PIG-3592'     )     AND committed_date_zoned <= (        SELECT resolved_date_zoned         FROM issue         WHERE issue_id = 'PIG-359'	apache-pig
SELECT commit_hash FROM change_set WHERE committed_date_zoned >= (  SELECT created_date_zoned   FROM issue   WHERE issue_id = 'PIG-3592' ) AND committed_date_zoned <= (  SELECT COALESCE(resolved_date_zoned, NOW())   FROM issue   WHERE issue_id = 'PIG-3592' ) 	apache-pig
SELECT DISTINCT change_set_link.commit_hash FROM change_set_link JOIN change_set ON change_set_link.commit_hash = change_set.commit_hash JOIN issue ON change_set_link.issue_id = issue.issue_id WHERE issue.issue_id = 'PIG-3592' AND change_set.committed_date_zoned BETWEEN issue.created_date_zoned AND issue.resolved_date_zoned	apache-pig
SELECT commit_hash  FROM change_set  WHERE committed_date >= (SELECT created_date FROM issue WHERE issue_id = 'PIG-3592')  AND committed_date <= (SELECT resolved_date FROM issue WHERE issue_id = 'PIG-3592') 	apache-pig
SELECT DISTINCT change_set_link.commit_hash FROM change_set_link JOIN change_set ON change_set_link.commit_hash = change_set.commit_hash JOIN issue ON change_set_link.issue_id = issue.issue_id WHERE issue.issue_id = 'PIG-3592' AND change_set.committed_date_zoned BETWEEN issue.created_date_zoned AND issue.resolved_date_zoned 	apache-pig
SELECT COUNT(*) AS num_issues FROM issue WHERE type IN ('bug', 'improvement') AND project = 'Apache PIG'	apache-pig
SELECT COUNT(*)  FROM issue  WHERE type IN ('Bug', 'Improvement')  AND issue_id IN (    SELECT issue_id      FROM issue_fix_version      WHERE fix_version LIKE 'Apache PIG%' )	apache-pig
SELECT COUNT(*)  FROM issue  WHERE type IN ('Bug', 'Improvement')  AND project = 'Apache Pig'	apache-pig
SELECT    meta.value AS issue_type,    COUNT(DISTINCT issue_fix_version.issue_id) AS count  FROM    meta    JOIN issue_fix_version ON meta.key = 'issue_type' AND issue_fix_version.fix_version LIKE '%bug%' AND issue_fix_version.issue_id = meta.value  GROUP BY    meta.value  UNION SELECT    meta.value AS issue_type,    COUNT(DISTINCT issue_fix_version.issue_id) AS count  FROM  	apache-pig
SELECT type, COUNT(*) AS count FROM issue WHERE type IN ('Bug', 'Improvement') GROUP BY type	apache-pig
SELECT type, COUNT(*) AS count FROM issue WHERE type IN ('Bug', 'Improvement') GROUP BY type	apache-pig
SELECT type, COUNT(*) AS count FROM issue WHERE type IN ('Bug', 'Improvement') GROUP BY type	apache-pig
SELECT COUNT(DISTINCT file_path)  FROM code_change  WHERE commit_hash IN (    SELECT commit_hash      FROM change_set_link      WHERE issue_id = 'PIG-3599' ) 	apache-pig
SELECT COUNT(DISTINCT file_path) AS num_files_modified FROM code_change INNER JOIN change_set ON code_change.commit_hash = change_set.commit_hash INNER JOIN change_set_link ON change_set.commit_hash = change_set_link.commit_hash INNER JOIN issue_fix_version ON change_set_link.issue_id = issue_fix_version.issue_id WHERE issue_fix_version.fix_version = 'PIG-3599' 	apache-pig
SELECT COUNT(file_path) FROM code_change JOIN change_set_link ON code_change.commit_hash = change_set_link.commit_hash JOIN issue_fix_version ON change_set_link.issue_id = issue_fix_version.issue_id WHERE issue_fix_version.issue_id = 'PIG-3599'	apache-pig
SELECT COUNT(DISTINCT file_path)  FROM code_change  WHERE commit_hash IN (    SELECT commit_hash      FROM change_set_link      WHERE issue_id = 'PIG-3599' ) 	apache-pig
SELECT COUNT(file_path)  FROM code_change  WHERE commit_hash IN (    SELECT commit_hash      FROM change_set_link      WHERE issue_id = 'PIG-3599' )  AND file_path IS NOT NULL	apache-pig
SELECT COUNT(DISTINCT code_change.file_path)  FROM code_change  INNER JOIN change_set_link ON code_change.commit_hash = change_set_link.commit_hash  INNER JOIN issue_fix_version ON change_set_link.issue_id = issue_fix_version.issue_id  WHERE issue_fix_version.issue_id = 'PIG-3599'	apache-pig
SELECT COUNT(DISTINCT file_path)  FROM code_change  WHERE commit_hash IN (    SELECT commit_hash      FROM change_set_link      WHERE issue_id = 'PIG-3599' ) 	apache-pig
SELECT COUNT(DISTINCT cc.file_path) AS min_file_paths FROM issue AS i JOIN issue_fix_version AS ifv ON i.issue_id = ifv.issue_id JOIN code_change AS cc ON ifv.fix_version = cc.commit_hash WHERE i.type = 'Bug' 	apache-pig
SELECT MIN(sum_added_lines + sum_removed_lines) AS min_files_modified FROM code_change WHERE commit_hash IN (    SELECT commit_hash     FROM change_set_link     JOIN issue_fix_version ON change_set_link.issue_id = issue_fix_version.issue_id     WHERE fix_version = 'bugfix' ) 	apache-pig
SELECT MIN(sum_added_lines + sum_removed_lines) AS min_modified_files FROM code_change 	apache-pig
SELECT MIN(sum_added_lines + sum_removed_lines) AS min_modified_files FROM code_change 	apache-pig
SELECT MIN(sum_added_lines + sum_removed_lines) AS min_file_paths FROM code_change INNER JOIN change_set_link ON code_change.commit_hash = change_set_link.commit_hash INNER JOIN issue_fix_version ON change_set_link.issue_id = issue_fix_version.issue_id INNER JOIN issue ON issue_fix_version.issue_id = issue.issue_id WHERE issue.type = 'Bug' 	apache-pig
SELECT COUNT(DISTINCT cc.issue_id) AS min_file_paths FROM code_change cc JOIN issue i ON cc.commit_hash = i.resolved_date WHERE i.type = 'Bug' GROUP BY cc.issue_id ORDER BY min_file_paths ASC LIMIT 1	apache-pig
SELECT MIN(file_path_count) AS min_file_paths_per_issue_id FROM (  SELECT COUNT(DISTINCT cc.file_path) AS file_path_count   FROM issue i   JOIN change_set_link csl ON i.issue_id = csl.issue_id   JOIN change_set cs ON csl.commit_hash = cs.commit_hash   JOIN code_change cc ON cs.commit_hash = cc.commit_hash   WHERE i.type = 'Bug'   GROUP BY i.issue_id 	apache-pig
SELECT COUNT(*)  FROM issue_link  WHERE source_issue_id IN (SELECT issue_id FROM issue WHERE type = 'bug')  AND target_issue_id IN (SELECT issue_id FROM issue WHERE type = 'improvement')	apache-pig
SELECT COUNT(DISTINCT il.source_issue_id) AS num_bugs_linked_to_improvements FROM issue_link il WHERE il.name = 'Improvement-Bug Link' 	apache-pig
SELECT COUNT(*)  FROM issue_link  WHERE source_issue_id IN (SELECT issue_id FROM issue WHERE type = 'Bug')  AND target_issue_id IN (SELECT issue_id FROM issue WHERE type = 'Improvement') 	apache-pig
SELECT COUNT(*) AS linked_issues_count FROM issue_link il JOIN issue i1 ON il.source_issue_id = i1.issue_id AND i1.type = 'Bug' JOIN issue i2 ON il.target_issue_id = i2.issue_id AND i2.type = 'Improvement' 	apache-pig
SELECT COUNT(*)  FROM issue_link  WHERE source_issue_id IN (    SELECT issue_id      FROM issue      WHERE type = 'bug' )  AND target_issue_id IN (    SELECT issue_id      FROM issue      WHERE type = 'improvement' ) 	apache-pig
SELECT COUNT(*)  FROM issue_link  WHERE source_issue_id IN (SELECT issue_id FROM issue WHERE type = 'bug')  AND target_issue_id IN (SELECT issue_id FROM issue WHERE type = 'improvement')	apache-pig
SELECT COUNT(*) AS linked_issues_count FROM issue_link il JOIN issue i1 ON il.source_issue_id = i1.issue_id AND i1.type = 'bug' JOIN issue i2 ON il.target_issue_id = i2.issue_id AND i2.type = 'improvement' 	apache-pig
SELECT source_issue_id, target_issue_id FROM issue_link WHERE source_issue_id IN (    SELECT issue_id     FROM issue     WHERE type = 'Improvement' ) AND target_issue_id IN (    SELECT issue_id     FROM issue     WHERE type = 'Bug' )	apache-pig
SELECT DISTINCT il.source_issue_id FROM issue_link il JOIN issue i1 ON il.source_issue_id = i1.issue_id JOIN issue i2 ON il.target_issue_id = i2.issue_id WHERE i1.type = 'bug' AND i2.type = 'improvement' 	apache-pig
SELECT il.target_issue_id FROM issue_link il JOIN issue i1 ON il.source_issue_id = i1.issue_id AND i1.type = 'bug' JOIN issue i2 ON il.target_issue_id = i2.issue_id AND i2.type = 'improvement' 	apache-pig
SELECT il.source_issue_id FROM issue_link il JOIN issue i1 ON il.source_issue_id = i1.issue_id JOIN issue i2 ON il.target_issue_id = i2.issue_id WHERE i1.type = 'bug' AND i2.type = 'improvement' 	apache-pig
SELECT source_issue_id, target_issue_id FROM issue_link WHERE source_issue_id IN (    SELECT issue_id     FROM issue     WHERE type = 'bug' ) AND target_issue_id IN (    SELECT issue_id     FROM issue     WHERE type = 'improvement' )	apache-pig
SELECT source_issue_id, target_issue_id FROM issue_link WHERE source_issue_id IN (    SELECT issue_id     FROM issue     WHERE type = 'bug' ) AND target_issue_id IN (    SELECT issue_id     FROM issue     WHERE type = 'improvement' )	apache-pig
SELECT source_issue_id, target_issue_id FROM issue_link JOIN issue AS source_issue ON issue_link.source_issue_id = source_issue.issue_id JOIN issue AS target_issue ON issue_link.target_issue_id = target_issue.issue_id WHERE source_issue.type = 'bug' AND target_issue.type = 'improvement'	apache-pig
SELECT DISTINCT name FROM issue_link	apache-pig
SELECT DISTINCT name FROM issue_link 	apache-pig
SELECT DISTINCT name FROM issue_link WHERE source_issue_id LIKE 'PIG-%' AND target_issue_id LIKE 'PIG-%' 	apache-pig
SELECT DISTINCT source_issue_id, target_issue_id, name, outward_label, is_containment FROM issue_link	apache-pig
SELECT DISTINCT name FROM issue_link JOIN issue ON issue_link.source_issue_id = issue.issue_id WHERE issue.type = 'apache pig' 	apache-pig
SELECT DISTINCT name FROM issue_link WHERE source_issue_id IN (    SELECT issue_id     FROM issue     WHERE project = 'Apache Pig' ) OR target_issue_id IN (    SELECT issue_id     FROM issue     WHERE project = 'Apache Pig' )	apache-pig
SELECT DISTINCT name FROM issue_link	apache-pig
SELECT source.type AS source_type, target.type AS target_type, COUNT(*) AS count FROM issue_link JOIN issue AS source ON source.issue_id = issue_link.source_issue_id JOIN issue AS target ON target.issue_id = issue_link.target_issue_id WHERE issue_link.name = 'cloners' GROUP BY source.type, target.type 	apache-pig
SELECT i.type, COUNT(*) AS count FROM issue_link il JOIN issue i ON il.target_issue_id = i.issue_id WHERE il.name = 'cloners' GROUP BY i.type	apache-pig
SELECT i1.type, i2.type, COUNT(*) AS count FROM issue_link il JOIN issue i1 ON il.source_issue_id = i1.issue_id JOIN issue i2 ON il.target_issue_id = i2.issue_id WHERE il.name = 'Cloner' GROUP BY i1.type, i2.type ORDER BY count DESC	apache-pig
SELECT i.type, COUNT(*) as count FROM issue_link il JOIN issue i ON il.target_issue_id = i.issue_id WHERE il.name = 'cloners' GROUP BY i.type 	apache-pig
SELECT source.type AS source_type, target.type AS target_type, COUNT(*) AS count FROM issue_link JOIN issue AS source ON source.issue_id = issue_link.source_issue_id JOIN issue AS target ON target.issue_id = issue_link.target_issue_id WHERE issue_link.name = 'Cloners' GROUP BY source_type, target_type 	apache-pig
SELECT i1.type AS source_type, i2.type AS target_type, COUNT(*) AS count FROM issue_link il JOIN issue i1 ON il.source_issue_id = i1.issue_id JOIN issue i2 ON il.target_issue_id = i2.issue_id WHERE il.name = 'Cloners' GROUP BY i1.type, i2.type 	apache-pig
SELECT source.type AS source_type, target.type AS target_type, COUNT(*) AS combination_count FROM issue_link JOIN issue AS source ON source.issue_id = issue_link.source_issue_id JOIN issue AS target ON target.issue_id = issue_link.target_issue_id WHERE issue_link.name = 'Cloners' GROUP BY source.type, target.type 	apache-pig
SELECT source.type AS source_issue_type, target.type AS target_issue_type FROM issue_link JOIN issue AS source ON source.issue_id = issue_link.source_issue_id JOIN issue AS target ON target.issue_id = issue_link.target_issue_id WHERE issue_link.name = 'cloners' 	apache-pig
SELECT i.type FROM issue_link il JOIN issue i ON il.target_issue_id = i.issue_id WHERE il.name = 'cloners' 	apache-pig
SELECT DISTINCT i1.type, i2.type FROM issue_link il JOIN issue i1 ON il.source_issue_id = i1.issue_id JOIN issue i2 ON il.target_issue_id = i2.issue_id WHERE il.name = 'Cloners' 	apache-pig
SELECT DISTINCT i.type FROM issue_link il JOIN issue i ON il.target_issue_id = i.issue_id WHERE il.name = 'Cloners' 	apache-pig
SELECT source.type AS source_issue_type, target.type AS target_issue_type FROM issue_link JOIN issue AS source ON source.issue_id = issue_link.source_issue_id JOIN issue AS target ON target.issue_id = issue_link.target_issue_id WHERE issue_link.name = 'Cloners' 	apache-pig
SELECT DISTINCT i1.type AS source_issue_type, i2.type AS target_issue_type FROM issue_link il JOIN issue i1 ON il.source_issue_id = i1.issue_id JOIN issue i2 ON il.target_issue_id = i2.issue_id WHERE il.name = 'Cloners' 	apache-pig
SELECT source.type AS source_issue_type, target.type AS target_issue_type FROM issue_link JOIN issue AS source ON source.issue_id = issue_link.source_issue_id JOIN issue AS target ON target.issue_id = issue_link.target_issue_id WHERE issue_link.name = 'Cloners' 	apache-pig
SELECT DISTINCT type FROM issue	apache-pig
SELECT DISTINCT type FROM issue	apache-pig
SELECT DISTINCT type FROM issue WHERE issue_id IN (    SELECT issue_id     FROM issue_fix_version     WHERE fix_version IN (        SELECT value         FROM meta         WHERE key = 'Apache Pig'     ) ) 	apache-pig
SELECT DISTINCT type FROM issue	apache-pig
SELECT DISTINCT type FROM issue	apache-pig
SELECT DISTINCT type FROM issue 	apache-pig
SELECT DISTINCT type FROM issue 	apache-pig
SELECT * FROM issue WHERE type = 'Bug'	apache-pig
SELECT * FROM issue WHERE type = 'Bug'	apache-pig
SELECT * FROM issue WHERE type = 'Bug'	apache-pig
SELECT * FROM issue WHERE type = 'Bug' AND issue_id IN (  SELECT issue_id   FROM issue_fix_version   WHERE fix_version LIKE 'Apache Pig%' )	apache-pig
SELECT * FROM issue WHERE type = 'Bug'	apache-pig
SELECT * FROM issue WHERE type = 'bug'	apache-pig
SELECT * FROM issue WHERE type = 'bug'	apache-pig
SELECT * FROM issue WHERE status = 'In Progress'	apache-pig
SELECT * FROM issue WHERE status != 'In Progress' 	apache-pig
SELECT * FROM issue WHERE status != 'In Progress' 	apache-pig
SELECT issue_id, summary, status FROM issue WHERE status != 'In Progress'	apache-pig
SELECT * FROM issue WHERE status != 'In Progress'	apache-pig
SELECT * FROM issue WHERE status != 'In Progress'	apache-pig
SELECT issue_id, status FROM issue WHERE status != 'In Progress'	apache-pig
SELECT COUNT(DISTINCT cc.file_path) AS max_file_paths FROM issue AS i JOIN change_set_link AS csl ON i.issue_id = csl.issue_id JOIN change_set AS cs ON csl.commit_hash = cs.commit_hash JOIN code_change AS cc ON cs.commit_hash = cc.commit_hash WHERE i.type = 'Improvement' GROUP BY i.issue_id ORDER BY max_file_paths DESC LIMIT 1	apache-pig
I am sorry, but the required information to answer this question is not available in the given tables. The tables provided do not have any information about the number of files modified to implement an improvement. Can I help you with any other question?	apache-pig
SELECT MAX(num_modified_files) AS max_modified_files FROM (  SELECT COUNT(*) AS num_modified_files   FROM change_set cs   JOIN code_change cc ON cs.commit_hash = cc.commit_hash   JOIN change_set_link csl ON cs.commit_hash = csl.commit_hash   GROUP BY csl.issue_id ) AS modified_files_per_bug 	apache-pig
SELECT MAX(total_modified_files) FROM (  SELECT COUNT(DISTINCT file_path) AS total_modified_files   FROM code_change   GROUP BY commit_hash   ) AS modified_files_per_commit JOIN change_set_link ON modified_files_per_commit.commit_hash = change_set_link.commit_hash JOIN issue_fix_version ON change_set_link.issue_id = issue_fix_version.issue_id 	apache-pig
SELECT MAX(num_file_paths) AS max_file_paths FROM (  SELECT COUNT(DISTINCT cc.file_path) AS num_file_paths   FROM issue i   JOIN change_set_link csl ON i.issue_id = csl.issue_id   JOIN change_set cs ON csl.commit_hash = cs.commit_hash   JOIN code_change cc ON cs.commit_hash = cc.commit_hash   WHERE i.type = 'Improvement'   GROUP BY i.issue_id ) AS	apache-pig
SELECT COUNT(DISTINCT code_change.file_path) AS max_file_paths FROM issue JOIN change_set_link ON issue.issue_id = change_set_link.issue_id JOIN change_set ON change_set_link.commit_hash = change_set.commit_hash JOIN code_change ON change_set.commit_hash = code_change.commit_hash WHERE issue.type = 'Improvement' GROUP BY issue.issue_id ORDER BY max_file_paths DESC LIMIT 1	apache-pig
SELECT MAX(file_path_count) AS max_file_paths_per_issue_id FROM (  SELECT COUNT(cc.file_path) AS file_path_count   FROM issue i   JOIN change_set_link csl ON i.issue_id = csl.issue_id   JOIN change_set cs ON csl.commit_hash = cs.commit_hash   JOIN code_change cc ON cs.commit_hash = cc.commit_hash   WHERE i.type = 'Improvement'   GROUP BY i.issue_id ) AS	apache-pig
