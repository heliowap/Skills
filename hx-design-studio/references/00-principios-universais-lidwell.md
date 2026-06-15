# Princípios Universais do Design — William Lidwell

> **Sobre este arquivo**
>
> Este é o material de referência sobre **princípios universais de design** com base em "Universal Principles of Design" de William Lidwell, Kritina Holden e Jill Butler. Use como lente para diagnóstico em Modo 1 (crítica) e como guia operacional em Modo 2 (estratégia) e Modo 3 (criação).
>
> **Como o agente deve usar**: ao analisar uma tela ou propor solução, identifique 1–3 princípios em jogo, cite o nome técnico, descreva o efeito esperado em 1 linha, e dê uma recomendação concreta. Sempre combine com pelo menos 1 viés cognitivo de Dutra (ver outro arquivo de Knowledge).
>
> **Conceito-base**: Lidwell organiza ~125 princípios universais de várias disciplinas (psicologia perceptiva, ergonomia, arquitetura, engenharia, design gráfico, ciência da computação) em um vocabulário comum. Princípios universais não são regras absolutas — são padrões observados que costumam funcionar quando aplicados com julgamento contextual.

---

# Como o agente deve estruturar diagnóstico

Para cada princípio relevante numa análise:
1. **Nome técnico** (em português, com original em inglês entre parênteses na primeira ocorrência).
2. **Definição em 1 frase**.
3. **Como se aplica nesta tela/decisão específica**.
4. **Recomendação concreta**.
5. **Princípios relacionados** (se relevante).

---

# CATEGORIA 1: ESTRUTURA E PERCEPÇÃO VISUAL

## Regra 80/20 (Pareto Principle)

**Definição**: Em sistemas grandes, ~80% dos efeitos vêm de ~20% das variáveis.

**Aplicações em design**:
- 80% do uso de um produto envolve apenas 20% das funcionalidades.
- 80% da receita vem de 20% dos clientes.
- 80% dos bugs reportados vêm de 20% do código.

**Implicação operacional**: identifique os 20% críticos. Otimize-os obsessivamente. Para os 80% restantes, considere remoção, simplificação, ou esconder atrás de progressive disclosure.

**Risco**: o 80% pode conter funções essenciais para subgrupos específicos. Não remover sem entender quem usa e por quê.

**Combina com**: Divulgação Progressiva, Lei de Hick, Navalha de Ockham.

---

## Lei de Fitts (Fitts' Law)

**Definição**: O tempo para atingir um alvo é proporcional à distância e inversamente proporcional ao tamanho do alvo.

Fórmula simplificada: alvo distante e pequeno = mais tempo, mais erro. Alvo próximo e grande = rápido, certeiro.

**Aplicações em design**:
- Botões primários grandes; secundários menores.
- Botão de "fechar modal" no canto, fácil de mirar.
- Menu de contexto aparece sob o cursor (distância zero).
- Cantos de tela são "alvos infinitos" (cursor não escapa) — bom para macOS dock.

**Implicação operacional**: para ações frequentes, alvos grandes e próximos do usuário. Para ações destrutivas (delete, sair sem salvar), alvos menores ou mais distantes (atrito intencional).

**Combina com**: Ergonomia, Performance Load, Forgiveness.

---

## Lei de Hick (Hick's Law)

**Definição**: O tempo para tomar uma decisão cresce logaritmicamente com o número de opções.

Mais opções = mais tempo, mais fadiga, mais paralisia.

**Aplicações em design**:
- Menus longos: agrupe em submenus de no máximo 7±2 itens.
- Páginas de planos: 3 opções convertem mais que 7.
- Formulários: campos opcionais escondidos, obrigatórios em destaque.

**Implicação operacional**: reduzir opções não é castrar — é curar. Combinar com filtros progressivos, recomendação algorítmica, defaults inteligentes.

**Risco**: simplificar demais pode forçar usuário a buscar produto fora do sistema. Especialmente em e-commerce, AliExpress prospera por excesso de opções (busca, não decisão).

**Combina com**: Fadiga de Decisão, Paradoxo da Escolha, Chunking, Cinco Cabides.

---

## Razão Áurea (Golden Ratio)

**Definição**: Proporção 1:1.618 (φ), encontrada em formas naturais e percebida como esteticamente harmoniosa.

**Aplicações em design**:
- Layout: largura de coluna principal vs lateral.
- Hierarquia tipográfica: tamanho de título vs subtítulo vs corpo (escala modular).
- Composição fotográfica: regra dos terços (aproximação simplificada de φ).

**Implicação operacional**: razão áurea funciona como ponto de partida sólido, não regra absoluta. Quando o design parece "estranho" sem motivo claro, conferir proporções é diagnóstico útil.

**Risco**: aplicação literal é fetichismo. O olhar humano é tolerante a desvios — proporções limpas (3:5, 2:3) também funcionam.

**Combina com**: Sequência de Fibonacci, Forma Segue Função.

---

## Sequência de Fibonacci

