# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git fast-syntax-highlighting zsh-syntax-highlighting zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
export EDITOR=vim


#    _    _ _            @
#   / \  | (_) __ _ ___  @
#  / _ \ | | |/ _` / __| @
# / ___ \| | | (_| \__ \ @ 
#/_/   \_\_|_|\__,_|___/ @ 
#                        @
#@@@@@@@@@@@@@@@@@@@@@@@@@

alias doas="sudo"
alias run0="sudo"

alias l="lsd"
alias lf="lsd -ll"
alias lfa="lsd -all"
alias ttc="tty-clock -c -s -S"
alias se="sudoedit"
alias da="XDG_MENU_PREFIX=arch- kbuildsycoca6"
#alias Arch
#paru AUR  helper: https://github.com/Morganamilo/paru

alias yay="paru"
alias ref="paru -Sy"
alias update="paru -Syyu"
alias up="paru -Syyu"
alias ss="paru -Ss"
alias install="paru -S"
alias ins="paru -S"
alias remove="sudo pacman -Rs"
alias rmp="sudo pacman -Rs"
alias cleanup="paru -Sc" 
alias pkinfo="sudo pacman -Si"
alias pkl="sudo pacman -Qq"
alias upkl="sudo pacman -Qeq"

#alias for mount ntfs HDD 
alias mtall="sudo mount /dev/sdb6 /mnt/HDC
sudo mount /dev/sdb5 /mnt/HDB 
sudo mount /dev/sdb1 /mnt/HDA
sudo mount /dev/sdb7 /mnt/HDD"
alias umtall="sudo umount /mnt/HDA 
sudo umount /mnt/HDC 
sudo umount /mnt/HDB
sudo umount /mnt/HDD"

alias wt="curl wttr.in/Miandoab"


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh



