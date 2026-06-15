# Direção Estética — 20 Filosofias em 5 Escolas

> Use para nomear direção visual em Modo 3 (Direção Criativa Advisor) ou para diagnosticar consistência filosófica em Modo 1 (Crítica 5-D).
>
> **Regra absoluta:** nunca recomende "minimalismo" ou "moderno" como categoria. Use designer/estúdio + traços visuais concretos (paleta hex, tipografia específica, espaçamento signature).

---

## Tabela Filosofia × Cenário × Caminho de execução

| # | Escola | Filosofia/Designer | Web | Deck | PDF | Infográfico | Capa | AI gen | Caminho ótimo |
|---|--------|---------------------|:---:|:---:|:---:|:-----------:|:---:|:-----:|---------------|
| 01 | Arq. Informacional | Pentagram (Bierut) | ★★★ | ★★★ | ★★☆ | ★★☆ | ★★★ | ★☆☆ | HTML |
| 02 | Arq. Informacional | Massimo Vignelli | ★★★ | ★★★ | ★★★ | ★★★ | ★★★ | ★☆☆ | HTML |
| 03 | Arq. Informacional | Edward Tufte | ★★☆ | ★☆☆ | ★★★ | ★★★ | ★☆☆ | ★☆☆ | HTML |
| 04 | Arq. Informacional | Information is Beautiful | ★★☆ | ★★☆ | ★★★ | ★★★ | ★★☆ | ★☆☆ | HTML |
| 05 | Poética do Movimento | Field.io | ★★☆ | ★★☆ | ★☆☆ | ★★☆ | ★★★ | ★★★ | AI/Motion |
| 06 | Poética do Movimento | Active Theory | ★★★ | ★☆☆ | ★☆☆ | ★☆☆ | ★★☆ | ★★★ | AI/Motion |
| 07 | Poética do Movimento | Resn | ★★★ | ★☆☆ | ★☆☆ | ★☆☆ | ★★☆ | ★★☆ | Motion |
| 08 | Poética do Movimento | Bruno Simon | ★★★ | ★☆☆ | ★☆☆ | ★☆☆ | ★★☆ | ★★☆ | Three.js |
| 09 | Minimalismo Oriental | Kenya Hara (MUJI) | ★★☆ | ★★★ | ★★★ | ★☆☆ | ★★★ | ★☆☆ | HTML |
| 10 | Minimalismo Oriental | Naoto Fukasawa | ★★☆ | ★★☆ | ★★★ | ★☆☆ | ★★★ | ★☆☆ | HTML |
| 11 | Minimalismo Oriental | Kashiwa Sato | ★★☆ | ★★★ | ★★★ | ★★☆ | ★★★ | ★☆☆ | HTML |
| 12 | Minimalismo Oriental | Ikko Tanaka | ★☆☆ | ★★★ | ★★★ | ★☆☆ | ★★★ | ★★☆ | Mix |
| 13 | Vanguarda Experimental | Stefan Sagmeister | ★★☆ | ★★★ | ★☆☆ | ★★☆ | ★★★ | ★★★ | AI gen |
| 14 | Vanguarda Experimental | David Carson | ★★☆ | ★★☆ | ★★☆ | ★★★ | ★★★ | ★★★ | Mix |
| 15 | Vanguarda Experimental | Bureau Borsche | ★★☆ | ★★★ | ★★☆ | ★★☆ | ★★★ | ★★☆ | HTML/AI |
| 16 | Vanguarda Experimental | Studio Dumbar | ★★★ | ★★☆ | ★★☆ | ★★☆ | ★★★ | ★★☆ | Motion |
| 17 | Funcionalismo Suíço | Müller-Brockmann | ★★☆ | ★★★ | ★★★ | ★★★ | ★★☆ | ★☆☆ | HTML |
| 18 | Funcionalismo Suíço | Dieter Rams | ★★★ | ★★★ | ★★★ | ★★☆ | ★★★ | ★☆☆ | HTML |
| 19 | Funcionalismo Suíço | Erik Spiekermann | ★★☆ | ★★★ | ★★★ | ★★★ | ★★☆ | ★☆☆ | HTML |
| 20 | Funcionalismo Suíço | Jan Tschichold | ★★☆ | ★★★ | ★★★ | ★★☆ | ★★★ | ★☆☆ | HTML |

