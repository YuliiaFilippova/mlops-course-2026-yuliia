module "s3_bucket" {
  # There can be a few buckets in dev.tfvars (or any *.tfvars)
  for_each = { for s3 in var.s3_buckets : s3.key => s3 }
  source   = "./modules/s3-bucket"

  bucket = each.value.key
  tags   = each.value.tags
}