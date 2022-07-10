# Configuración Terminal y NeoVim

<aside>
La configuración ha sido probada solo en mac... hasta el momento
</aside>

## Instalación

### Antes de comenzar es necesario instalar estas herramientas:

- [Iterm2](https://iterm2.com/) (solo para mac)
- [Homebrew](https://brew.sh/index_es) (solo para mac)
- [zsh y Oh my Zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
- [Starship](https://starship.rs/)
- [NeoVim](https://neovim.io/)
- [The Silver Searcher](https://github.com/ggreer/the_silver_searcher)

<aside>
💡 Clonar este repositorio en la ruta ~
</aside>

### Crear enlaces simbólicos a los archivos de configuración

```bash
ln -s ~/configs/.zshrc ~/.zshrc
```

```bash
ln -s ~/configs/.vim ~/.vim
```

```bash
ln -s ~/configs/nvim ~/.config/nvim/
```

Abrir NeoVim en la terminal con el comando `nvim` y escribir el comando `:PlugInstall` para comenzar a instalar los plugins de NeoVim.

## Shortcuts

`:vsp` → Crea un panel vertical

![Panel vertical](https://github.com/vsantis/configs/blob/main/screenshots/panel-vertical.png)

---

`:sp` → Crea un panel horizontal

![Panel horizontal](https://github.com/vsantis/configs/blob/main/screenshots/panel-horizontal.png)

**Space** + **control** + **h** →Para cambiar al panel de la izquierda

**Space** + **control** + **l** → Para cambiar al panel de la derecha

**Space** + **control** + **j** → Para cambiar al panel de abajo

**Space** + **control** + **k** → Para cambiar al panel de arriba

---

**Space** + **tt** → Abre un panel con el árbol del directorio (NERDTree)

![nerdtree](https://github.com/vsantis/configs/blob/main/screenshots/nerdtree.png)

Presionar **m** para ver las distintas opciones que hay para administrar los archivos y carpetas

---

**Space** + **ag** → Para abrir el buscador de archivos

![Buscador de archivos](https://github.com/vsantis/configs/blob/main/screenshots/buscador-archivos.png)