★★★ = recomendação forte / ★★☆ = adequado / ★☆☆ = precisa adaptação

**Regra de execução:** filosofias com elementos visuais discretos (ilustração, partícula, generative) renderizam bem por AI image gen. Filosofias dependentes de grid e dado preciso renderizam melhor em HTML.

---

# ESCOLA 1 — ARQUITETURA INFORMACIONAL

> Filosofia: "Dado não é decoração, é material de construção."
>
> Quando recomendar: produto cujo valor é informação clara e densa — saúde, finanças, B2B, dashboards de governo, healthtech. Default seguro para Intrador.

## 01. Pentagram (Michael Bierut)

**Filosofia central**: tipografia é linguagem; grade é pensamento.

**Núcleo visual:**
- Cor extremamente contida — preto + branco + 1 cor de marca
- Grade suíça moderna interpretada para web
- Tipografia como elemento visual primário
- 60%+ de espaço em branco estratégico

**Paleta-tipo:** `#000000` + `#FFFFFF` + 1 accent saturado (Hillary Clinton 2016: `#091F4A` + `#E6253F`)

**Tipografia-tipo:** Helvetica / Univers / Söhne (display) + Helvetica Neue body. Para budget zero: Inter Display / Geist Sans (cuidado com Inter como display, prefira pesos extremos 100 e 800).

**Signature detail:** marca verbal-visual integrada (logo é tipografia). Hierarquia tipográfica feita por escala extrema (corpo 16px → display 96px+).

**DNA prompt:**
```
Pentagram / Michael Bierut style:
- Extreme typographic hierarchy (3:1 minimum scale jump)
- Swiss grid with mathematical precision
- Black/white + one saturated accent color
- 60%+ whitespace ratio
- Information architecture as primary decoration
- Helvetica/Univers family
```

**Obras-referência:** Hillary Clinton 2016 identity, MIT Media Lab, NYT redesigns, Mastercard refresh.

**Quando usar:** B2B sério, saúde, governo, instituições financeiras tradicionais, healthtech que precisa transmitir autoridade clínica.

---

## 02. Massimo Vignelli

**Filosofia central**: "Se você sabe fazer uma coisa bem, faça mil." Limitar = libertar.

**Núcleo visual:**
- Helvetica como única tipografia (dogma)
- 6 cores básicas (vermelho, amarelo, azul, verde, marrom, preto)
- Grade rigorosíssima
- Design "atemporal" — durar 50 anos

**Paleta-tipo:** Vermelho `#E0142F`, Amarelo `#F9C54E`, Azul `#0E4F9F`, Verde `#108A47`, Marrom `#7A4E1D`, Preto puro.

**Tipografia-tipo:** Helvetica (sem mais, sem menos). Para alternativa moderna: Söhne, Aktiv Grotesk.

**Signature detail:** mapas pictográficos (NYC subway), branding corporativo de longo prazo (Knoll, American Airlines original).

**DNA prompt:**
```
Massimo Vignelli style:
- Helvetica only, no exceptions
- 6-color palette discipline (red/yellow/blue/green/brown/black)
- Rigorous geometric grid
- Pictographic abstraction (when applicable)
- Timeless > trendy
```

**Obras-referência:** NYC Subway map (1972), American Airlines logo (1968), Bloomingdale's brown bag, Knoll catalogs.

**Quando usar:** identidade corporativa de longo prazo, sistemas de wayfinding, design de marca que precisa durar.

---

## 03. Edward Tufte

**Filosofia central**: maximizar data-ink ratio. Cada pixel justifica sua presença servindo ao dado.

**Núcleo visual:**
- Densidade altíssima de informação
- Sparklines, small multiples, axis minimizados
- Sem "chartjunk" — eliminação de tudo decorativo
- Cor usada com extrema parcimônia (uma cor para destacar, resto neutro)