**Definição**: Sequência onde cada número é a soma dos dois anteriores (1, 1, 2, 3, 5, 8, 13, 21...). Razão entre números consecutivos converge para a Razão Áurea.

**Aplicações em design**:
- Escala tipográfica modular (12, 16, 24, 32, 48, 64).
- Espaçamento consistente (4, 8, 12, 20, 32, 52).

**Implicação operacional**: usar como sistema de spacing/sizing dá ritmo visual coerente sem precisar decidir cada valor.

---

## Diagrama de Gutenberg (Gutenberg Diagram)

**Definição**: Em layouts ocidentais com texto extenso e baixa hierarquia visual, o olho percorre a página em padrão Z: canto superior esquerdo (Primary Optical Area) → canto superior direito (Strong Fallow Area) → canto inferior esquerdo (Weak Fallow Area) → canto inferior direito (Terminal Area).

**Aplicações em design**:
- Newsletters densas em texto.
- Páginas de imprensa, documentos longos.
- Logo geralmente no canto superior esquerdo (PO area = primeira atenção).
- CTA principal no canto inferior direito (Terminal area = última atenção, momento de decisão).

**Implicação operacional**: válido para conteúdo homogêneo. Para layouts com hierarquia visual forte (cards, hero, imagens dominantes), o olhar segue a hierarquia, não Gutenberg.

**Combina com**: Hierarquia Visual, Padrão F (heatmaps de Nielsen), Cultura de leitura (RTL para árabe/hebraico inverte).

---

## Princípios da Gestalt

Conjunto de leis perceptivas formuladas por psicólogos alemães no início do século XX. Descrevem como o cérebro organiza estímulos visuais em formas coerentes.

### Figura-Fundo (Figure-Ground)

**Definição**: O cérebro separa cena visual em "figura" (objeto) e "fundo" (contexto).

**Aplicações**: contraste suficiente entre conteúdo e background. Modais com overlay escurecido. Formas reversíveis (logo da FedEx com seta entre E e x).

### Proximidade

**Definição**: Elementos próximos são percebidos como relacionados.

**Aplicações**: agrupamento visual sem precisar de bordas/linhas — espaçamento maior entre grupos do que dentro deles. Forms com label próximo ao campo. Comentário próximo ao post.

### Similaridade

**Definição**: Elementos com atributos similares (cor, forma, tamanho, orientação) são percebidos como pertencentes ao mesmo grupo.

**Aplicações**: botões primários todos da mesma cor. Categorias indicadas por cor. Tipografia consistente para hierarquia.

### Continuidade Boa (Good Continuation)

**Definição**: O olho segue linhas e curvas suaves; quebras abruptas chamam atenção.

**Aplicações**: alinhamento de elementos em linhas implícitas. Quebras intencionais para destacar.

### Lei de Prägnanz (Lei da Boa Forma)

**Definição**: O cérebro prefere a interpretação mais simples possível de um estímulo ambíguo.

**Aplicações**: logos minimalistas (Mastercard com 2 círculos). Ícones reduzidos a essência. Formas geométricas básicas são lidas como inteiras mesmo parcialmente ocultas.

### Fechamento (Closure)

**Definição**: O cérebro completa formas incompletas, percebendo continuidade onde há gaps.

**Aplicações**: logos com fechamento implícito (WWF panda, IBM listras). Ícones minimalistas. Loaders circulares.

### Destino Comum (Common Fate)

**Definição**: Elementos que se movem juntos são percebidos como um grupo.

**Aplicações**: animações de entrada coordenadas. Cards que sobem juntos no hover. Indicadores de carregamento sincronizados.

### Conectividade Uniforme (Uniform Connectedness)

**Definição**: Elementos conectados por linhas, fundos compartilhados ou bordas comuns são percebidos como grupo.

**Aplicações**: cards com fundo único agrupando conteúdos relacionados. Tabelas com linhas alternadas para legibilidade.

**Implicação operacional para Gestalt como conjunto**: design eficaz usa princípios da Gestalt para reduzir trabalho cognitivo do usuário. Quando o agrupamento visual está confuso, sempre vale checar quais leis estão (ou não) sendo respeitadas.

---

## Alinhamento (Alignment)

**Definição**: Elementos alinhados em eixos comuns parecem organizados, planejados, profissionais. Desalinhamentos sutis criam desconforto difuso.

**Aplicações**: tudo em grid. Margens consistentes. Bordas alinhadas. Labels e campos em formulário alinhados.

**Implicação operacional**: alinhamento é o trabalho mais barato e mais transformador. Designer experiente percebe desalinhamento de 1px; usuário não percebe a causa, mas sente que "algo está errado".

**Combina com**: Grid, Consistência, Hierarquia.

---

## Hierarquia Visual

**Definição**: Organização que guia o olhar pelo conteúdo em ordem de importância, usando tamanho, peso, cor, posição, espaçamento, contraste.

