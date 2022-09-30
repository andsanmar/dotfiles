export WINIT_HIDPI_FACTOR=1.0
export CIAOPATH="$HOME/.local/ciao"
if [ -x $CIAOPATH/build/bin/ciao-env ] ; then
  eval "$($CIAOPATH/build/bin/ciao-env --sh)"
fi
export BAT_PAGER="less -RF"
export TERMINAL=termite

export PATH="$HOME/.cargo/bin:/opt/intel/bin:$HOME/.local/bin:/opt/altera/18.1/quartus/bin:/opt/altera/18.1/modelsim_ase/bin:/home/andsanmar/.cask/bin:$HOME/.cask/bin:$PATH:"
export ZDOTDIR="$HOME/.config/zsh"
export LESSHISTFILE="$HOME/.cache/lesshst"
