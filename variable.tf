variable "confluent_cloud_api_key" {
  default = "<cc_api_key>"
}

variable "confluent_cloud_api_secret" {
  default = "<cc_api_secret>"
}

variable "api_key" {
  default = "<api_key>"
}

variable "api_secret" {
  default = "<api_secret>"
}

variable "kafka_cluster_id" {
  default = "lkc-<>"
}

variable "environment_id" {
  default = "env-<>"
}

variable "connector_name" {
  default = "My-connector"
}

variable "database_hostname" {
  default = "<hostname/ip>"
}

variable "database_port" {
  default = 1433
}

variable "database_user" {
  default = "<username>"
}

variable "database_password" {
  default = "<password>"
}

variable "database_name" {
  default = "<databasenames>"
}

variable "table_include_list" {
  default = "tablenames"
}

variable "database_server_name" {
  default = null
}

variable "topic_prefix" {
  default = "<prefix>"
}

variable "dlq_topic_name" {
  default = null
}
