function os2
    sudo umount -l /home/walt/git/jos
    sshfs bringenw@flip.engr.oregonstate.edu:/nfs/stak/users/bringenw/cs444/f24/jos-labs git/jos/
    hyprctl dispatch -- exec alacritty --working-directory /home/walt/git/jos -e nvim
    ssh -t bringenw@flip.engr.oregonstate.edu "shopt -s expand_aliases ; source /nfs/stak/users/bringenw/.bash_aliases ; eval os2"
end
