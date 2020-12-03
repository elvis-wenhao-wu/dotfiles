from shutil import copyfile

def copy_dotfiles():
    # zshrc
    copyfile('/Users/wenhaowu/.zshrc', './.zshrc')

    # vimrc
    copyfile('/Users/wenhaowu/.vimrc', './.vimrc')

try:
    copy_dotfiles()
except:
    print('Something wrong when copying dotfiles')
