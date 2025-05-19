resource "null_resource" "vagrant_vm" {
  provisioner "local-exec" {
    command = "vagrant up --no-provision"
  }

  triggers = {
    always_run = "${timestamp()}"
  }
}
