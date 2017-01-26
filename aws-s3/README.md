#aws-s3

Use `hadoop distcp` to download an s3 bucket to local hdfs. 

## AWS Authentication
You must have 
[AWS credentials][http://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html]
in order to access the s3 buckets.

The default location for credentials is `~/.aws/credentials``. The script `set_credentials.sh` 
is a helper for exporting the credentials as environment variables.
