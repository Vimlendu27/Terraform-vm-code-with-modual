lbname             = "lb-todoapp"
backendpool        = "todoapp_backendpool"
backendpooladdress = "todoapp_backendaddress"

vms = {
  "vm-ratan-todoapp-frontend" = {
    vmname                 = "vm-minhaj-todoapp-frontend"
    network_interface_name = "nic-frontend-1"
  },
  "vm-ratan-todoapp-frontend2" = {
    vmname                 = "vm-minhaj-todoapp-frontend2"
    network_interface_name = "nic-frontend-2"
  }
}

probename = "frontendprobe"
port      = "80"
protocol  = "Tcp"
interval  = "5"

lbrule       = "frontendrule"
frontendport = "80"
backendport  = "80"
