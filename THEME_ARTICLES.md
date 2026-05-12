# THEME_ARTICLES.md — markdownheaven.com Article Template

*Extraherad från de 6 befintliga artiklarna. Källan för sanning vid nya artiklar.*
*Uppdaterad: 2026-05-02 — två malltyper dokumenterade.*

---

## Två malltyper

| | Type A — Guide/tool | Type B — Editorial |
|---|---|---|
| Layout | 2 kolumner: content + 280px sticky sidebar | Single column, max-width 720px |
| TOC | Sidebar-card (sticky, höger) | Inline TOC-box i artikelkroppen |
| Footer | Enkel rad: "Part of the markdownheaven.com family…" | Rik footer: brand + nav-länkar + copyright |
| Accent-linje överst | Nej | Ja — 3px `--color-accent` |
| Typisk hero | Eyebrow-pill + accent-line + H1 + hero-lead | Label (plain) + H1 + hero-sub + hero-ingress |
| Komponenter | callout, callout-note, code-block, split-demo, use-grid, stat-strip | pullquote, person-card, timeline, infobox, toc-inline |
| CTA | Sidebar-CTA + callout i body | Inline-länk i brödtext, ingen sidebar-knapp |
| Exempelartiklar | plain-text-formatted, copy-button, syntax | history, mermaid, math |

**Välj typ:** Om artikeln förklarar en teknik eller ett verktyg och leder till en produktkoppling → Type A. Om artikeln är berättande, historisk eller djupdykande utan tydlig produktkontext → Type B.

---

## Design tokens (gemensamma för båda typer)

```css
:root {
  --color-bg-base:        #ffffff;
  --color-bg-surface:     #f8fafc;
  --color-bg-elevated:    #f1f5f9;
  --color-border-subtle:  #e2e8f0;
  --color-border-default: #cbd5e1;
  --color-text-primary:   #0f172a;
  --color-text-secondary: #334155;
  --color-text-muted:     #64748b;
  --color-text-faint:     #94a3b8;
  --color-accent:         #0284c7;
  --color-accent-subtle:  #e0f2fe;
  --color-accent-hover:   #0369a1;
  --color-accent-text:    #0369a1;
  --color-warning:        #d97706;
  --color-warning-bg:     #fef3c7;
  /* Lägg till vid behov (ok/success): */
  --color-ok:             #16a34a;
  --color-ok-bg:          #dcfce7;
  --color-ok-text:        #15803d;

  --radius-sm: 4px;
  --radius-md: 6px;
  --radius-lg: 10px;

  --font-sans: 'Plus Jakarta Sans', ui-sans-serif, system-ui, -apple-system, sans-serif;
  --font-mono: 'Cascadia Code', 'Fira Code', ui-monospace, monospace;

  --text-xs:   12px;
  --text-sm:   14px;
  --text-base: 16px;
  --text-lg:   18px;
  --text-2xl:  24px;
  --text-4xl:  36px;
}
```

Google Fonts-import (alltid med båda preconnects):
```html
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap" rel="stylesheet" />
```

---

## Gemensam CSS (nav + body — identisk i båda typer)

```css
*, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }

body {
  font-family: var(--font-sans);
  font-size: var(--text-base);
  line-height: 1.7;
  color: var(--color-text-primary);
  background-color: var(--color-bg-base);
}

.nav-outer { border-bottom: 1px solid var(--color-border-subtle); }
nav {
  padding: 0 24px;
  height: 56px;
  display: flex;
  align-items: center;
  justify-content: space-between;
  max-width: 1152px;
  margin: 0 auto;
}
.nav-brand {
  font-size: var(--text-lg);
  font-weight: 700;
  color: var(--color-text-primary);
  text-decoration: none;
  letter-spacing: -0.01em;
}
.nav-brand span { color: var(--color-accent); }
nav a.nav-link {
  font-size: var(--text-sm);
  color: var(--color-text-muted);
  text-decoration: none;
}
nav a.nav-link:hover { color: var(--color-text-primary); }
```

