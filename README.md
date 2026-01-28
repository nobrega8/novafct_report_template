# LaTeX Report Template

Este repositório contém:
- `template/`: o template genérico (é isto que deves copiar para um novo relatório)
- `scripts/new-report.sh`: script para criar um novo relatório a partir do template
- o resto do conteúdo atual pode servir como exemplo/arquivo (não é necessário para o template)

## Criar um novo relatório

A partir da raiz do repositório:

```bash
chmod +x scripts/new-report.sh
./scripts/new-report.sh my_new_report
```

Isto cria uma pasta `my_new_report/` com a estrutura completa do template.

## Compilar

Dentro da pasta do relatório (ex.: `my_new_report/` ou `template/`):

```bash
make pdf
```

Outputs vão para `build/`.

### minted (opcional)

Por defeito o template usa `listings` para não exigir `-shell-escape`.

Se quiseres `minted`:
1) em `tex/settings.tex` muda para `\usemintedtrue`
2) em `latexmkrc` descomenta a linha do `-shell-escape`

## Onde editar

- `tex/metadata.tex`: título, autores, curso, instituição, data
- `sections/`: conteúdo principal
- `appendix/`: anexos
- `bibliography.bib`: referências
- `img/`: figuras (opcional `img/logo.png` na capa)

## Logo (NOVA FCT)

Por agora o template assume NOVA FCT e já inclui `template/img/logo.png`.
Se no futuro quiseres generalizar, basta trocar esse ficheiro ou ajustar a capa em `template/tex/cover.tex`.
