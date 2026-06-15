# Content Guidelines — Tipografia, escala, paletas, anti-AI-slop

> Use durante Modo 4 (Produção) para tomar decisões de tipografia, cor e espaçamento sem reinventar a roda.

## Anti-AI-slop checklist (referência rápida)

Sinais que **identificam** design feito por IA sem direção. Você nunca produz, e identifica em críticas:

| Sintoma | Por que é problema | O que fazer |
|---|---|---|
| Gradiente roxo/violeta como "tech background" | Cliché AI batido — usuário já viu 1.000 vezes | Use sólido com personalidade (azul-ardósia, marrom-tabaco, verde-musgo) |
| Emoji 🚀 / 💡 / ⚡ como ícone funcional | Substitui ícone real, vira brincadeira em produto sério | Use Lucide / Phosphor / Heroicons — ícone vetorial real |
| Card com cantos arredondados + border-accent colorido à esquerda | "Bootstrap default" reconhecível em 100ms | Use border sutil ou shadow, sem accent colorido lateral |
| SVG desenhando rosto/pessoa/objeto complexo | AI tenta desenhar, sai mal-feito, fica óbvio | Use foto real OU placeholder honesto cinza com label |
| Inter / Roboto / Arial como tipografia DISPLAY | Inter como display = "AI default", indistinguível | Inter pode ser body. Display: Cormorant, Instrument Serif, Bricolage, Druk |
| Dark mode `#0D1117` + neon ciano `#00FFFF` | Indistinguível de qualquer SaaS B2B desde 2020 | Dark com tom (azul profundo, marrom escuro), accent fora do espectro padrão |
| Ícone decorativo em todo título | Adorno sem função | Remova, deixa hierarquia tipográfica falar |
| "98% dos usuários", "ranked #1", testimonial fake | Dado fabricado — quebra confiança se notado | Só cite estatística verificável (e cite a fonte) |
| 5+ microinterações dispersas | Movimento sem orquestração = caos | 1 movimento por seção, tudo coordenado |
| Pontos de bullet ✓ verdes em CTA | "AI bullet list" reconhecível | Use prosa ou lista limpa sem ícone repetido |

## Escala tipográfica

### Use uma escala modular (não decida tamanho ad-hoc)

**Escala 1.250 (perfect fourth) — recomendada para texto-heavy:**
12 / 14 / 16 / 20 / 24 / 32 / 40 / 56 / 72

**Escala 1.333 (perfect fifth) — boa para hierarquia mais expressiva:**
12 / 14 / 16 / 22 / 28 / 38 / 52 / 70 / 96

**Escala 1.500 (golden-ish) — para hi-fi marketing:**
12 / 14 / 16 / 24 / 36 / 56 / 84 / 128

### Regra de hierarquia mínima

- Diferença título vs corpo ≥ **2,5x** (corpo 16px → título mínimo 40px)
- Body sempre ≥ 14px (preferível 16px)
- Line-height: body 1.5x, headings 1.1x-1.2x
- Comprimento de linha: 50-75 caracteres (use `max-width` em rem ou ch)

## Paletas validadas (todas testadas em produção)

### Premium / Editorial
- Background: `#FAFAF7` (off-white quente)
- Text primary: `#1A1A1A` (preto não-puro)
- Text secondary: `#6B6B6B`
- Accent: `#C27558` (terracotta) ou `#1F2E4A` (índigo)
- Border: `#E5E5E0`

### B2B / Devtool clean
- Background: `#FFFFFF` 
- Surface: `#F8F9FA`
- Text: `#0D0D0D`
- Muted: `#5C5C5C`
- Accent: `#0050B3` (azul confiável) ou `#108A47` (verde funcional)

### Healthcare / Healthtech
- Background: `#FDFDFB`
- Surface: `#F2F4F1`
- Text: `#1A2622`
- Muted: `#5C6961`
- Accent primário: `#2C7A6B` (verde-clínico, não emoji-green)
- Accent crítico: `#C73838` (vermelho usado só pra warning)

### Premium dark com personalidade (NÃO #0D1117)
- Background: `#1A1F2E` (dark azul-ardósia, não preto puro)
- Surface: `#252B3D`
- Text: `#E8E9EC`
- Muted: `#9499A8`
- Accent: `#E0A458` (amber morno, fora do ciano padrão)

### Wellness / contemplativo (Hara-inspired)
- Background: `#F5F2EB` (branco arroz)
- Text: `#2A2620` (preto sépia)
- Muted: `#7A726A`
- Accent: `#8B7355` (terra) ou `#6B7A5C` (musgo) — sempre dessaturado

### Cultural / fashion (Borsche-inspired)
- Background: `#000000` puro
- Text: `#FFFFFF` puro
- Accent neon: `#FF1493` (rosa choque) ou `#FFFF00` (amarelo elétrico)
- Foto colorida central (sempre 1, sem competir)

## Tipografias por escola (do Google Fonts, free a menos que indicado)

