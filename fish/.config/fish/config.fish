set -U fish_user_paths ~/localcolabfold/colabfold-conda/bin $fish_user_paths
set -x ELECTRON_OZONE_PLATFORM_HINT x11
# set -gx PYENV_ROOT "$HOME/.pyenv"
# set -gx PATH "$PYENV_ROOT/bin" $PATH
# pyenv init - | source
fish_add_path ~/.elan/bin
fish_add_path ~/.juliaup/bin
set -gx JULIA_NUM_THREADS auto
set -gx PATH /opt/cuda/bin $PATH
set -gx NVCC_CCBIN /usr/bin/gcc-14
set -gx OMP_NUM_THREADS 8
set -gx LD_LIBRARY_PATH "$LD_LIBRARY_PATH:$HOME/.local/lib"
set -gx LIBRARY_PATH "$LIBRARY_PATH:$HOME/.local/lib"
set -gx CPATH "$CPATH:$HOME/.local/include"
set -gx GMP_LIBRARIES "$HOME/.local/lib"
set -gx GMP_INCLUDE_DIR "$HOME/.local/include"
set -gx MPFR_LIBRARIES "$HOME/.local/lib"
set -gx MPFR_INCLUDE_DIR "$HOME/.local/include"
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/ianpoon/miniconda3/bin/conda
    eval /home/ianpoon/miniconda3/bin/conda "shell.fish" hook $argv | source
else
    if test -f "/home/ianpoon/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/ianpoon/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH /home/ianpoon/miniconda3/bin $PATH
    end
end
# <<< conda initialize <<<
