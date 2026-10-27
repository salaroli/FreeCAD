# FreeCAD Config

Configurações pessoais do FreeCAD com UX próxima do Fusion 360.

## O que está configurado

- **Navegação**: Blender style
- **Tema**: OpenLight (addon [OpenTheme](https://github.com/obelisk79/OpenTheme), instalado pelo `apply.sh`)
- **Atalhos** inspirados no Fusion 360:

| Tecla | Ação |
|---|---|
| `S` | Novo sketch (Part Design) |
| `E` | Pad (extrude) |
| `F` | Fillet |
| `X` | Alternar geometria de construção (Sketch) |
| `D` | Medir |
| `P` | Plano de referência (datum plane) |
| `G, S` | Mapear sketch numa face |
| `G, E` | Pocket |
| `G, F` | Chamfer |

## Preferência no git, estado fora

O FreeCAD reescreve o `v1-1/user.cfg` inteiro ao fechar, junto com estado da sessão (arquivos recentes,
tamanho de janela, último diretório, hashes de cache). O filtro `scripts/limpa-estado.py` (ligado pelo
`.gitattributes` e configurado pelo `apply.sh`) tira esse estado do que vai para o git; o arquivo no disco
continua completo. Assim o `git diff` mostra só preferência de verdade, igual em todas as máquinas.
`FreeCAD.conf` e `system.cfg` são só cache/máquina e ficam fora.

## Instalação em uma máquina nova

```bash
git clone https://github.com/salaroli/FreeCAD.git ~/.config/FreeCAD
~/.config/FreeCAD/apply.sh
```

> **Aviso**: FreeCAD reescreve o `user.cfg` ao fechar. Feche o FreeCAD antes de editar o config à mão
> ou de dar `git pull`.
