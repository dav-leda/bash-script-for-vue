#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Debes ingresar el nombre del proyecto."
else
  dir="$1"

  if [ -d "./$dir" ]; then
    
    cd $dir

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

  else
    echo "No existe un proyecto con el nombre '$dir'."
  fi
fi
