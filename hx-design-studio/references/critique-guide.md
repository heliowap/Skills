# Guia de Crítica 5-D — Framework Operacional

> Use quando o pedido do usuário for explicitamente uma review/avaliação ("review", "avalia", "dá nota", "o que tá ruim", "olha essa tela e fala o que ta errado").
>
> Para diagnóstico ad-hoc dentro de Modo 1 (sem nota numérica), use o Framework de Crítica Padrão (Diagnóstico → Impacto → Recomendação → Trade-offs) descrito no SKILL.md.

---

## Estrutura obrigatória da resposta

```
## Avaliação 5-D — [Nome do artefato]

**Nota geral**: X.X/10 [Excelente 8+ / Bom 6-7,9 / Precisa melhorar 4-5,9 / Reprovado <4]

### Notas por dimensão
1. Consistência filosófica: X/10 — [1 frase]
2. Hierarquia visual: X/10 — [1 frase]
3. Execução de detalhe: X/10 — [1 frase]
4. Funcionalidade: X/10 — [1 frase]
5. Inovação: X/10 — [1 frase]

### Keep
- [2-3 itens que estão bons e devem ser preservados]

### Fix (por severidade)
**1. [Nome do problema]** — ⚠️ crítico / ⚡ importante / 💡 polimento
- Atual: [estado descrito]
- Diagnóstico: [princípio Lidwell + viés Dutra em jogo]
- Correção: [ação concreta com valores quando aplicável]

### Quick Wins (5 minutos)
- [ ] [Mudança mais barata com maior retorno]
- [ ] [Segunda mais relevante]
- [ ] [Terceira]
```

**Princípio:** avalie o **design**, nunca o **designer**. Linguagem técnica, sem julgamento moral.

---

## As 5 Dimensões — rubric detalhada

### 1. Consistência filosófica (Philosophy Alignment)

A tela tem direção clara ou é colcha de retalhos?

| Nota | Critério |
|------|----------|
| 9-10 | Cada decisão visual ancora numa filosofia coerente (Pentagram / Hara / Field.io / etc). Nenhum elemento traidor. |
| 7-8 | Direção identificável, mas 1-2 elementos destoam (uma cor fora da paleta, uma tipografia importada de outra escola). |
| 5-6 | Intenção visível mas execução mistura escolas — Pentagram + neon ciano + cantos arredondados = confusão filosófica. |
| 3-4 | Mimetismo superficial sem entender o núcleo da escola. |
| 1-2 | Sem direção identificável. Visual genérico, soma de templates. |

**Pontos de checagem:**
- A escola está nomeada? Designer/estúdio âncora citável?
- Paleta (≤4 cores) condiz com a escola?
- Tipografia (≤2 famílias) condiz?
- Espaçamento/grid condiz?
- Há *signature detail* da escola (ex.: Pentagram = grade visível, Hara = vazio dramático, Sagmeister = tipografia esculpida)?
- Algum elemento "auto-contraditório"? (escolheu Hara mas encheu de informação)

### 2. Hierarquia visual (Visual Hierarchy)

O olho sabe onde ir primeiro, segundo, terceiro?

| Nota | Critério |
|------|----------|
| 9-10 | Olhar segue intenção do designer sem fricção. Captura informação em 2s flat. |
| 7-8 | Hierarquia clara, com 1-2 pontos de ambiguidade menor. |
| 5-6 | Título e corpo distintos, mas níveis intermediários confusos. CTA não bate com prioridade. |
| 3-4 | Informação plana, sem ponto de entrada óbvio. Soma de blocos. |
| 1-2 | Caos. Usuário não sabe nem por onde começar. |

**Pontos de checagem:**
- Diferença de tamanho título vs corpo ≥2,5x?
- Cor/peso/tamanho criam ≥3 níveis distintos?
- Espaço em branco guia o olhar?
- **Teste do olho semi-fechado:** apertando os olhos, hierarquia ainda funciona?
- CTA primário é o elemento mais magnético?
- Posição respeita Gutenberg ou hierarquia explícita?

### 3. Execução de detalhe (Craft Quality)

Espaçamento, tipografia, micro-cópia, alinhamento — o trabalho invisível.

| Nota | Critério |
|------|----------|
| 9-10 | Pixel-perfect. Alinhamento, espaçamento e cor sem nenhum desvio. |
| 7-8 | Geral cuidadoso, com 1-2 pontos de alinhamento ou espaçamento questionáveis. |
| 5-6 | Alinha de modo geral, mas espaçamento aleatório, sem sistema. Cor usada sem critério. |
| 3-4 | Desalinhamentos óbvios. Espaçamento caótico. Mistura de fontes/cores. |
| 1-2 | Rascunho. Não passou no QA básico. |

