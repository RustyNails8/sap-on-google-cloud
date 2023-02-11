/**
 * Copyright 2022 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#
# Version:    2.0.2023020606491675694980
# Build Hash: 4e54405485427a6b9d00e0f96299d8be8896cb7b
#
module "sap_nw" {
  source = "https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform/sap_nw/sap_nw_module.zip"
  #
  # By default, this source file uses the latest release of the terraform module
  # for SAP on a Google Cloud.  To fix your deployments to a specific release
  # of the module, comment out the source property above and uncomment the source property below.
  #
  # source = "https://storage.googleapis.com/cloudsapdeploy/terraform/202302060649/terraform/sap_nw/sap_nw_module.zip"
  #
  # Fill in the information below
  #
  ##############################################################################
  ## MANDATORY SETTINGS
  ##############################################################################
  # General settings
  project_id          = "bold-future-377415"    # example: my-project-x
  zone                = "us-central1-f"         # example: us-east1-b
  machine_type        = "n1-standard-16"        # example: n1-highmem-32
  subnetwork          = "sap-auto-mode-network" # example: default
  linux_image         = "sles-15-sp3-sap"       # example: rhel-8-4-sap-ha
  linux_image_project = "suse-sap-cloud"        # example: rhel-sap-cloud

  instance_name = "sap-nw-instance" # example: nw-instance

  ##############################################################################
  ## OPTIONAL SETTINGS
  ##   - default values will be determined/calculated
  ##############################################################################
  usr_sap_size = 15 # default is 0, minimum is 0
  sap_mnt_size = 20 # default is 0, minimum is 0
  swap_size    = 20 # default is 0, minimum is 0
  network_tags         = [ "SD_SAP" ]        # default is an empty list
  public_ip = true # default is true
  # service_account = "sapadm" # default is an empty string
  # reservation_name     = ""                    # default is an empty string
  # can_ip_forward       = true_or_false         # default is true
}
