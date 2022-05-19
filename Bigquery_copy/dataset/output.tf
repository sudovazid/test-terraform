output "dataset_id_vmo2_dw_staging" {
  description = "The ID of the dataset "
  value       = google_bigquery_dataset.vmo2_dw_staging.dataset_id
}

output "dataset_id_vmo2_dw_final" {
  description = "The ID of the dataset "
  value       = google_bigquery_dataset.vmo2_dw_final.dataset_id
}

