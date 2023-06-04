#!/bin/bash

# chequear si el usuario agregó el nombre del proyecto
# si no lo agregó detener la ejecución y mostrar el mensaje de error
if [ "$#" -eq 0 ]; then
  echo "Debes agregar el nombre del proyecto luego del script: vue-init.sh nombre-del-proyecto"
  exit 1
fi

# el script toma como primer param el dir del proyecto
cd $1

# crear los archivos .env
touch .env .env.example

# en ambos archivos incluir VITE_API_URL
echo "VITE_API_URL=" >> .env 
echo "VITE_API_URL=" >> .env.example

# agregar .env a .gitignore
echo "# ignore env file" >> .gitignore
echo ".env" >> .gitignore

# borrar todo el contenido del directorio src
cd src
rm -rf *

# copiar el nuevo contenido a src
cp -a ~/bash-script-for-vue/template/src/* .

# volver a la raiz del proyecto
cd ..

# instalar deps
pnpm install

# abrir con VS Code
code .

# correr el servidor de desarrollo de vite
pnpm run dev

