module "asg" {
  source = "terraform-aws-modules/autoscaling/aws"
  # Launch template
  name          = var.name
  image_id      = var.image_id
  instance_type = var.instance_type
  key_name      = var.key_name
  user_data     = var.user_data

  security_groups = var.security_groups

  ebs_optimized     = var.ebs_optimized
  enable_monitoring = var.enable_monitoring

  # IAM instance profile
  iam_instance_profile_arn = var.iam_instance_profile_arn

  default_version                      = var.default_version
  update_default_version               = var.update_default_version
  disable_api_termination              = var.disable_api_termination
  disable_api_stop                     = var.disable_api_stop
  instance_initiated_shutdown_behavior = var.instance_initiated_shutdown_behavior
  kernel_id                            = var.kernel_id
  ram_disk_id                          = var.ram_disk_id

  block_device_mappings = var.block_device_mappings

  capacity_reservation_specification = var.capacity_reservation_specification

  cpu_options                   = var.cpu_options
  credit_specification          = var.credit_specification
  elastic_inference_accelerator = var.elastic_inference_accelerator
  enclave_options               = var.enclave_options
  hibernation_options           = var.hibernation_options

  instance_market_options = var.instance_market_options
  instance_requirements   = var.instance_requirements

  license_specifications = var.license_specifications
  maintenance_options    = var.maintenance_options
  metadata_options       = var.metadata_options

  network_interfaces = var.network_interfaces

  placement                   = var.placement
  private_dns_name_options    = var.private_dns_name_options
  tag_specifications          = var.tag_specifications
  launch_template_description = var.launch_template_description

  # Autoscaling group
  availability_zones  = var.availability_zones
  vpc_zone_identifier = var.vpc_zone_identifier

  min_size                  = var.min_size
  max_size                  = var.max_size
  desired_capacity          = var.desired_capacity
  desired_capacity_type     = var.desired_capacity_type
  capacity_rebalance        = var.capacity_rebalance
  min_elb_capacity          = var.min_elb_capacity
  wait_for_elb_capacity     = var.wait_for_elb_capacity
  wait_for_capacity_timeout = var.wait_for_capacity_timeout
  default_cooldown          = var.default_cooldown
  default_instance_warmup   = var.default_instance_warmup
  protect_from_scale_in     = var.protect_from_scale_in

  load_balancers            = var.load_balancers
  target_group_arns         = var.target_group_arns
  placement_group           = var.placement_group
  health_check_type         = var.health_check_type
  health_check_grace_period = var.health_check_grace_period

  force_delete          = var.force_delete
  termination_policies  = var.termination_policies
  suspended_processes   = var.suspended_processes
  max_instance_lifetime = var.max_instance_lifetime

  enabled_metrics         = var.enabled_metrics
  metrics_granularity     = var.metrics_granularity
  service_linked_role_arn = var.service_linked_role_arn

  initial_lifecycle_hooks = var.initial_lifecycle_hooks
  instance_refresh        = var.instance_refresh

  use_mixed_instances_policy = var.use_mixed_instances_policy
  mixed_instances_policy     = var.mixed_instances_policy
  warm_pool                  = var.warm_pool

  # Autoscaling group schedule
  create_schedule = var.create_schedule
  schedules       = var.schedules

  # Autoscaling Policy
  create_scaling_policy = var.create_scaling_policy
  scaling_policies      = var.scaling_policies

  tags = var.tags
}


