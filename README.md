# kinesis_poc

### Build AWS kinesis stream to ingest and store data in DynamoDB

1. Build infrastructure. This makes the assumption you have terraform, aws cli/credentials correctly set up.

```
terraform init
terraform plan -out=plan.out
terraform apply plan.out
```
This will build a kinesis stream and DynamoDB table.

2. Input variables at top of ./record.sh

```
AWS_REGION=us-east-2
STREAM_NAME=kinesis_poc_stream
TABLE_NAME=kinesis_poc_table
TEST_DATA=test
```

3. Run ./record.sh
![record_sh.png](img%2Frecord_sh.png)
4. Check DynamoDB for storage of record
```
aws dynamodb --region us-east-2 get-item --table-name kinesis_poc_table --key='{"from_kinesis": {"S": "test"}}'

{
    "Item": {
        "from_kinesis": {
            "S": "test"
        }
    }
}
```