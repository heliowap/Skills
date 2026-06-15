# Design From Human — Rian Dutra

> **Sobre este arquivo**
>
> Este é o material de referência sobre **vieses cognitivos aplicados a UX e Design de Experiência Humana** com base no livro "Design From Human" de Rian Dutra. Use como lente para diagnóstico em Modo 1 (crítica) e como base de raciocínio em Modo 2 (estratégia).
>
> **Como o agente deve usar**: ao analisar uma tela ou propor uma decisão de produto, identifique 1–3 vieses presentes, cite o nome técnico, descreva o mecanismo psicológico em 1 linha, e dê uma recomendação concreta. Sempre combine com pelo menos 1 princípio universal de Lidwell (ver outro arquivo de Knowledge).
>
> **Conceito-base**: Human Experience Design (HX Design) — abordagem que enxerga o usuário como humano completo (não apenas a camada de interação com a tela), considerando contexto, ambiente, jornada longitudinal e impacto na vida ao redor.

---

## Premissas do Human Experience Design

1. **35.000 decisões conscientes por dia** — o cérebro recorre a heurísticas (atalhos mentais) para sobreviver. Vieses cognitivos são erros sistemáticos e previsíveis dessas heurísticas.
2. **Decisões raramente são racionais** — emoções, memórias afetivas, contexto e a forma como a informação é apresentada moldam mais a decisão do que a lógica.
3. **O design influencia, sempre** — não existe interface neutra. Todo arranjo visual, todo padrão pré-selecionado, toda copy enquadra a decisão. A pergunta ética não é "influenciar ou não", é "influenciar para o bem do usuário ou apenas do negócio".
4. **Vieses não são ferramentas nem armas** — são lentes para entender por que pessoas decidem o que decidem. Tratar como truque de manipulação leva a Designs Enganosos.
5. **Além da tela** — o produto afeta a vida do usuário fora dele e a vida ao redor afeta o uso do produto. Mapear a jornada de forma reverberada e longitudinal, não pontual.

---

# 1. ANCORAGEM (Anchoring Bias)

## Definição
A primeira informação numérica ou referencial que recebemos ancora todas as estimativas e julgamentos seguintes, mesmo quando a âncora não tem relação racional com a decisão.

## Mecanismo
Sem valor de referência interno claro, o cérebro busca qualquer dado disponível como ponto de partida. Uma vez ancorado, ajusta a partir dali em incrementos pequenos demais — raramente abandona a âncora original.

## Aplicações em design

**Precificação de planos**
- Apresentar o plano mais caro primeiro ancora a percepção. Os planos seguintes parecem baratos por comparação.
- Destacar um plano "Recomendado" no meio funciona como âncora de valor justo (modelo MailChimp, Spotify, Netflix).
- Mostrar preço original riscado ao lado do preço com desconto ancora a percepção de economia (modelo Udemy, e-commerce em geral).

**Doações e captação**
- Sugerir um valor pré-definido (ex.: R$ 20, R$ 50, R$ 100) reduz a carga cognitiva e gera doação média maior do que campo livre. Modelo Change.org.

**Negociação**
- Quem faz a primeira oferta ancora a faixa. Em vendas, lançar primeiro um valor um pouco acima do alvo amplia a margem de manobra do vendedor.

**Leilões e marketplaces**
- O lance inicial mostrado afeta lances seguintes mesmo em marketplaces como eBay e Mercado Livre.

## Estudo-chave (Tversky e Kahneman, 1974)
Roda da fortuna marcada de 0–100, manipulada para parar em 10 ou 65. Participantes que viram 10 estimaram a porcentagem de nações africanas na ONU em 25%; os que viram 65 estimaram 45%. A âncora numérica afetou um julgamento totalmente não relacionado.

## Estudo-chave (Ariely, Loewenstein, Prelec, 2003)
Participantes anotavam os 2 últimos dígitos do Social Security Number antes de dar lances em leilão de objetos. Quem tinha número 80–99 pagou em média 346% mais que quem tinha 0–19, pelos mesmos itens.

## Ética
Ancoragem é manipulação ética **se a âncora for verdadeira** (preço original real, valor de mercado real). Inflar artificialmente o preço de referência para mostrar "desconto" maior é Design Enganoso. Udemy e e-commerces brasileiros operam frequentemente nesse limite.

