#    _               _
#   | |__   __ _ ___| |__  _ __ ___
#   | '_ \ / _` / __| '_ \| '__/ __|
#  _| |_) | (_| \__ \ | | | | | (__
# (_)_.__/ \__,_|___/_| |_|_|  \___|
#
# -----------------------------------------------------
# ML4W bashrc loader
# -----------------------------------------------------

# DON'T CHANGE THIS FILE

# You can define your custom configuration by adding
# files in ~/.config/bashrc
# or by creating a folder ~/.config/bashrc/custom
# with copies of files from ~/.config/bashrc
# You can also create a .bashrc_custom file in your home directory
# -----------------------------------------------------

# -----------------------------------------------------
# Load modular configarion
# -----------------------------------------------------

for f in ~/.config/bashrc/*; do
  if [ ! -d $f ]; then
    c=$(echo $f | sed -e "s=.config/bashrc=.config/bashrc/custom=")
    [[ -f $c ]] && source $c || source $f
  fi
done

# -----------------------------------------------------
# Load single customization file (if exists)
# -----------------------------------------------------

# if [ -f ~/.bashrc_custom ]; then
#     source ~/.bashrc_custom
# fi
#
# . "$HOME/.local/bin/env"

export PATH="$PATH:$HOME/.local/bin"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$HOME/.local/lib"
export LIBRARY_PATH="$LIBRARY_PATH:$HOME/.local/lib"
export CPATH="$CPATH:$HOME/.local/include"
export GMP_LIBRARIES=$HOME/.local/lib
export GMP_INCLUDE_DIR=$HOME/.local/include
export MPFR_LIBRARIES=$HOME/.local/lib
export MPFR_INCLUDE_DIR=$HOME/.local/include

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ianpoon/miniconda3/bin/conda' 'shell.bash' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
  eval "$__conda_setup"
else
  if [ -f "/home/ianpoon/miniconda3/etc/profile.d/conda.sh" ]; then
    . "/home/ianpoon/miniconda3/etc/profile.d/conda.sh"
  else
    export PATH="/home/ianpoon/miniconda3/bin:$PATH"
  fi
fi
unset __conda_setup
# <<< conda initialize <<<
