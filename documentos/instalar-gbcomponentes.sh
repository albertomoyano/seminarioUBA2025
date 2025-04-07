#!/bin/bash

# Lista de componentes que necesita tu programa
# Puedes modificar esta lista según los que realmente use tu app
COMPONENTES=(
    gambas3-runtime
    gambas3-gb-db
    gambas3-gb-db-sqlite3
    gambas3-gb-dbus
    gambas3-gb-desktop
    gambas3-gb-form
    gambas3-gb-form-dialog
    gambas3-gb-form-terminal
	gambas3-gb-image
	gambas3-gb-inotify
	gambas3-gb-net
	gambas3-gb-net-curl
	gambas3-gb-qt5
	gambas3-gb-qt5-ext
	gambas3-gb-settings
	gambas3-gb-term
	gambas3-gb-util
)

echo "Detectando distribución..."

# Detectar distribución
if [ -f /etc/os-release ]; then
    . /etc/os-release
    DISTRO=$ID
else
    echo "No se pudo detectar la distribución. Instalación cancelada."
    exit 1
fi

# Instalar según distribución
case "$DISTRO" in
    ubuntu|debian|linuxmint)
        echo "Distribución Debian/Ubuntu/Mint detectada. Instalando componentes..."
        sudo apt update
        for comp in "${COMPONENTES[@]}"; do
            sudo apt install -y "$comp"
        done
        ;;

    opensuse*|suse)
        echo "Distribución openSUSE detectada. Instalando componentes..."
        for comp in "${COMPONENTES[@]}"; do
            sudo zypper install -y "$comp"
        done
        ;;

    fedora)
        echo "Distribución Fedora detectada. Instalando componentes..."
        for comp in "${COMPONENTES[@]}"; do
            sudo dnf install -y "$comp"
        done
        ;;

    arch|manjaro)
        echo "Distribución Arch/Manjaro detectada. Instalando componentes..."
        for comp in "${COMPONENTES[@]}"; do
            sudo pacman -S --noconfirm "$comp"
        done
        ;;

    *)
        echo "Distribución $DISTRO no soportada automáticamente."
        echo "Por favor instala manualmente los siguientes componentes:"
        printf '%s\n' "${COMPONENTES[@]}"
        exit 1
        ;;
esac

echo "Todos los componentes de Gambas han sido instalados correctamente."