## Combinações típicas com Lidwell
- Hierarquia visual (a âncora precisa ser visualmente proeminente).
- Enquadramento (Framing) — formas alternativas de apresentar a mesma âncora mudam o efeito.

---

# 2. AVERSÃO À PERDA (Loss Aversion)

## Definição
A dor de perder algo é psicologicamente cerca de **2 vezes mais intensa** do que o prazer de ganhar algo de valor equivalente. Decisões são tomadas priorizando evitar perdas, não maximizar ganhos.

## Mecanismo
A aversão à perda é uma resposta emocional ligada a ansiedade e medo. Não é cálculo racional. Acontece quando há algo a perder — o que inclui posição atual, posses, status, progresso, oportunidades.

## Aplicações em design

**Free trial e onboarding**
- Conceder acesso temporário antes de pedir compromisso. Após uso, o medo de perder o que conquistou converte em assinatura. Modelo LinkedIn Premium (1 mês grátis).

**Anti-cancelamento**
- Listar explicitamente o que o usuário vai perder ao cancelar (limite de crédito, pontos, histórico, conteúdo). Modelo Adobe (lista detalhada de perdas no fluxo de cancelamento).

**FoMO (Fear of Missing Out)**
- Mostrar oportunidades com prazo, escassez, ou rótulo "perderá esta oportunidade". Modelo XP Investimentos (popup com botão "Quero perder essa oportunidade" — força o usuário a verbalizar a perda).

**Garantia e devolução**
- Reduzir o medo de perda na compra: "Compra Garantida", devolução em 30 dias, satisfação ou dinheiro de volta. Modelo Mercado Livre (informação imediatamente abaixo do botão de compra).

**Mensagens de risco e prevenção**
- Enquadrar negativamente: "Você perderá 5 anos de vida se continuar a fumar" é mais persuasivo do que "Você ganhará 5 anos de vida se parar". Mesmo conteúdo informacional, efeito psicológico desigual.

## Estudo-chave (Kahneman, efeito doação)
Participantes que recebiam uma caneca atribuíam preço de venda ~2x maior do que participantes que avaliavam a mesma caneca sem possuí-la. A simples posse cria valor psicológico.

## Estudo-chave (Doença Asiática, Tversky e Kahneman, 1981)
Mesmo problema (600 vidas em risco), 2 enquadramentos:
- "Programa A salva 200" vs "Programa B: 1/3 chance de salvar todos, 2/3 chance de não salvar ninguém" → 72% escolhem A (aversão a risco em ganhos).
- "Programa C: 400 morrem" vs "Programa D: 1/3 chance ninguém morrer, 2/3 chance todos morrerem" → 78% escolhem D (busca de risco em perdas).

Mesmo problema, mesmas probabilidades, decisões opostas só pelo enquadramento.

## Ética
Aversão à perda usada para **proteger valor real** que o usuário criou (progresso, dados, hábito) é ética. Aversão à perda fabricada artificialmente — escassez falsa, deadline inventado, "perda" de algo que ele nunca teve — é Deceptive Design.

## Combinações típicas com Lidwell
- Forgiveness (perdão) — sistema bem desenhado reduz medo de perda na exploração.
- Feedback Loop — confirmar ações que poderiam causar perda (delete, sair sem salvar).

---

# 3. EFEITO CASHLESS / DOR DE PAGAMENTO

## Definição
Pagamentos invisíveis (cartão, contactless, app, criptomoeda) reduzem o desconforto psicológico do gasto. Quanto menos tangível o pagamento, mais o consumidor gasta.

## Mecanismo
A "dor de pagamento" (termo cunhado por Zellermayer, 1996) é o desconforto físico-emocional de se desfazer de dinheiro. Notas físicas ativam essa dor de forma máxima; cartão de crédito, mínima; pagamento por aproximação ou app, quase zero. A dor é amortecida pela abstração.

## Aplicações em design

**Checkout sem fricção**
- Quanto menos passos, menos visualização do valor, menos "dor". Modelo Amazon 1-Click (1999, comprar com um único toque, pulando o carrinho).

**Pulseiras e sistemas integrados**
- Walt Disney MagicBand permite pagar tudo no parque com um único gesto, removendo qualquer momento de "ai, o preço". Aumenta gasto médio.

