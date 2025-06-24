# Repertório 2024-25

Este repositório contém as partituras e arranjos para o repertório da CEIST (Camerata de Estudantes do Instituto Superior Técnico).

## 📁 Estrutura do Projeto

Cada peça tem uma pasta dedicada, contendo:

- **`lilypond/`** - Ficheiros fonte em LilyPond
    -  **`lilypond/musica/`** - Ficheiros com a música para cada instrumento
    -  **`lilypond/partes/`** - Ficheiros com as definição das partituras individuais para cada instrumento
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

**Como funciona:**
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