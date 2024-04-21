# IP Blocker Scripts Censys Scan

Ce dépôt contient deux scripts pour bloquer des plages d'adresses IP spécifiques à l'aide de règles de pare-feu. Les scripts sont disponibles pour deux environnements différents : Linux avec Python et Windows avec PowerShell.

## Contenu

- `block.py` - Script Python pour bloquer des plages d'IP sur Linux.
- `routes.py` - Script Python pour bloquer des plages d'IP sur Linux avec ip route.
- `block.ps1` - Script PowerShell pour bloquer des plages d'IP sur Windows.

## Prérequis

### Pour le script Python
- Linux OS avec `iptables` installé.
- Python 3.4 ou une version ultérieure.

### Pour le script PowerShell
- Windows 8/10/11 avec les droits administratifs.
- PowerShell 5.0 ou une version ultérieure.
