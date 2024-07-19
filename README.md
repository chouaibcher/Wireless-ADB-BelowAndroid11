## Overview

A simple batch script to connect Android devices running versions below Android 11 to your computer over Wi-Fi using ADB.

## Prerequisites

- **Android SDK Platform Tools** installed.
- Android device with **ADB Debugging** enabled and connected to the same Wi-Fi network.

## Setup
**Edit the script**:
    - Set the `adb_path` to your ADB installation directory.
    - Replace `192.168.1.6` with your device's IP address.
    - Replace the serial number of your device (found in the `adb devices` output).


