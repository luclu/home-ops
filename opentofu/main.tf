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
    pm_api_url = "https://192.168.5.21:8006/api2/json"
    pm_api_token_id = "opentofu@pve!mytoken"
    #pm_parallel = 6
}
