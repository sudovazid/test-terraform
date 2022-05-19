resource "google_bigquery_dataset" "vmo2_dw_staging" {
  dataset_id                  = var.dataset_id_vmo2_staging
  friendly_name               = "vmo2 staging"
  description                 = "vmo2 staging dataset"
  location                    = var.dataset_vmo2_staging_location #check the location
  #default_table_expiration_ms = 3600000

  labels = {
    env = "staging"
  }
}

resource "google_bigquery_dataset" "vmo2_dw_final" {
  dataset_id                  = var.dataset_id_vmo2_final
  friendly_name               = "vmo2 final"
  description                 = "vmo2 final dataset"
  location                    = var.dataset_vmo2_final_location #check the location
  #default_table_expiration_ms = 3600000

  labels = {
    env = "final"
  }

}
