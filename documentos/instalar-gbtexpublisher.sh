#!/bin/bash

# Lista de componentes que necesita tu programa
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
    gambas3-gb-util-web
)

echo "Detectando distribución..."

if [ -f /etc/os-release ]; then
    . /etc/os-release
    DISTRO=$ID
else
    echo "No se pudo detectar la distribución. Instalación cancelada."
    exit 1
fi

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

case "$DISTRO" in
    ubuntu|debian|linuxmint)
        echo "Distribución Debian/Ubuntu/Mint detectada."
        apt update &>/dev/null || echo "[ADVERTENCIA] Falló apt update (se ignora)..."
        instalar_si_faltan "dpkg -s" "apt install -y"
        ;;

    opensuse*|suse)
        echo "Distribución openSUSE detectada."
        instalar_si_faltan "rpm -q" "zypper install -y"
        ;;

    fedora)
        echo "Distribución Fedora detectada."
        instalar_si_faltan "rpm -q" "dnf install -y"
        ;;

    arch|manjaro)
        echo "Distribución Arch/Manjaro detectada."
        instalar_si_faltan "pacman -Q" "pacman -S --noconfirm"
        ;;

    *)
        echo "Distribución $DISTRO no soportada."
        printf '%s\n' "${COMPONENTES[@]}"
        exit 1
        ;;
esac

echo "Componentes de Gambas verificados."

if [[ "$DISTRO" =~ (ubuntu|debian|linuxmint) ]]; then
    DEB_URL="https://github.com/albertomoyano/gbtexpublisher/releases/download/deb-2025.04.19/gbtexpublisher0_0.1.662-0ubuntu1_all.deb"
    DEB_FILE="gbtexpublisher.deb"
    
    echo "Descargando gbtexpublisher..."
    if wget "$DEB_URL" -O "$DEB_FILE"; then
        echo "Instalando..."
        dpkg -i "./$DEB_FILE" || apt install -f -y
        rm -f "$DEB_FILE"
    else
        echo "Error al descargar."
        exit 1
    fi
else
    echo "Solo disponible para Debian/Ubuntu/Mint."
fi