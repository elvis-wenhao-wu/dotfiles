# Guide to install nvim

## Prerequsite

- `mkdir ~/.config/zsh`



## Git

Check and install the latest [git](https://git-scm.com/download/linux)

- Arch: `pacman -S git`
- Fedora: `dnf install git`
- Debian/Ubuntu: `apt-get install git`

Config

- `git config --global user.name "..."`

- `git config --global user.email "..."`
- `git config --global http.postBuffer 524288000` (this is to solve the error [error: RPC failed; curl transfer closed with outstanding read data remaining](https://stackoverflow.com/questions/38618885/error-rpc-failed-curl-transfer-closed-with-outstanding-read-data-remaining)
    by incrementing buffer size)
- `git clone https://github.com/elvis-wenhao-wu/dotfiles.git`



## Shell

* [zshell](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)

    Better shell

    * MacOS: System Default

    * Arch: `pacman -S zsh`
    * Debian/Ubuntu: `apt install zsh`
    * Fedora: `dnf install zsh`

    Make it your default shell: `chsh -s $(which zsh)`

    Log out and log back in again to use your new default shell

    Test that it worked with `echo $SHELL`. Expected result: `/bin/zsh` or similar.

    Test with `$SHELL --version`. Expected result: 'zsh 5.4.2' or similar
* [MesloLGS NF font](https://github.com/ryanoasis/nerd-fonts) 

    Display special characters in oh-my-zsh

    * [MacOS](https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts): 

        ``````zsh
    brew tap homebrew/cask-fonts
        brew install --cask font-hack-nerd-font
        cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
        ``````
    
    * [Linux](https://github.com/ryanoasis/nerd-fonts#option-6-ad-hoc-curl-download): 
    
    Note: Under this method, the font will be automatically activated
    
    ```zsh
        mkdir -p ~/.local/share/fonts
    cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
        ```

* [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh#manual-installation)

    Zsh shell configuration framework

    ```zsh
    # Clone the repo
    git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
    # Optionally, backup your existing ~/.zshrc file
    cp ~/.zshrc ~/.zshrc.orig
    # Create a new zsh configuration file
    cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
    # Change your default shell (if you haven't done so in the previous steps)
    chsh -s $(which zsh)
    # Initialize your new zsh configuration
    source ~/.zshrc
    ```

* [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh)

    oh-my-zsh extension

    ```zsh
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    ```

* [Gruvbox Theme](https://github.com/sbugzu/gruvbox-zsh) (optional)

    Color theme for zsh (I have modified that a bit. If you mind using mine, just go get the original one)

    ```zsh
    # Add gruvbox.zsh-theme to oh-my-zsh theme folder
    cp dotfiles/zsh/gruvbox.zsh-theme ~/.oh-my-zsh/custom/themes
    ```

    Note: 

    * This is the modified version of [gruvbox.zsh-theme](https://github.com/sbugzu/gruvbox-zsh), modified from commit `e7eada5c213e40a0453e354e7ccbbeecfa69d5ac`

    * This is not enough to make terminal appears like gruvbox. If you do want so, please install gruvbox theme for terminal (e.g. alacritty or iTerm2). However, this is enough in ssh mode (if you set gruvbox for alacritty and zsh on macos like me)

* zsh configuration file (`~/.zshrc`)

    Make the above stuff work in your shell

    ```zsh
    # prompt file, making a space between lines in your shell
    cp dotfiles/zsh/prompt.zsh ~/.config/zsh/prompt.zsh
    # shell configuratoin file, making oh-my-zsh, theme and its extensions activate
    cp dotfiles/zsh/ohmyz.zsh ~/.config/zsh/ohmyz.zsh
    # source the above file in your configuration file
    echo '[ -f $HOME/.config/zsh/prompt.zsh ] && source $HOME/.config/zsh/prompt.zsh' >> ~/.zshrc
    echo '[ -f $HOME/.config/zsh/ohmyz.zsh ] && source $HOME/.config/zsh/ohmyz.zsh' >> ~/.zshrc
    ```



## Apps

* [Miniconda](https://docs.conda.io/en/latest/miniconda.html#linux-installers) 

    * MacOS: `curl https://repo.anaconda.com/miniconda/Miniconda3-py39_4.9.2-MacOSX-x86_64.sh -o miniconda3.sh`
    * Linux: `curl https://repo.anaconda.com/miniconda/Miniconda3-py39_4.9.2-Linux-x86_64.sh -o miniconda3.sh`

    Specify conda location to `$HOME/.conda` (purpose: hide conda location)

    ```zsh
    # set conda forge as the default channel
    cp dotfiles/conda/.condarc ~/
    # Copy conda init script to conda zsh (make sure the conda.zsh only includes the conda activation script)
    cp ~/.bashrc ~/.config/conda.zsh
    # source the conda environment
    echo '[ -f $HOME/.config/zsh/conda.zsh ] && source $HOME/.config/zsh/conda.zsh' >> ~/.zshrc
    # update the conda version
    conda activate base; conda update -n base -c defaults conda
    # Create an environment with a specific version of Python
    conda create --name primary python=3.9.5
    ```

* Python (optional)

    * MacOS: `brew install python3` (avoid messing the packages with system default)

    * Linux: Linux normally shipped with python3 as default. Update it with package manager, e.g. `dnf upgrade python`

* Node (optional)

    I don't very much use Node. Although we should install it as what we do to conda, the latest version should satisfy our most daily use, i.e. as a dependency for other applications.

    * MacOS: `brew install node` (latest node and npm, the package manager for node, like pip for python) - Note that: this method does not install nvm, node version manager, like conda for python
    * [Arch](https://wiki.archlinux.org/index.php/Node.js_): `sudo pacman -S nodejs npm` - Latest
    * [Debian](https://github.com/nodesource/distributions): see the link
    * [Fedora](https://nodejs.org/tr/download/package-manager/#centos-fedora-and-red-hat-enterprise-linux): see the link

* [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)

    * [Arch](https://github.com/neovim/neovim/wiki/Installing-Neovim#arch-linux): 

        ```zsh
        yay -S neovim-nightly-git
        ```

        Dependencies

        ```zsh
        pacman -S python-pynvim
        ```

    * Fedora: 

        ```zsh
        dnf copr enable agriffis/neovim-nightly
        ```

        Dependencies

        ```zsh
        dnf install -y neovim python3-neovim
        ```





[Another Neovim Reference](https://github.com/ChristianChiarulli/nvim)

### Nvim

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

