# Guide to install nvim

## Git 
Check and install the latest [git](https://git-scm.com/download/linux)

## Shell
* zshell 
    * [Installation guide from oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
* oh-my-zsh
    * Basics 
        * MesloLGS NF font (in [nerd-fonts](https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts) family)
            * Install through [Ad Hoc Curl Download](https://github.com/ryanoasis/nerd-fonts#option-6-ad-hoc-curl-download)
                Under this method, the font will be automatically activated
        * oh-my-zsh
            * [Manual Installation](https://github.com/ohmyzsh/ohmyzsh#manual-installation)
        * gruvbox theme (optional) 
            * Add gruvbox.zsh-theme to oh-my-zsh theme folder
                `cp dotfiles/zsh/gruvbox.zsh-theme ~/.oh-my-zsh/custom/themes`
                This is the modified version of [gruvbox.zsh-theme](https://github.com/sbugzu/gruvbox-zsh)
                modified from commit e7eada5c213e40a0453e354e7ccbbeecfa69d5ac
            Note: This is not enough to make terminal appears like gruvbox. If you do want so, please install gruvbox theme for terminal
            However, this is enough in ssh mode (if you set gruvbox for alacritty and zsh on macos like me)
    * Install Extensions (optional)
        * zsh-autosuggestions (pretty slow)
            * [Install through oh-my-zsh](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh)
            * Boost performance by enabling async mode and disabling automatic widget re-binding (optional)
                `mv dotfiles/zsh/internals.zsh ~/.oh-my-zsh/custom/`
* zshrc
    * Copy template zshrc from oh-my-zsh to $HOME (optional) 
        `cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc`
    * Move .zshrc to the home folder
        `mv dotfiles/zsh/.zshrc ~/.zshrc`
    
    Reference: https://medium.com/@thecaffeinedev/customize-your-terminal-oh-my-zsh-on-ubuntu-18-04-lts-a9b11b63f2  

## Programming
* Install conda 
    * [Linux installers](https://docs.conda.io/en/latest/miniconda.html#linux-installers)
        * Specify conda location to $HOME/.conda (purpose: hide conda location)
        * Copy conda init script from .bashrc to .zshrc (purpose: conda can be found in zsh)
        * Copy .condarc prepared (purpose: deactivate conda at shell startup) 
    * Create an environment with a specific version of Python 
        e.g. conda create --name primary python=3.9.0
* Install python (optional)
    Linux normally shipped with python3 as default. Update it with package manager.
* Install node
    [Nodesource](https://github.com/nodesource/distributions) installation of node and npm 

## Nvim
* [Prerequisite](https://github.com/ChristianChiarulli/nvim)
    * neovim
        * [neovim git repo](https://github.com/neovim/neovim/wiki/Installing-Neovim)
    * bat (for lf & fzf preview)
        * [bat git repo](https://github.com/sharkdp/bat#installation)
    * fd (for lf & fzf preview)
        * [fd git repo](https://github.com/sharkdp/fd)
    * lf terminal file manager
        * Refer to [lf git repo](https://github.com/gokcehan/lf) for installation method
        * Copy lf configuration prepared 
        * Copy .zshrc lf part prepared
    * fzf
        * [fzf git repo](https://github.com/junegunn/fzf#fuzzy-completion-for-bash-and-zsh)
        * Copy .zshrc fzf part prepared
        * change keybindings and completion sourcing files in zshrc
    * python & node path in keys/mappings
    * python & node support
        * `pip3 install pynvim` or `conda install pynvim`
        * `sudo npm i -g neovim`
    * neovim remote
        * `pip3 install neovim-remote`
        Note: This will install `nvr` to `~/.local/bin` so you will need to add the following to zshrc
        `export PATH=$HOME/.local/bin:$PATH`
    * clipboard support
        * xsel
* PlugInstall nvim plugins
    * [vim-plug](https://github.com/junegunn/vim-plug)
    * Update far `:UpdateRemotePlugins`
    * Coc install extensions (coc-python, coc-vimlsp, coc-html, coc-css, coc-tsserver)
    * Configure bracey (require npm)
        * Open bracey.vim and following the instructions in the comments
* Check neovim health 

## Multiplexer and Terminal
* Install tmux (& vim-tmux-navigator)
* Install alacritty

