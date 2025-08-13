resource "proxmox_vm_qemu" "production" {
    vmid        = 2000
  name        = "VM-name"
  target_node = "Node to create the VM on"
  iso         = "ISO file name"

  ### or for a Clone VM operation
  clone = "template to clone"

  ### or for a PXE boot VM operation
  # pxe = true
  # boot = "scsi0;net0"
  # agent = 0
}