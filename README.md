# Skills

Repositorio publico para as skills autorais e customizadas usadas por Helio.

Este repo passa a ser a fonte de trabalho para skills novas e para evolucao das
skills existentes. Instalacoes locais em `~/.codex/skills` ou
`~/.agents/skills` podem ser atualizadas a partir daqui, mas este repositorio
deve preservar a versao fonte revisavel.

## Skills incluidas

| Skill | Uso principal | Origem inicial |
| --- | --- | --- |
| `doc-delta` | Manter manutencao documental como Definition of Done de tarefas de codigo, configuracao, operacao, seguranca, API, schema e arquitetura. | Criada neste repo |
| `engineering-operating-system` | Auditar e desenhar o sistema operacional de engenharia de um produto: contexto, arquitetura, workflow, qualidade, release, seguranca, dados, operacoes, docs e cadencia. Inclui subcomandos `eos:*`, como `eos:delegated-capture`. | Criada neste repo a partir do livro `Software Development 101` |
| `handoff-executor` | Transformar handoffs, planos e checklists em execucao verificavel, preservando contexto, branch/worktree e evidencias de fechamento. | Criada neste repo |
| `hx-design-studio` | Consultoria e producao de Human Experience Design, critica UI/UX, direcao visual, prototipos, decks, motion e infograficos. | `~/.codex/skills/hx-design-studio` |
| `hello-repo` | Entrada rapida e token-efficient em projetos existentes: sincroniza metadados do GitHub sem alterar o working tree, le arquivos de alto sinal e devolve um briefing compacto do projeto. | Criada neste repo |
| `repo-pr-triage-review` | Triar PRs abertos, avaliar readiness, interpretar checks atuais e conduzir code review findings-first quando solicitado. | Criada neste repo |

## Como adicionar uma skill

1. Crie uma pasta na raiz com o identificador da skill.
2. Inclua obrigatoriamente `SKILL.md` com frontmatter `name` e `description`.
3. Coloque recursos auxiliares dentro da propria skill:
   - `references/` para material carregado sob demanda.
   - `scripts/` para automacao deterministica.
   - `assets/` para templates, midia e artefatos necessarios.
   - `evals/` para prompts ou benchmarks da skill.
4. Evite copiar skills genericas instaladas de terceiros. Este repo deve conter
   skills autorais, customizadas, ou fortemente adaptadas para projetos do Helio.
5. Nao versionar credenciais, `.env`, dumps privados, bases de dados, arquivos
   temporarios de execucao ou outputs grandes que possam ser regenerados.

## Publicacao

Este repositorio e publico. Antes de commitar uma skill, revise referencias e
assets para garantir que nao ha segredo, dado pessoal sensivel ou material que
nao deveria ser publicado.