### Arquitetura informacional / Funcionalismo suíço
- Display + body: **Söhne** (paga), **Inter Display** (free, peso 100 e 800), **Aktiv Grotesk** (paga), **Söhne Mono** para dado
- Alternativa free total: **Geist Sans** (Vercel) + **Geist Mono**

### Poética do movimento
- Display: **Söhne Breit**, **Inter Display Black**, **Druk** (paga)
- Body: secundário, deixa o movimento falar — Inter, Geist regular

### Minimalismo oriental
- Display: **Cormorant Garamond**, **Noto Serif JP** (free, premium feel)
- Body: **Cormorant Garamond** light + **Noto Sans JP** ou **Söhne Light**

### Vanguarda experimental
- Display: **Bricolage Grotesque** (free, expressivo), **Druk** (paga), **Migra** (paga)
- Body: contraste — sans neutro como **Inter**

### Funcionalismo suíço
- Display + body: **Akkurat** (paga), **Helvetica Neue**, **Inter** (free, OK como body)
- Mono: **JetBrains Mono** (free)

## Spacing scales validadas

### 8pt grid (default seguro)
4 / 8 / 12 / 16 / 24 / 32 / 48 / 64 / 96

### 4pt grid (mais granular)
4 / 8 / 12 / 16 / 20 / 24 / 32 / 40 / 48 / 64

### Fibonacci (orgânico, bom para Hara)
8 / 13 / 21 / 34 / 55 / 89

**Sempre use CSS variables**:
```css
:root {
  --space-xs: 4px;
  --space-sm: 8px;
  --space-md: 16px;
  --space-lg: 24px;
  --space-xl: 48px;
  --space-2xl: 96px;
}
```

## Border-radius

- **Sharp**: 0px — para Funcionalismo suíço, Tufte
- **Sutil**: 2-4px — para Pentagram, Vignelli
- **Card padrão**: 8-12px — para web moderna geral
- **Soft**: 16-24px — para wellness, premium
- **Pill**: 9999px — só para botões/tags

**Não misture** — escolha 1 raio para cards e mantenha. Botões podem usar raio diferente se sistemático.

## Sombras

### Subtle (cards padrão)
```css
box-shadow: 0 1px 2px rgba(0, 0, 0, 0.04), 0 1px 3px rgba(0, 0, 0, 0.06);
```

### Elevated (modal, dropdown ativo)
```css
box-shadow: 0 10px 40px rgba(0, 0, 0, 0.10), 0 4px 12px rgba(0, 0, 0, 0.08);
```

### Premium (luxury-grade depth)
```css
box-shadow: 0 30px 80px rgba(0, 0, 0, 0.12), 0 12px 30px rgba(0, 0, 0, 0.08);
```

**Nunca**: sombra colorida saturada (rosa pulsante, ciano glow). Sombra é cinza/transparente.

## Imagens

### Fontes confiáveis (use, não invente)
- **Wikimedia Commons** — alta qualidade, licença clara
- **The Met Museum (Open Access)** — arte high-res
- **Unsplash** — fotografia com curadoria
- **NASA Image Gallery** — para visual técnico/científico
- **Internet Archive** — conteúdo histórico

### Anti-pattern com imagem
❌ AI gen pessoa/rosto realista — sai uncanny valley quase sempre
❌ Stock genérico sorrindo segurando laptop
✅ Foto real licenciada com atribuição
✅ Ilustração estilizada (geometric, line art, abstract)
✅ Placeholder cinza honesto com label `[Imagem: descrição]`

## Microcopy

### Botões
- ❌ "Click here", "Submit", "OK"
- ✅ Verbo + substantivo claro: "Salvar projeto", "Comprar agora", "Marcar consulta"

### Estado vazio
- ❌ "Nada por aqui!"
- ✅ "Você ainda não criou um projeto. [Criar primeiro projeto]" com CTA inline

### Estado de erro
- ❌ "Algo deu errado. Tente novamente."
- ✅ "Não conseguimos salvar. Verifique conexão e [Tente novamente]." (problema + ação)

### Confirmação destrutiva
- ❌ "Tem certeza? [OK] [Cancelar]"
- ✅ "Excluir projeto X? Essa ação é permanente. [Excluir] [Manter]"

## Densidade-mínima por tipo de produto (regra crítica)

| Tipo | Sinais visíveis de "inteligência" por tela (mínimo) |
|---|---|
| Marketing landing | 1-2 |
| Brochure / blog | 1 |
| Dashboard / CRM | ≥3 (recomendação, status inferido, contexto) |
| AI tool / copilot | ≥4 |
| Healthtech (paciente) | 2-3 (não sobrecarregar emocionalmente) |
| Healthtech (clínico) | ≥4 (densidade clínica espera) |
| E-commerce | 2-3 (produto + recomendação + prova social) |

**Aplicar minimalismo cego em produto-IA é erro.** Vazio em dashboard = "produto vazio".