**Paleta-tipo:** preto, branco, 1 cor sinalizadora (vermelho `#A02C28` ou azul `#314D7E`) + escala de cinzas precisa.

**Tipografia-tipo:** ET Book (a fonte que Tufte criou), Bembo, Garamond. Body serif, números em mono opcional.

**Signature detail:** sparkline (mini-gráfico inline com texto), pequenas múltiplas (mesma viz repetida com variação), tabelas que viram visualizações.

**DNA prompt:**
```
Edward Tufte style:
- Maximum data-ink ratio
- No chartjunk: no 3D, no gradients, no decorative borders
- Sparklines inline with text
- Small multiples for comparison
- Serif body (ET Book or Garamond)
- Single accent color, otherwise grayscale
- Typography sized for reading at arm's length
```

**Obras-referência:** "The Visual Display of Quantitative Information", artigos da Bloomberg Businessweek de matemática densa, Financial Times graphics.

**Quando usar:** whitepaper, relatório financeiro denso, infográfico de dados rigoroso, dashboard analítico.

---

## 04. Information is Beautiful (David McCandless)

**Filosofia central**: dado deve ser belo e narrativo. Storytelling visual.

**Núcleo visual:**
- Visualizações generosas em escala
- Paleta colorida mas curada (não AI-rainbow)
- Texto integrado à viz como narrativa
- Densidade média (entre Tufte austero e Stamen orgânico)

**Paleta-tipo:** Pastéis saturados — `#FFCB7A`, `#7AB6FF`, `#FF7A9E`, `#7AFFB6`, `#B67AFF`. Cor categórica clara.

**Tipografia-tipo:** Karla, Work Sans, Söhne. Display friendly mas profissional.

**Signature detail:** diagrama explicativo grande + microcópia em torno + resultado tipográfico de impacto. Composição editorial.

**DNA prompt:**
```
Information is Beautiful style:
- Editorial data visualization
- Pastel-saturated palette (not rainbow, not muted)
- Text and visualization fused
- Karla/Work Sans for narrative typography
- Story-driven layout: setup → reveal → conclusion
- Print-magazine quality
```

**Obras-referência:** infográficos do site informationisbeautiful.net, livro de mesmo nome, posters de billion-dollar gram.

**Quando usar:** infográfico para grande público, comunicação de pesquisa, post de blog data-driven, relatório anual visualmente engajante.

---

# ESCOLA 2 — POÉTICA DO MOVIMENTO

> Filosofia: "Movimento é narrativa. Tempo é dimensão de design."
>
> Quando recomendar: AI tools, produtos high-tech, hardware launches, hero sections de landing, lançamentos. Quase sempre exige Modo 4 produção (animação/vídeo).

## 05. Field.io

**Filosofia central**: arte generativa com propósito comercial — algoritmo como pincel.

**Núcleo visual:**
- Partículas, fluido, formas generativas
- Cor monocromática profunda (preto + 1 cor saturada) ou pastel etéreo
- Tipografia mínima, deixa o movimento falar
- Renderização hi-res, qualidade cinematográfica

**Paleta-tipo:** Preto profundo `#000000` + ciano elétrico `#00E5FF` ou rosa choque `#FF0080`. Variação: gradiente etéreo `#FFE5F0` → `#E5F0FF`.

**Tipografia-tipo:** Söhne, Neue Haas Grotesk, Inter Display em pesos finos. Discreta.

**Signature detail:** sistemas de partículas reativas, fluido turbulento, "form-finding" generativo. Loops perfeitos.

**DNA prompt:**
```
Field.io style:
- Generative particle systems or fluid dynamics
- Monochromatic deep palette OR pastel ethereal
- Minimal typography, motion is the protagonist
- Cinematic rendering quality
- Perfect seamless loops
- Algorithmic precision with organic feel
```

**Obras-referência:** identity para Nike, Sonos, IBM Watson; commercials para Audi, Mercedes.

**Quando usar:** lançamento de hardware, hero section de AI tool, abertura de keynote, identity reveal cinematográfico.

---

## 06. Active Theory

**Filosofia central**: WebGL/Three.js como meio principal — web 3D imersivo.

