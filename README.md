# FreeCAD Config

Configurações pessoais do FreeCAD com UX próxima do Fusion 360.

## O que está configurado

- **Navegação**: Revit style (Middle drag = Pan, Shift+Middle = Orbit — igual ao Fusion 360)
- **Tema**: FreeCAD Light com accent azul `#0696D7` (cor do Fusion 360)
- **11 atalhos** mapeados para espelhar o Fusion 360 (ver tabela abaixo)

## Atalhos

| Tecla | Ação |
|---|---|
| `E` | Extrude (Pad) |
| `F` | Fillet |
| `M` | Move/Transform |
| `L` | Linha (Sketch) |
| `R` | Retângulo (Sketch) |
| `C` | Círculo (Sketch) |
| `D` | Dimensão (Sketch) |
| `T` | Trim (Sketch) |
| `X` | Toggle Construction (Sketch) |
| `P` | Projetar geometria (Sketch) |
| `O` | Offset (Sketch) |

## Instalação em uma máquina nova

```bash
git clone git@github.com:salaroli/FreeCAD.git ~/.config/FreeCAD
```

Após clonar, abra o FreeCAD e confirme pelo GUI:
- **Edit → Preferences → Display → Navigation → Navigation Style → Revit**

> **Aviso**: FreeCAD reescreve o `user.cfg` ao fechar. Sempre fechar o FreeCAD antes de editar o config manualmente.
