<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>PROMPT INDEX — Estado da Arte</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Archivo:wght@300;400;500;600;800;900&family=Instrument+Serif:ital@0;1&family=JetBrains+Mono:wght@300;400;500&display=swap" rel="stylesheet">
<style>
  :root{
    --ink:#0A0A0A;
    --paper:#F5F4F0;
    --grey:#8C8C87;
    --grey-dk:#55554F;
    --line:#232320;
    --line-lt:#D8D6CF;
  }
  *{margin:0;padding:0;box-sizing:border-box}
  html{scroll-behavior:smooth}
  body{
    background:var(--ink);
    color:var(--paper);
    font-family:'Archivo',sans-serif;
    font-weight:300;
    line-height:1.55;
    -webkit-font-smoothing:antialiased;
  }
  a{color:inherit;text-decoration:none}
  .mono{font-family:'JetBrains Mono',monospace}
  .serif{font-family:'Instrument Serif',serif}

  .wrap{max-width:820px;margin:0 auto;padding:0 22px}

  /* ————— HERO ————— */
  header{padding:72px 0 56px;border-bottom:1px solid var(--line)}
  .eyebrow{
    font-family:'JetBrains Mono',monospace;
    font-size:10px;letter-spacing:.32em;
    color:var(--grey);text-transform:uppercase;
    display:flex;justify-content:space-between;align-items:center;
    margin-bottom:40px;
  }
  h1{
    font-weight:900;text-transform:uppercase;
    font-size:clamp(52px,13vw,110px);
    line-height:.88;letter-spacing:-.02em;
  }
  h1 .thin{font-weight:300;display:block;letter-spacing:.01em}
  .hero-sub{
    margin-top:34px;display:flex;gap:20px;align-items:flex-start;
    border-top:1px solid var(--line);padding-top:22px;
  }
  .hero-sub .n{font-family:'JetBrains Mono',monospace;font-size:10px;color:var(--grey);letter-spacing:.2em;padding-top:5px;white-space:nowrap}
  .hero-sub p{font-size:15px;color:#C9C8C2;max-width:52ch}
  .hero-sub p em{font-family:'Instrument Serif',serif;font-style:italic;font-size:17px;color:var(--paper)}

  /* ————— MÉTODO ————— */
  .method{padding:34px 0;border-bottom:1px solid var(--line);
    display:grid;grid-template-columns:repeat(2,1fr);gap:1px;background:var(--line)}
  .method div{background:var(--ink);padding:16px 14px}
  .method .k{font-family:'JetBrains Mono',monospace;font-size:9px;letter-spacing:.25em;color:var(--grey);text-transform:uppercase;display:block;margin-bottom:6px}
  .method .v{font-size:12.5px;color:#B9B8B2}

  /* ————— ÍNDICE ————— */
  nav{padding:30px 0;border-bottom:1px solid var(--line)}
  nav a{
    display:flex;justify-content:space-between;align-items:baseline;
    padding:9px 0;border-bottom:1px solid var(--line);
    font-size:13px;letter-spacing:.06em;text-transform:uppercase;font-weight:500;
    transition:padding-left .2s ease;
  }
  nav a:last-child{border-bottom:none}
  nav a:hover{padding-left:8px;color:#fff}
  nav a .idx{font-family:'JetBrains Mono',monospace;font-size:10px;color:var(--grey);letter-spacing:.2em}

  /* ————— SEÇÕES ————— */
  section{padding:64px 0 8px}
  .slate{
    display:flex;align-items:baseline;gap:16px;
    border-bottom:2px solid var(--paper);padding-bottom:14px;margin-bottom:6px;
  }
  .slate .num{font-family:'JetBrains Mono',monospace;font-size:11px;letter-spacing:.25em;color:var(--grey)}
  .slate h2{font-weight:800;text-transform:uppercase;font-size:clamp(22px,5.4vw,34px);letter-spacing:-.01em;line-height:1}
  .slate-note{
    font-family:'Instrument Serif',serif;font-style:italic;
    font-size:16px;color:var(--grey);margin:14px 0 26px;
  }

  /* ————— CARDS ————— */
  .card{
    display:block;border-bottom:1px solid var(--line);
    padding:18px 0;position:relative;
    transition:background .18s ease;
  }
  .card:hover{background:#111110}
  .card .top{display:flex;justify-content:space-between;align-items:baseline;gap:12px;margin-bottom:4px}
  .card .name{font-weight:600;font-size:16px;letter-spacing:.01em}
  .card .code{font-family:'JetBrains Mono',monospace;font-size:9.5px;color:var(--grey);letter-spacing:.18em;white-space:nowrap}
  .card .desc{font-size:13.5px;color:#A9A8A2;max-width:60ch}
  .card .tag{
    display:inline-block;margin-top:8px;
    font-family:'JetBrains Mono',monospace;font-size:9px;
    letter-spacing:.22em;text-transform:uppercase;color:var(--grey-dk);
    border:1px solid var(--line);padding:3px 8px;
  }
  .card .arrow{
    position:absolute;right:0;bottom:20px;
    font-family:'JetBrains Mono',monospace;font-size:11px;color:var(--grey);
    opacity:0;transform:translateX(-6px);transition:all .18s ease;
  }
  .card:hover .arrow{opacity:1;transform:translateX(0)}

  /* ————— TIER S (invertido) ————— */
  .tier-s .card{
    background:var(--paper);color:var(--ink);
    border-bottom:1px solid var(--line-lt);
    padding:20px 18px;
  }
  .tier-s .card:first-of-type{margin-top:26px}
  .tier-s .card:hover{background:#FFFFFF}
  .tier-s .card .desc{color:#4A4A45}
  .tier-s .card .code{color:#8A8A82}
  .tier-s .card .tag{border-color:var(--line-lt);color:#7A7A72}
  .tier-s .card .arrow{color:var(--ink)}
  .tier-s .slate-note{color:#B9B8B2}

  /* ————— FOOTER ————— */
  footer{
    margin-top:80px;border-top:1px solid var(--line);
    padding:40px 0 64px;
  }
  footer .sig{
    font-family:'Instrument Serif',serif;font-style:italic;
    font-size:20px;margin-bottom:8px;
  }
  footer .meta{font-family:'JetBrains Mono',monospace;font-size:9.5px;letter-spacing:.28em;color:var(--grey);text-transform:uppercase}

  @media(min-width:640px){
    .method{grid-template-columns:repeat(4,1fr)}
  }
  @media(prefers-reduced-motion:reduce){
    *{transition:none!important}
  }
</style>
</head>
<body>

<div class="wrap">

<header>
  <div class="eyebrow"><span>@arifaandre</span><span>REF — PI/26.07</span></div>
  <h1>Prompt<span class="thin">Index</span></h1>
  <div class="hero-sub">
    <span class="n">EDIÇÃO 01</span>
    <p><em>Estado da arte.</em> O atlas definitivo dos repositórios, bibliotecas e guias de prompts de IA do mundo — organizado por camada de valor, do essencial ao especializado. Curadoria sistematizada: cada entrada existe porque nenhuma outra a substitui.</p>
  </div>
</header>

<div class="method">
  <div><span class="k">Critério 01</span><span class="v">Autoridade da fonte</span></div>
  <div><span class="k">Critério 02</span><span class="v">Manutenção ativa</span></div>
  <div><span class="k">Critério 03</span><span class="v">Profundidade técnica</span></div>
  <div><span class="k">Critério 04</span><span class="v">Aplicabilidade real</span></div>
</div>

<nav>
  <a href="#s01"><span>Tier S — O Atlas Essencial</span><span class="idx">01</span></a>
  <a href="#s02"><span>Fontes Oficiais</span><span class="idx">02</span></a>
  <a href="#s03"><span>Bibliotecas &amp; Coleções</span><span class="idx">03</span></a>
  <a href="#s04"><span>System Prompts Reais</span><span class="idx">04</span></a>
  <a href="#s05"><span>Dev, IDEs &amp; Agentes</span><span class="idx">05</span></a>
  <a href="#s06"><span>Engenharia Sistemática</span><span class="idx">06</span></a>
  <a href="#s07"><span>Multimodal — Imagem &amp; Vídeo</span><span class="idx">07</span></a>
  <a href="#s08"><span>Comunidades &amp; Marketplaces</span><span class="idx">08</span></a>
  <a href="#s09"><span>Pesquisa &amp; Avaliação</span><span class="idx">09</span></a>
</nav>

<!-- ————————————— 01 TIER S ————————————— -->
<section id="s01" class="tier-s">
  <div class="slate"><span class="num">01 / 09</span><h2>Tier S — O Atlas Essencial</h2></div>
  <p class="slate-note">Dez referências. Se só existissem estas, ainda seria o estado da arte.</p>

  <a class="card" href="https://github.com/dair-ai/Prompt-Engineering-Guide" target="_blank">
    <div class="top"><span class="name">Prompt Engineering Guide</span><span class="code">S.01</span></div>
    <p class="desc">O handbook definitivo — guias, papers, notebooks e lições cobrindo prompt engineering, context engineering, RAG e agentes. A referência mais citada do campo.</p>
    <span class="tag">dair-ai · handbook</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/f/prompts.chat" target="_blank">
    <div class="top"><span class="name">prompts.chat</span><span class="code">S.02</span></div>
    <p class="desc">A maior biblioteca open-source de prompts do mundo (ex-Awesome ChatGPT Prompts). Milhares de personas e casos de uso prontos.</p>
    <span class="tag">biblioteca · volume</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/danielmiessler/fabric" target="_blank">
    <div class="top"><span class="name">Fabric</span><span class="code">S.03</span></div>
    <p class="desc">Framework de "patterns" — prompts modulares e testados para resolver problemas específicos (resumir, extrair, analisar), utilizáveis via CLI ou copiados diretamente.</p>
    <span class="tag">daniel miessler · patterns</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/anthropics/prompt-eng-interactive-tutorial" target="_blank">
    <div class="top"><span class="name">Anthropic Interactive Tutorial</span><span class="code">S.04</span></div>
    <p class="desc">Tutorial interativo oficial da Anthropic — do zero ao avançado em prompting para Claude, com exercícios práticos em notebooks.</p>
    <span class="tag">anthropic · curso</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/x1xhlol/system-prompts-and-models-of-ai-tools" target="_blank">
    <div class="top"><span class="name">System Prompts &amp; Models of AI Tools</span><span class="code">S.05</span></div>
    <p class="desc">Os system prompts reais das principais ferramentas de IA do mercado — engenharia reversa documentada de como os melhores produtos instruem seus modelos.</p>
    <span class="tag">sistema · referência</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/openai/openai-cookbook" target="_blank">
    <div class="top"><span class="name">OpenAI Cookbook</span><span class="code">S.06</span></div>
    <p class="desc">Receitas oficiais da OpenAI — exemplos de código e técnicas de prompting aplicadas a casos reais de API.</p>
    <span class="tag">openai · receitas</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/microsoft/generative-ai-for-beginners" target="_blank">
    <div class="top"><span class="name">Generative AI for Beginners</span><span class="code">S.07</span></div>
    <p class="desc">Curso completo da Microsoft — 21+ lições estruturadas cobrindo prompting, fine-tuning, RAG e construção de aplicações generativas.</p>
    <span class="tag">microsoft · curso</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/ai-boost/awesome-prompts" target="_blank">
    <div class="top"><span class="name">Awesome Prompts (GPT Store)</span><span class="code">S.08</span></div>
    <p class="desc">Curadoria dos prompts por trás dos GPTs mais bem avaliados da GPT Store, com técnicas avançadas e papers de prompt engineering.</p>
    <span class="tag">curadoria · elite</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/promptslab/Awesome-Prompt-Engineering" target="_blank">
    <div class="top"><span class="name">Awesome Prompt Engineering</span><span class="code">S.09</span></div>
    <p class="desc">Curadoria acadêmica e prática — papers, ferramentas, datasets e tutoriais organizados por técnica.</p>
    <span class="tag">promptslab · curadoria</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/stanfordnlp/dspy" target="_blank">
    <div class="top"><span class="name">DSPy</span><span class="code">S.10</span></div>
    <p class="desc">Stanford NLP — prompting como programação: em vez de escrever prompts à mão, você declara o comportamento e o framework otimiza sistematicamente.</p>
    <span class="tag">stanford · otimização</span><span class="arrow">→</span>
  </a>
</section>

<!-- ————————————— 02 OFICIAIS ————————————— -->
<section id="s02">
  <div class="slate"><span class="num">02 / 09</span><h2>Fontes Oficiais</h2></div>
  <p class="slate-note">Direto dos fabricantes dos modelos. Sem intermediários.</p>

  <a class="card" href="https://docs.anthropic.com/en/prompt-library" target="_blank">
    <div class="top"><span class="name">Anthropic Prompt Library</span><span class="code">02.01</span></div>
    <p class="desc">Biblioteca oficial de prompts otimizados para Claude, organizados por caso de uso.</p>
    <span class="tag">anthropic</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/anthropics/anthropic-cookbook" target="_blank">
    <div class="top"><span class="name">Anthropic Cookbook</span><span class="code">02.02</span></div>
    <p class="desc">Notebooks e receitas oficiais — tool use, RAG, visão, sub-agentes e padrões avançados com Claude.</p>
    <span class="tag">anthropic</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/anthropics/courses" target="_blank">
    <div class="top"><span class="name">Anthropic Courses</span><span class="code">02.03</span></div>
    <p class="desc">Cursos completos da Anthropic: fundamentos de API, prompting real-world e avaliação de prompts.</p>
    <span class="tag">anthropic · curso</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://platform.openai.com/docs/guides/prompt-engineering" target="_blank">
    <div class="top"><span class="name">OpenAI Prompting Guide</span><span class="code">02.04</span></div>
    <p class="desc">Guia oficial de estratégias e táticas de prompting da OpenAI.</p>
    <span class="tag">openai</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://ai.google.dev/gemini-api/docs/prompting-intro" target="_blank">
    <div class="top"><span class="name">Google Prompt Design Guide</span><span class="code">02.05</span></div>
    <p class="desc">Guia oficial de design de prompts para a família Gemini.</p>
    <span class="tag">google</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/google-gemini/cookbook" target="_blank">
    <div class="top"><span class="name">Gemini Cookbook</span><span class="code">02.06</span></div>
    <p class="desc">Receitas oficiais do Google para a API Gemini — multimodal, function calling e prompting estruturado.</p>
    <span class="tag">google</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/meta-llama/llama-cookbook" target="_blank">
    <div class="top"><span class="name">Llama Cookbook</span><span class="code">02.07</span></div>
    <p class="desc">Receitas oficiais da Meta para prompting e fine-tuning da família Llama.</p>
    <span class="tag">meta</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://docs.anthropic.com/en/docs/claude-code" target="_blank">
    <div class="top"><span class="name">Claude Code Docs</span><span class="code">02.08</span></div>
    <p class="desc">Documentação oficial do agente de código da Anthropic — referência para instruções de agentes autônomos.</p>
    <span class="tag">anthropic · agentes</span><span class="arrow">→</span>
  </a>
</section>

<!-- ————————————— 03 BIBLIOTECAS ————————————— -->
<section id="s03">
  <div class="slate"><span class="num">03 / 09</span><h2>Bibliotecas &amp; Coleções</h2></div>
  <p class="slate-note">Volume com curadoria. Prompts prontos e listas-mestre do ecossistema.</p>

  <a class="card" href="https://github.com/abilzerian/LLM-Prompt-Library" target="_blank">
    <div class="top"><span class="name">LLM Prompt Library</span><span class="code">03.01</span></div>
    <p class="desc">Biblioteca testada de prompts avançados para múltiplos modelos — medicina, código, texto e análise.</p>
    <span class="tag">multi-modelo</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/mustvlad/ChatGPT-System-Prompts" target="_blank">
    <div class="top"><span class="name">ChatGPT System Prompts</span><span class="code">03.02</span></div>
    <p class="desc">Coleção organizada de system prompts por categoria — educação, entretenimento, utilidade.</p>
    <span class="tag">sistema</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/linexjlin/GPTs" target="_blank">
    <div class="top"><span class="name">GPTs (linexjlin)</span><span class="code">03.03</span></div>
    <p class="desc">Prompts vazados dos GPTs customizados mais populares — como criadores de sucesso estruturam instruções.</p>
    <span class="tag">gpt store</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/PlexPt/awesome-chatgpt-prompts-zh" target="_blank">
    <div class="top"><span class="name">Awesome ChatGPT Prompts ZH</span><span class="code">03.04</span></div>
    <p class="desc">A maior coleção do ecossistema chinês — perspectivas de prompting fora do eixo ocidental.</p>
    <span class="tag">internacional</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/Hannibal046/Awesome-LLM" target="_blank">
    <div class="top"><span class="name">Awesome LLM</span><span class="code">03.05</span></div>
    <p class="desc">Lista-mestre do universo LLM — papers, frameworks, treinamento e deployment.</p>
    <span class="tag">lista-mestre</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/Shubhamsaboo/awesome-llm-apps" target="_blank">
    <div class="top"><span class="name">Awesome LLM Apps</span><span class="code">03.06</span></div>
    <p class="desc">Aplicações LLM completas com código — RAG, agentes e integrações prontas para estudar e adaptar.</p>
    <span class="tag">aplicações</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/e2b-dev/awesome-ai-agents" target="_blank">
    <div class="top"><span class="name">Awesome AI Agents</span><span class="code">03.07</span></div>
    <p class="desc">O catálogo definitivo de agentes de IA — frameworks, produtos e projetos open-source.</p>
    <span class="tag">agentes</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/steven2358/awesome-generative-ai" target="_blank">
    <div class="top"><span class="name">Awesome Generative AI</span><span class="code">03.08</span></div>
    <p class="desc">Panorama curado de ferramentas e projetos de IA generativa — texto, imagem, áudio e vídeo.</p>
    <span class="tag">panorama</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/mahseema/awesome-ai-tools" target="_blank">
    <div class="top"><span class="name">Awesome AI Tools</span><span class="code">03.09</span></div>
    <p class="desc">Diretório amplo de ferramentas de IA por categoria de uso.</p>
    <span class="tag">diretório</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://smith.langchain.com/hub" target="_blank">
    <div class="top"><span class="name">LangChain Hub</span><span class="code">03.10</span></div>
    <p class="desc">Hub de templates de prompts versionados e testados pela comunidade LangChain — prontos para produção.</p>
    <span class="tag">templates</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/brexhq/prompt-engineering" target="_blank">
    <div class="top"><span class="name">Brex Prompt Engineering</span><span class="code">03.11</span></div>
    <p class="desc">O guia interno da Brex tornado público — como uma fintech de elite ensina prompting ao próprio time.</p>
    <span class="tag">corporativo</span><span class="arrow">→</span>
  </a>
</section>

<!-- ————————————— 04 SYSTEM PROMPTS ————————————— -->
<section id="s04">
  <div class="slate"><span class="num">04 / 09</span><h2>System Prompts Reais</h2></div>
  <p class="slate-note">Engenharia reversa documentada: como os melhores produtos instruem seus modelos.</p>

  <a class="card" href="https://github.com/asgeirtj/system_prompts_leaks" target="_blank">
    <div class="top"><span class="name">System Prompts Leaks</span><span class="code">04.01</span></div>
    <p class="desc">Arquivo de system prompts de assistentes e produtos comerciais — material de estudo de arquitetura de instruções.</p>
    <span class="tag">arquivo</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/jujumilk3/leaked-system-prompts" target="_blank">
    <div class="top"><span class="name">Leaked System Prompts</span><span class="code">04.02</span></div>
    <p class="desc">Coleção histórica e versionada de system prompts de serviços de IA ao longo do tempo.</p>
    <span class="tag">histórico</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/dontriskit/awesome-ai-system-prompts" target="_blank">
    <div class="top"><span class="name">Awesome AI System Prompts</span><span class="code">04.03</span></div>
    <p class="desc">Curadoria comentada de system prompts com análise dos padrões de design por trás de cada um.</p>
    <span class="tag">análise</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/caliber-ai-org/ai-setup" target="_blank">
    <div class="top"><span class="name">AI Setup (Caliber)</span><span class="code">04.04</span></div>
    <p class="desc">Setup e configuração de instruções para ambientes de IA com foco em segurança.</p>
    <span class="tag">setup</span><span class="arrow">→</span>
  </a>
</section>

<!-- ————————————— 05 DEV ————————————— -->
<section id="s05">
  <div class="slate"><span class="num">05 / 09</span><h2>Dev, IDEs &amp; Agentes</h2></div>
  <p class="slate-note">Regras de sistema para desenvolvimento assistido e engenharia autônoma.</p>

  <a class="card" href="https://github.com/PatrickJS/awesome-cursorrules" target="_blank">
    <div class="top"><span class="name">Awesome Cursor Rules</span><span class="code">05.01</span></div>
    <p class="desc">A maior coleção de .cursorrules — regras de sistema por stack, framework e estilo de código.</p>
    <span class="tag">cursor</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://cursor.directory" target="_blank">
    <div class="top"><span class="name">Cursor Directory</span><span class="code">05.02</span></div>
    <p class="desc">Diretório navegável de regras e MCPs para Cursor, organizado por linguagem e framework.</p>
    <span class="tag">cursor · diretório</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/cline/cline" target="_blank">
    <div class="top"><span class="name">Cline</span><span class="code">05.03</span></div>
    <p class="desc">Agente de código autônomo open-source — referência de como estruturar instruções para agentes no IDE.</p>
    <span class="tag">agente · ide</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/continuedev/continue" target="_blank">
    <div class="top"><span class="name">Continue</span><span class="code">05.04</span></div>
    <p class="desc">Assistente de código open-source com biblioteca de prompts customizáveis por projeto.</p>
    <span class="tag">ide</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/All-Hands-AI/OpenHands" target="_blank">
    <div class="top"><span class="name">OpenHands</span><span class="code">05.05</span></div>
    <p class="desc">Engenharia de software autônoma open-source — exemplos reais de orquestração de agentes de código.</p>
    <span class="tag">autônomo</span><span class="arrow">→</span>
  </a>
</section>

<!-- ————————————— 06 ENGENHARIA ————————————— -->
<section id="s06">
  <div class="slate"><span class="num">06 / 09</span><h2>Engenharia Sistemática</h2></div>
  <p class="slate-note">Prompts como software: estruturar, testar, versionar, otimizar.</p>

  <a class="card" href="https://github.com/guidance-ai/guidance" target="_blank">
    <div class="top"><span class="name">Guidance</span><span class="code">06.01</span></div>
    <p class="desc">Controle estruturado da geração — prompts com lógica, restrições e templates programáveis.</p>
    <span class="tag">estrutura</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/567-labs/instructor" target="_blank">
    <div class="top"><span class="name">Instructor</span><span class="code">06.02</span></div>
    <p class="desc">Saídas estruturadas e validadas de LLMs — o padrão de facto para extrair dados confiáveis via prompt.</p>
    <span class="tag">outputs</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/promptfoo/promptfoo" target="_blank">
    <div class="top"><span class="name">Promptfoo</span><span class="code">06.03</span></div>
    <p class="desc">Teste e avaliação de prompts — compare variações, rode benchmarks e detecte regressões antes de publicar.</p>
    <span class="tag">testes</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/microsoft/promptflow" target="_blank">
    <div class="top"><span class="name">Promptflow</span><span class="code">06.04</span></div>
    <p class="desc">Orquestração visual de fluxos de prompts da Microsoft — versionamento, comparação e deploy.</p>
    <span class="tag">orquestração</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/hegelai/prompttools" target="_blank">
    <div class="top"><span class="name">PromptTools</span><span class="code">06.05</span></div>
    <p class="desc">Ferramentas open-source para experimentação e teste A/B de prompts entre modelos.</p>
    <span class="tag">experimentos</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/promptslab/Promptify" target="_blank">
    <div class="top"><span class="name">Promptify</span><span class="code">06.06</span></div>
    <p class="desc">Framework para gerar prompts estruturados para tarefas de NLP — NER, classificação, QA.</p>
    <span class="tag">nlp</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/microsoft/semantic-kernel" target="_blank">
    <div class="top"><span class="name">Semantic Kernel</span><span class="code">06.07</span></div>
    <p class="desc">SDK da Microsoft para integrar prompts como funções compostas em aplicações enterprise.</p>
    <span class="tag">enterprise</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/langfuse/langfuse" target="_blank">
    <div class="top"><span class="name">Langfuse</span><span class="code">06.08</span></div>
    <p class="desc">Observabilidade e versionamento de prompts em produção — trace, avalie e gerencie iterações.</p>
    <span class="tag">observabilidade</span><span class="arrow">→</span>
  </a>
</section>

<!-- ————————————— 07 MULTIMODAL ————————————— -->
<section id="s07">
  <div class="slate"><span class="num">07 / 09</span><h2>Multimodal — Imagem &amp; Vídeo</h2></div>
  <p class="slate-note">Busca, descoberta e engenharia de prompts visuais.</p>

  <a class="card" href="https://prompthero.com" target="_blank">
    <div class="top"><span class="name">PromptHero</span><span class="code">07.01</span></div>
    <p class="desc">O maior buscador de prompts visuais — Midjourney, Stable Diffusion, DALL·E e Flux, com o prompt exato de cada imagem.</p>
    <span class="tag">busca</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://lexica.art" target="_blank">
    <div class="top"><span class="name">Lexica</span><span class="code">07.02</span></div>
    <p class="desc">Motor de busca de prompts para Stable Diffusion — engenharia reversa visual por semelhança.</p>
    <span class="tag">busca</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://www.krea.ai" target="_blank">
    <div class="top"><span class="name">Krea</span><span class="code">07.03</span></div>
    <p class="desc">Plataforma de geração em tempo real com base de prompts pesquisável — imagem e vídeo.</p>
    <span class="tag">geração</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://civitai.com" target="_blank">
    <div class="top"><span class="name">Civitai</span><span class="code">07.04</span></div>
    <p class="desc">O maior hub de modelos, LoRAs e prompts da comunidade de IA generativa visual.</p>
    <span class="tag">modelos</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://openart.ai" target="_blank">
    <div class="top"><span class="name">OpenArt</span><span class="code">07.05</span></div>
    <p class="desc">Biblioteca de prompts visuais e templates de geração, incluindo o Prompt Book gratuito.</p>
    <span class="tag">templates</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://docs.midjourney.com" target="_blank">
    <div class="top"><span class="name">Midjourney Docs</span><span class="code">07.06</span></div>
    <p class="desc">Documentação oficial de parâmetros e sintaxe de prompt do Midjourney — a gramática do modelo.</p>
    <span class="tag">oficial</span><span class="arrow">→</span>
  </a>
</section>

<!-- ————————————— 08 COMUNIDADES ————————————— -->
<section id="s08">
  <div class="slate"><span class="num">08 / 09</span><h2>Comunidades &amp; Marketplaces</h2></div>
  <p class="slate-note">Onde os prompts circulam, competem e são validados pelo uso.</p>

  <a class="card" href="https://flowgpt.com" target="_blank">
    <div class="top"><span class="name">FlowGPT</span><span class="code">08.01</span></div>
    <p class="desc">Comunidade de compartilhamento de prompts com ranking por votos e uso real.</p>
    <span class="tag">comunidade</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://www.aiprm.com" target="_blank">
    <div class="top"><span class="name">AIPRM</span><span class="code">08.02</span></div>
    <p class="desc">Biblioteca comunitária de prompts para marketing, SEO e vendas — integrada via extensão.</p>
    <span class="tag">marketing</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://promptbase.com" target="_blank">
    <div class="top"><span class="name">PromptBase</span><span class="code">08.03</span></div>
    <p class="desc">Marketplace de prompts — a seção gratuita revela o padrão de qualidade que o mercado paga para ter.</p>
    <span class="tag">marketplace</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://huggingface.co" target="_blank">
    <div class="top"><span class="name">Hugging Face</span><span class="code">08.04</span></div>
    <p class="desc">O hub central do open-source em IA — modelos, datasets, spaces e prompts da comunidade global.</p>
    <span class="tag">hub</span><span class="arrow">→</span>
  </a>
</section>

<!-- ————————————— 09 PESQUISA ————————————— -->
<section id="s09">
  <div class="slate"><span class="num">09 / 09</span><h2>Pesquisa &amp; Avaliação</h2></div>
  <p class="slate-note">A fronteira acadêmica: onde as técnicas de amanhã são publicadas hoje.</p>

  <a class="card" href="https://github.com/bigscience-workshop/promptsource" target="_blank">
    <div class="top"><span class="name">PromptSource</span><span class="code">09.01</span></div>
    <p class="desc">Toolkit acadêmico do BigScience — milhares de prompts de pesquisa para centenas de datasets de NLP.</p>
    <span class="tag">acadêmico</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/thunlp/PromptPapers" target="_blank">
    <div class="top"><span class="name">PromptPapers</span><span class="code">09.02</span></div>
    <p class="desc">Lista curada de papers fundamentais sobre prompt learning e tuning — a base teórica do campo.</p>
    <span class="tag">papers</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/openai/evals" target="_blank">
    <div class="top"><span class="name">OpenAI Evals</span><span class="code">09.03</span></div>
    <p class="desc">Framework oficial de avaliação — registre e rode benchmarks contra qualquer prompt ou modelo.</p>
    <span class="tag">avaliação</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/EleutherAI/lm-evaluation-harness" target="_blank">
    <div class="top"><span class="name">LM Evaluation Harness</span><span class="code">09.04</span></div>
    <p class="desc">O padrão da indústria para benchmarking de modelos de linguagem — usado nos leaderboards oficiais.</p>
    <span class="tag">benchmark</span><span class="arrow">→</span>
  </a>
  <a class="card" href="https://github.com/natnew/Awesome-Prompt-Engineering" target="_blank">
    <div class="top"><span class="name">Awesome Prompt Engineering (natnew)</span><span class="code">09.05</span></div>
    <p class="desc">Recurso educacional com glossário extenso, guias de context engineering e material de referência atualizado.</p>
    <span class="tag">educação</span><span class="arrow">→</span>
  </a>
</section>

<footer>
  <p class="sig">life — finely tuned</p>
  <p class="meta">Prompt Index · Edição 01 · Julho 2026 · @arifaandre</p>
</footer>

</div>
</body>
</html>
