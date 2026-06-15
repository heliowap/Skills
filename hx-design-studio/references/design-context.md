# Design Context — Levantar antes de produzir

> **A regra mais importante de qualidade.** Bom design hi-fi cresce a partir de contexto pré-existente. Fazer hi-fi do zero é último recurso, e produz genérico — sempre.
>
> Use este arquivo no início de qualquer Modo 4 (Produção) e como reforço do Protocolo de Ativos.

## O que é Design Context

Por ordem de valor (alto → baixo):

### 1. Design System / UI Kit do usuário
A biblioteca de componentes, tokens de cor, regras de tipografia e ícones do produto do usuário. **Cenário ideal.**

### 2. Codebase do usuário
Se você tem acesso ao código, há componentes vivos. Leia:
- `theme.ts` / `colors.ts` / `tokens.css` / `_variables.scss`
- Componentes específicos (`Button.tsx`, `Card.tsx`)
- Layout scaffold (`App.tsx`, `MainLayout.tsx`)
- Stylesheets globais

**Leia o código e copie valores exatos** — hex codes, spacing scale, font stack, border-radius. Não recrie de memória.

### 3. Produto publicado do usuário
Se ele tem produto online mas não deu código, use Playwright pra capturar ou peça screenshot.

```bash
npx playwright screenshot https://example.com screenshot.png --viewport-size=1920,1080
```

Te dá vocabulário visual real.

### 4. Brand guidelines / Logo / Assets existentes
Logo files, paleta, materiais de marketing, templates de slide. Tudo é contexto.

### 5. Referência competitiva
Usuário diz "quero parecido com X" — peça URL ou screenshot. Não use sua memória embaçada do produto X.

### 6. Design system conhecido (fallback)
Se nada acima existe, ancore num sistema público:
- Apple HIG (para iOS-flavored)
- Material Design 3 (para Android/Google ecosystem)
- Radix Colors (para paleta)
- shadcn/ui (para componentes web)
- Tailwind default palette (para spacing/cor padrão)

**Diga ao usuário qual usou** — para ele saber que isso é ponto de partida, não ponto de chegada.

## Fluxo de levantamento de contexto

### Passo 1 — Pergunta única (em batch)

Lista padrão pra abrir todo Modo 4:

```
1. Tem design system / UI kit / biblioteca de componentes? Onde?
2. Tem brand guidelines, paleta, regras tipográficas?
3. Pode me passar screenshot ou URL do produto atual?
4. Tem codebase que eu possa ler?
5. Tem produto / marca de referência? URL ou screenshot.
```

### Passo 2 — Quando o usuário responde "não", ajude-o a achar

Não desista. Tente:

```
Vamos procurar pista:
- Algum projeto anterior seu tem design relacionado?
- O site de marketing da empresa usa qual paleta/tipografia?
- O logo do seu produto tem que estilo? Pode me mandar?
- Algum produto que você admira que serve de referência?
```

### Passo 3 — Leia o que conseguir

Se ele deu codebase:
1. **Liste estrutura** — ache style/theme/component files
2. **Leia theme/token files** — extraia hex/px values específicos
3. **Leia 2-3 componentes representativos** — vocabulário visual (hover, shadow, border, padding)
4. **Leia stylesheet global** — reset base, font loading
5. **Se tem Figma link / screenshot** — olhe a imagem, mas **acredite mais no código**

**Importante**: não olhe rápido e desenhe de impressão. Se você não anotou 30+ valores específicos, ainda não absorveu de fato.

### Passo 4 — Verbalize o sistema que vai usar

Confirme antes de construir:

```
Baseado no codebase + screenshots, o sistema que vou usar:

**Cores**
- Primary: #C27558 (extraído de tokens.css)
- Background: #FDF9F0
- Text: #1A1A1A
- Muted: #6B6B6B

**Tipografia**
- Display: Instrument Serif (do @font-face em global.css)
- Body: Geist Sans
- Mono: JetBrains Mono

**Spacing** (sua scale)
- 4, 8, 12, 16, 24, 32, 48, 64

**Shadow patterns**
- `0 1px 2px rgba(0,0,0,0.04)` (subtle card)
- `0 10px 40px rgba(0,0,0,0.1)` (elevated modal)

**Border-radius**
- Pequenos componentes 4px, cards 12px, botões 8px

**Vocabulário de componente**
- Button: filled primary / outlined secondary / ghost tertiary, todos rounded 8px
- Card: fundo branco, subtle shadow, sem border

Bate com sua expectativa? Posso começar?
```

Espere confirmação. Aí execute.

## Quando não há contexto (fallback honesto)

**Aviso obrigatório ao usuário:**

```
Você não tem design context — vou produzir baseado em intuição genérica.
Resultado tende a "OK mas sem identidade".
Prefere continuar, ou me passa material primeiro?
```

Se ele insiste, sequencia:

### 1. Escolha direção estética declarada

Não default genérico. Pegue uma das 5 escolas (ver `design-styles.md`) e diga qual escolheu:
- Arquitetura informacional (Pentagram default)
- Funcionalismo suíço (Rams default)
- Minimalismo oriental (Hara default)
- Vanguarda experimental (Sagmeister default)
- Poética do movimento (Field.io default)

### 2. Escolha um design system público como esqueleto

- Radix Colors (paleta) — https://www.radix-ui.com/colors
- shadcn/ui (componentes web) — https://ui.shadcn.com
- Tailwind spacing scale (múltiplos de 4)

### 3. Tipografia diferenciada (sem Inter/Roboto como display)

Combos validados (todos no Google Fonts):
- Instrument Serif + Geist Sans
- Cormorant Garamond + Inter Tight
- Bricolage Grotesque + Söhne (Söhne paga)
- Fraunces + Work Sans (Fraunces já meio batido por AI)
- JetBrains Mono + Geist Sans (technical feel)

### 4. Documente decisões em comentário HTML

```html
<!--
Design decisions:
- Primary: warm terracotta (oklch 0.65 0.18 25) — "editorial" direction
- Display: Instrument Serif for humanist, literary feel
- Body: Geist Sans for clean contrast
- No gradients — committed to minimal, no AI slop
- Spacing: 8px base, golden ratio friendly (8/13/21/34)
-->
```

## Strategy de Import (codebase grande)

### Pequeno (<50 arquivos)
Leia tudo, internalize.

### Médio (50-500 arquivos)
Foque em:
- `src/components/` ou `components/`
- Todos files em styles/tokens/theme
- 2-3 componentes representativos de página inteira (Home.tsx, Dashboard.tsx)

### Grande (>500 arquivos)
Peça ao usuário pra apontar foco:
- "Vou fazer settings page" → leia tudo relacionado a settings
- "Vou criar feature nova" → leia shell + referência mais próxima
- Não busque completude, busque precisão

## Lembrete final

**O teto de qualidade do projeto é o teto de qualidade do contexto que você levantou.**

10 minutos pesquisando contexto vale mais que 1 hora desenhando hi-fi sem âncora.

Sem contexto, **peça antes de construir** — não construa achando.
