#!/bin/bash

# check arg
if [[ "$1" == "" ]]
then
  echo "Não foi passado nenhum argumento"
else
  ALVO="$1"
  URL='https://crt.sh/?q=%.'$ALVO'&output=json'
  curl -s $URL | jq '.[] | {name_value}' | sed 's/\"//g' | sed 's/\*\.//g' | sort -u | sed 's/name_value: //g'
fi
