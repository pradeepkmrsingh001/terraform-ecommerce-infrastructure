terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

}

# 2. Provider Configuration
provider "aws" {
  region = var.aws_region
}


# 3. Resource Configuration
resource "aws_s3_bucket" "product_assets" {
  bucket = "${var.project_name}-${var.environment}-product-assets-pradeep-01"

  tags = {
    Environment = var.environment
    purpose     = "Product-assets"

  }
}