**Núcleo visual:**
- Cena 3D real-time
- Câmera dramática (close-ups, rotações)
- Material físico-realista (PBR, reflexos)
- Interação como design

**Paleta-tipo:** Definida pelo cliente (eles fazem agência), mas sempre com profundidade espacial. Matte black + neon accent é recorrente.

**Tipografia-tipo:** Variável — adaptam para o cliente. Geralmente sans com peso médio.

**Signature detail:** câmera cinematográfica em web (não só rotação preguiçosa), física real, transições com profundidade real.

**DNA prompt:**
```
Active Theory style:
- Three.js / WebGL real-time 3D
- Cinematic camera movements
- Physical-based rendering with real reflections
- Interactive parallax beyond cursor follow
- Brand-driven palette with depth
```

**Obras-referência:** Disney+ launch site, Amazon Music spatial, Riot Games VALORANT.

**Quando usar:** lançamento high-budget, site de portfólio premium, brand experience de empresa de tech/entretenimento.

---

## 07. Resn

**Filosofia central**: storytelling absurdo + interação visceral. Não é só bonito — é divertido.

**Núcleo visual:**
- Personagens 3D estilizados, deformados, expressivos
- Paleta saturada e contrastante
- Microinterações que surpreendem
- Mistura de motion design e jogo

**Paleta-tipo:** Saturação alta — fucsia, ciano, amarelo elétrico. `#FF1493`, `#00FFFF`, `#FFFF00`.

**Tipografia-tipo:** Display rounded (Ranger, Pally), tipografia-personagem.

**Signature detail:** personagem que reage ao cursor com expressão, easter eggs gráficos, camadas paralax cômicas.

**DNA prompt:**
```
Resn style:
- 3D character-driven storytelling
- Hyper-saturated palette
- Surprise micro-interactions
- Playful, almost game-like
- Rounded display typography
```

**Obras-referência:** sites para Heinz, Doritos, Cocoon Pictures.

**Quando usar:** marca jovem que quer ser memorável, campanha pontual, produto que precisa quebrar tédio do segmento.

---

## 08. Bruno Simon

**Filosofia central**: portfolio = experiência. Web é jogo.

**Núcleo visual:**
- Cena 3D walkable/drivable
- Estética low-poly mas premium
- Interação direta como navegação
- Loading como cinemática

**Paleta-tipo:** Cores planas, vibrantes mas chapadas. Estética Wii Sports/Animal Crossing aplicada a portfolio.

**Tipografia-tipo:** Geometric sans (Poppins, Geist), legível em 3D space.

**Signature detail:** carro que dirige no portfolio, mundo 3D explorável como menu, easter eggs físicos.

**DNA prompt:**
```
Bruno Simon style:
- Explorable 3D world as primary navigation
- Low-poly premium aesthetic
- Direct manipulation (drive/walk) as UI
- Flat vibrant colors
- Cinematic loading screens
```

**Obras-referência:** bruno-simon.com (portfolio próprio), trabalhos para Three.js Journey.

**Quando usar:** brand experience com narrativa imersiva, portfolio de criativo, site de campanha experimental.

---

# ESCOLA 3 — MINIMALISMO ORIENTAL

> Filosofia: "Vazio é ferramenta." 余白 (yohaku) = espaço positivo.
>
> Quando recomendar: premium, wellness, contemplativo, hospitalidade, beleza, luxo, healthcare humanizado.

## 09. Kenya Hara (MUJI)

**Filosofia central**: "haku" — vazio que respira. Branding por atmosfera, não por exibicionismo.

**Núcleo visual:**
- Branco dominante (70%+)
- Tipografia minúscula numa imensidão de vazio
- Fotografia natural, paisagens horizontais
- Sem acentos coloridos — neutros + 1 toque sutil

**Paleta-tipo:** `#FFFFFF` + `#F5F2EB` (off-white papel) + `#1A1A1A` (preto não-puro) + `#8B7355` (marrom-terra).

**Tipografia-tipo:** Noto Serif JP (em projetos JP), Cormorant Garamond, Garamond para western. Tamanho pequeno em campo grande.

