resource "null_resource" "vagrant_vm" {
  provisioner "local-exec" {
    command = "vagrant up"
  }

  provisioner "local-exec" {
    when    = destroy
    command = "vagrant destroy -f"
  }

  triggers = {
    always_run = "${timestamp()}"
  }
}