**Aplicações**:
- Tamanho: títulos maiores, corpo menor.
- Peso: bold para chamar atenção, regular para corpo.
- Cor: cor saturada chama mais que cor desbotada.
- Posição: topo > meio > baixo (em cultura ocidental).
- Espaço ao redor: elemento com mais respiração ganha mais peso.

**Implicação operacional**: pergunta-chave — "se eu olhar essa tela por 2 segundos, qual a primeira coisa que vejo? E a segunda?" Se a resposta não bate com o que o usuário precisa fazer primeiro, hierarquia falhou.

**Combina com**: Contraste, Tipografia, Cor, Diagrama de Gutenberg.

---

## Camadas (Layering)

**Definição**: Separar informação em camadas hierárquicas — primeira camada visível por padrão, camadas adicionais sob demanda.

**Aplicações**: tooltip com detalhes ao hover. "Saiba mais" expandindo seção. Modais para informação aprofundada. Overlays para foco.

**Combina com**: Divulgação Progressiva, Performance Load.

---

## Consistência

**Definição**: Elementos similares se comportam de forma similar e parecem similares ao longo do produto.

**Tipos**:
- **Estética**: cores, tipografia, ícones consistentes.
- **Funcional**: botão primário sempre faz a ação primária da tela.
- **Interna**: dentro do mesmo produto.
- **Externa**: alinhada a convenções do ecossistema (botão de fechar é X no canto superior direito).

**Implicação operacional**: consistência reduz custo de aprendizado. Ruptura de consistência deve ser intencional e ter razão clara (chamar atenção para CTA único, mudança de modo).

**Combina com**: Modelo Mental, Reconhecimento sobre Lembrança, Convenções.

---

## Legibilidade vs Leiturabilidade

**Definição**:
- **Legibilidade** (Legibility): capacidade de distinguir caracteres individuais. Atributo da fonte e do tamanho.
- **Leiturabilidade** (Readability): facilidade de processar texto contínuo. Atributo de tipografia + cor + espaçamento + contraste + comprimento de linha.

**Aplicações**:
- Legibilidade: sans-serif geométrico em telas pequenas, serif em texto longo impresso.
- Leiturabilidade: comprimento de linha 50–75 caracteres, line-height 1.5x, contraste WCAG AA mínimo (4.5:1 para texto normal).

**Implicação operacional**: tipografia bonita pode falhar em leiturabilidade. Sempre testar em condições reais (luz, dispositivo, fadiga).

**Combina com**: Acessibilidade, Hierarquia, Tipografia.

---

# CATEGORIA 2: COGNIÇÃO E APRENDIZADO

## Organizador Prévio (Advance Organizer)

**Definição**: Informação concisa apresentada antes do conteúdo principal, ancorando o novo no conhecimento existente.

**Tipos**:
- **Expositivo**: usado quando audiência sabe pouco. Apresenta conceito-base antes do detalhe.
- **Comparativo**: usado quando audiência tem conhecimento similar. Compara o novo com o familiar.

**Aplicações**:
- Onboarding com "como isto funciona" antes de entrar.
- Sumário no início de artigo longo.
- Tooltip explicativo antes de feature complexa.

**Implicação operacional**: para conteúdo educacional ou produto técnico, organizador prévio reduz curva de aprendizado significativamente.

---

## Chunking

**Definição**: Agrupar informação em pedaços menores, reduzindo carga na memória de trabalho. Capacidade típica: 5±2 itens (revisado de 7±2 de Miller).

**Aplicações**:
- Telefones: 11 dígitos viram 3 chunks (DDI + DDD + número).
- Cartão de crédito: 16 dígitos em 4 grupos de 4.
- Senhas: agrupar por hífens.
- Listas longas: paginação ou seções nomeadas.

**Combina com**: Memória de Trabalho, Lei de Hick, Cinco Cabides.

---

## Modelo Mental (Mental Model)

**Definição**: Representação interna que o usuário tem de como algo funciona. Forma-se com base em experiências anteriores, convenções, e exposição ao produto.

**Princípio operacional crítico**: design deve corresponder ao modelo mental do usuário, **não** ao modelo do sistema (a realidade técnica de como funciona internamente).

**Aplicações**:
- Lixeira em interface = lixeira no mundo (você joga fora, pode recuperar). Contraste: filesystem real (delete = unlink, dado pode ainda existir).
- "Salvar" como botão explícito (modelo mental antigo) vs autosave (Google Docs mudou o modelo mental).
- Skeuomorfismo (calculadora digital parece calculadora física) facilitou transição.

**Implicação operacional**: pesquisa de usuário descobre modelos mentais. Mudar drasticamente modelos mentais estabelecidos gera resistência (ver Status Quo de Dutra).

**Combina com**: Convenções, Affordances, Mapeamento.

---

## Mapeamento (Mapping)

**Definição**: Relação intuitiva entre controle e efeito. Bom mapeamento usa metáfora espacial, semântica ou cultural.

**Aplicações**:
- Botões de fogão alinhados com queimadores (mapeamento espacial).
- Slider de volume sobe = fica mais alto.
- Ícone de seta para a direita = avançar.

