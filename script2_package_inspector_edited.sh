#!/bin/bash
# Script 2 - FOSS Package Inspector
# Author: Klemens Danny | Reg No: 24BCE10176
# Course: Open Source Software | Slot: [Your Slot]
# Checks if a package is installed and shows some info about it
# also prints a short note about the philosophy behind each tool

# taking package name as input, defaulting to kernel if nothing is given
PACKAGE=${1:-"kernel"}

echo "========================================"
echo "  FOSS Package Inspector"
echo "  Checking: $PACKAGE"
echo "========================================"
echo "Author : Klemens Danny"
echo "Reg No : 24BCE10176"
echo ""

# checking if the package exists using rpm -q
# redirecting output to /dev/null so we only see our own messages
if command -v "$PACKAGE" >/dev/null 2>&1; then
    echo "$PACKAGE is installed on this system."
    "$PACKAGE" --version | head -1
else
    echo "$PACKAGE does not seem to be installed."
    echo "You can try: brew install $PACKAGE"
fi

echo ""
echo "----------------------------------------"
echo " A little about this software:"
echo "----------------------------------------"

# case statement to print a short note based on which package was checked
# I added a few common ones and the ones from the assignment list
case "$PACKAGE" in
    kernel)
        echo "Linux Kernel - started by Linus Torvalds in 1991"
        echo "because he just wanted a free Unix for his own PC."
        echo "Now it runs most of the internet and every Android phone."
        ;;
    httpd | apache2)
        echo "Apache HTTP Server - one of the first open web servers."
        echo "Played a huge role in making the web accessible to everyone."
        ;;
    mysql | mariadb)
        echo "MySQL - a database used in millions of apps worldwide."
        echo "Interesting dual licence model - GPL and commercial."
        ;;
    git)
        echo "Git - Torvalds built this in about 10 days after BitKeeper"
        echo "revoked free access. Shows what frustration can create."
        ;;
    vlc)
        echo "VLC - built by students at a French university."
        echo "They just wanted to stream video on campus. Now everyone uses it."
        ;;
    firefox)
        echo "Firefox - Mozilla's fight to keep the web open."
        echo "Important alternative when IE was dominating everything."
        ;;
    *)
        echo "$PACKAGE is part of the open source world."
        echo "Most of what we use daily is built on free software like this."
        ;;
esac

echo "========================================"