**Wallets e Apple Pay/Google Pay**
- Pagamento por aproximação reduz ainda mais a dor que o cartão físico. Estudo: máquinas de venda automática viram aumento de 37% no gasto quando passam de moeda para sistema cashless.

**Subscriptions vs compra avulsa**
- Cobrança recorrente automática gera "compra contínua sem decisão repetida" — a dor é diluída no tempo.

## Estudo-chave (Avni Shah, 2016)
Compradores que pagaram por canecas com dinheiro físico exigiam, em média, US$ 6,71 de volta para venderem; quem pagou com cartão exigia US$ 3,83. Pagamento físico cria vínculo psicológico mais forte com o objeto comprado.

## Estudo-chave (operações de venda automática, 250.000 máquinas)
Aumento médio de 37% no gasto após adoção de pagamento sem dinheiro físico.

## Aplicações para o oposto (proteção do usuário)
Para apps de educação financeira ou wellness financeiro, **adicionar fricção intencional** no pagamento (mostrar o valor por extenso, exigir confirmação dupla, mostrar o impacto no orçamento mensal antes de confirmar) reduz compras impulsivas — usa o princípio em favor do usuário.

## Ética
Reduzir dor de pagamento para tornar a experiência fluida é ético. Combinar redução de dor com escassez fabricada e ofertas de impulso (1-click + countdown timer falso) cruza para Deceptive Design.

## Combinações típicas com Lidwell
- Performance Load — reduzir esforço cognitivo e cinemático no checkout.
- Recognition over Recall — dados de pagamento salvos.

---

# 4. CUSTO AFUNDADO E COMPROMETIMENTO (Sunk Cost & Commitment)

## Definição
Quando investimos tempo, dinheiro ou esforço em algo, ficamos relutantes em abandonar — mesmo que continuar custe mais do que parar. Decidimos com base em custos passados (irrecuperáveis) em vez de custos e benefícios presentes/futuros.

## Mecanismo
Combinação de aversão à perda (não quero ter perdido aquilo) + dissonância cognitiva (se desistir, o investimento foi "em vão") + identidade (sou alguém que termina o que começa). Resulta em decisão irracional para continuar.

Falácia do Concorde (1976–2003): governos britânico e francês continuaram investindo em jato supersônico não-lucrativo por 27 anos depois de óbvio que era prejuízo, porque já tinham gastado US$ 2,8 bilhões.

## Aplicações em design

**Gamificação de retenção**
- Streaks (sequências). Modelo Duolingo: ofertar a continuidade da sequência. Perder o streak parece desperdiçar tudo construído. Aumenta retenção em 14% (teste A/B confirmado).

**Onboarding longo**
- Quanto mais o usuário investe no setup (preencher perfil, importar dados, configurar preferências), mais relutante a abandonar. Modelo Pinterest, Notion, Trello.

**Free trial com progresso salvo**
- Permitir uso parcial gera investimento em tempo. Cancelar significaria perder o progresso conquistado. Caso real (plataforma educativa NCLEX): 30% dos usuários free converteram em pagantes; receita de US$ 100.000 em um mês.

**Comprometimento público**
- Tornar o compromisso visível (postar meta, declarar intenção, compartilhar progresso) aumenta aderência. Strava, Apple Fitness.

**Pontos, ranking, medalhas**
- Cada pequena conquista é um custo afundado. Perder posição no ranking parece desperdício. Modelos Stack Overflow, Reddit karma, Duolingo league.

## Estudo-chave (idade e custo afundado)
Pesquisa com dois grupos (18–27 anos vs 58–91 anos): em vídeo ruim, jovens são mais propensos a continuar assistindo até o fim quando pagaram pelo ingresso. Idosos abandonam com mais facilidade. Maturidade reduz o viés.

## Aplicações no lado do design (não só usuário)
Designers, devs e PMs incorrem no Custo Afundado em projetos. Investimento alto em uma solução errada gera resistência a pivotar. Solução: separar revisão de viabilidade do investimento prévio. Pergunta-chave: "Se começássemos hoje sabendo o que sabemos, faríamos esta escolha?"

## Ética
Gamificação para criar hábito saudável (Duolingo aprende idioma) é ética. Gamificação para criar dependência (apps de microtransação, slot machines disfarçadas, social media com infinite scroll) é exploração. A linha: o usuário sai melhor da interação ou apenas mais preso?

