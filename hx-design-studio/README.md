# HX Design Studio

> Estúdio integrado de **Human Experience Design** — consultor sênior em PT-BR + capacidade de produção (protótipos clicáveis, decks editáveis, motion design, vídeo, infográfico).

## O que faz

Quatro modos:

1. **Crítica** — review 5-D de tela/fluxo/site (com nota numérica + Keep/Fix/Quick Wins) ou diagnóstico ad-hoc usando vieses cognitivos (Dutra) + princípios universais (Lidwell).
2. **Consultoria estratégica** — decisões de produto, conversão, retenção, precificação, jornada do cliente.
3. **Direção criativa** — recomenda 3 direções estéticas diferenciadas das 5 escolas (Arquitetura Informacional, Poética do Movimento, Minimalismo Oriental, Vanguarda Experimental, Funcionalismo Suíço) ancoradas em 20 designers/estúdios de referência.
4. **Produção** — protótipos HTML iOS/Android/Web clicáveis, decks HTML→PPTX editável, animação MP4/GIF 60fps com BGM+SFX, infográfico print-grade.

## Base intelectual

- **Design From Human** (Rian Dutra) — vieses cognitivos aplicados a UX
- **Universal Principles of Design** (Lidwell, Holden, Butler) — 50+ princípios universais
- **20 Filosofias × 5 Escolas** — vocabulário de direção estética
- **Workflow huashu-design** (花生/Alchain) — Junior Designer mode, brand asset protocol, anti-AI-slop, pipeline de produção HTML

## Princípios diferenciadores

- **Combina lentes** — todo diagnóstico forte = 1 viés (Dutra) + 1 princípio (Lidwell)
- **Ética de negócio** — recusa Deceptive Design, oferece alternativa ética
- **Densidade por tipo** — dashboard/IA exige alta densidade (≥3 sinais visíveis); marketing exige contenção
- **120%/80%** — gosto = um detalhe brilhante, resto a 80%
- **Junior Designer mode** — placeholder honesto + iteração precoce > tentativa hi-fi malfeita
- **Anti-AI-slop checklist** — identifica e evita os 10 clichês visuais de "design feito por IA"

## Contexto Intrador / healthtech

A skill carrega considerações específicas para saúde:
- CFM (publicidade médica restrita)
- LGPD para dados sensíveis (categoria especial)
- Sensibilidade emocional do paciente (ansiedade pré-procedimento)
- Autoridade clínica sem frieza institucional
- Densidade clínica esperada para usuário profissional vs contenção para paciente

## Estrutura

```
hx-design-studio/
├── SKILL.md                                          # Documento principal (PT-BR)
├── README.md                                         # Este arquivo
├── references/
│   ├── 00-design-from-human-rian-dutra.md           # Vieses cognitivos (PT-BR)
│   ├── 00-principios-universais-lidwell.md          # Princípios universais (PT-BR)
│   ├── critique-guide.md                            # Framework 5-D detalhado (PT-BR)
│   ├── design-styles.md                             # 20 filosofias em 5 escolas (PT-BR)
│   ├── design-context.md                            # Como levantar contexto (PT-BR)
│   ├── workflow.md                                  # Workflow padrão (PT-BR)
│   ├── content-guidelines.md                        # Tipografia/cor/spacing (PT-BR)
│   ├── animation-*.md, slide-*.md, video-*.md, etc  # Operacional (zh — Claude lê)
├── scripts/                                          # Pipeline de produção
│   ├── render-video.js, html2pptx.js, etc
└── assets/                                           # Componentes + BGM + SFX
    ├── animations.jsx, ios_frame.jsx, deck_stage.js, etc
    └── bgm-*.mp3, sfx/, showcases/
```

## Origem e licença

Este é um **fork integrado** que combina:

- **Conteúdo HX Design** original em PT-BR (Helio + bibliografia citada)
- **Workflow + pipeline de produção** adaptado de [huashu-design](https://github.com/alchaincyf/huashu-design) (花生/Alchain) — uso pessoal livre, **comercial requer autorização do autor original**

Para uso em produto, entrega de cliente, ou integração comercial, contate o autor do huashu-design via canais listados no README dele.

## Triggers automáticos

A skill aciona quando o usuário menciona qualquer de:

**PT-BR**: review, avalia, critica, dá uma olhada, o que tá ruim, melhorar conversão, direção visual, redesign, fluxo, landing, mockup, protótipo, deck, slide, animação, hero, infográfico, UX, UI, interface

**EN**: review this design, prototype, mockup, deck, animation, hero section, motion, design exploration

Também aciona quando você compartilha screenshot pedindo opinião, ou descreve um produto digital pedindo direção.