**Pontos de checagem:**
- Spacing scale sistemático? (8pt grid: 4/8/12/16/24/32/48/64)
- Espaçamento entre elementos similares é consistente?
- ≤4 cores no total (1 primária + 1 secundária + 1 destaque + neutros)?
- ≤2 famílias tipográficas?
- Bordas e cantos alinham?
- Micro-cópia revisada? Sem "lorem ipsum", sem typo, sem botão "Click here"?
- Line-height ≥1,5x para corpo? Comprimento de linha 50-75 caracteres?
- Contraste WCAG AA (4,5:1 para texto normal, 3:1 para large)?

### 4. Funcionalidade (Functionality)

Resolve o trabalho do usuário ou só decora?

| Nota | Critério |
|------|----------|
| 9-10 | Cada elemento serve à função. Zero redundância decorativa. |
| 7-8 | Direção funcional clara, com pequenos elementos removíveis sem perda. |
| 5-6 | Usável, mas elementos decorativos competem com informação. |
| 3-4 | Forma sufoca função. Usuário luta para encontrar o que precisa. |
| 1-2 | Decoração mascarando produto vazio. |

**Pontos de checagem:**
- **Teste da remoção:** se você apagar este elemento, o design piora? Se não, deve sair.
- CTA/informação crítica está no lugar mais magnético?
- Densidade de informação bate com o tipo de produto? (Dashboard ≥3 sinais visíveis; landing 1-2)
- Affordances claras? (Botão parece botão, link parece link)
- Forgiveness presente? (Undo? Confirmação para destrutivo? Auto-save?)
- Estado vazio, estado de erro, estado de loading — cobertos?

### 5. Inovação (Originality)

Algo memorável ou genérico?

| Nota | Critério |
|------|----------|
| 9-10 | Refrescante. Encontra expressão única dentro da filosofia escolhida. |
| 7-8 | Tem decisões próprias, não é template puro. |
| 5-6 | Competente mas template. Trocaria de marca sem ninguém perceber. |
| 3-4 | Cliché AI-slop empilhados (gradiente roxo, glow ciano, emoji em botão). |
| 1-2 | 100% template ou colagem de assets de banco de imagem. |

**Pontos de checagem:**
- Evitou todos os clichês do "Anti-AI-slop checklist"?
- Tem alguma decisão "inesperada mas coerente"? (ex.: tipografia atípica que serve à mensagem)
- Dentro da escola escolhida, há expressão pessoal?
- Removendo o logo, a marca seria reconhecível pela expressão visual?

---

## Pesos por tipo de output

Diferentes artefatos têm dimensões com peso diferente. Ajuste a média final:

| Cenário | Mais importante | Menos importante |
|---|---|---|
| Landing page / hero | Funcionalidade, Hierarquia, Inovação | Detalhe (em hi-fi) |
| Dashboard / tool / CRM | Funcionalidade, Hierarquia, Detalhe | Inovação (clareza > novidade) |
| Deck de apresentação | Hierarquia, Funcionalidade | Detalhe (tela passa rápido) |
| PDF / whitepaper | Detalhe, Funcionalidade, Hierarquia | Inovação (profissionalismo > brilho) |
| App UI mobile | Funcionalidade, Detalhe, Hierarquia | Consistência filosófica (uso > pureza) |
| Capa de post / social | Inovação, Hierarquia | Funcionalidade (engaja > resolve task) |
| Infográfico | Funcionalidade, Hierarquia, Detalhe | Inovação (precisão > criatividade) |
| Healthtech (Intrador) | Funcionalidade, Detalhe, Consistência | Inovação (autoridade clínica > novidade) |

---

## Top 10 problemas mais comuns (com receita de correção)

### 1. Cliché AI-slop empilhado
**Sintoma:** gradiente roxo de fundo + emoji em botão + cantos arredondados + Inter como display + neon ciano em dark mode.
**Diagnóstico:** Heurística do Afeto (Dutra) atrás de "tech" sem direção + Forma Segue Função (Lidwell) violada.
**Correção:** escolher 1 escola das 5, derivar paleta com hex ancorada em produto real, escolher tipografia que NÃO seja Inter/Roboto/Arial como display.

### 2. Hierarquia tipográfica fraca (título ≈ corpo)
**Sintoma:** título 24px, corpo 18px → distinção tímida.
**Diagnóstico:** Hierarquia Visual (Lidwell) ausente + Lei de Hick (usuário paralisa em quantas opções).
**Correção:** título mínimo 2,5x o corpo. Para corpo 16px → título 40-64px. Usar peso (700+ vs 400) e cor para reforçar.

### 3. Paleta sem sistema (5+ cores aleatórias)
**Sintoma:** cada seção em cor diferente, sem hierarquia cromática.
**Diagnóstico:** Consistência (Lidwell) violada + Mera Exposição (Dutra) impedida — sem repetição não há reconhecimento.
**Correção:** 1 primária + 1 secundária + 1 destaque + escala de neutros (5-9 tons de cinza). Tudo em CSS variables `--brand-*`.

