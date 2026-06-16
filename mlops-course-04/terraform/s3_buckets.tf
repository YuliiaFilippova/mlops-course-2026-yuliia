module "s3_bucket" {
  # There can be a few buckets in dev.tfvars (or any *.tfvars)
  for_each = { for s3 in var.s3_buckets : s3.key => s3 }
  source   = "./modules/s3-bucket"

  bucket = join(var.delimiter, [each.value.key, var.environment])
  tags   = merge(try(each.value.tags, {}), { environment = var.environment })
}