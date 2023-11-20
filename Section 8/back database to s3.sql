--- create full backup
exec msdb.dbo.rds_backup_database
	@source_db_name='AdventureWorks2014',
	@s3_arn_to_backup_to='arn:aws:s3:::rds-course-backups/AdventureWorks2014.bak',		
	@overwrite_s3_backup_file=1,
	@type='FULL',
	@number_of_files=1;

--track backup task
exec msdb.dbo.rds_task_status
	@db_name='AdventureWorks20141',
	@task_id=3;

--- create differential backup
exec msdb.dbo.rds_backup_database
	@source_db_name='AdventureWorks2014',
	@s3_arn_to_backup_to='arn:aws:s3:::rds-course-backups/AdventureWorks2014_diff.bak',		
	@overwrite_s3_backup_file=1,
	@type='DIFFERENTIAL',
	@number_of_files=1;

--Restore full backup
exec msdb.dbo.rds_restore_database
	@restore_db_name='AdventureWorks20141',
	@s3_arn_to_restore_from='arn:aws:s3:::rds-course-backups/AdventureWorks2014.bak',
	@with_norecovery=0,	
	@type='FULL';

--Restore full backup with mulitple files
exec msdb.dbo.rds_restore_database
	@restore_db_name='AdventureWorks20141',
	@s3_arn_to_restore_from='arn:aws:s3:::rds-course-backups/AdventureWorks2014*',
	@with_norecovery=0,	
	@type='FULL';

-- Restore differential
exec msdb.dbo.rds_restore_database
	@restore_db_name='AdventureWorks20141',
	@s3_arn_to_restore_from='arn:aws:s3:::rds-course-backups/AdventureWorks2014_diff.bak',	
	@with_norecovery=0,
	@type='DIFFERENTIAL';