## Combinações típicas com Lidwell
- Forma Segue Função — gamificação só funciona se serve à função real.
- Reforço Operante — pontos e recompensas funcionam como reforçadores condicionados.

---

# 5. VIÉS DO STATUS QUO (Status Quo Bias)

## Definição
Preferimos manter o estado atual mesmo quando alternativas seriam objetivamente melhores. Mudar requer esforço cognitivo, gera incerteza e percepção de perda potencial — então não mudamos.

## Mecanismo
O estado atual é nosso ponto de referência. Qualquer mudança a partir dele é avaliada como ganho ou perda relativa. Como perda pesa 2x mais que ganho (aversão à perda), a balança pende contra a mudança.

Não é preguiça, é proteção contra risco. E é fortíssimo em decisões de baixo engajamento (configurações, defaults, opções pré-selecionadas).

## Aplicações em design

**Defaults inteligentes**
- Opção pré-selecionada se torna a escolha da maioria, mesmo quando o usuário "saberia" escolher diferente se pensasse.
- Estudo Madrian & Shea (2001): empresa nos EUA mudou plano de previdência de "opt-in" para "opt-out". Adesão saltou 48% entre novos contratados, 11% no geral. Mesma escolha, mesma informação, default diferente.

**Renovação automática**
- Plano renovado automaticamente todo ano. Modelo Adobe, Spotify, Netflix, jornais. O usuário precisa fazer ação ativa para sair — e a maioria não faz.

**Redesign cuidadoso**
- Mudar muito de uma vez gera resistência por status quo (caso histórico: redesigns do Facebook causando revolta repetida). Mudar gradualmente, com opção de "voltar ao antigo", reduz fricção.

**Listas de busca**
- Estudo (Joachims et al.): em mecanismos de busca, 42% clicam no primeiro link, apenas 8% no segundo. Quando os pesquisadores trocaram o primeiro pelo segundo, 34% ainda clicaram no que estava em primeiro lugar. Posição é status quo.

**Layout de cafeteria do Google (Manhattan)**
- Saladas posicionadas na entrada, M&M's longe. Sete semanas: 3,1 milhões de calorias a menos consumidas. Default geográfico = status quo.

**Cardápios e estrutura de escolha**
- Pesquisa (Downs et al.): cardápio com sanduíches saudáveis posicionados convenientemente reduziu calorias totais. Cardápio com info calórica, sozinho, teve pouco efeito.

**GoDaddy carrinho**
- "Proteção de Domínio" e "Comece seu site GRÁTIS" pré-selecionadas. Renovação por 2 anos pré-selecionada. Aumenta ticket médio em quase 3x.

## Estudo-chave (De Brigard, 2010 — máquina de experiências)
Pergunta: você descobre que está conectado a uma máquina de experiências e toda sua vida foi simulação. Pode escolher se desconectar ou ficar. Resultado: 59% prefere ficar — escolhem o status quo familiar (ainda que falso) em vez do desconhecido (ainda que real). Mostra a profundidade do viés.

## Estudo-chave (Samuelson & Zeckhauser, 1988)
Quando opções são apresentadas com uma marcada como "status quo" (ainda que arbitrária), participantes a escolhem desproporcionalmente. Funciona com plano de saúde, alocação de fundos, escolha de carro.

## Ética
Defaults pró-usuário (privacidade ativada, plano de previdência opt-out, consentimento mínimo selecionado) são éticos e benéficos. Defaults pró-empresa (newsletter pré-marcada, complementos no carrinho, renovação automática sem aviso) são manipulação. A linha: o default favorece o usuário ou apenas o caixa do negócio?

**Inércia Psicológica vs Status Quo**: a primeira é falta total de ação (não decidir nada); o segundo é evitar mudanças percebidas como perda. Sutil, mas o design reage diferente — para inércia, force ação; para status quo, mude o default.

## Combinações típicas com Lidwell
- Lei de Hick (mais opções, mais paralisia, mais defaults vencem).
- Reconhecimento sobre Lembrança (defaults removem demanda de memória).
- Ponto de Entrada (primeiras impressões viram status quo).

---

# 6. ENQUADRAMENTO (Framing Effect)

