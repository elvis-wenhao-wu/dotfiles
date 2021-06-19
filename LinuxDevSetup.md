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
    # source zsh to make the above active (make sure to save your zsh file)
    cp ~/.zshrc ~/.zshrc.orig
    rm ~/.zshrc
    touch ~/.zshrc
    # make directory
    mkdir -p ~/.config/zsh/
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

    ```zsh
    # Install miniconda3
    chmod +x ~/miniconda3.sh
    ~/miniconda3.sh
    ```

    Specify conda location to `$HOME/.conda` (purpose: hide conda location) & make sure running conda init & remove any conda init script in your zshrc. Normally, this shouldn't be a problem cause the init script will directly go into bash (which is the system factory default shell) but it's better to check

    ```zsh
    # set conda forge as the default channel
    cp dotfiles/conda/.condarc ~/
    # Copy conda init script to conda zsh (make sure the conda.zsh only includes the conda activation script)
    cp ~/.bashrc ~/.config/zsh/conda.zsh
    vim ~/.config/conda.zsh # delete everything else except conda init script
    # source the conda environment
    echo '[ -f $HOME/.config/zsh/conda.zsh ] && source $HOME/.config/zsh/conda.zsh' >> ~/.zshrc
    source ~/.zshrc
    # update the conda version
    conda activate base; conda update -n base -c defaults conda
    conda clean --all # cleanup mess
    # Create an environment with a specific version of Python
    conda create --name primary python=3.9.5
    conda activate primary # check if the environment works
    conda config --show channels # check your channels (conda-forge is on top, which is a better channel I think)
    ```

* Python (optional)

    * MacOS: `brew install python3` (avoid messing the packages with system default)

    * Linux: Linux normally shipped with python3 as default. Update it with package manager, e.g. `dnf upgrade python`

