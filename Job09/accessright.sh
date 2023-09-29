csv_file="Shell_Userlist.csv"

while IFS=',' read -r Id Prenom Nom Mdp Role; do
if [ "$Id" != "Id" ]; then
username="${Prenom}${Nom}"
if id "$username" &>/dev/null; then
echo "L'utilisateur $username existe déjà."
else
useradd -m -u "$Id" "$username"
echo "$username:${Mdp}" | chpasswd
echo "L'utilisateur $username a été crée."
if [ "$Role" = "Admin" ]; then
usermod -aG sudo"$username"
echo "L'utilisateur $username a été ajouté au groupe sudo."
else
echo "L'utilisateur $username est pas administrateur."
fi
fi
fi
done < "$csv_file"
