[33mcommit 0fe8084f39ec232170b0b78e2a986ea5f052aeb8[m[33m ([m[1;36mHEAD -> [m[1;32mmain[m[33m, [m[1;31morigin/main[m[33m, [m[1;31morigin/HEAD[m[33m)[m
Author: checksumit <simonriley@hotmail.com>
Date:   Wed Aug 13 03:08:02 2025 +0100

    terraform

[1mdiff --git a/.gitignore b/.gitignore[m
[1mindex 1d5a1fc..76415f6 100644[m
[1m--- a/.gitignore[m
[1m+++ b/.gitignore[m
[36m@@ -97,3 +97,8 @@[m [mlerna-debug.log[m
 [m
 # === Docker ===[m
 localcfg/[m
[32m+[m
[32m+[m
[32m+[m[32m# === Terraform ===[m
[32m+[m[32m*.tfstate[m
[32m+[m[32m*.tfvars[m
\ No newline at end of file[m
[1mdiff --git a/terraform/.terraform.lock.hcl b/terraform/.terraform.lock.hcl[m
[1mnew file mode 100644[m
[1mindex 0000000..5492ad1[m
[1m--- /dev/null[m
[1m+++ b/terraform/.terraform.lock.hcl[m
[36m@@ -0,0 +1,24 @@[m
[32m+[m[32m# This file is maintained automatically by "terraform init".[m
[32m+[m[32m# Manual edits may be lost in future updates.[m
[32m+[m
[32m+[m[32mprovider "registry.terraform.io/terraform-for-proxmox/proxmox" {[m
[32m+[m[32m  version     = "0.0.1"[m
[32m+[m[32m  constraints = "0.0.1"[m
[32m+[m[32m  hashes = [[m
[32m+[m[32m    "h1:3gqTP3+ZNq9gSNt7MMzvGu6tumbjQ+owUx2kGt9y7og=",[m
[32m+[m[32m    "zh:046a76536e07d27a708b183c45625ec7be98de9dbda1225582d5c4fe0f52d030",[m
[32m+[m[32m    "zh:06ce2eb6fec10f4500863c1b8fca10b97fdd2f85302e9fbdf595e41254670bbf",[m
[32m+[m[32m    "zh:197540aff955caabcd0fcb68b0ff502ff9a5580496bde3dbd6ea68871fe99f3e",[m
[32m+[m[32m    "zh:1e25096ddbd3a1ba1df9ff2cb57be5609e8e82e3806e8f85e5018d6613fadcdd",[m
[32m+[m[32m    "zh:4713e117d21be4c723205e4254b6bcb84428095ffe57089e62d1ee1d487ec6ac",[m
[32m+[m[32m    "zh:47f971c0a3025983bb7be9fbe2863651a17bf9b8bcfe7282ae6b2de56f29eaf3",[m
[32m+[m[32m    "zh:4b29ef322e05f344e9369438cb073df0782a6411725e25f5c8308ea34f11bd06",[m
[32m+[m[32m    "zh:648162ba3e142bd4a5ce44e2aa3c70279ab4d05d2690031a27419ee59d65381d",[m
[32m+[m[32m    "zh:7577e37a76fcd9cba1cf121344bd45babe596fd077be69f63fcebc67b4eab26f",[m
[32m+[m[32m    "zh:89365a2c7ed1e43015e9aec8352a9e21935957ac4db4d4c6b1c043b45df73b93",[m
[32m+[m[32m    "zh:9a46374f7098093bf7df4b75a8e66cd111b8619c6afe82c3214d92d0d4dc9051",[m
[32m+[m[32m    "zh:bd239eeb04afdc6c2f1f9d64f8045999a9e5ccb1404aa57406241fec338832d2",[m
[32m+[m[32m    "zh:c2d5f82906e9262519574b1b7052ea95bc90dd911fd53f7a17b588696f33fd5b",[m
[32m+[m[32m    "zh:e55e430cfacb9e3bd1e0c06e5cd364c8253760ddb3e3d0bca6cbf02321f3cab3",[m
[32m+[m[32m  ][m
[32m+[m[32m}[m
[1mdiff --git a/terraform/.terraform/providers/registry.terraform.io/terraform-for-proxmox/proxmox/0.0.1/linux_amd64/LICENSE b/terraform/.terraform/providers/registry.terraform.io/terraform-for-proxmox/proxmox/0.0.1/linux_amd64/LICENSE[m
[1mnew file mode 100644[m
[1mindex 0000000..57395f1[m
[1m--- /dev/null[m
[1m+++ b/terraform/.terraform/providers/registry.terraform.io/terraform-for-proxmox/proxmox/0.0.1/linux_amd64/LICENSE[m
[36m@@ -0,0 +1,21 @@[m
[32m+[m[32mThe MIT License (MIT)[m
[32m+[m
[32m+[m[32mCopyright (c) 2017 <copyright holders>[m
[32m+[m
[32m+[m[32mPermission is hereby granted, free of charge, to any person obtaining a copy[m
[32m+[m[32mof this software and associated documentation files (the "Software"), to deal[m
[32m+[m[32min the Software without restriction, including without limitation the rights[m
[32m+[m[32mto use, copy, modify, merge, publish, distribute, sublicense, and/or sell[m
[32m+[m[32mcopies of the Software, and to permit persons to whom the Software is[m
[32m+[m[32mfurnished to do so, subject to the following conditions:[m
[32m+[m
[32m+[m[32mThe above copyright notice and this permission notice shall be included in[m
[32m+[m[32mall copies or substantial portions of the Software.[m
[32m+[m
[32m+[m[32mTHE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR[m
[32m+[m[32mIMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,[m
[32m+[m[32mFITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE[m
[32m+[m[32mAUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER[m
[32m+[m[32mLIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,[m
[32m+[m[32mOUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN[m
[32m+[m[32mTHE SOFTWARE.[m
\ No newline at end of file[m
[1mdiff --git a/terraform/.terraform/providers/registry.terraform.io/terraform-for-proxmox/proxmox/0.0.1/linux_amd64/README.md b/terraform/.terraform/providers/registry.terraform.io/terraform-for-proxmox/proxmox/0.0.1/linux_amd64/README.md[m
[1mnew file mode 100644[m
[1mindex 0000000..04949af[m
[1m--- /dev/null[m
[1m+++ b/terraform/.terraform/providers/registry.terraform.io/terraform-for-proxmox/proxmox/0.0.1/linux_amd64/README.md[m
[36m@@ -0,0 +1,53 @@[m
[32m+[m[32m[![Build Status](https://travis-ci.com/Terraform-for-Proxmox/terraform-provider-proxmox.svg?branch=master)](https://travis-ci.com/Terraform-for-Proxmox/terraform-provider-proxmox)[m
[32m+[m
[32m+[m[32m# Terraform provider plugin for Proxmox[m
[32m+[m
[32m+[m[32mThis is a fork of https://github.com/Telmate/terraform-provider-proxmox which is no longer maintained by the company.[m
[32m+[m
[32m+[m[32mThis repository provides a Terraform provider for[m
[32m+[m[32mthe [Proxmox virtualization platform](https://pve.proxmox.com/pve-docs/) and exposes Terraform resources to provision[m
[32m+[m[32mQEMU VMs and LXC Containers.[m
[32m+[m
[32m+[m[32m## Getting Started[m
[32m+[m
[32m+[m[32mIn order to get started, use [the documentation included in this repository](docs/index.md). The documentation contains[m
[32m+[m[32ma list of the options for the provider. Moreover, there are some guides available how to combine options and start[m
[32m+[m[32mspecific VMs.[m
[32m+[m
[32m+[m[32m## Quick Start[m
[32m+[m
[32m+[m[32mFollow this [install guide](docs/guides/installation.md) to install the plugin.[m
[32m+[m
[32m+[m[32m## Known Limitations[m
[32m+[m
[32m+[m[32m* `proxmox_vm_qemu`.`disk`.`size` attribute does not match what is displayed in the Proxmox UI.[m
[32m+[m[32m* Updates to `proxmox_vm_qemu` resources almost always result as a failed task within the Proxmox UI. This appears to be[m
[32m+[m[32m  harmless and the desired configuration changes do get applied.[m
[32m+[m[32m* When using the `proxmox_lxc` resource, the provider will crash unless `rootfs` is defined.[m
[32m+[m[32m* When using the Network Boot mode (PXE), a valid NIC must be defined for the VM, and the boot order must specify network first.[m
[32m+[m
[32m+[m[32m## Contributing[m
[32m+[m
[32m+[m[32mWhen contributing, please also add documentation to help other users.[m
[32m+[m
[32m+[m[32m### Debugging the provider[m
[32m+[m
[32m+[m[32mDebugging is available for this provider through the Terraform Plugin SDK versions 2.0.0. Therefore, the plugin can be[m
[32m+[m[32mstarted with the debugging flag `--debug`.[m
[32m+[m
[32m+[m[32mFor example (using [delve](https://github.com/go-delve/delve) as Debugger):[m
[32m+[m
[32m+[m[32m```bash[m
[32m+[m[32mdlv exec --headless ./terraform-provider-my-provider -- --debug[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mFor more information about debugging a provider please[m
[32m+[m[32msee: [Debugger-Based Debugging](https://www.terraform.io/docs/extend/debugging.html#debugger-based-debugging)[m
[32m+[m
[32m+[m[32m## Useful links[m
[32m+[m
[32m+[m[32m* [Proxmox](https://www.proxmox.com/en/)[m
[32m+[m[32m* [Proxmox documentation](https://pve.proxmox.com/pve-docs/)[m
[32m+[m[32m* [Terraform](https://www.terraform.io/)[m
[32m+[m[32m* [Terraform documentation](https://www.terraform.io/docs/index.html)[m
[32m+[m
[1mdiff --git a/terraform/.terraform/providers/registry.terraform.io/terraform-for-proxmox/proxmox/0.0.1/linux_amd64/terraform-provider-proxmox_v0.0.1 b/terraform/.terraform/providers/registry.terraform.io/terraform-for-proxmox/proxmox/0.0.1/linux_amd64/terraform-provider-proxmox_v0.0.1[m
[1mnew file mode 100644[m
[1mindex 0000000..3a502b3[m
Binary files /dev/null and b/terraform/.terraform/providers/registry.terraform.io/terraform-for-proxmox/proxmox/0.0.1/linux_amd64/terraform-provider-proxmox_v0.0.1 differ
[1mdiff --git a/terraform/docker-compose.yml b/terraform/docker-compose.yml[m
[1mnew file mode 100644[m
[1mindex 0000000..53fd384[m
[1m--- /dev/null[m
[1m+++ b/terraform/docker-compose.yml[m
[36m@@ -0,0 +1,7 @@[m
[32m+[m[32mservices:[m
[32m+[m[32m  terraform:[m[41m [m
[32m+[m[32m    image: hashicorp/terraform[m
[32m+[m[32m    volumes:[m
[32m+[m[32m      - .:/terraform[m
[32m+[m[32m    working_dir: /terraform[m
[32m+[m[32m    network_mode: host[m
\ No newline at end of file[m
[1mdiff --git a/terraform/prduction.tf b/terraform/prduction.tf[m
[1mnew file mode 100644[m
[1mindex 0000000..c60f7a2[m
[1m--- /dev/null[m
[1m+++ b/terraform/prduction.tf[m
[36m@@ -0,0 +1,14 @@[m
[32m+[m[32mresource "proxmox_vm_qemu" "production" {[m
[32m+[m[32m    vmid        = 2000[m
[32m+[m[32m  name        = "VM-name"[m
[32m+[m[32m  target_node = "Node to create the VM on"[m
[32m+[m[32m  iso         = "ISO file name"[m
[32m+[m
[32m+[m[32m  ### or for a Clone VM operation[m
[32m+[m[32m  clone = "template to clone"[m
[32m+[m
[32m+[m[32m  ### or for a PXE boot VM operation[m
[32m+[m[32m  # pxe = true[m
[32m+[m[32m  # boot = "scsi0;net0"[m
[32m+[m[32m  # agent = 0[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/terraform/provider.tf b/terraform/provider.tf[m
[1mnew file mode 100644[m
[1mindex 0000000..ad5e241[m
[1m--- /dev/null[m
[1m+++ b/terraform/provider.tf[m
[36m@@ -0,0 +1,34 @@[m
[32m+[m[32mterraform {[m
[32m+[m[32m  required_providers {[m
[32m+[m[32m    proxmox = {[m
[32m+[m[32m      source = "Terraform-for-Proxmox/proxmox"[m
[32m+[m[32m      version = "0.0.1"[m
[32m+[m[32m    }[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mvariable "proxmox_api_url" {[m
[32m+[m[32m    type = string[m
[32m+[m[41m  [m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mvariable "proxmox_api_token_id" {[m
[32m+[m[32m    type = string[m
[32m+[m[41m  [m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mvariable "proxmox_api_token" {[m
[32m+[m[32m    type = string[m
[32m+[m[41m  [m
[32m+[m[32m}[m
[32m+[m
[32m+[m
[32m+[m[32mprovider "proxmox" {[m
[32m+[m[32m  # Configuration options[m
[32m+[m[32m  pm_api_url = var.proxmox_api_url[m
[32m+[m[32m  pm_api_token_id = var.proxmox_api_token_id[m
[32m+[m[32m  pm_api_token_secret = var.pm_api_token_secret[m
[32m+[m[32m  pm_tls_insecure = true[m
[32m+[m
[32m+[m
[32m+[m[32m}[m
\ No newline at end of file[m
