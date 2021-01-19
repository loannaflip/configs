if [[ "$(tty)" == "/dev/tty1" ]]
  then
    clear ; startx
fi

export QT_QPA_PLATFORMTHEME="qt5ct"
export PATH=/home/uniminin/.local/bin:$PATH
