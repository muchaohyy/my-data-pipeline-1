AWS_PROFILE=jiangren12
ENVIRONMENT=dev

deploy:
	sls deploy --aws-profile ${AWS_PROFILE} --stage ${ENVIRONMENT} --verbose

package:
	sls package --stage ${ENVIRONMENT} --aws-profile ${AWS_PROFILE}

test:
	serverless invoke --function dataPipeline --stage ${ENVIRONMENT} --path event/data_pipeline.json --aws-profile ${AWS_PROFILE}

remove:
	sls remove --aws-profile ${AWS_PROFILE} --stage ${ENVIRONMENT}