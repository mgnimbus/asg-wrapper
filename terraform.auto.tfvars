name = "asg-wrapper"

#scaling
min_size                  = 1
max_size                  = 1
desired_capacity          = 1
wait_for_capacity_timeout = 0
health_check_type         = "EC2"
vpc_zone_identifier       = ["subnet-0e4c190e74b5852b0", "subnet-0c435991eff431b6b"]

#launch
launch_template_description = "Launch template example"
image_id                    = "ami-02f3f602d23f1659d"
instance_type               = "t3.micro"
ebs_optimized               = true

update_default_version = true

block_device_mappings = [
  {
    # Root volume
    device_name = "/dev/xvda"
    no_device   = 0
    ebs = {
      delete_on_termination = true
      encrypted             = true
      volume_size           = 20
      volume_type           = "gp2"
    }
    }, {
    device_name = "/dev/sda1"
    no_device   = 1
    ebs = {
      delete_on_termination = true
      encrypted             = true
      volume_size           = 30
      volume_type           = "gp2"
    }
  }
]

capacity_reservation_specification = {
  capacity_reservation_preference = "open"
}
cpu_options = {
  core_count       = 1
  threads_per_core = 1
}
credit_specification = {
  cpu_credits = "standard"
}
placement = {
  availability_zone = "us-east-1a"
}

tags = {
  Environment = "dev"
  Project     = "megasecret"
}


