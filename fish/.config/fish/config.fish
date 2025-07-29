set -gx PYENV_ROOT "$HOME/.pyenv"
set -gx PATH "$PYENV_ROOT/bin" $PATH
pyenv init - | source
fish_add_path ~/.elan/bin
fish_add_path ~/.juliaup/bin
set -gx JULIA_NUM_THREADS auto
set -gx PATH /opt/cuda/bin $PATH
set -gx NVCC_CCBIN /usr/bin/gcc-14
set -gx OMP_NUM_THREADS 8
