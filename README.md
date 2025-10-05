# Repertório 2024-25

Este repositório contém as partituras e arranjos para o repertório da CEIST (Camerata de Estudantes do Instituto Superior Técnico).

## 📁 Estrutura do Projeto

Cada peça tem uma pasta dedicada, contendo:

- **`lilypond/`** - Ficheiros fonte em LilyPond
    - `[#-nome_do_andamento]/` - Subpastas para andamentos separados (se aplicável)
- **`partes/`** - Partituras individuais geradas em PDF para cada instrumento
- **`musescore/`** - Ficheiros MuseScore (`.mscz`) quando aplicável
- **`originais/`** - Partituras originais de referência (quando disponíveis)

## 🛠️ Ferramentas

### Script de Compilação Automática

O repositório inclui um script bash (`compile_lilypond.sh`) que automatiza a compilação de ficheiros LilyPond:

```bash
# Compilar todas as partituras do projeto
./compile_lilypond.sh

# Compilar partituras de uma pasta específica
./compile_lilypond.sh /caminho/para/pasta

# Compilar sem links "point-and-click" (PDFs mais limpos)
./compile_lilypond.sh -c
```

#### Modo Watch
O modo watch (`-w` ou `--watch`) permite monitorização contínua dos ficheiros:
- **Monitoriza automaticamente** todos os ficheiros LilyPond e suas dependências
- **Recompila automaticamente** apenas os PDFs afetados quando um ficheiro é modificado
- **Mostra em tempo real** quais ficheiros foram alterados e quais PDFs estão a ser recompilados

```bash
# Iniciar modo watch
./compile_lilypond.sh --watch

# Watch com modo verboso
./compile_lilypond.sh -v -w
```

#### Opção Ignore
A opção `--ignore` permite excluir ficheiros específicos da compilação:
- **Suporta padrões glob** (wildcards como `*`, `?`)
- **Pode ser usada múltiplas vezes** para ignorar vários padrões
- **Funciona com nomes de ficheiros** ou caminhos completos

Exemplos de padrões:
- `--ignore '*test*'` - ignora ficheiros que contenham "test" no nome
- `--ignore 'draft_*.ly'` - ignora ficheiros que comecem com "draft_"
- `--ignore '*/backup/*'` - ignora ficheiros em pastas chamadas "backup"

```bash
# Ignorar ficheiros específicos
./compile_lilypond.sh --ignore '*test*' --ignore 'draft_*.ly'
```

#### Opção Clean
A opção `-c` ou `--clean` gera PDFs sem os links "point-and-click" do LilyPond:
- **PDFs mais limpos** sem metadados de navegação incorporados
- **Ficheiros mais pequenos** devido à ausência de dados de link
- **Ideal para distribuição** das partituras finais

```bash
# Compilar com modo clean
./compile_lilypond.sh -c
```

### Como funciona
1. Procura recursivamente por pastas chamadas `lilypond`
2. Para cada ficheiro `.ly` encontrado nessa pasta ou subpastas, extrai o campo `filename` do cabeçalho
3. Segue recursivamente todas as declarações `\include` para identificar dependências
4. Compila o ficheiro se o PDF resultante não existir ou se qualquer dependência foi modificada após a criação do PDF
5. Guarda o PDF resultante na pasta `partes` correspondente com o nome especificado
6. **No modo watch:** Continua a monitorizar todos os ficheiros e recompila automaticamente quando detecta alterações

### Pré-requisitos

Para usar o script de compilação, é necessário ter o LilyPond instalado:

```bash
# Ubuntu/Debian
sudo apt-get install lilypond

# Arch Linux
sudo pacman -S lilypond

# macOS (com Homebrew)
brew install lilypond
```

### GitHub Action - Compilação Automática

O repositório inclui uma GitHub Action que automaticamente:

- **Detecta mudanças** em ficheiros `.ly`, `.ily` ou no script de compilação
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

## 📝 Formato dos Ficheiros LilyPond

Os ficheiros `.ly` devem incluir um campo `filename` no cabeçalho para funcionarem com o script de compilação:

```lilypond
\version "2.24.4"

\book{
    \header {
        instrument = "Instrumento"
        filename = "Nome_do_Ficheiro_Final"
    }
    % ...resto do código...
}
```

## 📋 Convenções de Nomenclatura

### Ficheiros de Partitura
- Separar com hífen: `Compositor - Obra - Instrumento`

### Pastas
- Nome do compositor seguido da obra: `Bach - Cantata nº 12`