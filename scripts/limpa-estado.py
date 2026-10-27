#!/usr/bin/env python3
"""Filtro "clean" do git para o user.cfg do FreeCAD.

O FreeCAD reescreve o user.cfg inteiro ao fechar, misturando preferência
(tema, atalhos, navegação) com estado da sessão (arquivos recentes, tamanho
de janela, último diretório, hashes de cache). Este filtro tira o estado do
que vai para o git; o arquivo no disco continua completo.
"""
import re
import sys

ESTADO = re.compile(
    r'Name="('
    r"MRU\d+|MainWindowState|WindowStateRestored|WindowWidth|WindowHeight|Geometry"
    r"|last_fetched_\w+_hash|FileOpenSavePath|FileExportFilter|FileImportFilter"
    r"|LastTabIndex|LastDocument|LastVarSet|LastGroup|NewPropertyType|NewPropertyGroup"
    r"|StatusSelection|PackageTypeSelection|Width|Height|Sizes|ColumnSize\d*|FirstColumnSize"
    r')"'
)
# Só elementos de uma linha (folhas); grupos <FCParamGroup> nunca são removidos.
FOLHA = re.compile(r"^\s*<FC(Text|Int|UInt|Bool|Float)\b.*(/>|</FC\w+>)\s*$")

for linha in sys.stdin:
    if FOLHA.match(linha) and ESTADO.search(linha):
        continue
    sys.stdout.write(linha)
