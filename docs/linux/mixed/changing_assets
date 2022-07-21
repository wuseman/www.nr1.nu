# changing_assets

##### Get the list of local files that changed since their last upload in an S3 bucket

   changing_assets  = `s3cmd sync dry-run -P -M exclude=*.php delete-removed #{preprod_release_dir}/web/ #{s3_bucket} | grep -E 'delete:|upload:' | awk '{print $2}' | sed s_#{preprod_release_dir}/web__`

##### Get the list of local files that changed since their last upload in an S3 bucket

   changing_assets  = `s3cmd sync dry-run -P -M exclude=*.php delete-removed #{preprod_release_dir}/web/ #{s3_bucket} | grep -E 'delete:|upload:' | awk '{print $2}' | sed s_#{preprod_release_dir}/web__`
