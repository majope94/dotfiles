#!/bin/bash

PKGS="$(cat .pkgs)"

install_on_arch() {
    sudo pacman -Syu --noconfirm ${PKGS}
}

install_on_fedora() {
    sudo dnf install -y ${PKGS}
}

install_on_ubuntu() {
    sudo apt-get update
    sudo apt-get install -y ${PKGS}
}

install_on_mac() {
    brew install ${PKGS}
}

OS="$(uname -s)"
case "${OS}" in
    Linux*)
        if [ -f /etc/fedora-release ]; then
            install_on_fedora
        elif [ -f /etc/lsb-release ]; then
            # Source the file to import variables like DISTRIB_ID
            . /etc/lsb-release
            
            # Check DISTRIB_ID with flexible case matching
            case "${DISTRIB_ID}" in
                [Cc]achy[Oo][Ss]|[Aa]rch*)
                    install_on_arch
                    ;;
                [Uu]buntu)
                    install_on_ubuntu
                    ;;
                *)
                    echo "Unsupported Linux distribution: ${DISTRIB_ID}"
                    exit 1
                    ;;
            esac
        else
            echo "Unsupported Linux distribution"
            exit 1
        fi
        ;;
    Darwin*)
        install_on_mac
        ;;
    *)
        echo "Unsupported operating system: ${OS}"
        exit 1
        ;;
esac

echo "Installed packages: ${PKGS}"
