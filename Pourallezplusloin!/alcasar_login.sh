#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 email password"
    exit 1
fi

login_url="https://alcasar.laplateforme.io/status.php"

email="maxence.vaisse@laplateforme.io"
password="Maxence13340!"

curl -d "email=$email&password=$password" >/dev/null 2>&1 -X POST "$login_url" --cookie-jar cookies.txt --cookie cookies.txt

if [ $? -eq 0 ]; then
    echo "Connexion à Alcasar réussie."
else
    echo "Échec de la connexion à Alcasar."
fi
