# Trabajo Práctico: Introducción al Entorno de Máquinas Virtuales

## 1. ¿Qué es una máquina virtual (VM)?

Una **máquina virtual (VM)** es un entorno virtual que emula una computadora física. Permite ejecutar sistemas operativos completos dentro de otro sistema operativo, utilizando recursos compartidos del hardware real.

### Características principales:
- Simula una computadora completa (CPU, memoria, disco, red, etc.)
- Corre sobre un sistema operativo anfitrión (host)
- Puede ejecutar cualquier sistema operativo compatible como invitado (guest)
- Es independiente del hardware físico

---

## 2. ¿Qué es un hipervisor?

El **hipervisor** es el software encargado de crear, administrar y ejecutar las máquinas virtuales.

### Tipos de hipervisores:
- **Tipo 1 (bare-metal)**: corre directamente sobre el hardware del sistema. Ej: VMware ESXi, Microsoft Hyper-V Server, Xen.
- **Tipo 2 (hosted)**: corre sobre un sistema operativo anfitrión. Ej: VirtualBox, VMware Workstation, QEMU, GNOME Boxes.

---

## 3. ¿Qué es Oracle VirtualBox?

**Oracle VirtualBox** es un hipervisor de tipo 2 desarrollado por Oracle. Es un programa gratuito y de código abierto que permite crear y administrar máquinas virtuales desde sistemas operativos como Windows, macOS, Linux y Solaris.

> ❗ Importante: Aunque el nombre del programa es "VirtualBox", el término **"virtual box" no debe confundirse** con el concepto general de "máquina virtual".

---

## 4. Otros gestores de máquinas virtuales

No todo el mundo usa VirtualBox. Existen muchos otros programas para gestionar máquinas virtuales:

| Nombre del Software | Tipo de Hipervisor | Sistema Operativo Soportado | Características |
|---------------------|--------------------|------------------------------|-----------------|
| **VMware Workstation Player** | Tipo 2 | Windows, Linux | Muy usado en empresas |
| **GNOME Boxes** | Tipo 2 | Linux (entorno GNOME) | Muy simple y directo |
| **QEMU/KVM** | Tipo 2 (con KVM usa virtualización asistida por hardware) | Linux | Muy potente, usado en servidores |
| **Virt-Manager** | Interfaz para KVM/QEMU | Linux | Gestión avanzada |
| **Parallels Desktop** | Tipo 2 | macOS | Muy popular en Apple Silicon |
| **Hyper-V** | Tipo 1 o 2 | Windows | Integrado en Windows Pro y Enterprise |

---

## 5. Diferencias entre el concepto y el programa

| Concepto | Programa específico |
|----------|---------------------|
| Máquina Virtual | VirtualBox, VMware, QEMU, etc. |
| Hipervisor | Software que crea VMs |
| VirtualBox | Nombre comercial del software de Oracle |

> ⚠️ **VirtualBox no es sinónimo de máquina virtual.** Es solo uno de los programas que permiten usar máquinas virtuales.

---

## 6. ¿Por qué usamos máquinas virtuales en clase?

- Para **practicar con distintos sistemas operativos** (por ejemplo, Linux dentro de Windows)
- Para **experimentar sin miedo a romper el sistema real**
- Para **crear entornos aislados para pruebas**

---

## 7. Glosario

- **Host**: sistema operativo anfitrión
- **Guest**: sistema operativo invitado (el que corre dentro de la VM)
- **Snapshot**: punto de restauración de la VM
- **ISO**: imagen del sistema operativo a instalar

