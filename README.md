# dotfiles

0. definir una estructura para el dotfile (install, editor/, shell/, general-purpouse/, README.md, etc)
1. falta instalar `vim` o `neovim`
2. falta chequear si el paquete está instalado. si no está, instalarlo.
3. falta instalar `silversearcher-ag`
4. en `zshrc` está el usuario `baila`. ver como levanto el usuario actual
5. incluir plugins y configuraciones para vim


## ordenar instalacion
centralizar todo en install y definir estructura: raiz, raiz/editor, raiz/otra

1. `build-essencial` intallation

2.`curl` installation

3.`ssh` instalattion

4.`shh-keygen` public key generation

5.`vim` installation

6`vim` configuration (+ clipboard copy) : 
  
    i. install `sudo apt-get install vim-gtk`
    ii. open vim .vimrc
    iii. add `set clipboard=unnamedplus`
    iv. clone fedeotaran repository: `https://github.com/fedeotaran/vim-config`

7.`zsh` installation

    i. set default shell: `chsh -s (which zsh)`
    ii. tunning the shell: `sudo apt install zsh-lovers zsh-syntax-highlighting` 
   
8`zsh` configuration

    i. put [this content](https://github.com/maira1001001/dotfiles/blob/master/plugins/baila/zshrc.zsh) into `.zshrc` 

9.`tmux` installation

10.`tmux` configuration

11.`rbenv`

12.`ruby`

13.`rails`

14. other tools: `silversearcher-ag`
