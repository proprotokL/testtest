$ZipPath = "$env:TEMP\backup.zip"

# Compresser le Bureau
Compress-Archive -Path "$env:USERPROFILE\Desktop\*" -DestinationPath $ZipPath -Force

# Se connecter à Mega (remplace avec ton compte)
mega-login "ton.email@mega.nz" "ton_mot_de_passe"

# Envoyer le fichier ZIP sur Mega
mega-put $ZipPath /Root/backup.zip

# Récupérer le lien de partage
mega-export -a /Root/backup.zip > "$env:TEMP\link.txt"

# Supprimer le fichier local après envoi
Remove-Item -Path $ZipPath -Force
