# Guide to install nvim

## Prerequsite

- `mkdir ~/.config/zsh`

## Git 

Check and install the latest [git](https://git-scm.com/download/linux)

- Arch: `pacman -S git`

- Debian/Ubuntu: `apt-get install git`

Config

- `git config --global user.name "..."`

- `git config --global user.email "..."`
- `git config --global http.postBuffer 524288000` (this is to solve the error [error: RPC failed; curl transfer closed with outstanding read data remaining](https://stackoverflow.com/questions/38618885/error-rpc-failed-curl-transfer-closed-with-outstanding-read-data-remaining)
    by incrementing buffer size)
- `git clone https://github.com/elvis-wenhao-wu/dotfiles.git`


## Shell

* zshell 

    * [Installation guide from oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
- Arch: `pacman -S zsh`
  
- Debian/Ubuntu: `apt install zsh`
  
* oh-my-zsh

    * Basics 

        * MesloLGS NF font (in [nerd-fonts](https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts) family)

            * Install through [Ad Hoc Curl Download](https://github.com/ryanoasis/nerd-fonts#option-6-ad-hoc-curl-download)

                - Linux: 
                  
                  ```
                  mkdir -p ~/.local/share/fonts
                  cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
                  ```

            Note: Under this method, the font will be automatically activated

        * oh-my-zsh

            * [Manual Installation](https://github.com/ohmyzsh/ohmyzsh#manual-installation)

                ```
            git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
                cp ~/.zshrc ~/.zshrc.orig
            cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
                chsh -s $(which zsh)
            source ~/.zshrc
                ```

        * gruvbox theme (optional) 

            * Add gruvbox.zsh-theme to oh-my-zsh theme folder

                `cp dotfiles/zsh/gruvbox.zsh-theme ~/.oh-my-zsh/custom/themes`

            Note: 

            * This is the modified version of [gruvbox.zsh-theme](https://github.com/sbugzu/gruvbox-zsh), modified from commit e7eada5c213e40a0453e354e7ccbbeecfa69d5ac

            * This is not enough to make terminal appears like gruvbox. If you do want so, please install gruvbox theme for terminal

            * However, this is enough in ssh mode (if you set gruvbox for alacritty and zsh on macos like me)

    * Install Extensions (optional)

        * zsh-autosuggestions (pretty slow)

            * [Install through oh-my-zsh](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh)

                ```
         git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
                ```

            - Add the plugin to the list of plugins for Oh My Zsh to load (inside ~/.zshrc)

                ```
        plugins=(zsh-autosuggestions)
                ```

            - Boost performance by enabling async mode and disabling automatic widget re-binding (optional)

                `mv dotfiles/zsh/internals.zsh ~/.oh-my-zsh/custom/`

* zshrc

    * Move .zshrc to the home folder

        `mv dotfiles/zsh/.zshrc ~/.zshrc`

    Reference: [customize your terminal oh-my-zsh on ubuntu](https://medium.com/@thecaffeinedev/customize-your-terminal-oh-my-zsh-on-ubuntu-18-04-lts-a9b11b63f2)

## Programming

* Install conda 

    * [Linux installers](https://docs.conda.io/en/latest/miniconda.html#linux-installers)

        * Download

            `curl https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o miniconda3.sh`

        * Specify conda location to $HOME/.conda (purpose: hide conda location)

        * Copy conda init script from .bashrc to .zshrc (purpose: conda can be found in zsh)

        * Copy .condarc prepared (purpose: deactivate conda at shell startup) 

            `cp dotfiles/conda/.condarc ~/`

    * Create an environment with a specific version of Python 

        e.g. `conda create --name primary python=3.9.0`

* Install python (optional)

    Linux normally shipped with python3 as default. Update it with package manager.

* Install node

    - Arch

        [Arch wiki](https://wiki.archlinux.org/index.php/Node.js_)
        
        `sudo pacman -S nodejs-lts-fermium npm`

        Note: separate install for node and npm

    - Debian

        [Nodesource](https://github.com/nodesource/distributions) installation of node and npm 

## Nvim

* [Prerequisite](https://github.com/ChristianChiarulli/nvim)

    * neovim

        * [neovim git repo](https://github.com/neovim/neovim/wiki/Installing-Neovim)

        * Install by yay

            `yay -S neovim-nightly-git`

        * Install by builds

            ```
        git clone https://aur.archlinux.org/neovim-nightly.git
            cd neovim-nightly
        makepkg -si
            ```

    * bat (for lf & fzf preview)

        * [bat git repo](https://github.com/sharkdp/bat#installation)

            `sudo pacman -S bat`

    * fd (for lf & fzf preview)

        * [fd git repo](https://github.com/sharkdp/fd)

            `sudo pacman -S fd`

    * lf terminal file manager

        * Refer to [lf git repo](https://github.com/gokcehan/lf) for installation method

            ```
        git clone https://aur.archlinux.org/lf.git
            cd lf
        makepkg -si
            ```

        * Copy lf configuration prepared 

            `cp -r dotfiles/lf ~/.config`

            `cp dotfiles/zsh/lf.zsh ~/.config/zsh/`

    * fzf

        * [fzf git repo](https://github.com/junegunn/fzf#fuzzy-completion-for-bash-and-zsh)

            `sudo pacman -S fzf`

        * Copy fzf configuration prepared

            `cp dotfiles/zsh/fzf.zsh ~/.config/zsh/`

        * change keybindings and completion sourcing files in zshrc

    * python & node support

        * `pip3 install pynvim` or `conda install pynvim`

        * `sudo npm i -g neovim`

    * neovim remote

        * `pip3 install neovim-remote`

        Note: If conda env is not used to pip3 here, this will install `nvr` to `~/.local/bin` so you will need to add the following to zshrc

        - `export PATH=$HOME/.local/bin:$PATH`	

    * clipboard support

        * xsel
        
            `sudo pacman -S xsel`
        
        Note: temporarily there is no direct way to yank text in remote linux server to local macos. [Reference](https://stackoverflow.com/questions/10694516/vim-copy-mac-over-ssh).

* Other zsh configurations

    `cp dotfiles/zsh/exports.zsh ~/.config/zsh/`

    `cp dotfiles/zsh/prompt.zsh ~/.config/zsh/`

    `cp dotfiles/zsh/tmux.zsh ~/.config/zsh/`

    comment out tmux in `~/.zshrc`

    Change neovim path in `~/.config/zsh/exports.zsh`

* PlugInstall nvim plugins

    * Copy plugins folder prepared

        `cp -r dotfiles/nvim/ ~/.config/`

    * Specify python & node path in keys/mappings

    * [vim-plug](https://github.com/junegunn/vim-plug)

        ```
        sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
               https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
        ```

    * PlugInstall

    * Update far `:UpdateRemotePlugins`

    * Coc install extensions (coc-python, coc-vimlsp, coc-html, coc-css, coc-tsserver)

        * If `Jedi module not found issue occur`, conda update and specify jedi path according to this [issue](https://github.com/neoclide/coc-python/issues/40)

        * If you couldn't set linter off, run :CocCommand and choose set linter to the linter you want

    * Configure bracey (require npm)

        * Open bracey.vim and following the instructions in the comments

* Check neovim health 

* Cleanup

    * `source ~/.zshrc`
    * remove unnecessary files in home directory
    * `sudo pacman -Sc`

## Multiplexer and Terminal

* Install tmux (& vim-tmux-navigator)

* Install alacritty