## Definição
A forma como uma informação é apresentada — palavras escolhidas, contexto, ponto de referência, ordem — altera a decisão, mesmo quando o conteúdo factual é idêntico.

## Mecanismo
Não processamos dados puros. Processamos dados em contexto. O contexto direciona atenção (positivo vs negativo, ganho vs perda, individual vs coletivo) e determina qual heurística será ativada.

Conexão direta com a Teoria do Prospecto (Kahneman & Tversky): perdas pesam mais que ganhos, então enquadrar a mesma escolha como ganho ou perda muda o resultado.

## Aplicações em design

**Copy de vendas**
- "20% de desconto" vs "Economize R$ 1.600" — para valores altos, o número absoluto convence mais. Para valores baixos, percentual.
- "Compre pela metade do preço" é mais visceral que "50% off".
- "9 em cada 10 dentistas recomendam" (Sensodyne) é muito mais forte que "1 em 10 dentistas não recomenda".

**Carne moída**
- "75% magra" vs "25% gordura" — mesma carne, percepções de qualidade significativamente diferentes (estudo Levin & Gaeth, 1988).

**McDonald's**
- "91% livre de gordura" (1991) vs "9% de gordura" — mesma informação, marketing muito diferente.

**Achocolatado / produto saudável**
- "33% menos açúcar" enquadra positivo. "10g de açúcar por copo" é dado neutro mas pode soar pior dependendo do alvo.

**Risco médico e consentimento**
- "99,9% das pessoas não têm reação séria" vs "1 em 1000 pode ter complicação grave" — mesmas estatísticas, decisões diferentes do paciente. Para consentimento informado, mostrar ambos é exigência ética.

**Copy negativa em prevenção**
- "Você perderá X anos de vida" supera "Você ganhará X anos de vida" em campanhas anti-tabagismo (perdas são mais persuasivas).

**Pesquisas e questionários**
- "Você gosta deste app?" induz resposta positiva. "Como é sua experiência com este app?" abre para crítica. Enquadramento da pergunta enviesa o dado.

## Estudo-chave (Tversky & Kahneman, 1981 — Doença Asiática)
Já citado em Aversão à Perda. Mostra que enquadrar como ganhos vs perdas inverte 70%+ das decisões em mesma situação.

## Aplicações em saúde (relevante para Intrador)
- Comunicar risco em frequências (1 em cada 100) é mais impactante emocionalmente que probabilidades (1%) — médicos avaliam pacientes como mais perigosos com frequências (Reyna et al., 2009).
- Para consentimento de procedimento: apresentar ambos os enquadramentos (perda potencial e ganho potencial, taxa de sucesso e taxa de complicação) é eticamente necessário.

## Ética
Enquadrar verdadeiramente é ético — toda comunicação envolve escolhas de enquadramento. Esconder informação relevante por trás de enquadramento favorável é Design Enganoso. Em saúde, omitir enquadramento negativo viola consentimento informado.

## Combinações típicas com Lidwell
- Hierarquia visual — o que está no topo enquadra o resto.
- Cinco Cabides (Five Hat Racks) — escolha de organização (categoria, tempo, local, alfabeto, continuum) é em si um enquadramento.
- Iconografia — ícones enquadram função.

---

# 7. FADIGA DE DECISÃO E PARADOXO DA ESCOLHA

## Definição
**Fadiga de Decisão**: cada decisão tomada consome recurso mental finito. Após muitas decisões, a qualidade das próximas degrada — defaultamos para "qualquer coisa", procrastinamos, ou paralisamos.

**Paradoxo da Escolha** (Schwartz, 2004): mais opções não levam a melhores decisões nem maior satisfação. Geralmente o oposto: menos compra, mais arrependimento, mais ansiedade.

## Mecanismo
Tomada de decisão é trabalho cognitivo. Avaliar trade-offs, ponderar riscos, projetar consequências — tudo custa. O cérebro tem orçamento limitado por dia (em torno de 35.000 decisões conscientes). Quando esgota, opta por "satisficing" (Steve Krug): escolher a primeira opção razoável em vez da melhor.

## Aplicações em design

**Catálogos e listagens**
- Netflix: 17,8 minutos médio para escolher um filme (vs 9,1 minutos da TV a cabo). Catálogo enorme paralisa.
- Recomendações algorítmicas reduzem fadiga: 80% do conteúdo assistido vem das próprias recomendações.

