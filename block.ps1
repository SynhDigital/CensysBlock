# Liste des plages d'IP à bloquer
$subnets = @(
    "162.142.125.0/24",
    "167.248.133.0/24",
    "167.94.138.0/24",
    "206.168.32.0/24",
    "206.168.33.0/24",
    "206.168.34.0/24",
    "206.168.35.0/24"
)

# Ajout des règles au pare-feu Windows pour chaque plage d'IP
foreach ($subnet in $subnets) {
    $ruleName = "BlockIP_$subnet"
    Write-Host "Blocage du subnet $subnet"
    New-NetFirewallRule -DisplayName $ruleName -Direction Inbound -Action Block -RemoteAddress $subnet
}

Write-Host "Toutes les plages d'IP spécifiées ont été bloquées."
