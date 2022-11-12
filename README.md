# Stealth Server

[![](https://img.shields.io/badge/guide-Stealth%20Bastard%20Deluxe-5acc4a?logo=steam)](https://steamcommunity.com/sharedfiles/filedetails/?id=2822824183) [![](https://img.shields.io/badge/guide-Stealth%20Inc.%202-d97720?logo=steam)](https://steamcommunity.com/sharedfiles/filedetails/?id=2882031791)

Community level server prototype for [Stealth Bastard Deluxe](https://store.steampowered.com/app/209190) & [Stealth Inc. 2](https://store.steampowered.com/app/329380).

Uses powershell and [PServeREST](https://github.com/Tadas/PServeREST).

## Installation

[Download](https://github.com/heatray/stealth-server/releases/latest) and extract archive.

Run notepad as administrator, open hosts file located at `C:\Windows\System32\drivers\etc\hosts`, paste these lines and save.
```
127.0.0.1  default-environment-vk7dhyhsng.elasticbeanstalk.com  # Stealth Bastard
127.0.0.1  stealthinc2sony.elasticbeanstalk.com                 # Stealth Inc 2
```

Run `run_server.bat`.
