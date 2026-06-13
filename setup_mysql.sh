#!/bin/bash

install() {
    if [ "$1" = "mysql" ]; then
        echo "Installing MySQL"
    elif [ "$1" = "apache" ]; then
        echo "Installing Apache"
    else
        echo "Invalid"
    fi
}

install "mysql"
