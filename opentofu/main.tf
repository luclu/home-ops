terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "3.0.1-rc6"
    }
  }
}

provider "proxmox" {
    pm_tls_insecure = true
    # pm_log_enable = true
    # pm_log_file   = "terraform-plugin-proxmox.log"
    # pm_debug      = true
    # pm_log_levels = {
    #   _default    = "debug"
    #   _capturelog = ""
    # }
    pm_api_url = "https://192.168.5.51:8006/api2/json"
    pm_api_token_id = "opentofu@pve!mytoken"
}
