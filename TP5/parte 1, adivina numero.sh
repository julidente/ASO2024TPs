#!/bin/bash

numero_secreto=$((RANDOM % 100 + 1))
numero=0

echo "Bienvenido al juego de adivinar el numero"
echo "se genero un numero entre 1 y 100. Intenta adivinarlo."

leer_numero() {
    read -p "Introduce tu numero: " numero
    while ! [[ "$numero" =~ ^[0-9]+$ ]] || [ "$numero" -lt 1 ] || [ "$numero" -gt 100 ]; do
        echo "Por favor, introduce un numero valido entre 1 y 100."
        read -p "Introduce tu numero: " numero
    done
}
 
 while [ "$numero" -ne "$numero_secreto" ]; do
    leer_numero
    if [ "$numero" -lt "$numero_secreto" ]; then
        echo "Demasiado bajo. Intenta de nuevo."
    elif [ "$numero" -gt "$numero_secreto" ]; then
        echo "Demasiado alto. Intenta de nuevo."
    fi
done

echo "Felicidades! Adivinaste el numero $numero_secreto."
