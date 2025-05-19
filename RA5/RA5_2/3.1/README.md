# Terraform + Vagrant + VirtualBox

Este proyecto permite crear una máquina virtual en **VirtualBox** utilizando un **box personalizado de Vagrant Cloud**.  
Terraform ejecuta el comando `vagrant up` como parte del flujo, automatizando la creación de la VM.

---

## 📦 Box usado

- **Nombre:** `BaseBox-lleo/UbuntuServer24-04`
- **Versión:** `1`
- **Proveedor:** `virtualbox`
- **URL directa:** [https://vagrantcloud.com/BaseBox-lleo/boxes/UbuntuServer24-04/versions/1/providers/virtualbox.box](https://vagrantcloud.com/BaseBox-lleo/boxes/UbuntuServer24-04/versions/1/providers/virtualbox.box)

---

## ✅ Requisitos

Asegúrate de tener instalado lo siguiente:

- [Terraform](https://www.terraform.io/)
- [Vagrant](https://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)

---

## 📁 Estructura del proyecto

```
ubuntu_vm_project/
├── main.tf         # Archivo de Terraform que ejecuta Vagrant
└── Vagrantfile     # Define la VM y el box a usar
```

---

## 📝 Vagrantfile

```ruby
Vagrant.configure("2") do |config|
  config.vm.box = "BaseBox-lleo/UbuntuServer24-04"
  config.vm.box_version = "1"
  config.vm.box_url = "https://vagrantcloud.com/BaseBox-lleo/boxes/UbuntuServer24-04/versions/1/providers/virtualbox.box"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "UbuntuServer24-04-Terraform"
    vb.memory = 2048
    vb.cpus = 2
  end
end
```

---

## 🧩 main.tf (Terraform)

```hcl
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
```

---

## 🚀 Cómo usarlo

1. Clona este repositorio o crea una carpeta y copia los archivos:
   ```bash
   mkdir ubuntu_vm_project && cd ubuntu_vm_project
   ```

2. Coloca los archivos `main.tf` y `Vagrantfile` con el contenido de arriba.

3. Inicializa Terraform:
   ```bash
   terraform init
   ```

4. Aplica el plan (esto ejecutará `vagrant up`):
   ```bash
   terraform apply
   ```

5. Para destruir la VM:
   ```bash
   terraform destroy
   ```

---

## ⚠️ Notas importantes

- Terraform no gestiona directamente la VM, solo ejecuta `vagrant` como un paso externo.
- El box se descargará automáticamente desde Vagrant Cloud la primera vez.
- Si deseas exponer puertos, agregar red NAT o configurar provisioners, hazlo en el `Vagrantfile`.

---

## 📚 Créditos

- Box mantenido por [BaseBox-lleo](https://vagrantcloud.com/BaseBox-lleo)
