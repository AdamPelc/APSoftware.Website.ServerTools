#!/usr/bin/python3
import subprocess

def install_updates():
    subprocess.call(["apt", "update"])
    subprocess.call(["apt", "upgrade", "-y"])

def main():
    install_updates()
    # useradd --create-home adampelc

if __name__ == "__main__":
    main()