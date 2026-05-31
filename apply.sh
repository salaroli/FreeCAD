#!/usr/bin/env bash
set -e

REPO="$(dirname "$0")"
FREECAD_DATA="${HOME}/.local/share/FreeCAD"

# IconThemes addon
mkdir -p "${FREECAD_DATA}/Mod"
rm -rf "${FREECAD_DATA}/Mod/IconThemes"
cp -r "${REPO}/IconThemes" "${FREECAD_DATA}/Mod/IconThemes"
echo "applied: IconThemes addon"

# Flat_Dark icon theme
mkdir -p "${FREECAD_DATA}/Gui/Icons"
cp "${REPO}/FreeCAD-Flat-Icons/Flat_Dark.rcc" "${FREECAD_DATA}/Gui/Icons/Flat_Dark.rcc"
echo "applied: Flat_Dark.rcc"

echo ""
echo "Próximo passo: abra o FreeCAD → Accessories → IconThemes → selecione Flat_Dark"
