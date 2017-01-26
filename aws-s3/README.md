#aws-s3

Use `hadoop distcp` to download an s3 bucket to local hdfs. 

## AWS Authentication
You must have 
![AWS credentials](http://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html)
in order to access the s3 buckets.

The default location for credentials is `~/.aws/credentials``. The file `set_credentials.sh` 
is a one-liner for exporting the credentials as environment variables:
```
export $(cat ~/.aws/credentials | grep -v "^\[" | awk '{print toupper($1)$2$3 }')
```

## Syncing the Google Books ngrams dataset

The following image shows the HDFS write rate during a download of [Google Books Ngrams](http://storage.googleapis.com/books/ngrams/books/datasetsv2.html) for all English corpora.

![hadoop_s3.png](https://github.com/bigdata-vandy/data-getters/blob/master/images/hadoop_s3.png)
