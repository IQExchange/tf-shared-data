variable "environment" {
  default = "nonexistant"
  description = "environment qualifier for use in filtering vpc tag"
  type = string
}

variable "specific_output" {
  default = true
  description = "Whether to output specific info, or only generic AWS info"
  type = bool
}