**Arquitetura de informação**
- Site Banana Republic: páginas longas, menus profundos, dezenas de produtos similares por categoria. Alta fadiga, baixa conversão por sessão.
- Site Zara: menu de um nível, produtos visualmente diferenciados, grade limpa. Decisão mais rápida.

**Cardápios e configuradores**
- McDonald's totem: muitas escolhas por item (refrigerante, tamanho, batata, molho, ingredientes). Filas geradas pela fadiga.
- Configurador de carro com 50 cores → 5 cores curadas vendem mais que 50 cores genéricas.

**Decisões judiciais (estudo crítico)**
- Análise de 1.000+ decisões de liberdade condicional em Israel (Danziger et al., 2011): juízes concedem liberdade em 70% das audiências matinais e apenas 10% das vespertinas. Fadiga acumulada faz juízes optarem pela opção default (negar). Sugere implicação ampla para qualquer profissional de decisão sequencial — médicos, recrutadores, vendedores.

**Estratégias de redução**

1. **Curadoria** — pré-selecionar opções recomendadas. Spotify "Descobertas da Semana", Apple "Editor's Picks".
2. **Default forte** — uma opção destacada como recomendada (ver Status Quo).
3. **Filtros progressivos** — começar amplo, refinar. Reduz universo de escolha rapidamente.
4. **Design Antecipatório** — sistema sugere baseado em uso anterior. Spotify, Netflix, Amazon, Google.
5. **Limitar opções** — Mark Zuckerberg usa sempre camisetas iguais para não gastar decisão em roupa.
6. **Eliminar trade-offs** — quando possível, oferecer "1 produto que faz tudo" em vez de 10 com especialidades sutis.

## Estudo-chave (Schwartz — geleias)
Banca com 24 sabores de geleia: 60% dos passantes provam, 3% compram. Banca com 6 sabores: 40% provam, 30% compram. Menos opções, 10x mais conversão.

## Estudo-chave (Augenblick & Nicholson, 2016)
Em cédulas de votação longas, eleitores se abstêm progressivamente nas últimas seções, ou votam no primeiro candidato listado. Sem fadiga de decisão, abstenções cairiam ~8%.

## Aplicações em saúde (Intrador)
- Painel de paciente com muitas métricas pode sobrecarregar. Priorizar 3 indicadores principais com expansão sob demanda.
- Equipe clínica em final de turno comete mais erros — design deve minimizar decisões ao final do plantão (defaults seguros, alertas mais conservadores no fim do dia).
- Cardápio de procedimentos para paciente: começar com filtro por queixa, não lista exaustiva.

## Ética
Reduzir fadiga é universalmente bom. **MAS**: reduzir excessivamente vira manipulação (forçar a opção do negócio escondendo alternativas). Curadoria honesta mostra "esta é nossa recomendação porque X" + permite expandir para ver tudo.

## Combinações típicas com Lidwell
- Lei de Hick (tempo de decisão ∝ log(n) opções).
- Divulgação Progressiva (Progressive Disclosure).
- Chunking (agrupar reduz percepção de quantidade).
- Cinco Cabides (organizar em categorias reduz n efetivo).

---

# 8. HEURÍSTICA DO AFETO (Affect Heuristic)

## Definição
Em decisões complexas ou sob pressão de tempo, usamos o sentimento ("isso me dá boa ou má sensação?") como atalho para julgamento, no lugar de análise racional. O afeto chega antes da lógica.

## Mecanismo
Sistema 1 (Kahneman) — pensamento rápido, intuitivo, emocional — é o default. Sistema 2 (lento, deliberado, racional) só é acionado quando há tempo, recurso e motivação. Para a maioria das decisões diárias, decidimos pelo afeto.

Schwarz (1990) identifica 4 condições onde o afeto domina:
1. Julgamento sobre algo afetivo (gostar, confiar).
2. Pouca outra informação disponível.
3. Julgamento complexo demais para análise.
4. Tempo limitado.

## Aplicações em design

**Branding e identidade visual**
- Cores, tipografia, fotografia geram afeto antes de qualquer texto ser lido. Decisão de "esta marca é para mim" acontece em 50ms.

