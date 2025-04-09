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
	gambas3-gb-qt5-webview
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

# Función para instalar componentes si no están instalados
instalar_si_faltan() {
    local comando_check=$1
    local comando_instalar=$2

    for comp in "${COMPONENTES[@]}"; do
        if ! eval "$comando_check $comp" &>/dev/null; then
            echo "Instalando $comp..."
            eval "$comando_instalar $comp"
        else
            echo "$comp ya está instalado. Omitiendo."
        fi
    done
}

# Instalar según distribución
case "$DISTRO" in
    ubuntu|debian|linuxmint)
        echo "Distribución Debian/Ubuntu/Mint detectada."
        sudo apt update
        instalar_si_faltan "dpkg -s" "sudo apt install -y"
        ;;

    opensuse*|suse)
        echo "Distribución openSUSE detectada."
        instalar_si_faltan "rpm -q" "sudo zypper install -y"
        ;;

    fedora)
        echo "Distribución Fedora detectada."
        instalar_si_faltan "rpm -q" "sudo dnf install -y"
        ;;

    arch|manjaro)
        echo "Distribución Arch/Manjaro detectada."
        instalar_si_faltan "pacman -Q" "sudo pacman -S --noconfirm"
        ;;

    *)
        echo "Distribución $DISTRO no soportada automáticamente."
        echo "Por favor instala manualmente los siguientes componentes:"
        printf '%s\n' "${COMPONENTES[@]}"
        exit 1
        ;;
esac

echo "Todos los componentes de Gambas han sido verificados e instalados según necesidad."