Nav HTML (Type A — en länk):
```html
<div class="nav-outer">
  <nav>
    <a href="/" class="nav-brand">markdown<span>heaven</span></a>
    <a href="/" class="nav-link">All tools</a>
  </nav>
</div>
```

Nav HTML (Type B — flera länkar):
```html
<div class="nav-outer">
  <nav>
    <a href="/" class="nav-brand">markdown<span>heaven</span></a>
    <div class="nav-links" style="display:flex;gap:24px;">
      <a href="/plain-text-formatted.html" class="nav-link">Plain text formatted</a>
      <a href="#" class="nav-link">Tools</a>
    </div>
  </nav>
</div>
```

---

## TYPE A — Guide/tool article

### Struktur

```
accent-line (ej i Type A)
nav-outer / nav
page-wrapper
  hero
    hero-eyebrow (pill badge)
    hero-accent-line (48×3px)
    h1
    hero-lead
    [stat-strip — valfri]
  article (2-kolumn grid)
    content  [artikelkropp]
    sidebar  [TOC + CTA]
footer (enkel)
```

### Layout CSS (Type A)

```css
.page-wrapper { max-width: 1152px; margin: 0 auto; padding: 0 24px; }

.hero {
  padding: 72px 0 56px;
  border-bottom: 1px solid var(--color-border-subtle);
}
.hero-eyebrow {
  display: inline-block;
  font-size: var(--text-xs);
  font-weight: 600;
  letter-spacing: 0.08em;
  text-transform: uppercase;
  color: var(--color-accent-text);
  background: var(--color-accent-subtle);
  padding: 4px 10px;
  border-radius: var(--radius-sm);
  margin-bottom: 20px;
}
.hero-accent-line {
  width: 48px; height: 3px;
  background: var(--color-accent);
  border-radius: 2px;
  margin-bottom: 20px;
}
.hero h1 {
  font-size: var(--text-4xl);
  font-weight: 700;
  line-height: 1.1;
  letter-spacing: -0.02em;
  color: var(--color-text-primary);
  max-width: 760px;
  margin-bottom: 20px;
}
.hero-lead {
  font-size: var(--text-lg);
  line-height: 1.6;
  color: var(--color-text-secondary);
  max-width: 640px;
  margin-bottom: 32px;
}

.article {
  display: grid;
  grid-template-columns: 1fr 280px;
  gap: 64px;
  padding: 64px 0 96px;
  align-items: start;
}
@media (max-width: 900px) {
  .article { grid-template-columns: 1fr; gap: 48px; }
  .sidebar { display: none; }
}

.content h2 {
  font-size: var(--text-2xl); font-weight: 700;
  color: var(--color-text-primary);
  margin-top: 56px; margin-bottom: 16px;
  letter-spacing: -0.01em;
}
.content h2:first-child { margin-top: 0; }
.content h3 {
  font-size: var(--text-lg); font-weight: 600;
  color: var(--color-text-primary);
  margin-top: 36px; margin-bottom: 12px;
}
.content p { color: var(--color-text-secondary); margin-bottom: 20px; }
.content ul, .content ol { padding-left: 24px; margin-bottom: 20px; }
.content li { color: var(--color-text-secondary); margin-bottom: 8px; }
.content a { color: var(--color-accent-text); text-decoration: none; }
.content a:hover { text-decoration: underline; }

.sidebar { position: sticky; top: 32px; }
.sidebar-card {
  background: var(--color-bg-surface);
  border: 1px solid var(--color-border-subtle);
  border-radius: var(--radius-md);
  padding: 20px;
}
.sidebar-card h4 {
  font-size: var(--text-xs); font-weight: 600;
  letter-spacing: 0.08em; text-transform: uppercase;
  color: var(--color-text-muted); margin-bottom: 14px;
}
.sidebar-card ol { list-style: none; padding: 0; }
.sidebar-card li { margin-bottom: 0; }
.sidebar-card li a {
  display: block; font-size: var(--text-sm);
  color: var(--color-text-secondary); text-decoration: none;
  padding: 6px 0; border-bottom: 1px solid var(--color-border-subtle);
}
.sidebar-card li:last-child a { border-bottom: none; }
.sidebar-card li a:hover { color: var(--color-accent); }
.sidebar-cta {
  margin-top: 16px; background: var(--color-accent); color: #fff;
  font-size: var(--text-sm); font-weight: 600; text-align: center;
  padding: 10px 16px; border-radius: var(--radius-sm);
  text-decoration: none; display: block;
}
.sidebar-cta:hover { background: var(--color-accent-hover); }

footer {
  border-top: 1px solid var(--color-border-subtle);
  padding: 32px 24px; text-align: center;
  font-size: var(--text-sm); color: var(--color-text-muted);
}
footer a { color: var(--color-accent-text); text-decoration: none; }
footer a:hover { text-decoration: underline; }
```