* Node (optional)

    I don't very much use Node. Although we should install it as what we do to conda, the latest version should satisfy our most daily use, i.e. as a dependency for other applications.

    * MacOS: `brew install node` (latest node and npm, the package manager for node, like pip for python) - Note that: this method does not install nvm, node version manager, like conda for python

    * [Arch](https://wiki.archlinux.org/index.php/Node.js_): `sudo pacman -S nodejs npm` - Latest

    * [Debian](https://github.com/nodesource/distributions): see the link

    * [Fedora](https://nodejs.org/tr/download/package-manager/#centos-fedora-and-red-hat-enterprise-linux): 

        Reference this [post](https://linuxconfig.org/how-to-install-node-js-on-redhat-8-linux) for other module options

        ```zsh
        # list the modules
        dnf module list nodejs 
        # I chose the latest version
        sudo dnf module install nodejs:16/minimal 
        # check if the module is successfully installed
        sudo dnf module list nodejs 
        # To upgrade, just install a new module, e.g. 
        # sudo dnf module install nodejs:<nextversion>/minimal
        ```

* [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim) - Nightly Version

    * MacOS:

        ```zsh
        brew install --HEAD luajit
        brew install --HEAD neovim
        ```

        Dependencies

        ```zsh
        # python support
        conda activate primary # my conda environment
        conda install pynvim # conda python support for neovim
        # node support
        npm install -g neovim
        # neovim remote
        pip3 install neovim-remote
        # Note: For Neovim Remote, if conda env is not used to pip3 here, this will install `nvr` to `~/.local/bin` so you will need to add the following to zshrc
        # `export PATH=$HOME/.local/bin:$PATH`
        ```

    * [Arch](https://github.com/neovim/neovim/wiki/Installing-Neovim#arch-linux): 

        ```zsh
        yay -S neovim-nightly-git
        ```

        Dependencies

        ```zsh
        # clipboard support
        sudo pacman -S xsel
        # python support
        conda activate primary # my conda environment
        pacman -S python-pynvim # system python support for neovim
        conda install pynvim # conda python support for neovim
        # node support
        npm install -g neovim
        # neovim remote
        pip3 install neovim-remote
        # Note: For Neovim Remote, if conda env is not used to pip3 here, this will install `nvr` to `~/.local/bin` so you will need to add the following to zshrc
        # `export PATH=$HOME/.local/bin:$PATH`
        ```

    * Fedora: 

        ```zsh
        # copr is like PPA in Ubuntu or brew tap in MacOS
        # you have to enable a repo and then you can install it
        dnf copr enable agriffis/neovim-nightly
        dnf install neovim
        ```

        Dependencies

        ```zsh
        # clipboard support
        dnf install xsel
        # python support
        conda activate primary # my conda environment
        dnf install python3-neovim # system python support for neovim
        conda install pynvim # conda python support for neovim
        # node support
        npm i -g neovim
        # neovim remote
        pip3 install neovim-remote
        # Note: For Neovim Remote, if conda env is not used to pip3 here, this will install `nvr` to `~/.local/bin` so you will need to add the following to zshrc
        # `export PATH=$HOME/.local/bin:$PATH`	
        ```

    Update the zsh configuration file

    ```zsh
    cp ~/dotfiles/zsh/usrsp.zsh ~/.config/zsh/
    echo '[ -f $HOME/.config/zsh/usrsp.zsh ] && source $HOME/.config/zsh/usrsp.zsh' >> ~/.zshrc
    vim ~/.zshrc # change your neovim location
    source ~/.zshrc
    ```

    Note: temporarily there is no direct way to yank text in remote linux server to local macos. [Reference](https://stackoverflow.com/questions/10694516/vim-copy-mac-over-ssh).

    [Another Neovim Reference](https://github.com/ChristianChiarulli/nvim)

* [bat](https://github.com/sharkdp/bat#installation) 

    Better alternative to Unix `cat` (also for `lf` & `fzf` preview)

    * [MacOS](https://github.com/sharkdp/bat#on-macos-or-linux-via-homebrew): `brew install bat`

    * [Arch](https://github.com/sharkdp/bat#on-arch-linux): `sudo pacman -S bat`
    * [Fedora](https://github.com/sharkdp/bat#on-fedora): `dnf install bat`

* [fd](https://github.com/sharkdp/fd)

    Better alternative to Unix `find` (also for lf & fzf preview)

    * [MacOS](https://github.com/sharkdp/fd#on-macos): `brew install fd`

    * [Arch](https://github.com/sharkdp/fd#on-arch-linux): `sudo pacman -S fd`
    * [Fedora](https://github.com/sharkdp/fd#on-fedora): `dnf install fd-find`

* [lf](https://github.com/gokcehan/lf)

    Terminal File Manager

    * [MacOS](https://github.com/gokcehan/lf/wiki/Packages#homebrew)

        ```zsh
        brew install lf
        ```

    * [Arch](https://aur.archlinux.org/packages/lf/)

        ```
        git clone https://aur.archlinux.org/lf.git
        cd lf
        makepkg -si
        ```

    * [Fedora](https://copr.fedorainfracloud.org/coprs/provessor/golang-github-gokcehan-lf/)

        ```zsh
        dnf copr enable provessor/golang-github-gokcehan-lf
        dnf install lf
        ```

    Copy `lf` configuration prepared 

    ```zsh
    cp -r ~/dotfiles/lf ~/.config
    cp ~/dotfiles/zsh/apps.zsh ~/.config/zsh/
    echo '[ -f $HOME/.config/zsh/apps.zsh ] && source $HOME/.config/zsh/apps.zsh' >> ~/.zshrc
    vim ~/.config/zsh/apps.zsh # comment out other apps at the moment
    source ~/.zshrc
    ```

    Change keybindings at the very bottom in `~/.config/lf/lfrc` if you like

* [fzf](https://github.com/junegunn/fzf#fuzzy-completion-for-bash-and-zsh)

    * [MacOS](https://github.com/junegunn/fzf#using-homebrew): 

        ```zsh
        brew install fzf
        # To install useful key bindings and fuzzy completion:
        $(brew --prefix)/opt/fzf/install
        ```

    * [Arch](https://github.com/junegunn/fzf#using-linux-package-managers): `sudo pacman -S fzf`

    * [Fedora](https://github.com/junegunn/fzf#using-homebrew): `sudo dnf install fzf`

    (Linux Only) Copy `fzf` configuration prepared 

    ```zsh
    # Clean up mess
    cd /usr/share/fzf
    cp -r shell/ shell.orig/
    rm -r shell/
    git init
    # Track repo
    git remote add origin -f https://github.com/junegunn/fzf
    # Enable the tree check feature
    git config core.sparseCheckout true
    # Add the name of the subdirectory into .git (the hidden git directory, controlling everything)
    echo 'shell' >> .git/info/sparse-checkout
    # Download with pull, not clone
    git pull origin master
    ```

    Change the config in zsh

    ```zsh
    vim ~/.config/zsh/apps.zsh # uncomment out all fzf configs (uncomment out the first few lines depending on macos or linux)
    source ~/.zshrc
    ```

    Reference about [git submodule](https://en.terminalroot.com.br/how-to-clone-only-a-subdirectory-with-git-or-svn/)

* [ripgrep](https://github.com/BurntSushi/ripgrep)

    * MacOS: `brew install ripgrep`
    * Arch: `pacman -S ripgrep`
    * Fedora: `sudo dnf install ripgrep`

    

## Neovim Configuration

* [vim-plug](https://github.com/junegunn/vim-plug#neovim)

    A minimalist Vim plugin manager

    ```zsh
    # Copy my configurations
    cp -r dotfiles/nvim ~/.config/nvim
    # Download
    sh -c 'curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    # Install the plugins provided in the plugin list
    nvim ~/.config/nvim/vim-plug/plugins.vim # ignore the theme not in folder error, this will be fixed after you install the theme
    ```

* other neovim configs & neovim extensions configs

    ```zsh
    # double check your python and node location
    which python
    which node
    # python and node source
    vim ~/.config/nvim/keys/mappings.vim # uncomment out linux source of python, comment out the mac version
    # coc settings
    vim ~/.config/nvim/coc-settings.json # uncomment out linux source of python, comment out the mac version
    ```

    In neovim,

    * Update far: 

        `:RemoteUpdatePlugins `

    * Coc extensions 

        ```neovim
        :CocInstall coc-python
        :CocInstall coc-vimlsp
        :CocInstall coc-html
        :CocInstall coc-css
        :CocInstall coc-tsserver
        :CocInstall coc-fzf-preview
        ```

        * If `Jedi module not found issue occur`, conda update and specify jedi path according to this [issue](https://github.com/neoclide/coc-python/issues/40)
        * If you couldn't set linter off, run :CocCommand and choose set linter to the linter you want

    * Update `bracey` (optional)

        The following commands are detailed in `~/.config/nvim/plug-config`

        ```zsh
        cd ~/.config/nvim/autoload/plugged/bracey.vim
        npm install --prefix server # install local package
        ```

## Clean up

* Neovim: Check neovim health `:checkhealth` and fix anything not working there (except clipboard should not work in ssh mode without a display)
* Zsh: Source the latest change `source ~/.zshrc`
* Conda: `conda activate primary; conda clean --all` and do the same thing for your other environment
* Package Manager: 
    * MacOS: `brew cleanup`
    * Arch: `pacman -Sc`
    * Fedora: `dnf clean all`

* Manually remove unnecessary files in home directory: `rm -r dotfiles`

## Multiplexer and Terminal

* Install tmux (& vim-tmux-navigator)

* Install alacritty

