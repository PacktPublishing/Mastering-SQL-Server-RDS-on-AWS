SELECT DB_NAME(database_id), OBJECT_NAME(object_id), * 
FROM sys.dm_db_index_usage_stats;

SELECT session_id, login_name, last_request_end_time, cpu_time
FROM sys.dm_exec_sessions

SELECT DB_NAME(database_id), session_id, status, command, sql_handle
FROM sys.dm_exec_requests