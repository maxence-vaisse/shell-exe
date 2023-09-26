nombre1="$1"
symbole="$2"
nombre2="$3"

if [ "$symbole" = + ];
then resultat=$(("$nombre1" + "$nombre2"))
elif [ "$symbole" = - ];
then resultat=$(("$nombre1" - "$nombre2"))
elif [ "$symbole" = * ];
then resultat=$(("$nombre1" * "$nombre2"))
elif [ "$symbole" = / ];
then resultat=$(("$nombre1" / "$nombre2"))
else echo "fail"
fi

echo "résultat: $resultat"
