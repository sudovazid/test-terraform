# Staging Tables
# EDH Tales 

resource "google_bigquery_table" "tbl_nsv_staging" {
  dataset_id = var.dataset_id_staging
  table_id   = var.tbl_fdh_nucleus_nsv_staging

  time_partitioning {
    type = "DAY"
  }

  labels = {
    env = "staging"
  }

  schema = file("/home/mynewsletterd/Bigquery_copy/table/staging_table_json/tbl_fdh_nucleus_nsv.json")

}

resource "google_bigquery_table" "tbl_order_staging" {
  dataset_id = var.dataset_id_staging
  table_id   = var.tbl_fdh_nucleus_order_staging

  time_partitioning {
    type = "DAY"
  }

  labels = {
    env = "staging"
  }

  schema = file("/home/mynewsletterd/Bigquery_copy/table/staging_table_json/tbl_fdh_nucleus_order.json")

}


## Teradata tables

# FDH DET
resource "google_bigquery_table" "tbl_fdh_det_staging" {
  dataset_id = var.dataset_id_staging
  table_id = var.tbl_fdh_det_staging

  time_partitioning {
    type = "DAY"
  }

  labels = {
    "env" = "staging"
  }

  schema = file("/home/mynewsletterd/Bigquery_copy/table/staging_table_json/tbl_fdh_det.json")
}

# FDH ORDER FULL

resource "google_bigquery_table" "tbl_fdh_orders_full_staging" {
  dataset_id = var.dataset_id_staging
  table_id = var.tbl_fdh_orders_full_staging

  time_partitioning {
    type = "DAY"
  }

  labels = {
    "env" = "staging"
  }

  schema = file("/home/mynewsletterd/Bigquery_copy/table/staging_table_json/tbl_fdh_orders_full.json")
}

# FDH PROFIT 322
resource "google_bigquery_table" "tbl_fdh_profit_322_staging" {
  dataset_id = var.dataset_id_staging
  table_id = var.tbl_fdh_profit_322_staging

  time_partitioning {
    type = "DAY"
  }

  labels = {
    "env" = "staging"
  }

  schema = file("/home/mynewsletterd/Bigquery_copy/table/staging_table_json/tbl_fdh_profit_322.json")
}


# SPINNERS Table

resource "google_bigquery_table" "tbl_spinners_staging" {
  dataset_id = var.dataset_id_staging
  table_id = var.tbl_spinners_staging

  time_partitioning {
    type = "DAY"
  }

  labels = {
    "env" = "staging"
  }

  schema = file("/home/mynewsletterd/Bigquery_copy/table/staging_table_json/tbl_spinners.json")
}

# PURPLE_BENEFITS Table

resource "google_bigquery_table" "tbl_purple_benefits_staging" {
  dataset_id = var.dataset_id_staging
  table_id = var.tbl_purple_benefits_staging

  time_partitioning {
    type = "DAY"
  }

  labels = {
    "env" = "staging"
  }

  schema = file("/home/mynewsletterd/Bigquery_copy/table/staging_table_json/tbl_purple_benefits.json")
}

# FDH Profit clv 322
resource "google_bigquery_table" "tbl_fdh_profit_clv_322_staging" {
  dataset_id = var.dataset_id_staging
  table_id = var.tbl_fdh_profit_clv_322_staging

  time_partitioning {
    type = "DAY"
  }

  labels = {
    "env" = "staging"
  }

  schema = file("/home/mynewsletterd/Bigquery_copy/table/staging_table_json/tbl_fdh_profit_clv_322.json")
}

# FDH PROFIT CLV DET 322
resource "google_bigquery_table" "tbl_fdh_profit_clv_det_322_staging" {
  dataset_id = var.dataset_id_staging
  table_id = var.tbl_fdh_profit_clv_det_322_staging

  time_partitioning {
    type = "DAY"
  }

  labels = {
    "env" = "staging"
  }

  schema = file("/home/mynewsletterd/Bigquery_copy/table/staging_table_json/tbl_fdh_profit_clv_det_322.json")
}


# SUBSCR TRACK
resource "google_bigquery_table" "tbl_subscr_track_staging" {
  dataset_id = var.dataset_id_staging
  table_id = var.tbl_subscr_track_staging

  time_partitioning {
    type = "DAY"
  }

  labels = {
    "env" = "staging"
  }

  schema = file("/home/mynewsletterd/Bigquery_copy/table/staging_table_json/tbl_subscr_track.json")
}

# UVO ACCOUNT

resource "google_bigquery_table" "tbl_uvo_account_staging" {
  dataset_id = var.dataset_id_staging
  table_id = var.tbl_uvo_account_staging

  time_partitioning {
    type = "DAY"
  }

  labels = {
    "env" = "staging"
  }

  schema = file("/home/mynewsletterd/Bigquery_copy/table/staging_table_json/tbl_uvo_account.json")
}

# UVO ACCOUNT BILLPAYER

resource "google_bigquery_table" "tbl_uvo_account_billpayer_staging" {
  dataset_id = var.dataset_id_staging
  table_id = var.tbl_uvo_account_billpayer_staging

  time_partitioning {
    type = "DAY"
  }

  labels = {
    "env" = "staging"
  }

  schema = file("/home/mynewsletterd/Bigquery_copy/table/staging_table_json/tbl_uvo_account_billpayer.json")
}














