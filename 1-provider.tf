terraform {
 required_providers {
   google = {
       source = "hashicorp/google"
       version = "~> 4.0"
   }
 }

  backend "gcs" {
   bucket = "ymsproject-tf-state-staging"
   prefix = "terraform/state"
 }
}

provider "google" {
    project = "yoogesh-project"
    region = "us-central1"
}