# s3cmd

##### Delete All Objects From An S3 Bucket Using S3cmd

   s3cmd  ls s3://bucket.example.com | s3cmd del `awk '{print $4}'`

##### s3cmd du s3://bucket-name | awk '{print $0/1024/1024/1024" GB"}'

   s3cmd  du s3://bucket-name | awk '{print $0/1024/1024/1024" GB"}'

##### Delete All Objects From An S3 Bucket Using S3cmd

   s3cmd  ls s3://bucket.example.com | s3cmd del `awk '{print $4}'`

##### s3cmd du s3://bucket-name | awk '{print $0/1024/1024/1024" GB"}'

   s3cmd  du s3://bucket-name | awk '{print $0/1024/1024/1024" GB"}'