### Type A HTML-boilerplate

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>[Artikel] — markdownheaven.com</title>
  <meta name="description" content="[~150 tecken]" />
  <meta property="og:title" content="[Kort OG-titel]" />
  <meta property="og:description" content="[OG-beskrivning]" />
  <meta property="og:type" content="article" />
  <!-- Google Fonts + tokens + layout CSS + artikel-specifika komponenter -->
</head>
<body>

  <div class="nav-outer"><nav>…</nav></div>

  <div class="page-wrapper">
    <section class="hero">
      <span class="hero-eyebrow">[Kategori]</span>
      <div class="hero-accent-line"></div>
      <h1>[Rubrik.<br>[Radbryt vid behov.]</h1>
      <p class="hero-lead">[2–3 meningar.]</p>
      <!-- valfri stat-strip här -->
    </section>

    <div class="article">
      <div class="content">
        <h2 id="[slug]">[Avsnitt]</h2>
        <p>…</p>
      </div>
      <aside class="sidebar">
        <div class="sidebar-card">
          <h4>On this page</h4>
          <ol>
            <li><a href="#[slug]">[Avsnitt]</a></li>
          </ol>
          <a href="[produkt-url]" class="sidebar-cta">Try [produkt] →</a>
        </div>
      </aside>
    </div>
  </div>

  <footer>
    <p>Part of the <a href="/">markdownheaven.com</a> family of Markdown tools.</p>
  </footer>

</body>
</html>
```

---

## TYPE B — Editorial article

### Struktur

```
accent-line (3px, --color-accent, full bredd)
nav-outer / nav
hero (max-width 1152px, vänsterjusterad)
  hero-label (plain text, ej pill)
  h1
  hero-sub (muted, en mening)
  hero-ingress (secondary, border-top)
article-outer / article (max-width 720px, centrerad)
  [intro-stycken utan h2]
  [pullquote]
  [toc-box]
  h2 (med border-top)
  [komponenter efter behov]
footer-outer (rik: brand + nav-länkar + copyright)
```

### Layout CSS (Type B)

```css
/* Accent-linje överst */
.accent-line { height: 3px; background: var(--color-accent); width: 100%; }

/* Hero */
.hero {
  padding: 72px 24px 56px;
  max-width: 1152px;
  margin: 0 auto;
}
.hero-label {
  font-size: var(--text-xs); font-weight: 600;
  letter-spacing: 0.08em; text-transform: uppercase;
  color: var(--color-accent-text); margin-bottom: 16px;
}
.hero h1 {
  font-size: var(--text-4xl); font-weight: 700;
  line-height: 1.15; letter-spacing: -0.02em;
  color: var(--color-text-primary);
  max-width: 720px; margin-bottom: 20px;
}
.hero-sub {
  font-size: var(--text-lg); color: var(--color-text-muted);
  max-width: 640px; line-height: 1.6;
}
.hero-ingress {
  margin-top: 20px; font-size: var(--text-base);
  color: var(--color-text-secondary);
  max-width: 640px; line-height: 1.75;
  padding-top: 20px;
  border-top: 1px solid var(--color-border-subtle);
}

/* Artikelkropp */
.article-outer { padding: 0 24px 96px; }
.article { max-width: 720px; margin: 0 auto; }

.article h2 {
  font-size: var(--text-2xl); font-weight: 700;
  letter-spacing: -0.01em; color: var(--color-text-primary);
  margin-top: 56px; margin-bottom: 16px;
  padding-top: 8px;
  border-top: 2px solid var(--color-border-subtle); /* Type B-specifikt */
}
.article h3 {
  font-size: var(--text-lg); font-weight: 600;
  color: var(--color-text-primary);
  margin-top: 36px; margin-bottom: 12px;
}
.article p { color: var(--color-text-secondary); margin-bottom: 20px; }
.article a {
  color: var(--color-accent-text);
  text-decoration: underline;
  text-decoration-thickness: 1px;
  text-underline-offset: 2px;
}
.article a:hover { color: var(--color-accent-hover); }

/* Rik footer */
.footer-outer {
  border-top: 1px solid var(--color-border-subtle);
  background: var(--color-bg-surface);
  padding: 40px 24px;
}
.footer-inner {
  max-width: 1152px; margin: 0 auto;
  display: flex; justify-content: space-between;
  align-items: center; flex-wrap: wrap; gap: 16px;
}
.footer-brand {
  font-size: var(--text-sm); font-weight: 700;
  color: var(--color-text-primary); text-decoration: none;
  letter-spacing: -0.01em;
}
.footer-brand span { color: var(--color-accent); }
.footer-links { display: flex; gap: 20px; flex-wrap: wrap; }
.footer-links a { font-size: var(--text-sm); color: var(--color-text-muted); text-decoration: none; }
.footer-links a:hover { color: var(--color-text-primary); }
.footer-copy { font-size: var(--text-xs); color: var(--color-text-faint); }

@media (max-width: 640px) {
  .hero h1 { font-size: 28px; }
  .hero { padding: 48px 20px 40px; }
  .article-outer { padding: 0 20px 64px; }
  nav { padding: 0 20px; }
}
```

### Type B HTML-boilerplate

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>[Artikel] — markdownheaven.com</title>
  <meta name="description" content="[~150 tecken]" />
  <meta property="og:title" content="[Kort OG-titel]" />
  <meta property="og:description" content="[OG-beskrivning]" />
  <meta property="og:type" content="article" />
  <!-- Google Fonts + tokens + layout CSS + artikel-specifika komponenter -->
</head>
<body>

  <div class="accent-line"></div>

  <div class="nav-outer"><nav>…(med nav-links div)…</nav></div>

  <div style="background: var(--color-bg-base);">
    <div class="hero">
      <p class="hero-label">[Kategori — t.ex. "Origin story" / "Concept"]</p>
      <h1>[Rubrik]</h1>
      <p class="hero-sub">[En mening, muted — beskriver vad artikeln handlar om.]</p>
      <p class="hero-ingress">[3–4 meningar, kärnan för den som inte läser allt.]</p>
    </div>
  </div>

  <div class="article-outer">
    <article class="article">
      <p>[Intro-stycken utan h2 — sätt kontexten.]</p>

      <!-- Pullquote om du har ett bra citat tidigt -->

      <!-- Inline TOC -->
      <nav class="toc" aria-label="Table of contents">
        <p class="toc-label">In this article</p>
        <ol class="toc-list">
          <li><a href="#[slug]">[Avsnitt]</a></li>
        </ol>
      </nav>

      <h2 id="[slug]">[Avsnitt]</h2>
      <p>…</p>

    </article>
  </div>

  <footer class="footer-outer">
    <div class="footer-inner">
      <a href="/" class="footer-brand">markdown<span>heaven</span></a>
      <div class="footer-links">
        <a href="/plain-text-formatted.html">Plain text formatted</a>
        <a href="/history.html">History</a>
      </div>
      <span class="footer-copy">markdownheaven.com</span>
    </div>
  </footer>

</body>
</html>
```

---

## Komponenter — gemensamma (båda typer)

### Callout — blå (insikt eller tips)

```css
.callout {
  border-left: 3px solid var(--color-accent);
  background: var(--color-accent-subtle);
  border-radius: 0 var(--radius-md) var(--radius-md) 0;
  padding: 16px 20px; margin: 28px 0;
}
.callout p { color: var(--color-text-secondary); margin: 0; font-size: var(--text-sm); }
.callout strong { color: var(--color-accent-text); }
```

```html
<div class="callout"><p><strong>Insikten:</strong> …</p></div>
```

### Callout-note — amber (varning eller undantag)

```css
.callout-note {
  border-left: 3px solid var(--color-warning);
  background: var(--color-warning-bg);
  border-radius: 0 var(--radius-md) var(--radius-md) 0;
  padding: 16px 20px; margin: 28px 0;
}
.callout-note p { color: var(--color-text-secondary); margin: 0; font-size: var(--text-sm); }
```

### Code block (labeled)

```css
.code-block { background: var(--color-bg-surface); border: 1px solid var(--color-border-subtle); border-radius: var(--radius-md); overflow: hidden; margin: 28px 0; }
.code-block-label { font-size: var(--text-xs); font-weight: 600; letter-spacing: 0.06em; text-transform: uppercase; color: var(--color-text-muted); background: var(--color-bg-elevated); border-bottom: 1px solid var(--color-border-subtle); padding: 8px 16px; }
.code-block pre { font-family: var(--font-mono); font-size: 13px; line-height: 1.7; color: var(--color-text-primary); padding: 20px; white-space: pre-wrap; word-break: break-word; }
```

---

## Komponenter — Type B exklusiva

### Pullquote

```css
.pullquote {
  border-left: 3px solid var(--color-accent);
  background: var(--color-accent-subtle);
  padding: 20px 24px; margin: 32px 0;
  border-radius: 0 var(--radius-md) var(--radius-md) 0;
}
.pullquote p { color: var(--color-text-primary); font-style: italic; margin-bottom: 8px; }
.pullquote p:last-child { margin-bottom: 0; }
.pullquote cite { font-size: var(--text-sm); color: var(--color-text-muted); font-style: normal; }
```

```html
<div class="pullquote">
  <p>"Citattexten här."</p>
  <cite>— Namn, kontext, år</cite>
</div>
```

### Person card

```css
.person-card { background: var(--color-bg-surface); border: 1px solid var(--color-border-subtle); border-radius: var(--radius-md); padding: 20px 24px; margin: 24px 0; }
.person-card .person-name { font-size: var(--text-base); font-weight: 600; color: var(--color-text-primary); margin-bottom: 4px; }
.person-card .person-role { font-size: var(--text-sm); color: var(--color-accent-text); font-weight: 500; margin-bottom: 10px; }
.person-card p { font-size: var(--text-sm); color: var(--color-text-muted); margin-bottom: 0; }
```

```html
<div class="person-card">
  <div class="person-name">Namn</div>
  <div class="person-role">Roll — Organisation</div>
  <p>Beskrivning. Kan innehålla länk.</p>
</div>
```

### Timeline

```css
.timeline { margin: 32px 0; position: relative; }
.timeline::before { content: ''; position: absolute; left: 0; top: 8px; bottom: 8px; width: 2px; background: var(--color-border-default); }
.timeline-item { padding-left: 28px; margin-bottom: 28px; position: relative; }
.timeline-item::before { content: ''; position: absolute; left: -4px; top: 8px; width: 10px; height: 10px; border-radius: 50%; background: var(--color-accent); border: 2px solid var(--color-bg-base); }
.timeline-year { font-size: var(--text-xs); font-weight: 700; letter-spacing: 0.06em; text-transform: uppercase; color: var(--color-accent-text); margin-bottom: 4px; }
.timeline-title { font-size: var(--text-base); font-weight: 600; color: var(--color-text-primary); margin-bottom: 6px; }
.timeline-body { font-size: var(--text-sm); color: var(--color-text-muted); line-height: 1.6; }
```

```html
<div class="timeline">
  <div class="timeline-item">
    <div class="timeline-year">2004</div>
    <div class="timeline-title">Händelsens namn</div>
    <div class="timeline-body">Beskrivning av vad som hände.</div>
  </div>
</div>
```

### Infobox (faktaruta med lista)

```css
.infobox { background: var(--color-bg-surface); border: 1px solid var(--color-border-default); border-radius: var(--radius-md); padding: 28px 32px; margin: 40px 0; }
.infobox h3 { margin-top: 0; border: none; }
.infobox ul { list-style: none; padding: 0; margin: 0; }
.infobox li { padding: 12px 0; border-bottom: 1px solid var(--color-border-subtle); font-size: var(--text-sm); color: var(--color-text-secondary); }
.infobox li:last-child { border-bottom: none; }
.infobox li strong { display: block; color: var(--color-text-primary); font-weight: 600; margin-bottom: 2px; }
```

### Inline TOC (Type B)

```css
.toc { background: var(--color-bg-surface); border: 1px solid var(--color-border-subtle); border-radius: var(--radius-md); padding: 20px 24px; margin: 32px 0 0; }
.toc-label { font-size: var(--text-xs); font-weight: 600; letter-spacing: 0.07em; text-transform: uppercase; color: var(--color-text-muted); margin-bottom: 12px; }
.toc-list { list-style: none; padding: 0; margin: 0; counter-reset: toc; }
.toc-list li { counter-increment: toc; display: flex; align-items: baseline; gap: 10px; padding: 5px 0; border-bottom: 1px solid var(--color-border-subtle); font-size: var(--text-sm); }
.toc-list li:last-child { border-bottom: none; }
.toc-list li::before { content: counter(toc); font-size: var(--text-xs); font-weight: 700; color: var(--color-accent-text); min-width: 16px; }
.toc-list a { color: var(--color-text-secondary); text-decoration: none; }
.toc-list a:hover { color: var(--color-accent); text-decoration: underline; }
```

---

## Komponenter — Type A exklusiva

### Use-grid (när / när inte)

```css
.use-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 16px; margin: 28px 0; }
@media (max-width: 680px) { .use-grid { grid-template-columns: 1fr; } }
.use-card { border: 1px solid var(--color-border-subtle); border-radius: var(--radius-md); padding: 18px 20px; }
.use-card h4 { font-size: var(--text-sm); font-weight: 700; margin-bottom: 10px; color: var(--color-text-primary); }
.use-card ul { list-style: none; padding: 0; margin: 0; }
.use-card li { font-size: var(--text-sm); color: var(--color-text-secondary); padding: 5px 0; border-bottom: 1px solid var(--color-border-subtle); display: flex; align-items: flex-start; gap: 8px; }
.use-card li:last-child { border-bottom: none; }
.use-card li::before { content: ''; display: inline-block; width: 6px; height: 6px; border-radius: 50%; margin-top: 7px; flex-shrink: 0; }
/* Punktfärger per kort: .use-card.yes li::before { background: var(--color-accent); } */
```

### Stat strip (hero-statistik)

```css
.stat-strip { display: flex; gap: 32px; flex-wrap: wrap; }
.stat-item { display: flex; flex-direction: column; gap: 2px; }
.stat-value { font-family: var(--font-mono); font-size: var(--text-2xl); font-weight: 700; color: var(--color-accent); letter-spacing: -0.02em; }
.stat-label { font-size: var(--text-xs); color: var(--color-text-muted); font-weight: 500; text-transform: uppercase; letter-spacing: 0.06em; }
```

### Split-demo (A vs B jämförelse)

Används för att visa två versioner av samma innehåll sida vid sida. Anpassa kolumnlabelns bakgrundsfärg per artikel (muted/elevated, accent-subtle, ok-bg).

```css
.split { background: var(--color-bg-surface); border: 1px solid var(--color-border-subtle); border-radius: var(--radius-md); overflow: hidden; margin: 28px 0; }
.split-header { display: grid; grid-template-columns: 1fr 1fr; border-bottom: 1px solid var(--color-border-subtle); }
.split-label { font-size: var(--text-xs); font-weight: 600; letter-spacing: 0.06em; text-transform: uppercase; padding: 8px 16px; }
.split-body { display: grid; grid-template-columns: 1fr 1fr; }
.split-cell { padding: 16px; border-right: 1px solid var(--color-border-subtle); }
.split-cell:last-child { border-right: none; }
.split-cell pre { font-family: var(--font-mono); font-size: 13px; line-height: 1.7; color: var(--color-text-primary); white-space: pre-wrap; word-break: break-word; }
.split-footer { display: grid; grid-template-columns: 1fr 1fr; border-top: 1px solid var(--color-border-subtle); }
.split-footnote { font-size: var(--text-xs); padding: 8px 16px; font-weight: 600; color: var(--color-text-muted); }
```

### Data table

```css
.data-table { width: 100%; border-collapse: collapse; margin: 24px 0; font-size: var(--text-sm); }
.data-table thead tr { background: var(--color-bg-elevated); }
.data-table th { text-align: left; padding: 10px 14px; font-weight: 600; color: var(--color-text-primary); border-bottom: 2px solid var(--color-border-default); }
.data-table td { padding: 10px 14px; border-bottom: 1px solid var(--color-border-subtle); color: var(--color-text-secondary); vertical-align: top; }
.data-table td code { font-family: var(--font-mono); font-size: 12px; background: var(--color-bg-elevated); padding: 2px 6px; border-radius: var(--radius-sm); color: var(--color-text-primary); }
.data-table tbody tr:last-child td { border-bottom: none; }
.data-table tbody tr:hover td { background: var(--color-bg-surface); }
```

---

## CTA-mappning

| Artikel handlar om | Sidebar/body CTA pekar på |
|---|---|
| Markdown → Word-konvertering | markdownword.com |
| Systemprompt-format / token-effektivitet | promptcorrector.com |
| Klippbords-/paste-workflow | clipboardformatter.com |
| Historik / koncept / förklaring (Type B) | Länk i brödtext till relevant artikel — ingen CTA-knapp |

---

## Innehållskonventioner

**Ton.** Förklara mekanismen, inte bara regeln. Varje artikel svarar på "varför funkar det här?" inte bara "gör så här." Läsaren är utvecklare eller power user — bekväm med kod, inte nödvändigtvis med publiceringsverktyg.

**Längd.** Typiskt 6–8 `h2`-sektioner. 1–4 stycken per sektion. Total prosa ~800–1 500 ord.

**Hero-rubrik (Type A).** Kort, konkret, ofta 2-rad: `Första raden.<br>Andra raden.` Max ~8 ord totalt.

**Hero-label (Type B).** 2–3 ord, gemener i HTML men uppercase i CSS (t.ex. "Origin story", "Concept", "Guide").

**Inline code.** Använd `<code>` för syntaxtecken, elementnamn och filnamn. Inte för att styla godtycklig text.

**Inga illustrationer.** Inga stockfoton. Visuellt intresse skapas av komponenter (split-demo, timeline, person-card).

**Footer-text (Type A).** Alltid exakt: `Part of the <a href="/">markdownheaven.com</a> family of Markdown tools.`

**Footer (Type B).** Rik footer med brand + nav-länkrad + copyright-text `markdownheaven.com`.

**Publiceringsdatum.** Varje artikel ska ha datum på tre ställen:
1. `<meta property="article:published_time" content="YYYY-MM-DDT00:00:00Z" />` i `<head>` (efter `og:type`-raden).
2. CSS-klass `.hero-date { font-size: var(--text-xs); color: var(--color-text-faint); letter-spacing: 0.04em; margin-bottom: 16px; }` — lägg direkt efter `.hero-label { … }` (Type B) eller `.hero-eyebrow { … }` (Type A).
3. HTML-element direkt efter `<p class="hero-label">` (Type B) eller `<span class="hero-eyebrow">` (Type A): `<p class="hero-date"><time datetime="YYYY-MM-DD">D Month YYYY</time></p>`
