#!/bin/bash

install() {
    if [ "$1" = "apache" ]; then
        echo "Installing Apache"
    elif [ "$1" = "mysql" ]; then
        echo "Installing MySQL"
    else
        echo "Installing PHP"
    fi
}

install "apache"
install "mysql"
install "php"
