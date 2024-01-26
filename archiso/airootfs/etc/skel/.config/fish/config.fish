if status is-interactive
    # Commands to run in interactive sessions can go here

#Alias


#Package Manager
alias Mirror="sudo reflector --verbose -c canada --sort rate --save /etc/pacman.d/mirrorlist"
alias Keyup="sudo pacman -Sy archlinux-keyring --needed --noconfirm"
alias update="Mirror && Keyup && yay -Syu --noconfirm"

alias pacrm="sudo pacman -Rns"
alias dl="pacman -S"
alias pacss="yay -Ss"
alias pacs="pacman -Ss"
alias cleanup="sudo pacman -Rsn (pacman -Qdtq)"
alias pacdbfix="sudo rm /var/lib/pacman/db.lck"

#Qol
alias new="clear && neofetch | lolcat"
alias edit="sudo nano"
alias kde="startx /kde"


#Snapshot management
alias snaprm="sudo snapper rm"
alias snapls="new && snapper list | lolcat"
alias snapmk="sudo snapper -v -c root create -t single -d"
alias snapback="sudo snapper rollback"
alias regrub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
# alias snapmount='sudo mount /dev/sdc3 -o subvolid=257 /MySnap'

#Archive manager
alias tarnow="tar -acf"
alias untar="tar -zxvf"


#File manager
alias ls="eza -al --color=always --group-directories-first"
alias lt="eza -aT --level 2 --long --color=always --group-directories-first"




#Prompt
starship init fish | source

#speak for itself
neofetch | lolcat

# Command helper
thefuck --alias | source

end

set -gx WINIT_X11_SCALE_FACTOR 1
