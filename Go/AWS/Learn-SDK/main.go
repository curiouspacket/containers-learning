package main

import (
	"context"
	awsv2cfg "github.com/aws/aws-sdk-go-v2/config"
	s3v2 "github.com/aws/aws-sdk-go-v2/service/s3"
)

func main() {
	// Establish a AWS V2 Config.
	// See https://aws.github.io/aws-sdk-go-v2/docs/configuring-sdk/ for more info.
	ctx := context.Background()
	cfg, err := awsv2cfg.LoadDefaultConfig(ctx)
	if err != nil {
		return err
	}

	// Create a blob for bucket

}