# Final Tables
# EDH Tales 
resource "google_bigquery_table" "tbl_nsv_final" {
  dataset_id = var.dataset_id_final
  table_id   = var.tbl_fdh_nucleus_nsv_final

  time_partitioning {
    type = "DAY"
  }

  labels = {
    env = "final"
  }

  schema = file("/home/mynewsletterd/Bigquery_copy/table/final_table_json/tbl_fdh_nucleus_nsv.json")

}

resource "google_bigquery_table" "tbl_order_final" {
  dataset_id = var.dataset_id_final
  table_id   = var.tbl_fdh_nucleus_order_final

  time_partitioning {
    type = "DAY"
  }

  labels = {
    env = "final"
  }

  schema = file("/home/mynewsletterd/Bigquery_copy/table/final_table_json/tbl_fdh_nucleus_order.json")

}


## Teradata tables

# FDH DET
resource "google_bigquery_table" "tbl_fdh_det_final" {
  dataset_id = var.dataset_id_final
  table_id = var.tbl_fdh_det_final

  time_partitioning {
    type = "DAY"
  }

  labels = {
    "env" = "final"
  }

  schema = file("/home/mynewsletterd/Bigquery_copy/table/final_table_json/tbl_fdh_det.json")
}

# FDH ORDER FULL

resource "google_bigquery_table" "tbl_fdh_orders_full_final" {
  dataset_id = var.dataset_id_final
  table_id = var.tbl_fdh_orders_full_final

  time_partitioning {
    type = "DAY"
  }

  labels = {
    "env" = "final"
  }

  schema = file("/home/mynewsletterd/Bigquery_copy/table/final_table_json/tbl_fdh_orders_full.json")
}

# FDH PROFIT 322
resource "google_bigquery_table" "tbl_fdh_profit_322_final" {
  dataset_id = var.dataset_id_final
  table_id = var.tbl_fdh_profit_322_final

  time_partitioning {
    type = "DAY"
  }

  labels = {
    "env" = "final"
  }

  schema = file("/home/mynewsletterd/Bigquery_copy/table/final_table_json/tbl_fdh_profit_322.json")
}


# SPINNERS Table

resource "google_bigquery_table" "tbl_spinners_final" {
  dataset_id = var.dataset_id_final
  table_id = var.tbl_spinners_final

  time_partitioning {
    type = "DAY"
  }

  labels = {
    "env" = "final"
  }

  schema = file("/home/mynewsletterd/Bigquery_copy/table/final_table_json/tbl_spinners.json")
}

# PURPLE_BENEFITS Table

resource "google_bigquery_table" "tbl_purple_benefits_final" {
  dataset_id = var.dataset_id_final
  table_id = var.tbl_purple_benefits_final

  time_partitioning {
    type = "DAY"
  }

  labels = {
    "env" = "final"
  }

  schema = file("/home/mynewsletterd/Bigquery_copy/table/final_table_json/tbl_purple_benefits.json")
}

# FDH Profit clv 322
resource "google_bigquery_table" "tbl_fdh_profit_clv_322_final" {
  dataset_id = var.dataset_id_final
  table_id = var.tbl_fdh_profit_clv_322_final

  time_partitioning {
    type = "DAY"
  }

  labels = {
    "env" = "final"
  }

  schema = file("/home/mynewsletterd/Bigquery_copy/table/final_table_json/tbl_fdh_profit_clv_322.json")
}

# FDH PROFIT CLV DET 322
resource "google_bigquery_table" "tbl_fdh_profit_clv_det_322_final" {
  dataset_id = var.dataset_id_final
  table_id = var.tbl_fdh_profit_clv_det_322_final

  time_partitioning {
    type = "DAY"
  }

  labels = {
    "env" = "final"
  }

  schema = file("/home/mynewsletterd/Bigquery_copy/table/final_table_json/tbl_fdh_profit_clv_det_322.json")
}


# SUBSCR TRACK
resource "google_bigquery_table" "tbl_subscr_track_final" {
  dataset_id = var.dataset_id_final
  table_id = var.tbl_subscr_track_final

  time_partitioning {
    type = "DAY"
  }

  labels = {
    "env" = "final"
  }

  schema = file("/home/mynewsletterd/Bigquery_copy/table/final_table_json/tbl_subscr_track.json")
}

# UVO ACCOUNT

resource "google_bigquery_table" "tbl_uvo_account_final" {
  dataset_id = var.dataset_id_final
  table_id = var.tbl_uvo_account_final

  time_partitioning {
    type = "DAY"
  }

  labels = {
    "env" = "final"
  }

  schema = file("/home/mynewsletterd/Bigquery_copy/table/final_table_json/tbl_uvo_account.json")
}

# UVO ACCOUNT BILLPAYER

resource "google_bigquery_table" "tbl_uvo_account_billpayer_final" {
  dataset_id = var.dataset_id_final
  table_id = var.tbl_uvo_account_billpayer_final

  time_partitioning {
    type = "DAY"
  }

  labels = {
    "env" = "final"
  }

  schema = file("/home/mynewsletterd/Bigquery_copy/table/final_table_json/tbl_uvo_account_billpayer.json")
}
