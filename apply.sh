#!/usr/bin/env bash
# Prepara este clone numa máquina: filtro que tira o estado do user.cfg e o
# addon de tema. Idempotente.
set -e
cd "$(dirname "$0")"

# Sem o filtro, o git veria (e commitaria) arquivos recentes, tamanho de janela etc.
git config filter.freecad-estado.clean "python3 scripts/limpa-estado.py"
git config filter.freecad-estado.smudge cat

# O tema OpenLight (StyleSheet do user.cfg) vem do addon OpenTheme.
mod="$HOME/.local/share/FreeCAD/v1-1/Mod/OpenTheme"
if [ ! -d "$mod" ]; then
  git clone -q --depth 1 https://github.com/obelisk79/OpenTheme "$mod"
  echo "OpenTheme instalado em $mod"
fi
echo ok
