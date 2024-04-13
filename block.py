import subprocess

def block_ip(subnets):
    for subnet in subnets:
        command = ["iptables", "-A", "INPUT", "-s", subnet, "-j", "DROP"]
        subprocess.call(command)
        print(f"Blocage du trafic depuis {subnet}")

if __name__ == "__main__":
    subnets = [
        "162.142.125.0/24",
        "167.248.133.0/24",
        "167.94.138.0/24",
        "206.168.32.0/24",
        "206.168.33.0/24",
        "206.168.34.0/24",
        "206.168.35.0/24"
    ]

    block_ip(subnets)
    print("Toutes les plages d'IP spécifiées ont été bloquées.")