**Thumbnails e capas**
- Netflix (2014): thumbnails determinam 82% da decisão de assistir. 1,8 segundo médio por título considerado. Imagem com expressão facial complexa supera sorriso ou neutro — porque transmite mais informação afetiva.
- Editorial: capa de livro com pupilas dilatadas vende mais (estudo Wiseman & Watt, 2010). Mulheres 18–35 preferem capas em cores frias; homens 56+ preferem cores quentes.

**Memória afetiva**
- Produtos que remetem à infância, nostalgia, rituais familiares geram preferência irracional. Carros Jeep (estética anos 80–90), produtos de marca tradicional, embalagens vintage.

**Hospedagem e turismo**
- Airbnb mudou home page (2021 → 2022) de busca-form simples para grade visual de lugares inusitados (contêineres, treehouses, castelos). Decisão deslocada de "encontre acomodação" para "se imagine vivendo isto". Quase 3.000 hospedagens em castelos em dezembro de 2019.

**Imagem de produto e percepção de quantidade**
- Pote de sorvete pequeno com 7 bolas transbordando vence pote grande com 7 bolas mais cabíveis (estudo Hsee, 1998). Percepção de "muito" supera quantidade real.

**Produtos licenciados**
- Disney faturou US$ 56,2 bilhões em 2021 com licenciamento. O afeto pré-existente pelas marcas (Pixar, Marvel, Star Wars) é o produto vendido.

**Embalagens de impacto emocional**
- Cigarros com imagens de doenças no Canadá: 20% reduziu consumo após exposição visual. Afeto negativo (medo, repulsa) supera dado estatístico.

**Estatísticas como frequência vs probabilidade**
- "20 em cada 100 pacientes" gera classificação de risco maior do que "20% dos pacientes" — frequências criam imagem mental concreta, probabilidades ficam abstratas (Reyna et al., 2009). Implicação direta para comunicação clínica.

## Aplicações em saúde (Intrador)
- Fotos de pacientes reais (com consentimento) em depoimentos geram afeto > fotos de banco de imagens.
- Sala de espera com elementos sensoriais (luz quente, som ambiente, plantas) reduz ansiedade pré-consulta — afeto positivo molda percepção do tratamento.
- Comunicação de prognóstico: equilíbrio entre afeto realista (sem falso otimismo) e afeto de esperança (sem desespero). Linguagem afetiva escolhida com cuidado.

## Ética
Afeto é parte legítima da decisão humana — apelar a ele não é desonesto. **MAS**: evocar afeto desconectado da realidade do produto é manipulação. Foto linda de hospedagem que não corresponde à realidade. Afeto puro de criança em propaganda de bebida alcoólica.

## Combinações típicas com Lidwell
- Efeito Estético-Usabilidade (bonito é percebido como mais usável).
- Superioridade da Imagem (Picture Superiority Effect).
- Viés de Atração (Attractiveness Bias).
- Efeito Auréola (Halo Effect).
- Arquétipos.

---

# Vieses adicionais citados (referência rápida)

## Reciprocidade (Cialdini)
Quando recebemos algo, sentimos obrigação de retribuir. Aplicação: free trial, conteúdo gratuito (e-book, webinar) gera disposição para compra.

## Efeito Preço Zero (Shampanier, Mazar, Ariely)
Produtos grátis são percebidos como desproporcionalmente mais valiosos do que produtos baratos. "Frete grátis" supera "desconto de R$ 5" mesmo sendo equivalentes.

## FoMO (Fear of Missing Out)
Subtipo de aversão à perda focado em oportunidades sociais e temporais. "Última hora", "só hoje", "mais 3 pessoas vendo agora".

## Mera Exposição (Zajonc)
Mais exposição a algo cria preferência por ele, sem qualquer outra razão. Aplicação: branding consistente, repetição de elementos visuais.

## Efeito Auréola (Thorndike, 1920)
Uma característica positiva (beleza, eloquência, status) influencia a percepção de outras características não relacionadas. Pessoa atraente percebida como mais inteligente, competente, confiável.

## Viés de Atração e Rosto de Bebê
Rostos atraentes geram percepção de competência. Rostos com traços infantis geram percepção de honestidade e calor. Política, marketing, mascotes.

## Efeito de Dominância de Proporção
Percebemos quantidades pela proporção do recipiente. Pote pequeno cheio > pote grande não cheio, mesma quantidade absoluta.

