#!/usr/bin/env bash
set -e

REPO="$(dirname "$0")"
FREECAD_DATA="${HOME}/.local/share/FreeCAD"
FREECAD_VER="${FREECAD_DATA}/v1-1"

# IconThemes addon (FreeCAD 1.1 usa v1-1/Mod/)
mkdir -p "${FREECAD_VER}/Mod"
rm -rf "${FREECAD_VER}/Mod/IconThemes"
cp -r "${REPO}/IconThemes" "${FREECAD_VER}/Mod/IconThemes"
echo "applied: IconThemes addon"

# Flat_Dark icon theme (FreeCAD 1.1 usa v1-1/Gui/Icons/)
mkdir -p "${FREECAD_VER}/Gui/Icons"
cp "${REPO}/FreeCAD-Flat-Icons/Flat_Dark.rcc" "${FREECAD_VER}/Gui/Icons/Flat_Dark.rcc"
echo "applied: Flat_Dark.rcc"

echo ""
echo "Próximo passo: abra o FreeCAD → Accessories → IconThemes → selecione Flat_Dark"
