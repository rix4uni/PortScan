# PortScan
 Port Scanning with ffuf

# Installation
```
git clone https://github.com/rix4uni/PortScan.git && cd PortScan && chmod +x install.sh portscan && ./install.sh && cd .. && mv PortScan ~/bin && source ~/.bashrc
```

# Usage
```yaml
                 ____  _____  ____  ____  ___   ___    __    _  _
                (  _ \(  _  )(  _ \(_  _)/ __) / __)  /__\  ( \( )
                 )___/ )(_)(  )   /  )(  \__ \( (__  /(__)\  )  (
                (__)  (_____)(_)\_) (__) (___/ \___)(__)(__)(_)\_)
                PortScan v1.1                    coded by @rix4uni in INDIA
TARGET OPTIONS:
   -l, -list, string            list of hosts to scan ports (file)
   -tp, -top-ports, string      top ports to scan (default 100) [100,1000,Full,Favourite]
   -t, -threads int             number of threads to use (default 5000)
   -rl, -rate-limit int         maximum requests to send per second (default 150)
   -sc, -status-code            display response status-code
   -h, --help                   display help

USAGE EXAMPLES:
   portscan -l subs.txt -top-ports 100 -t 5000 -rl 1000 -sc 200,301,302,401,403
   portscan -l subs.txt -p - -t 5000 -rl 1000 -sc 200,301,302,401,403
   portscan -l subs.txt -favourite -t 5000 -rl 1000 -sc 200,301,302,401,403
```

# Ports Usage
Check this directory `default-port-list` contains default ports list in `.txt` files

| Flag              | Description                          |
|-------------------|--------------------------------------|
| `-top-ports 100`  | Scan for nmap top **100** port       |
| `-top-ports 1000` | Scan for nmap top **1000** port      |
| `-p - `           | Scan for full ports from **1-65535** |
| `-favourite`      | Scan my favourite ports from default-port-list |
