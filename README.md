# FreeCAD Config

Configurações pessoais do FreeCAD com UX próxima do Fusion 360.

## O que está configurado

- **Navegação**: Revit style (Middle drag = Pan, Shift+Middle = Orbit — igual ao Fusion 360)
- **Tema**: FreeCAD Light com accent azul `#0696D7` (cor do Fusion 360)
- **Ícones**: FreeCAD-Flat-Icons (flat design inspirado no Fusion 360 / OnShape)
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
# 1. Clone o repo no lugar certo
git clone --recurse-submodules git@github.com:salaroli/FreeCAD.git ~/.config/FreeCAD

# 2. Aplica o addon de ícones
cd ~/.config/FreeCAD
./apply.sh
```

### Ativar os ícones no FreeCAD

Após rodar `apply.sh`, abra o FreeCAD e:

1. Na barra de menus, procure **Accessories** (aparece após instalar o addon IconThemes)
   - Se não aparecer, vá em **Tools → Addon Manager**, busque **IconThemes**, instale e reinicie
2. Clique em **Accessories → IconThemes**
3. Selecione **Flat_Dark** na lista
4. Clique em **Apply** e reinicie o FreeCAD

> **Nota sobre o Addon Manager**: o `apply.sh` instala o IconThemes manualmente (sem precisar do Addon Manager). Se preferir instalar pelo Addon Manager, pode fazer isso em vez de rodar o script — mas o resultado é o mesmo.

## Atualizar os ícones

Quando sair uma nova versão do FreeCAD-Flat-Icons:

```bash
cd ~/.config/FreeCAD
git checkout -b chore/update-flat-icons
git submodule update --remote FreeCAD-Flat-Icons
./apply.sh
git add .
git commit -m "chore: update FreeCAD-Flat-Icons"
git push -u origin chore/update-flat-icons
```

Depois abrir PR no GitHub para mergear na `main`.

## Aviso importante

> FreeCAD reescreve o `user.cfg` ao fechar. Sempre fechar o FreeCAD antes de editar o config manualmente. Após mudanças no `user.cfg`, reconfirme as preferências de Navegação e Tema pelo GUI do FreeCAD para que fiquem permanentes.
