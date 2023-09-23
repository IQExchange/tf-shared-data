package test

import (
	"fmt"
	"github.com/gruntwork-io/terratest/modules/aws"
	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
	"testing"
)

func TestBaseCase(t *testing.T) {
	t.Parallel()

	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: ".",
		Vars: map[string]interface{}{
			"environment": "staging",
		},
	})

	defer terraform.Destroy(t, terraformOptions)
	output := applyTest(t, terraformOptions)
	azs := output["aws_azs"]
	assert.Contains(t, azs, "us-east-1a")
}

func TestSpecificOutput(t *testing.T) {
	t.Parallel()

	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: ".",
		Vars: map[string]interface{}{
			"environment": "staging",
		},
	})

	defer terraform.Destroy(t, terraformOptions)
	output := applyTest(t, terraformOptions)
	publicSubnetIds, ok := output["public_subnet_ids"].([]interface{})
	if ok {
		for _, v := range publicSubnetIds {
			if str, ok := v.(string); ok {
				assert.True(t, aws.IsPublicSubnet(t, str, "us-east-1"))
			} else {
				assert.True(t, ok, fmt.Sprintf("%s is not a string", str))
			}
		}
	} else {
		assert.True(t, ok, "output could not be converted to array of strings")
	}
}

func applyTest(t *testing.T, terraformOptions *terraform.Options) map[string]interface{} {
	terraform.InitAndApply(t, terraformOptions)
	outputAll := terraform.OutputAll(t, terraformOptions)
	return outputAll
}