**Signature detail:** elemento minúsculo num quadro vasto vazio. "Empty horizon" em fotografia. Pôsteres com mais ar que conteúdo.

**DNA prompt:**
```
Kenya Hara / MUJI style:
- 70%+ white space
- Tiny element in vast empty field
- Natural photography (horizon-heavy)
- Off-white background, not pure white
- Subtle earth tones (no saturation)
- Cormorant Garamond / Noto Serif typography small
```

**Obras-referência:** MUJI campaigns "Horizon", livros "White" e "Designing Design", branding Wakaeisa.

**Quando usar:** marca premium contemplativa, wellness, hospitalidade alta, marca de produto natural/orgânico, healthcare humanizado.

---

## 10. Naoto Fukasawa

**Filosofia central**: "design that dissolves into behavior" — produto que some no uso.

**Núcleo visual:**
- Geometria primária (círculo, quadrado)
- Cores minerais (areia, pedra, água)
- Materialidade tátil mesmo em digital
- Funcionalidade declarada com clareza

**Paleta-tipo:** `#F0EDE5` + `#D4D0C8` + `#7A7570` + `#2C2A28`. Tons minerais, sem saturação.

**Tipografia-tipo:** Geometric sans (Avenir, Futura), corpo light.

**Signature detail:** ícone como signo puro (CD player Muji), botão como afetividade tátil, inutilidade do excesso.

**DNA prompt:**
```
Naoto Fukasawa style:
- Primary geometry (circle, square as core)
- Mineral palette (sand, stone, water)
- Tactile feel even in digital
- Function declared with quiet clarity
- Avenir/Futura typography
```

**Obras-referência:** MUJI CD player pendurado, Hitachi rice cooker, Plus-Minus-Zero brand.

**Quando usar:** produto industrial digitalizado, app de wellness, healthcare com tom calmo.

---

## 11. Kashiwa Sato

**Filosofia central**: "essência destilada" — branding por símbolo único memorável.

**Núcleo visual:**
- Logo como pintura zen — gesto único, máximo significado
- Identidade construída em torno de UM símbolo
- Tipografia secundária à marca visual
- Composição centrada, simétrica

**Paleta-tipo:** Variável por cliente, mas sempre com 1 cor protagonista forte. Uniqlo: vermelho `#E60012` + branco. Tsutaya: preto + branco.

**Tipografia-tipo:** Variável, mas sempre com peso forte do símbolo.

**Signature detail:** logo katakana destruído e remontado (Uniqlo), símbolo geométrico que vira sistema (TVer triângulo).

**DNA prompt:**
```
Kashiwa Sato style:
- One protagonist symbol
- Centered, symmetric composition
- Bold mark + minimal type
- 1 powerful color + neutrals
- Symbol-as-system (mark generates patterns)
```

**Obras-referência:** Uniqlo identity (2006), TSUTAYA, National Art Center Tokyo, TVer.

**Quando usar:** rebranding que precisa um símbolo memorável, identidade institucional japonesa, marca de varejo.

---

## 12. Ikko Tanaka

**Filosofia central**: tradição japonesa via grade ocidental moderna.

**Núcleo visual:**
- Geometria abstrata representando figura humana ou natural
- Paleta tradicional japonesa (vermelho seal, índigo, preto sumi)
- Tipografia katakana/kanji + western em diálogo
- Composição assimétrica equilibrada

**Paleta-tipo:** Vermelho seal `#C8102E`, Índigo `#1F2E4A`, Preto sumi `#1A1A1A`, Branco arroz `#F5F2E8`, Ouro `#B8860B`.

**Tipografia-tipo:** Noto Serif JP / Yu Gothic + Garamond / Trajan western.

**Signature detail:** figura humana representada por formas geométricas (triângulo cabeça, quadrado torso). Pôster de teatro Noh.

**DNA prompt:**
```
Ikko Tanaka style:
- Geometric abstraction of human/nature
- Traditional Japanese palette (seal red, sumi black, indigo)
- Asymmetric balanced composition
- Japanese-Western typography dialogue
- Poster-quality print thinking
```