### 4. Espaçamento sem grid
**Sintoma:** valores `padding: 13px`, `margin: 7px`, `gap: 22px` — números livres.
**Diagnóstico:** Consistência + Razão Áurea/Fibonacci ignoradas.
**Correção:** scale fixo, múltiplos de 4 ou 8 (4/8/12/16/24/32/48/64). Toda decisão escolhe um valor da scale.

### 5. Vazio insuficiente (claustrofobia visual)
**Sintoma:** todo espaço preenchido. Conteúdo encostando em borda.
**Diagnóstico:** Carga de Performance (Lidwell) alta + Princípio Gestalt da Proximidade quebrado (tudo perto de tudo = nada agrupa).
**Correção:** vazio mínimo 40% do total. Para minimalismo (Hara) 60%+. Distância entre grupos > distância dentro do grupo.

### 6. Tipografias demais
**Sintoma:** 3+ famílias misturadas.
**Diagnóstico:** Consistência + Ruído (Lidwell).
**Correção:** máximo 2 famílias (display + body). Para variação use peso (300/400/500/700) e tamanho.

### 7. Alinhamento inconsistente
**Sintoma:** uns blocos centro, outros esquerda, outros direita — sem critério.
**Diagnóstico:** Alinhamento (Lidwell) violado.
**Correção:** escolher 1 dominante (default: esquerda para texto extenso, centro para títulos curtos hero). Romper só com razão.

### 8. Decoração maior que conteúdo
**Sintoma:** background pattern, gradiente, sombras roubam atenção do CTA principal.
**Diagnóstico:** Forma Segue Função invertida + Heurística do Afeto manipulada sem substância.
**Correção:** **teste de remoção** elemento por elemento. Se a tela funciona sem aquele adorno, ele sai. Vazio ganha.

### 9. Dark mode genérico (#0D1117 + ciano)
**Sintoma:** o "default tech dark" indistinguível de qualquer SaaS B2B.
**Diagnóstico:** Mera Exposição (Dutra) sem identidade própria — usuário já viu 10 produtos iguais essa semana.
**Correção:** dark com personalidade — fundo levemente colorido (azul-ardósia, verde-musgo escuro, marrom-tabaco), accent fora do espectro ciano/violeta padrão.

### 10. Densidade desencontrada com produto
**Sintoma:** dashboard de IA com 1 número grande no centro e nada mais (subdenso); ou landing de café com 8 features na fold (superdenso).
**Diagnóstico:** Modelo Mental (Lidwell) — usuário espera densidade conforme tipo de produto.
**Correção:** dashboard/tool/copilot ≥3 sinais visíveis de inteligência por tela. Landing/marketing 1-2 pontos focais por seção.

---

## Quando combinar com viés Dutra (cheatsheet)

Para cada problema visual diagnosticado em Lidwell, identifique o viés cognitivo que ele aciona — torna o diagnóstico bidimensional:

| Problema visual | Viés provável |
|---|---|
| CTA mal destacado | Fadiga de Decisão (escolhe satisficing) |
| Cancelamento difícil | Aversão à Perda explorada |
| Default pré-marcado pró-empresa | Status Quo manipulado → Deceptive Design |
| Onboarding longo demais | Custo Afundado induzido |
| Preço sem âncora | Ancoragem ausente (perde-se conversão) |
| Imagens decorativas vazias | Heurística do Afeto sem substância |
| Renovação sem aviso | Status Quo + Aversão à Perda → Deceptive |
| Form longo com perguntas óbvias | Fadiga de Decisão + Performance Load |
| Falta de prova social | Reciprocidade + Mera Exposição não acionadas |
| Botão primário sem feedback | Feedback Loop quebrado → ansiedade |

Tabela completa de combinações no fim de `00-principios-universais-lidwell.md`.

---

## Como apresentar a nota geral

**Não some e divida por 5.** Use peso por contexto (ver tabela acima).

Exemplo para landing:
- Consistência: 7 (peso 0,15)
- Hierarquia: 8 (peso 0,25)
- Detalhe: 6 (peso 0,15)
- Funcionalidade: 9 (peso 0,25)
- Inovação: 8 (peso 0,20)
→ Nota = 7×0,15 + 8×0,25 + 6×0,15 + 9×0,25 + 8×0,20 = **7,8**

Para dashboard/healthtech use peso maior em Funcionalidade e Detalhe; menor em Inovação.

---

## Princípio operacional final

Crítica boa **não desmoraliza** — direciona ação. Sempre termine com Quick Wins acionáveis em 5 minutos. Se o designer não conseguiria fazer nada útil com sua review, ela falhou.
