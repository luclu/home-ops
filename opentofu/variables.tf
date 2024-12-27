
variable "common" {
  type = map(string)
  default = {
    clone         = "talos-template"
    #search_domain = "lu.fo"
    nameserver    = "192.168.5.1"
  }
}

variable "controllers" {
  type = map(map(string))
  default = {
    talos-controller-1 = {
      id          = "261"
      cidr        = "192.168.5.61/24"
      cores       = 6
      gw          = "192.168.5.1"
      macaddr     = "BC:24:11:88:98:A1"
      memory      = 24576
      target_node = "pve"
      tags        = "staging,controller"
    }
    talos-controller-2 = {
      id          = "262"
      cidr        = "192.168.5.62/24"
      cores       = 6
      gw          = "192.168.5.1"
      macaddr     = "BC:24:11:88:98:A2"
      memory      = 24576
      target_node = "pve"
      tags        = "staging,controller"
    }
    talos-controller-3 = {
      id          = "263"
      cidr        = "192.168.5.63/24"
      cores       = 6
      gw          = "192.168.5.1"
      macaddr     = "BC:24:11:88:98:A3"
      memory      = 24576
      target_node = "pve"
      tags        = "staging,controller"
    }
  }
}

variable "nodes" {
  type = map(map(string))
  default = {
    talos-node-1 = {
      id          = "271"
      cidr        = "192.168.5.71/24"
      cores       = 6
      gw          = "192.168.5.1"
      macaddr     = "BC:24:11:88:98:B1"
      memory      = 24576
      target_node = "pve"
      tags        = "staging,node"
    }
    talos-node-2 = {
      id          = "272"
      cidr        = "192.168.5.72/24"
      cores       = 6
      gw          = "192.168.5.1"
      macaddr     = "BC:24:11:88:98:B2"
      memory      = 24576
      target_node = "pve"
      tags        = "staging,node"
    }
    talos-node-3 = {
      id          = "273"
      cidr        = "192.168.5.73/24"
      cores       = 6
      gw          = "192.168.5.1"
      macaddr     = "BC:24:11:88:98:B3"
      memory      = 24576
      target_node = "pve"
      tags        = "staging,node"
    }
  }
}