**Obras-referência:** pôsteres do Nihon Buyo (1981), identidade do Lecho Cultural, Issey Miyake collaboration.

**Quando usar:** marca cultural, evento, museu, produto premium com narrativa japonesa autêntica.

---

# ESCOLA 4 — VANGUARDA EXPERIMENTAL

> Filosofia: "Quebrar regra é a regra. Conforto é morte."
>
> Quando recomendar: cultural, fashion, statement, editorial, marca que precisa não-parecer-com-ninguém.

## 13. Stefan Sagmeister

**Filosofia central**: design como manifesto. Cada projeto é experimento.

**Núcleo visual:**
- Tipografia esculpida (em comida, no corpo, no mundo físico)
- Cor saturada em duo-tone ou triadic agressivo
- Composição "feita à mão" mesmo em digital
- Mensagem em primeira pessoa, manifesto

**Paleta-tipo:** Duo-tone agressivo — `#FF0000` + `#000000`, ou `#FFD700` + `#1A1A1A`. Pop art reinterpretado.

**Tipografia-tipo:** Custom sempre. Para aproximação: Druk, Migra, Heading Pro Doublewide.

**Signature detail:** tipografia tridimensional fotografada, mensagem pessoal-confessional, "things I have learned in my life so far".

**DNA prompt:**
```
Stefan Sagmeister style:
- Sculptural typography (3D, photographed, hand-made feel)
- Aggressive duo-tone palette
- First-person manifesto messaging
- Custom display type always
- "Made by human hands" texture
```

**Obras-referência:** Lou Reed albums, AIGA Detroit poster, "Things I have learned" series, Sagmeister & Walsh studio.

**Quando usar:** marca cultural, projeto de design statement, identidade que precisa provocar, livro/álbum.

---

## 14. David Carson

**Filosofia central**: "design legibility comes second to feeling". Caos como ferramenta emocional.

**Núcleo visual:**
- Tipografia colidindo, sobrepondo, distorcida
- Texto difícil de ler intencionalmente
- Composição sem grade visível
- Texturas analógicas (papel rasgado, tinta vazada)

**Paleta-tipo:** Reduzida — preto + branco + 1 cor + texturas. Foco em forma, não cor.

**Tipografia-tipo:** Mistura caótica de famílias. Custom display, com letras em tamanhos absurdamente diferentes.

**Signature detail:** entrevista impressa em Zapf Dingbats por achar o entrevistado chato (verídico). Sobreposição massiva.

**DNA prompt:**
```
David Carson style:
- Typography colliding, overlapping, distorted
- Intentional difficulty reading
- No visible grid
- Analog textures (paper, ink, photocopy)
- Emotion over legibility
```

**Obras-referência:** Ray Gun magazine 1992-95, "End of Print" book, Nike "Subtext" campaign.

**Quando usar:** projeto cultural rebelde, editorial alternativo, marca que assume não-conformismo, concert poster.

---

## 15. Bureau Borsche

**Filosofia central**: "high-end punk". Sofisticação cultural com energia subversiva.

**Núcleo visual:**
- Grids loose com tipografia gigante
- Preto + branco + 1 fluo (rosa choque, amarelo neon)
- Imagem fotográfica de alta arte com camadas tipográficas
- Editorial moderno

**Paleta-tipo:** Preto puro + Branco + Rosa neon `#FF1493` ou Amarelo `#FFFF00`. Foto colorida central.

**Tipografia-tipo:** Druk, Migra, FK Grotesk Mono. Pesos extremos.

**Signature detail:** capa de revista cultural com tipo gigante quebrando margem, foto centralizada, layout editorial-punk.

**DNA prompt:**
```
Bureau Borsche style:
- Loose editorial grids with giant type
- Black/white + 1 neon (hot pink or fluo yellow)
- Photography as central element
- Druk/Migra extreme weights
- Magazine-cover composition
```

**Obras-referência:** 032c magazine, Mast Books, Highsnobiety editorial, Bureau Borsche site.

**Quando usar:** marca de moda, magazine cultural, lançamento que mistura luxo e contracultura.

---

## 16. Studio Dumbar

**Filosofia central**: identidade visual como sistema cinético.