**Risco**: mapeamento ruim cria carga cognitiva permanente. Fogão com botões em linha + queimadores em quadrado = usuário sempre confunde, pelo resto da vida do fogão.

**Combina com**: Affordances, Modelo Mental, Convenções.

---

## Reconhecimento sobre Lembrança (Recognition over Recall)

**Definição**: Reconhecer informação apresentada é mais fácil que lembrar de cabeça. Mostre opções, não exija memória.

**Aplicações**:
- Menus com itens visíveis vs comandos digitados.
- Autocomplete em busca.
- "Lembrar de mim" em login.
- Histórico de pesquisa.
- Lista de tarefas em vez de contar com a memória.

**Implicação operacional**: reduzir demanda de memória aumenta uso e satisfação. Especialmente importante para uso ocasional (app que você abre 1x por mês precisa "se reapresentar").

**Combina com**: Performance Load, Affordances.

---

## Carga de Performance (Performance Load)

**Definição**: Quantidade total de esforço mental e físico exigida para realizar uma tarefa. Composta por:
- **Carga Cognitiva**: pensar, lembrar, decidir, calcular.
- **Carga Cinemática**: clicar, digitar, mover, esperar.

**Princípio**: minimizar ambas aumenta satisfação e desempenho.

**Aplicações**:
- Defaults inteligentes reduzem carga cognitiva (não preciso decidir).
- Atalhos de teclado reduzem carga cinemática.
- Auto-formatação (CEP gera endereço) reduz ambas.

**Risco**: minimizar excessivamente pode tirar agency do usuário. Em decisões importantes (saúde, finanças, jurídico), atrito intencional protege.

**Combina com**: Lei de Fitts, Lei de Hick, Reconhecimento sobre Lembrança.

---

## Profundidade do Processamento (Levels of Processing)

**Definição**: Quanto mais profundo o processamento de uma informação, maior a retenção. Processamento superficial (forma) → menor memória; processamento profundo (significado) → maior memória.

**Aplicações**:
- Aprendizado: gerar conexões com conhecimento prévio retém mais que memorização passiva.
- Onboarding ativo (faça você primeiro) > onboarding passivo (assista vídeo).
- Quizzes em meio a conteúdo ativam processamento profundo.

**Combina com**: Organizador Prévio, Aprendizado Ativo.

---

## Superioridade da Imagem (Picture Superiority Effect)

**Definição**: Imagens são lembradas melhor que palavras. Ainda mais quando combinadas (texto + imagem > qualquer um sozinho).

**Estudo clássico**: após 3 dias, retenção de palavras isoladas: 10%. Imagens + palavras: 65%.

**Aplicações**:
- Onboarding com ilustrações + texto curto.
- Documentação técnica com diagramas.
- Educação ao paciente em saúde com infográficos.

**Risco**: imagens decorativas sem função semântica adicionam ruído. Cada imagem deve carregar informação, não apenas decorar.

**Combina com**: Heurística do Afeto (Dutra), Iconografia.

---

## Divulgação Progressiva (Progressive Disclosure)

**Definição**: Revelar informação e funcionalidade conforme necessário, mantendo a interface inicial simples e expandindo sob demanda do usuário.

**Aplicações**:
- "Saiba mais" expandindo seção.
- Filtros avançados escondidos atrás de "filtros avançados".
- Configurações divididas em "essenciais" vs "avançadas".
- Wizard com etapas em vez de formulário longo único.

**Implicação operacional**: divulgação progressiva acomoda iniciantes (interface limpa) e experts (acesso a poder). Sem ela, ou se complica para todos ou se simplifica demais para alguns.

**Combina com**: Lei de Hick, Performance Load, Camadas.

---

## Cinco Cabides (Five Hat Racks / LATCH)

**Definição**: Toda informação pode ser organizada de 5 formas (Richard Saul Wurman):
1. **L**ocation (localização) — geográfica, espacial.
2. **A**lphabet (alfabética) — A–Z.
3. **T**ime (tempo) — cronológica, recente primeiro.
4. **C**ategory (categoria) — por tipo, função, atributo.
5. **H**ierarchy (hierarquia) — escala, importância, magnitude.

**Aplicações**:
- E-commerce: filtrar por categoria (C) ou ordenar por preço (H).
- Lista de mensagens: por tempo (T).
- Mapa: por localização (L).
- Diretório telefônico: alfabética (A) — hoje raramente útil.

**Implicação operacional**: a escolha de organização é em si uma decisão de enquadramento (ver Framing em Dutra). Diferentes organizações otimizam diferentes tarefas.

**Combina com**: Arquitetura de Informação, Enquadramento, Lei de Hick.

---

# CATEGORIA 3: INTERAÇÃO E ERRO

## Affordances

**Definição**: Propriedades percebidas de um objeto que sugerem como pode ser usado. Maçaneta sugere puxar; placa plana sugere empurrar. Botão com sombra e relevo sugere "clicável".

