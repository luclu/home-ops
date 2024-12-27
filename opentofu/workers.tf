resource "proxmox_vm_qemu" "kube-node" {
  for_each = var.nodes

  name        = each.key
  target_node = each.value.target_node
  vmid        = each.value.id
  boot        = "order=scsi0;ide0"
  qemu_os     = "l26"
  pxe         = false
  bios        = "ovmf"
  agent       = 1
  skip_ipv6   = true
  scsihw      = "virtio-scsi-pci"
  memory      = each.value.memory
  cores       = each.value.cores
  onboot      = true
  tags        = each.value.tags
  #efidisk {
  #  efitype = "4m"
  #  storage = "ssd1"
  #}
  #vga {
  #  type = "qxl"
  #}
  network {
    id = 0
    model    = "virtio"
    macaddr  = each.value.macaddr
    bridge   = "vmbr0"
    firewall = true
  }
  disks {
    ide {
      ide0 {
        cdrom {
          iso = "cephfs:iso/talos-metal-amd64-secureboot.iso"
        }
      }
    }
    scsi {
      scsi0 {
        disk {
          size            = 32
          cache           = "writeback"
          storage         = "ssd1"
          discard         = true
          emulatessd      = true
        }
      }
    }
  }
}