**Núcleo visual:**
- Sistema gráfico que tem movimento como propriedade
- Cor brilhante + tipografia geométrica
- Variabilidade controlada (mesmo logo aparece de 100 jeitos)
- Motion design como linguagem da marca

**Paleta-tipo:** Cores saturadas planas — `#FF6600` + `#FFFFFF` + `#000000`. Multi-color por sistema.

**Tipografia-tipo:** Sans-serif geométrica forte (Druk, Inter Display Black, Söhne Breit).

**Signature detail:** logo que muda de forma mas mantém sistema, pattern geométrico que migra.

**DNA prompt:**
```
Studio Dumbar style:
- Kinetic identity systems
- Bright saturated palette
- Geometric sans-serif bold
- Logo as variable system
- Motion as core brand property
```

**Obras-referência:** Dutch Police identity, Dutch Railways, Erasmus University, ANWB rebrand.

**Quando usar:** rebranding institucional grande, marca pública, sistema gráfico complexo.

---

# ESCOLA 5 — FUNCIONALISMO SUÍÇO / CLAREZA

> Filosofia: "Forma segue função. Grade é gramática."
>
> Quando recomendar: sistemas, ferramentas, devtools, infraestrutura, B2B sério, design system.

## 17. Josef Müller-Brockmann

**Filosofia central**: a grade matemática como estrutura universal.

**Núcleo visual:**
- Grade tipográfica visível e rigorosa
- Cor reduzida (preto + 1 secundária)
- Tipografia sans-serif (Akzidenz-Grotesk, Helvetica nascente)
- Composição assimétrica com peso matemático

**Paleta-tipo:** Preto + Branco + Vermelho `#D62828` ou Azul `#0050B3`. Sempre 1 acento, nunca 2.

**Tipografia-tipo:** Akzidenz-Grotesk, Univers, Helvetica. Pesos extremos no display.

**Signature detail:** pôster de concerto Tonhalle Zürich (1955-1972), grade visível como elemento. Forma circular/triangular gigante centralizando.

**DNA prompt:**
```
Josef Müller-Brockmann style:
- Visible mathematical grid
- Black + white + 1 strong accent
- Akzidenz-Grotesk / Univers typography
- Asymmetric weighted composition
- Geometric forms as primary visual
```

**Obras-referência:** série de pôsteres Tonhalle Zürich, livros "Grid Systems in Graphic Design", "The Graphic Designer and his Design Problems".

**Quando usar:** identidade de design system, brand de devtool, evento cultural sério, museu/instituição.

---

## 18. Dieter Rams

**Filosofia central**: "Less, but better." 10 princípios do bom design.

**Núcleo visual:**
- Mínimo elemento, máximo impacto
- Cor de fundo neutra (cinza claro, off-white)
- Tipografia silenciosa
- Hierarquia por sutileza, não contraste agressivo

**Paleta-tipo:** Cinzas precisos — `#F5F5F5`, `#D4D4D4`, `#7A7A7A`, `#1A1A1A`. + 1 cor sinalizadora de função (verde para action, vermelho para warning).

**Tipografia-tipo:** Akkurat, Söhne, Helvetica Neue. Tamanhos modestos.

**Signature detail:** controle físico com etiqueta perfeita, painel de equipamento Braun, hierarquia funcional declarada.

**DNA prompt:**
```
Dieter Rams style:
- Minimum element, maximum impact
- Neutral grays + 1 functional color
- Silent typography (Akkurat/Söhne)
- Hierarchy by subtlety, not contrast
- Industrial-design clarity in digital
```

**Obras-referência:** Braun produtos (1955-1995), Apple Calculator (homenagem), Vitsoe shelving.

**Quando usar:** dashboard B2B, ferramenta profissional, design system de empresa séria, app de produtividade.

---

## 19. Erik Spiekermann

**Filosofia central**: tipografia é a interface. Letra com personalidade resolve marca.

**Núcleo visual:**
- Tipografia custom como protagonista
- Sistema de tipos completo (display, body, mono)
- Cor secundária à letra
- Detalhes tipográficos refinados (kerning, ligature)