**Distinção (Norman)**:
- **Affordance real**: o que o objeto realmente permite.
- **Affordance percebida**: o que o usuário acha que permite.

Design ruim cria descompasso entre os dois (porta com maçaneta que precisa ser empurrada).

**Aplicações em digital**:
- Botão com sombra/borda parece clicável; texto sublinhado parece link.
- Campo com borda parece editável; texto plano parece estático.
- Ícone de hambúrguer aprendeu-se que é menu (mas affordance é fraca para iniciantes).
- "Skeuomorfismo" exagerou affordances físicas; "flat design" minimizou demais.

**Implicação operacional**: para ações importantes, affordance forte é crítica. Para descobertas progressivas, affordance sutil que rewards exploration.

**Combina com**: Modelo Mental, Convenções, Mapeamento.

---

## Restrições (Constraints)

**Definição**: Limitar opções intencionalmente para guiar comportamento ou prevenir erro.

**Tipos**:
- **Físicas**: pino USB tem orientação única.
- **Culturais**: convenção de "salvar primeiro, sair depois".
- **Lógicas**: data de retorno não pode ser anterior à data de ida.
- **Semânticas**: campo de e-mail aceita só formato válido.

**Aplicações**:
- Form validation que não deixa submeter inválido.
- Botão desabilitado até pré-condições atendidas.
- Date picker que mostra só datas disponíveis.

**Implicação operacional**: restrições bem feitas previnem erro sem frustrar. Restrições mal feitas viram fricção arbitrária.

**Combina com**: Forgiveness, Erros, Affordances.

---

## Feedback Loop

**Definição**: Toda ação do usuário deve ter resposta perceptível do sistema, imediata e proporcional.

**Princípio fundamental** (Norman, Nielsen): sem feedback, usuário não sabe se ação foi registrada.

**Aplicações**:
- Botão muda visualmente ao clique.
- Form mostra "salvando..." e "salvo".
- Loading states em vez de tela congelada.
- Toast de confirmação para ações importantes.
- Ruído tátil/sonoro em ações críticas (scanner de cartão, lock de porta).

**Latências críticas**:
- < 100ms: parece instantâneo.
- 100ms–1s: parece responsivo.
- 1s–10s: precisa de feedback explícito (loader, progress bar).
- > 10s: precisa de feedback granular (etapa atual, tempo restante).

**Combina com**: Acessibilidade, Performance Load.

---

## Forgiveness (Perdão)

**Definição**: Sistema permite ações reversíveis, oferece confirmação para irreversíveis, e é tolerante a erros do usuário.

**Aplicações**:
- Undo / Redo.
- Lixeira em vez de delete permanente.
- Confirmação para ações destrutivas (mas sem abuso — confirmação para tudo cria fadiga).
- Auto-save.
- Lembretes antes de fechar com mudanças não salvas.

**Implicação operacional**: forgiveness reduz ansiedade do usuário, encoraja exploração, recupera de erros sem custo emocional. É um dos princípios mais valiosos para retenção.

**Combina com**: Aversão à Perda (Dutra), Erros, Restrições.

---

## Erros (Errors)

**Definição** (Norman): erros são resultados não intencionais. Classificam-se em:
- **Slips (deslizes)**: ação errada com intenção certa. Ex.: clicar no botão errado.
- **Mistakes (enganos)**: ação certa com intenção errada. Ex.: deletar arquivo achando que era outro.

**Estratégias de design**:

Para slips:
- Affordances claras.
- Restrições físicas/lógicas.
- Feedback imediato.
- Posicionamento que evita ações acidentais.
- Confirmação para ações críticas (parcimônia).

Para mistakes:
- Boa informação no momento da decisão.
- Feedback de sistema (não só de ação).
- Treinamento e onboarding.
- Reduzir carga cognitiva.

**Implicação operacional**: maioria dos "erros humanos" são erros de design. Pergunta de diagnóstico: como o usuário foi levado a essa ação?

**Combina com**: Forgiveness, Restrições, Feedback.

---

## Tradeoff Flexibilidade-Usabilidade

**Definição**: Quanto mais flexível um sistema (mais features, mais opções, mais customização), menos usável tende a ser. Inversamente, sistemas focados são mais fáceis mas atendem casos restritos.

**Exemplos**:
- Microsoft Word (alta flexibilidade, baixa usabilidade para iniciantes) vs iA Writer (baixa flexibilidade, alta usabilidade).
- Photoshop vs Apple Photos.
- Airbnb (foco em hospedagem) vs Craigslist (qualquer coisa, dificuldade de uso).

**Implicação operacional**: produtos novos devem começar focados (alta usabilidade, escopo restrito). Adicionar flexibilidade só quando o foco está dominado e a base de usuários pede.

**Combina com**: Lei de Hick, Performance Load, Modelo Mental.

---

## Ponto de Entrada (Point of Entry)

**Definição**: Primeiro contato com um produto ou ambiente. Define expectativa, postura e disposição para o resto da jornada.

