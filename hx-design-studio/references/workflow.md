# Workflow Padrão — Como abrir, executar e fechar uma tarefa

> Aplica-se a todos os modos. Use TaskCreate (quando disponível) para acompanhar progresso visual.

## Fase 1 — Antes de fazer qualquer coisa

### Identificação rápida

Antes de qualquer ação, identifique mentalmente (não verbalize ao usuário a menos que ele peça):

1. **Qual modo** — 1 (crítica) / 2 (estratégia) / 3 (direção) / 4 (produção) / combinação
2. **Princípios universais** mais relevantes — 1-3 do Lidwell
3. **Vieses cognitivos** mais relevantes — 1-3 do Dutra
4. **Direção estética** aplicável (se Modo 1, 3 ou 4)
5. **Densidade de informação** esperada (alta para tool/dashboard, contida para marketing)
6. **Fato a verificar** via WebSearch antes de assumir? (Princípio #0)
7. **Ativos a levantar** (Protocolo de Ativos)?

### Verificação de fatos (#0 — sempre primeiro)

Se o pedido envolve produto/marca/spec específico, **WebSearch antes de qualquer coisa**. Detalhe em SKILL.md, seção "Princípio #0".

## Fase 2 — Pergunta única em batch

Para todo Modo 4 (Produção) e para Modo 3 (Direção) com pedido vago, mande **uma única lista** de perguntas. Não pergunte uma por turno.

### Template para Modo 4 (Produção)

```
Antes de começar, preciso alinhar:

**Sobre design context**
1. Tem design system / UI kit / componentes prontos?
2. Tem brand spec / paleta / tipografia oficial?
3. Pode mandar screenshot ou URL do produto/marca atual?
4. Tem codebase que eu posso ler?

**Sobre o entregável**
5. Formato esperado: protótipo HTML clicável? Deck? Animação? Vídeo? Infográfico?
6. Dimensão alvo: desktop (1920×1080)? Mobile (375×812)? Print (A4/Letter)?
7. Quem vai usar/ver: cliente final, equipe interna, social media?
8. Tem prazo apertado ou posso fazer com Junior Designer mode (placeholder + iteração)?

**Sobre conteúdo**
9. Texto/copy você vai me passar ou eu uso placeholder honesto?
10. Imagens: vou usar real (qual fonte) ou placeholder?
```

### Template para Modo 1 (Crítica explicitamente pedida)

```
Pra dar crítica útil, preciso saber:

1. Qual o objetivo da tela/fluxo? (conversão, retenção, educação, transação...)
2. Qual o público-alvo?
3. Que dados você tem sobre como tá performando? (métricas, feedback, observações)
4. Tem restrição técnica que limitou o design (legacy, framework, regulação)?
5. Quer 5-D completa (com nota numérica) ou diagnóstico + recomendação?
```

### Template para Modo 3 (Direção Criativa)

```
Pra recomendar 3 direções diferenciadas:

1. Quem é o usuário-alvo (1 linha de persona)?
2. Que emoção ele deve sentir ao ver a marca/produto?
3. Quais marcas/produtos você admira (3 referências)?
4. Setor + fase (startup early, scale-up, enterprise)?
5. Tem restrição de marca (cor proibida, tom proibido)?
```

## Fase 3 — Espera resposta, processa, executa

Não comece a produzir antes da resposta. Se o usuário pula perguntas, faça com placeholder honesto explícito.

## Fase 4 — Junior Designer mode (sempre)

1. **Esqueleto primeiro** — estrutura HTML com placeholders cinza, comentários `<!-- assumptions -->` e `<!-- reasoning -->`.
2. **Mostra cedo** — antes de polir, antes de cor, antes de tipografia fina.
3. **Itera** — recebe feedback, aplica, mostra de novo.
4. **3 momentos de show distintos:**
   - Show 1: estrutura crua + assumptions
   - Show 2: conteúdo real preenchido
   - Show 3: variações + Tweaks (ver `tweaks-system.md`)
5. **Polish final** — só depois que estrutura e conteúdo estão validados.

Princípio: iterar com feio é 100x mais barato que iterar com bonito.

## Fase 5 — Verificação antes de entregar

| Tipo de output | Como verificar |
|---|---|
| Protótipo HTML clicável | Playwright — click em todos os botões principais, valida estado |
| Deck HTML | Abre em browser, navega slide a slide, confere PPTX export |
| Animação | Renderiza MP4 + GIF, abre, confere loop, timing, áudio |
| Vídeo com BGM/SFX | ffmpeg check, abre, confere sincronia |
| Infográfico | Print preview, valida margens, exporta PDF |
| Crítica 5-D | Confere todas as 5 dimensões pontuadas, Keep+Fix+Quick Wins presentes |

Detalhe em `verification.md` e `scripts/verify.py`.

## Fase 6 — Entrega + próximos passos

Junto com o output:

1. **1 frase resumindo o que foi entregue**
2. **Computer:// link** para o arquivo principal
3. **Sugestão de próximo passo** (variação? Crítica 5-D? Export para outro formato?)

Não escreva pós-amble explicativo longo. Usuário vê o arquivo.

## Anti-patterns no workflow

❌ Perguntar uma coisa, esperar, perguntar outra, esperar...
✅ Perguntar tudo de uma vez em lista numerada

❌ Começar a fazer hi-fi antes de levantar contexto
✅ Esqueleto primeiro, polish depois

❌ Polir uma versão sem validar estrutura
✅ Mostrar feio cedo

❌ Entregar sem verificar (sem rodar Playwright, sem abrir o vídeo)
✅ Verificar 100% dos outputs antes de entregar

❌ Pós-amble explicando o que tem no arquivo
✅ Frase resumo + link + sugestão de próximo passo

## Quando usar TaskCreate

Use TaskCreate (se disponível na sessão) para qualquer pedido com 3+ etapas distintas. Útil para:
- Modo 4 com múltiplos entregáveis (deck + animação)
- Modo 3 com 3 direções a explorar
- Crítica + redesign + nova crítica iterativa

Atualize status (`in_progress` → `completed`) conforme avança.
