variable "ami" {
  default     = "ami-0778521d914d23bc1"
  type        = string
  description = "Ubuntu 20.04"
}

variable "keypair" {
  default     = "nielahkey"
  type        = string
  description = "My public key pair"
}  


variable "region" {
  default     = "us-east-1"
  type        = string
  description = "Us Virginia region"
}


variable "nodem" {
  default      = "nielnode"
  type         = string
  description  = "Node group name"
}


variable "noden" {
  default      = "nielnome"
  type         = string
  description  = "Node name"
}


variable "clustern" {
  default      = "nielclust"
  type         = string
  description  = "Cluster name"
 }


#variable "rolea" {
 # default       = arn:aws:iam::960289794094:user/NielIAM
  #type          = string
  #description   = "IAM role"
#}


variable "itype" {
  default     = "t3.nano"
  type        = string
  description = "Instance type"
}


variable "subnetid" {
  default     = "subnet-05a5ac25f5ce42bd2"
  type        = string
  description = "subnet id"
}

variable "subnetsid" {
  default     = ["subnet-05a5ac25f5ce42bd2", "subnet-0e374a25aaacb370f"]
  type        = set(string)
  description = "subnets"
}

variable "sgroupid" {
  default     = ["sg-0a8a17b9edda64ad0", "sg-0678923d9d25cdcaf"]
  type        = set(string)
  description = "Security group"
}

variable "nielkinsg" {
  default     = ["aws_security_group.nielsecg"]
  type        = set(string)
  description = "Jenkins Security group"
}  


variable "vpc" {
  default     = "vpc-00f46ffdfcab93bc7"
  type        = string
  description = "V private connection"
}

variable "publicip" {
  default     = "true"
  type        = bool
  description = "Assign public IP"
}

variable "zoneid" {
  default     = "Z02621071S6O059G8O7XI"
  type        = string
  description = "hosted zone id"
}

variable "zonename" {
  default     = "domain.aws_lb.nielb.dns_name"
  type        = string
  description = "hosted zone name"
}

variable "domain" {
  default     = "nielaudunwa.me"
  type        = string
  description = "domain name"
}


variable "alb_name" {
  default     = "nielb"
  type        = string
  description = "Load balancer name"
}

variable "alb_arn" {
  default     = "aws_lb.nielb.arn"
  type        = string
  description = "alb arn"
}

variable "availzone" {
  default     = ["use1-az1", "use1-az2", "use1-az3", "use1-az4"]
  type        = set(string)
  description = "availability zones"
}