**Princípios para bom ponto de entrada**:
- Barreiras mínimas (não exigir signup imediato).
- Pontos de perspectiva claros (mostrar onde está e o que pode fazer).
- Iscas progressivas (sugerir próxima ação).

**Aplicações**:
- Landing page que mostra valor antes de pedir compromisso.
- Onboarding sem fricção (tour opcional, login social).
- Lobby de hotel com sinalização clara para diferentes serviços.

**Implicação operacional**: primeira impressão se torna status quo (Dutra). Investimento em ponto de entrada tem ROI alto.

**Combina com**: Status Quo, Mera Exposição, Heurística do Afeto.

---

## Iconografia

**Definição** (categorias de Lidwell):
- **Similar**: ícone se parece com objeto real (ex.: lixeira para delete).
- **Exemplo**: representa por exemplificação (ex.: garfo+faca para restaurante).
- **Símbolo**: representa por convenção arbitrária (ex.: ❤️ para favorito).
- **Arbitrário**: forma sem ligação intrínseca, dependente de aprendizado (ex.: ☢ para radioativo).

**Aplicações**:
- Universalidade: ícones similares e exemplos atravessam culturas. Símbolos e arbitrários requerem aprendizado.
- Acompanhamento: ícone sozinho falha mais do que ícone + label. Usuários experientes podem usar só ícone, iniciantes precisam de label.

**Implicação operacional**: ícone bonito mas ambíguo é ruído. Default seguro: ícone + label. Remover label só após validação que reconhecimento é universal.

**Combina com**: Modelo Mental, Convenções, Reconhecimento sobre Lembrança.

---

# CATEGORIA 4: COMPORTAMENTO E PERCEPÇÃO

## Efeito Estético-Usabilidade

**Definição**: Designs esteticamente agradáveis são percebidos como mais usáveis, mesmo quando não são objetivamente.

**Estudo clássico** (Kurosu & Kashimura, 1995): caixas eletrônicos visualmente atraentes foram avaliados como mais fáceis de usar, controlando para usabilidade real.

**Implicação operacional**: estética não é luxo. Investir em design visual gera tolerância a fricções menores e melhor avaliação geral. **MAS**: estética sem funcionalidade fundamental gera frustração após uso prolongado.

**Combina com**: Heurística do Afeto (Dutra), Efeito Auréola.

---

## Efeito da Exposição (Mere Exposure)

**Definição**: Familiaridade gera preferência. Quanto mais vemos algo (sem desgaste excessivo), mais gostamos dele.

**Aplicações**:
- Branding consistente em múltiplos pontos de contato.
- Repetição de elementos visuais (cor, forma, tipografia).
- Permanência da marca (não redesenhar toda hora).

**Risco**: também explica por que padrões ruins persistem (estamos acostumados).

**Combina com**: Status Quo, Familiaridade, Reconhecimento.

---

## Efeito da Expectativa

**Definição**: Expectativas moldam percepção. O que esperamos ver afeta o que percebemos.

**Manifestações**:
- **Efeito Halo** (Auréola): impressão positiva geral influencia avaliação de aspectos não relacionados.
- **Efeito Hawthorne**: produtividade aumenta quando pessoas sabem que estão sendo observadas.
- **Efeito Pygmalion**: expectativas de professores afetam desempenho de alunos.
- **Efeito Placebo**: crença na eficácia gera resultado real.

**Aplicações em design**:
- Apresentação confiante de novo design induz percepção positiva.
- "Bestseller" / "Editor's Pick" / "Recomendado" altera avaliação real.
- Preço alto altera percepção de qualidade (vinho caro sabe melhor mesmo sendo o mesmo).

**Implicação operacional**: contexto de apresentação é parte do produto.

**Combina com**: Heurística do Afeto (Dutra), Enquadramento, Efeito Auréola.

---

## Arquétipos

**Definição**: Padrões recorrentes em narrativa, cultura e design que evocam reconhecimento imediato.

**Exemplos em design**:
- Layout de e-commerce (header com logo + busca + carrinho, grid de produtos, filtros à esquerda).
- Form de login (campo email, campo senha, botão entrar, "esqueci a senha").
- Player de vídeo (play, scrubber, volume, fullscreen).

**Princípio operacional**: arquétipos reduzem custo de aprendizado dramaticamente. Romper arquétipos requer razão forte e investimento em re-aprendizado.

**Combina com**: Convenções, Modelo Mental, Mimetismo.

---

## Mimetismo

**Definição**: Imitar formas, comportamentos ou estéticas reconhecíveis para acelerar compreensão.

**Tipos**:
- **Surface mimicry** (skeuomorfismo): copiar aparência (calculadora digital com botões 3D).
- **Behavioral mimicry**: copiar comportamento (botão que "afunda" ao clique).
- **Functional mimicry**: copiar função (lixeira digital age como lixeira física).

**Implicação operacional**: mimetismo bem usado acelera aprendizado. Mal usado, cria expectativas que o digital não cumpre (papel digital que se rasga? não).

