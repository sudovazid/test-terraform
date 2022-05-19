provider "google" {
  region = "us-central1"
  zone   = "us-central1-c"
  project     = var.project_id
}

module "dataset" {
  source = "./dataset"
  dataset_id_vmo2_staging = var.dataset_id_vmo2_staging
  dataset_id_vmo2_final  = var.dataset_id_vmo2_final
  dataset_vmo2_staging_location = var.dataset_vmo2_staging_location
  dataset_vmo2_final_location = var.dataset_vmo2_final_location
}

module "table" {
    source = "./table"
    # Data set ID
    dataset_id_final = module.dataset.dataset_id_vmo2_dw_final
    dataset_id_staging = module.dataset.dataset_id_vmo2_dw_staging

    #Calling Final table 
    tbl_fdh_nucleus_nsv_final = var.tbl_fdh_nucleus_nsv
    tbl_fdh_nucleus_order_final = var.tbl_fdh_nucleus_order
    tbl_fdh_det_final = var.tbl_fdh_det
    tbl_fdh_orders_full_final = var.tbl_fdh_orders_full
    tbl_fdh_profit_322_final = var.tbl_fdh_profit_322
    tbl_fdh_profit_clv_322_final = var.tbl_fdh_profit_clv_322
    tbl_purple_benefits_final  = var.tbl_purple_benefits
    tbl_spinners_final = var.tbl_spinners
    tbl_subscr_track_final = var.tbl_subscr_track
    tbl_uvo_account_final = var.tbl_uvo_account
    tbl_uvo_account_billpayer_final = var.tbl_uvo_account_billpayer
    tbl_fdh_profit_clv_det_322_final = var.tbl_fdh_profit_clv_det_322
    
    #Calling staging table
    tbl_fdh_nucleus_nsv_staging = var.tbl_fdh_nucleus_nsv
    tbl_fdh_nucleus_order_staging = var.tbl_fdh_nucleus_order
    tbl_fdh_det_staging = var.tbl_fdh_det
    tbl_fdh_orders_full_staging = var.tbl_fdh_orders_full
    tbl_fdh_profit_322_staging = var.tbl_fdh_profit_322
    tbl_fdh_profit_clv_322_staging = var.tbl_fdh_profit_clv_322
    tbl_purple_benefits_staging  = var.tbl_purple_benefits
    tbl_spinners_staging = var.tbl_spinners
    tbl_subscr_track_staging = var.tbl_subscr_track
    tbl_uvo_account_staging = var.tbl_uvo_account
    tbl_uvo_account_billpayer_staging = var.tbl_uvo_account_billpayer
    tbl_fdh_profit_clv_det_322_staging = var.tbl_fdh_profit_clv_det_322
}