**Paleta-tipo:** Definida pelo cliente, mas sempre com tipografia liderando. Berlin transit: amarelo `#FFD700` + preto.

**Tipografia-tipo:** Própria — FF Meta, FF Unit, FF Info. Análoga: Söhne, Inter Display em pesos múltiplos.

**Signature detail:** sistema tipográfico que escala — display, subhead, body, caption, mono — todos coerentes.

**DNA prompt:**
```
Erik Spiekermann style:
- Custom typography as protagonist
- Complete type system (display/body/mono)
- Refined typographic details (kerning, ligatures)
- Color secondary to letterforms
- Berlin-transit-quality wayfinding logic
```

**Obras-referência:** Berlin BVG transit identity, Bosch typeface, Edenspiekermann studio work.

**Quando usar:** marca onde tipografia é diferencial, sistema de wayfinding, identidade institucional onde texto domina.

---

## 20. Jan Tschichold

**Filosofia central**: nova tipografia (Die Neue Typographie) — assimetria, sans-serif, função.

**Núcleo visual:**
- Composição assimétrica matemática
- Sans-serif (no manifesto inicial; depois ele voltou ao serif)
- Hierarquia por contraste extremo de tamanho
- Influência Bauhaus + tradição clássica

**Paleta-tipo:** Preto + Branco + Vermelho como acento ocasional.

**Tipografia-tipo:** Sabon (criou ele), Akzidenz-Grotesk, Futura.

**Signature detail:** capa de livro Penguin (anos 1940-50) com hierarquia tipográfica perfeita, composição matemática.

**DNA prompt:**
```
Jan Tschichold style:
- Asymmetric mathematical composition
- Sans-serif primary OR refined classical serif
- Extreme size contrast for hierarchy
- Bauhaus + classical tradition fusion
- Book-cover quality typesetting
```

**Obras-referência:** "Die Neue Typographie" (1928), capas Penguin (1947-49), Sabon typeface (1967).

**Quando usar:** publicação editorial, livro, marca clássica que precisa frescor moderno.

---

# Como recomendar 3 direções (Modo 3)

Quando o pedido aciona Direção Criativa Advisor, **nunca** ofereça 3 opções da mesma escola. Padrão:

**Recomendação tipo A — Conservador / Default:** Arquitetura Informacional ou Funcionalismo Suíço (Pentagram, Vignelli, Müller-Brockmann, Rams). Para clientes que precisam transmitir autoridade.

**Recomendação tipo B — Diferenciador / Memorável:** Minimalismo Oriental ou Vanguarda Experimental (Hara, Sato, Sagmeister, Borsche). Para marcas que querem se destacar do segmento.

**Recomendação tipo C — Tech / Inovador:** Poética do Movimento (Field.io, Active Theory) OU uma mistura híbrida. Para AI tools, lançamentos, produtos high-tech.

Apresente cada uma com:
1. Escola + designer-âncora citado
2. Paleta com 4-5 hex
3. Tipografia (display + body) com nomes específicos
4. Spacing scale signature (ex.: 8/16/24/40/64)
5. 1-2 obras de referência reais (URL ou nome)
6. Para qual perfil de cliente serve — em 1 frase
7. Mockup/showcase pré-existente em `assets/showcases/` se houver

Pergunte qual aprofundar antes de detalhar.

---

# Combinações úteis

Algumas filosofias funcionam bem combinadas em zonas distintas do produto:

- **Pentagram (hero) + Tufte (dashboard interno)** — landing impactante, ferramenta densa.
- **Hara (marketing) + Rams (app)** — marca contemplativa, produto silencioso.
- **Sagmeister (campanha) + Müller-Brockmann (sistema)** — campanha marcante, sistema escalável.
- **Field.io (hero animation) + Spiekermann (wayfinding)** — entrada cinematográfica, navegação clara.

Combinações que **não** funcionam:
- Sagmeister + Hara (manifesto vs vazio)
- Carson + Tufte (caos vs precisão)
- Field.io + Rams (espetáculo vs silêncio)

A regra: combine filosofias adjacentes em valores, não opostas.