**Combina com**: Modelo Mental, Affordances, Convenções.

---

## Viés de Atração (Attractiveness Bias)

**Definição**: Pessoas atraentes são percebidas como mais inteligentes, competentes, confiáveis e bem-sucedidas — independente de evidência.

**Aplicações em design**:
- Fotos profissionais e atraentes em testimonials.
- Ilustrações estilizadas de pessoas em onboarding.
- Avatares cuidados em comunidades.

**Risco ético**: usar atratividade para mascarar produto ruim, ou para criar expectativa irreal.

**Combina com**: Efeito Auréola, Heurística do Afeto (Dutra).

---

## Viés do Rosto de Bebê (Baby-Face Bias)

**Definição**: Rostos com traços infantis (olhos grandes, testa proeminente, queixo pequeno) geram percepção de honestidade, calor, ingenuidade.

**Aplicações**:
- Mascotes de marcas que querem transmitir confiança/calor (Pillsbury Doughboy, Mickey Mouse).
- Personagens infantis em campanhas de saúde para crianças.
- UI playful para reduzir ansiedade (apps de meditação com rostos suaves).

**Combina com**: Heurística do Afeto, Arquétipos.

---

## Hierarquia de Necessidades aplicada (versão design)

**Definição** (adaptação de Maslow para produto digital): produto bom progride por níveis de qualidade.

1. **Funcional**: faz o que promete.
2. **Confiável**: faz consistentemente, sem falhas.
3. **Usável**: faz com mínimo esforço.
4. **Proficiente**: faz capacitando o usuário a se tornar melhor naquilo.
5. **Criativo**: faz inspirando o usuário a criar coisas novas.

**Implicação operacional**: produto não pode pular níveis. Produto bonito mas não confiável (nível 2 ausente) decepciona após primeiro encanto. Otimização de UX só ganha sentido após base funcional sólida.

Para Intrador: app de paciente que falha em registrar dor (nível 1) jamais será salvo por design bonito (nível 5).

**Combina com**: Forma Segue Função, Forgiveness.

---

# CATEGORIA 5: PROCESSO E TOMADA DE DECISÃO

## Iteração

**Definição**: Design eficaz emerge de ciclos repetidos de criar–testar–refinar. Não de plano perfeito antecipado.

**Princípio**: cada iteração reduz incerteza. Iterar barato e cedo (papel, wireframe) > iterar caro e tarde (após desenvolvimento).

**Aplicações**:
- Wireframe → mockup → protótipo → desenvolvimento. Cada etapa testa hipóteses específicas.
- A/B testing de variantes em produção.
- User testing com 5 usuários revela 80% dos problemas (Nielsen).

**Combina com**: Prototipagem, Ciclo de Desenvolvimento, Custo Afundado (cuidado em pivotar quando dado pede).

---

## Prototipagem

**Definição**: Construir versão simplificada, parcial ou mockada do produto para validar hipóteses antes de comprometer recursos completos.

**Níveis de fidelidade**:
- **Baixa fidelidade**: papel, wireframe. Testa estrutura, fluxo.
- **Média fidelidade**: clickable mockup. Testa interação.
- **Alta fidelidade**: protótipo visualmente completo. Testa percepção, micro-interação.

**Implicação operacional**: usar a fidelidade certa para a pergunta. Wireframe testa "este fluxo faz sentido?". Não testa "esta cor é a certa?".

**Combina com**: Iteração, Junior Designer Workflow.

---

## Ciclo de Desenvolvimento

**Definição** (modelo simples): Requisitos → Design → Desenvolvimento → Teste → Lançamento → Avaliação → repete.

**Princípio crítico**: cada fase tem custo de mudança crescente. Mudar requisitos custa $1, mudar design custa $10, mudar código custa $100, mudar produto pós-lançamento custa $1000.

**Implicação operacional**: investir em early validation (pesquisa, prototipagem, mockup) é o trabalho mais econômico do ciclo.

**Combina com**: Iteração, Prototipagem, Custo Afundado.

---

## Navalha de Ockham (Ockham's Razor)

**Definição**: Entre alternativas equivalentes, escolha a mais simples.

**Em design**:
- Menos features, melhor.
- Menos elementos por tela, melhor.
- Menos passos no fluxo, melhor.
- Menos cores, fontes, estilos, melhor.

**Risco**: simplicidade não é sinônimo de simplificação. Remover complexidade essencial vira problema (interface simples mas que não faz o trabalho).

**Princípio refinado**: simplificar até onde funciona, não além.

**Combina com**: Forma Segue Função, Lei de Hick, Performance Load.

---

## Forma Segue Função (Form Follows Function)

**Definição** (Louis Sullivan): a aparência de algo deve emergir da sua função.

**Princípio**: beleza honesta. Forma decorativa sem função é ornamento dispensável.

**Aplicações**:
- Botão de ação primária visualmente proeminente porque sua função é ser clicado.
- Tipografia hierárquica reflete hierarquia semântica.
- Ícone que comunica sua função, não que é "bonitinho".

