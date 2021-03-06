# Configuraci贸n Terminal y NeoVim

<aside>
La configuraci贸n ha sido probada solo en mac... hasta el momento
</aside>

## Instalaci贸n

### Antes de comenzar es necesario instalar estas herramientas:

- [Iterm2](https://iterm2.com/) (solo para mac)
- [Homebrew](https://brew.sh/index_es) (solo para mac)
- [zsh y Oh my Zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
- [Starship](https://starship.rs/)
- [NeoVim](https://neovim.io/)
- [The Silver Searcher](https://github.com/ggreer/the_silver_searcher)

<aside>
馃挕 Clonar este repositorio en la ruta ~
</aside>

### Crear enlaces simb贸licos a los archivos de configuraci贸n

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

`:vsp` 鈫? Crea un panel vertical

![Panel vertical](https://github.com/vsantis/configs/blob/main/screenshots/panel-vertical.png)

---

`:sp` 鈫? Crea un panel horizontal

![Panel horizontal](https://github.com/vsantis/configs/blob/main/screenshots/panel-horizontal.png)

**Space** + **control** + **h** 鈫扨ara cambiar al panel de la izquierda

**Space** + **control** + **l** 鈫? Para cambiar al panel de la derecha

**Space** + **control** + **j** 鈫? Para cambiar al panel de abajo

**Space** + **control** + **k** 鈫? Para cambiar al panel de arriba

---

**Space** + **tt** 鈫? Abre un panel con el 谩rbol del directorio (NERDTree)

![nerdtree](https://github.com/vsantis/configs/blob/main/screenshots/nerdtree.png)

Presionar **m** para ver las distintas opciones que hay para administrar los archivos y carpetas

---

**Space** + **ag** 鈫? Para abrir el buscador de archivos

![Buscador de archivos](https://github.com/vsantis/configs/blob/main/screenshots/buscador-archivos.png)
