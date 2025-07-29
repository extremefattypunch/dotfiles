set -gx PYENV_ROOT "$HOME/.pyenv"
set -gx PATH "$PYENV_ROOT/bin" $PATH
pyenv init - | source
fish_add_path ~/.elan/bin
fish_add_path ~/.juliaup/bin
set -gx JULIA_NUM_THREADS auto
