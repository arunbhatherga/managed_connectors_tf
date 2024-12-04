terraform {
  required_providers {
    confluent = {
      source  = "confluentinc/confluent"
      version = "~> 1.0"
    }
  }
}

provider "confluent" {
  cloud_api_key    = var.confluent_cloud_api_key
  cloud_api_secret = var.confluent_cloud_api_secret
}

resource "confluent_connector" "mssql_cdc_source" {
  kafka_cluster {
    id = var.kafka_cluster_id
  }

  environment {
    id = var.environment_id
  }

  config_nonsensitive = {
    "connector.class"                  = "SqlServerCdcSourceV2"
    "name"                             = var.connector_name
    "tasks.max"                        = "1"
    "database.hostname"                = var.database_hostname
    "database.port"                    = var.database_port
    "database.user"                    = var.database_user
    "database.password"                = var.database_password
    "database.names"                   = var.database_name
    "kafka.auth.mode"                  = "KAFKA_API_KEY"
    "kafka.api.key"                    = var.api_key
    "kafka.api.secret"                 = var.api_secret
    "snapshot.mode"                    = "initial"
    "table.include.list"               = var.table_include_list
    "database.server.name"             = var.database_server_name
    "topic.prefix"                     = var.topic_prefix
    "output.data.format"               = "AVRO"
    "poll.interval.ms"                 = "5000"
    "errors.tolerance"                 = "all"
  }
}
