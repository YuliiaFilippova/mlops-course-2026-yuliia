environment = "dev"
aws_region  = "eu-west-1"


s3_buckets = [
  {
    key  = "mlops-course-yuliia-datastore"
    tags = {}
  }
   #THERE CAN BE AS MANY BUCKETS AS NEEDED!
]

ecr_repositories = [
  {
    key                  = "mlops-course-yuliia-repository"
    image_tag_mutability = "MUTABLE"
    image_scanning_configuration = {
      scan_on_push = true
    }
    tags = {}
  }
]

ecs_services = [
  {
    key            = "mlops-course-ehb"
    ecr_repository = "mlops-course-ehb-repository"
    image_tag      = "latest"
    container_port = 80
    cpu            = 256
    memory         = 512
    desired_count  = 1
    tags           = {}
  }
]