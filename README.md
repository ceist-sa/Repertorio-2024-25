# Repertório 2024-25

Este repositório contém as partituras e arranjos para o repertório da CEIST (Camerata de Estudantes do Instituto Superior Técnico).

## 📁 Estrutura do Projeto

Cada peça tem uma pasta dedicada, contendo:

- **`lilypond/`** - Ficheiros fonte em LilyPond
    - `[#-nome_do_andamento]/` - Subpastas para andamentos separados (se aplicável)
- **`partes/`** - Partituras individuais geradas em PDF para cada instrumento
- **`musescore/`** - Ficheiros MuseScore (`.mscz`) quando aplicável
- **`originais/`** - Partituras originais de referência (quando disponíveis)

## 📋 Convenções de Nomenclatura

- **Ficheiros de Partitura:** Separar com hífen; Instrumento em maiúsculas (`INSTRUMENTO - Compositor - Obra`)
- **Pastas:** Nome do compositor seguido da obra (`Bach - Cantata nº 12`)
- **Língua:** Variáveis e nomes de ficheiros, por defeito são em inglês (violin em vez de violino), mas tudo o que aparecer nos PDFs em si deverá ser em português.
- **Numeração:** Deve-se usar numeração romana para numerar partes do mesmo instrumento: violino I e violino II em vez de violino 1 e violino 2. 

## 📝 Formato dos Ficheiros LilyPond

Os ficheiros `.ly` devem incluir um campo `filename` no cabeçalho para funcionarem com os scripts de compilação:

```lilypond
\book{
    \header {
        instrument = "Instrumento"
        filename = "Compositor - Obra - Instrumento"
    }
    % ...resto do código...
}
```

## 🛠️ Ferramentas

### Interface TUI de Compilação Interativa

O repositório inclui uma interface TUI moderna (`compile_lilypond_tui.py`) para compilação e gestão de partituras LilyPond:

**Funcionalidades principais:**
- **Tabela interativa** com estado em tempo real de cada ficheiro
- **Compilação paralela** automática quando ficheiros são modificados
- **Monitorização de dependências** - recompila automaticamente ficheiros dependentes
- **Visualização de erros** detalhada com navegação
- **Abertura rápida** de ficheiros fonte e PDFs (duplo clique ou tecla)
- **Point-and-click** configurável (on/off)
- **Interface moderna** com cores e ícones

#### Pré-requisitos

Para usar o TUI, é necessário ter o LilyPond e Python 3 instalados:

```bash
# Ubuntu/Debian
sudo apt-get install lilypond python3 python3-pip

# Arch Linux
sudo pacman -S lilypond python

# macOS (com Homebrew)
brew install lilypond python
```

O TUI também requer as bibliotecas Python `textual` e `watchdog`:

**Com pip:**
```bash
pip install textual watchdog
```

**Com uv (recomendado):**
```bash
uv pip install textual watchdog
```

#### Utilização

```bash
# Executar no diretório atual
./compile_lilypond_tui.py

# Executar num diretório específico
./compile_lilypond_tui.py /caminho/para/pasta

# Ignorar ficheiros específicos
./compile_lilypond_tui.py --ignore '*test*' --ignore 'draft_*.ly'

# Definir número de workers paralelos (default: número de threads disponíveis)
./compile_lilypond_tui.py -j 8
```

#### Controlos da Interface

| Tecla | Ação |
|-------|------|
| `p` | Alternar point-and-click links (ON/OFF) |
| `e` | Ver detalhes de erros |
| `r` | Recompilar todos os ficheiros |
| `s` | Abrir ficheiro fonte (.ly) no editor |
| `o` | Abrir PDF gerado |
| `q` | Sair |
| **Duplo clique** | Abrir ficheiro fonte |
| `←` `→` | Navegar entre erros (no modo de visualização de erros) |

#### Estados dos Ficheiros

- ✓ **up-to-date** (verde) - PDF está atualizado
- ⋯ **pending** (amarelo) - Aguardando compilação
- ⚙ **compiling** (azul) - A compilar
- ✗ **error** (vermelho) - Erro de compilação

#### Como funciona
1. Procura recursivamente por pastas chamadas `lilypond`
2. Para cada ficheiro `.ly` encontrado, extrai o campo `filename` do cabeçalho
3. Analisa recursivamente todas as declarações `\include` para identificar dependências
4. Monitoriza continuamente todos os ficheiros e suas dependências
5. Compila automaticamente em paralelo quando detecta alterações
6. Guarda PDFs na pasta `partes` correspondente

### GitHub Action - Compilação Automática

O repositório inclui uma GitHub Action que automaticamente:

- **Detecta mudanças** em ficheiros `.ly`, `.ily`
- **Compila automaticamente** as partituras modificadas (se necessário) após cada commit
- **Faz commit e push** dos PDFs atualizados se houver mudanças

### PDF Diff Tool

O repositório inclui uma ferramenta Python (`pdf-diff-tool.py`) para comparar visualmente a versão atual de PDFs com versões de commits anteriores.

```bash
# Executar a ferramenta
./pdf-diff-tool.py
```

A ferramenta permite selecionar um PDF e um dos commits em que foi modificado, mostrando as diferenças visuais entre a versão atual e a selecionada. Quando executada num ambiente sem interface gráfica, gera um ficheiro `diff.pdf` com as diferenças.

**Pré-requisitos:**

A ferramenta requer Python 3 e `diff-pdf`:

```bash
# macOS (Homebrew)
brew install diff-pdf

# macOS (MacPorts)
sudo port install diff-pdf

# Fedora/CentOS 8
sudo dnf install diff-pdf
```

Para outros sistemas ou compilação a partir do código fonte: [https://github.com/vslavik/diff-pdf](https://github.com/vslavik/diff-pdf)