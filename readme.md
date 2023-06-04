# Bash scripts para Vue.js

## vue-init.sh

`vue-init.sh` es un script para Linux que permite inicilizar un proyecto de Vue 3 instalando las _dependencies_ con [pnpm](https://pnpm.io/) y borrando todo el _boilerplate_ creado por defecto (`HelloWorld.vue`, `TheWelcome.vue`, etc.) y creando un par de componentes simples por defecto, además de un archivo `.env` para guardar variables de entorno (agregando este archivo a `.gitignore` para que no sea subido a GitHub).

Para poder usarlo primero deben instalar la versión para Linux de [GitHub CLI](https://cli.github.com/). Si están usando Windows, antes que nada deben instalar una [distro](https://es.wikipedia.org/wiki/Distribuci%C3%B3n_Linux) de Linux en Windows mediante [WSL](https://learn.microsoft.com/en-us/windows/wsl/install). La distro más fácil de usar es __Ubuntu__ (la última versión LTS de Ubuntu, en Junio 2023, es la 22.04).

Y para usar el script es así:

__1.__ Ir al dir `/home` de Linux, clonar este repositorio, dirigirse del repo y autorizar la ejecución del script:

```sh
# ir a /home
cd
# clonar el repo
gh repo clone dav-leda/bash-scripts-for-fue
# ir al dir del repo
cd bash-scripts-for-vue
# autorizar la ejecución del script
chmod u+x vue-init.sh
```
__2.__ Luego, en cualquier otro dir que quieran, crean un nuevo proyecto de Vue 3 con pnpm:

```sh
pnpm create vue@3
```

__3.__ Luego de creado el proyecto ejecutan el script (sin cambiar de dir) agregando luego del script el nombre del proyecto que acaban de crear:

```sh
~/bash-scripts/vue-init.sh nombre-del-proyecto
```

__4.__ Una vez que arranca el servidor de desarrollo de Vite entrar con el browser a la URL de desarrollo (suele ser `http://localhost:5173/`).

Y listo, ya pueden ver el proyecto inicial corriendo en el browser 🥳️