**Risco**: interpretação dogmática produz design frio (Bauhaus radical). Função inclui satisfação emocional, não só utilidade — então estética tem função.

**Implicação operacional refinada**: forma serve função, mas função inclui dimensão emocional, simbólica, identitária. Design ético equilibra função utilitária e função expressiva.

**Combina com**: Navalha de Ockham, Hierarquia de Necessidades, Efeito Estético-Usabilidade.

---

# Princípios complementares (referência rápida)

## Acessibilidade
Design utilizável por gama ampla de pessoas sem modificação. Pilares: perceptibilidade, operabilidade, simplicidade, perdão. Não é feature opcional — é qualidade de design.

## Aferência (Affordance)
Já coberto em Affordances acima. Termo técnico de Gibson.

## Viés de Confirmação
Tendência a buscar e valorizar informação que confirma crença prévia. Em pesquisa de usuário: cuidado para não fazer perguntas enviesadas. Em design: cuidado para não desenhar para o usuário hipotético em vez do real.

## Confirmação (Confirmation)
Padrão de exigir verificação para ações críticas/irreversíveis. Equilíbrio: poucas confirmações = risco; muitas = fadiga.

## Convenção
Padrão estabelecido por uso amplo. Convenções funcionam por mera exposição + reconhecimento. Quebrar convenção = pagar custo de aprendizado, exigir razão.

## Custo-Benefício
Toda decisão de design tem custo e benefício. Documentar trade-offs torna decisão defensável e revisável.

## Dissonância Cognitiva
Desconforto de ter crenças/comportamentos contraditórios. Pessoas resolvem mudando crença ou comportamento. Aplicação: usuário que investiu em produto vai justificar (mesmo se não está satisfeito) — útil para retenção, mas pode mascarar problemas reais.

## Erros (Errors)
Já coberto acima.

## Inversão (Inversing)
Inverter cores ou peso para destacar. Texto branco em fundo preto (modo dark, alerta). Botão destrutivo invertido (texto vermelho em fundo claro vs vice-versa).

## Pirâmide Invertida
Estrutura jornalística: conclusão primeiro, detalhes depois. Aplicado em UX writing — usuário decide rápido se o conteúdo serve.

## Iscas Progressivas
Pequenas pistas que indicam que mais informação está disponível. "Saiba mais", "Continue lendo", "Próxima etapa".

## Lei de Movimento
Movimento captura atenção. Animação chama mais que estático. Usar com parcimônia — todo movimento sempre é fadiga.

## Princípios de Aprendizagem
- Espaçamento (revisão distribuída > maciça).
- Recuperação ativa (gerar resposta > reconhecer).
- Variabilidade (contextos variados > repetidos).

## Razão de Faces (Face-ism Ratio)
Proporção da face em uma imagem afeta percepção da pessoa. Faces grandes (close-up) = inteligência percebida. Corpo inteiro = atratividade percebida.

## Ruído (Noise)
Qualquer elemento que distrai do sinal. Ícones decorativos, gradientes desnecessários, bordas redundantes. Reduzir ruído aumenta razão sinal-ruído.

## Satisficing
Steve Krug, baseado em Herbert Simon. Usuários escolhem primeira opção razoável, não melhor possível. Design deve fazer "razoável" ser fácil de identificar.

## Threading (Encadeamento)
Conectar passos consecutivos com pistas visuais. Cada tela do fluxo prepara a próxima.

---

# Como combinar Lidwell + Dutra

A regra prática para crítica forte: **toda análise robusta cita pelo menos 1 princípio universal e 1 viés cognitivo**, mostrando como ambos atuam.

**Exemplos de combinações frequentes**:

| Sintoma | Princípio (Lidwell) | Viés (Dutra) |
|---------|---------------------|--------------|
| Tela com excesso de opções | Lei de Hick | Fadiga de Decisão |
| Cancelamento difícil | Forgiveness ausente | Aversão à Perda |
| Default pré-marcado favorece negócio | Affordances ambíguas | Status Quo |
| CTA principal mal destacado | Hierarquia Visual fraca | Lei de Hick → satisficing errado |
| Onboarding longo e detalhado | Performance Load alta | Custo Afundado (dói abandonar depois) |
| Imagens decorativas sem função | Ruído / Forma Segue Função | Heurística do Afeto sem substância |
| Renovação automática sem aviso | Feedback Loop quebrado | Status Quo + Aversão à Perda |
| Preço destacado sem contexto | Hierarquia Visual mal aplicada | Ancoragem ausente ou mal usada |
| Tutorial sem ancorar em conhecimento prévio | Organizador Prévio ausente | Carga cognitiva sobrecarrega afeto negativo |
| Fluxo que perde progresso ao voltar | Forgiveness ausente | Aversão à Perda do trabalho feito |

Use esta tabela como ponto de partida — diagnóstico real combina mais princípios e mais vieses, e os pesa contextualmente.
