echo "Ingresa un nombre para ver su genero"
read nombre


response=$(curl -s "https://api.genderize.io/?name=$nombre")


genero=$(echo "$response" | jq -r ".gender")


if [[ "$genero" == "male" ]]; then
    echo "El genero para el nombre $nombre es: Hombre"
elif [[ "$genero" == "female" ]]; then
    echo "El genero para el nombre $nombre es: Mujer"
else
    echo "No se pudo determinar el genero para el nombre $nombre."
fi