## Design Antecipatório
Sistema usa dados de comportamento + ML para antecipar a decisão e reduzir trabalho cognitivo. Spotify "Discover Weekly", Amazon "Compre Junto", Netflix recomendações.

---

# DESIGNS ENGANOSOS (Deceptive Design)

> O termo original "Dark Patterns" (Harry Brignull, 2010) tem uma fragilidade: somos influenciados por todo design, sempre. A linha não é "influencia ou não", é "engana ou não". Daí a preferência por **Design Enganoso** (ou Design Impostor).

## Tipologia (Brignull, deceptive.design)

1. **Perguntas-pegadinha** — formulário com pergunta dupla-negativa ou redação confusa que leva a resposta inesperada.
2. **Esgueirar-se na cesta** — item adicionado automaticamente ao carrinho sem ação do usuário.
3. **Motel barato (Roach Motel)** — fácil entrar (assinar, criar conta), difícil sair (cancelar enterrado em menus, suporte por telefone só).
4. **Privacidade Zuckering** — interface induz a compartilhar mais dados do que pretendia.
5. **Prevenção de comparação de preços** — formato de listagem dificulta comparar com concorrentes.
6. **Desvio de atenção** — elemento chamativo distrai de informação importante (taxa, termo, opt-out).
7. **Custos escondidos** — taxas só aparecem na última etapa do checkout.
8. **Isca e troca** — anuncia X, no checkout troca por Y "indisponível, mas temos Z".
9. **Vergonha de confirmação** — botão de recusar formulado para envergonhar ("Não, não quero economizar dinheiro").
10. **Anúncios disfarçados** — propaganda mimetiza conteúdo ou navegação.
11. **Continuidade forçada** — trial gratuito vira cobrança recorrente sem alerta.
12. **Spam de amigos** — app pede acesso a contatos sob pretexto, envia spam em nome do usuário.

## Como o agente deve responder

Quando receber pedido para criar ou avaliar interface que envolva qualquer dos padrões acima:
1. Identificar explicitamente como Design Enganoso.
2. Explicar por que é prejudicial ao usuário no longo prazo (desconfiança, churn, reputação, regulação).
3. Oferecer alternativa ética que atinja o objetivo de negócio sem manipulação.
4. Se o usuário insistir, recusar e sinalizar que essa não é função do agente.

## Princípio orientador

> "Se sua intenção é trapacear seu cliente, uma vez ciente que foi enganado, não irá querer tornar a vê-lo." — Rian Dutra

A ética em design tem uma vantagem prática: padrões enganosos funcionam **uma vez**. Padrões éticos constroem relação. LTV (lifetime value) de cliente respeitado supera CAC (custo de aquisição) recuperado por manipulação. É argumento de negócio, não só moral.

---

# HUMAN EXPERIENCE DESIGN (HX) — princípios operacionais

## Diferença para UX Design tradicional
- **UX Design**: foco no usuário em interação com o produto, otimização da tela.
- **HX Design**: foco no humano completo, antes-durante-depois da interação, em contexto real, com impacto na vida ao redor.

## Implicações práticas

1. **Mapeamento longitudinal, não pontual** — jornada do paciente da Intrador inclui chegada à recepção, sala de espera, consulta, prescrição, primeira aplicação em casa, retorno após 1 mês. Cada touchpoint molda os outros.

2. **Ambiente como parte do design** — luz, som, temperatura, cheiro da clínica afetam decisão e satisfação tanto quanto o app.

3. **Influência social e relacional** — paciente decide com base em opinião de família, médicos anteriores, conhecidos, internet. Design considera essa rede, não só o usuário individual.

4. **Hábito > retenção** — engajar é fácil, criar hábito saudável é o objetivo. Aplicativo de cuidado clínico que vira parte da rotina (vs notificação ignorada).

5. **Modelo mental do paciente vs modelo do sistema** — mapear ansiedade pré-procedimento, expectativas de tratamento, vocabulário leigo vs técnico. Design fala a língua do humano, não do médico.

## Pergunta-chave para todo design

> "Este produto faz a vida da pessoa melhor fora dele, ou só a prende mais dentro dele?"

Resposta honesta dessa pergunta separa HX Design ético de manipulação sofisticada.
