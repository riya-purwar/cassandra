## EXAMPLE CONFIGURATION
## SINGLE-DC, THREE-RACK, 2-NODES PER RACK DC
## CASSANDRA VERSION CAN BE MODIFIED IN THE TPL FILE
## USES UBUNTU 18.04 BY DEFAULT

locals {
  cassandra_nodes = {
    node_1 = {
      name               = "riya-dc1-r1-n1"
      instance_type      = "t3.medium"
      private_ip         = "10.50.160.10"
      dc                 = "datacenter1"
      rack               = "rack1"
      subnet_id          = "subnet-0ff07b6cafcd1b284" //1a
      security_group_ids = ["sg-06e3640bc6f4e0c94"]
    }
    node_2 = {
      name               = "riya-dc1-r1-n2"
      instance_type      = "t3.medium"
      private_ip         = "10.50.111.198"
      dc                 = "datacenter1"
      rack               = "rack1"
      subnet_id          = "subnet-076ba9da2f55ab9f8" 
      security_group_ids = ["sg-06e3640bc6f4e0c94"]
    }
    node_3 = {
      name               = "riya-dc1-r2-n1"
      instance_type      = "t3.medium"
      private_ip         = "10.50.180.154"
      dc                 = "datacenter1"
      rack               = "rack2"
      subnet_id          = "subnet-0ff07b6cafcd1b284" // 1d
      security_group_ids = ["sg-06e3640bc6f4e0c94"]
    }
    node_4 = {
      name               = "riya-dc1-r2-n2"
      instance_type      = "t3.medium"
      private_ip         = "10.50.29.48"
      dc                 = "datacenter1"
      rack               = "rack2"
      subnet_id          = "subnet-085436e3903ebe2ae" // 1a
      security_group_ids = ["sg-06e3640bc6f4e0c94"]
    }
    node_5 = {
      name               = "riya- dc1-r3-n1"
      instance_type      = "t3.medium"
      private_ip         = "10.50.84.87"
      dc                 = "datacenter1"
      rack               = "rack3"
      subnet_id          = "subnet-09eebdcfa804c90f8" // 1c
      security_group_ids = ["sg-06e3640bc6f4e0c94"]
    }
    node_6 = {
      name               = "riya-dc1-r3-n2"
      instance_type      = "t3.medium"
      private_ip         = "10.50.148.96"
      dc                 = "datacenter1"
      rack               = "rack3"
      subnet_id          = "subnet-0f535facf82be4755" // 1d
      security_group_ids = ["sg-06e3640bc6f4e0c94"]
    }
}
seeds = "10.50.160.10,10.50.180.154,10.50.84.87 "
}