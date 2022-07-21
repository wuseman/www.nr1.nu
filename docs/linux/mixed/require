# require

##### delete files older than 1 month in a directory

   require  'time';backup_dir = '/path';Dir.glob(backup_dir+"/*.sql").each{ |f| filetime = Time.parse(`mdls -name kMDItemContentCreationDate -raw #{f}`);monthago = Time.now - (30 * 60 * 60 * 24);`rm #{f}` if filetime < monthago }
