# markdownheaven.com — STATUS

*Last updated: 2026-05-10*

---

## Vad är det?

Samlande hub / landningssida för alla Markdown-produkter i rmp-software-familjen:
showmarkdown, markdownword, MarkdownPerfect m.fl.

Ingen egen intäkt — marknadsföring och korsförsäljning.

## Kärnbudskap — CENTRALT

**Markdown + AI är det bärande temat för markdownheaven.**

Markdown är formatet som kopplar ihop människa och AI: strukturerade prompts in, strukturerade svar ut. Det är token-effektivt, portabelt, och det enda format som fungerar lika bra som input till en språkmodell som output från den. Alla artiklar, produktbeskrivningar och landsidor på markdownheaven ska spegla detta — inte bara Markdown som skrivformat, utan Markdown som infrastruktur för AI-kommunikation.

Konkret: varje artikel ska ha en naturlig koppling till antingen (a) hur Markdown används med AI, eller (b) hur produkterna i rmp-familjen hjälper användare att arbeta med Markdown i AI-sammanhang.

---

## Status

**Fas:** Lokal utveckling — 13 HTML-sidor klara, shared nav/footer på plats, ej deployad

| Fält | Värde |
|---|---|
| Domän | markdownheaven.com (köpt 2026-04-25) |
| Azure SWA | Ej skapad |
| Design | `index.html` är produktionsversionen (proposal C promoverad) |
| Kod | Alla sidor klara lokalt. `site.js` + `site.css` hanterar delad nav/footer. |
| Nav/footer | Standardiserat 2026-05-10 — alla 13 sidor använder `<div id="site-nav">` + `<div id="site-footer">` + `site.css` |

---

## Innehåll / sidor (planerade)

| Sida | Syfte | Status |
|---|---|---|
| `/` | Startsida — hub för alla Markdown-produkter | Ej påbörjad |
| `/plain-text-formatted` | Artikel: vad är "Plain text formatted (AI-ready)"? | Utkast klart 2026-05-01 |
| `/history` | Artikel: Markdowns historia — ursprung, personer, anekdoter, CommonMark | Utkast klart 2026-05-02 |
| `/copy-button-vs-selection` | Artikel: Varför copy-knappen och Ctrl+C ger olika text från chatbotar | Utkast klart 2026-05-02 |
| `/jupyter-notebooks` | Artikel: Jupyter notebooks och Markdown — formatet som är AI-nativt by design | Utkast klart 2026-05-02 |
| `/title-vs-headings` | Artikel: H1 som titel eller rubrik — vad är rätt? Kopplar till AI-output och markdownwords "firstH1AsTitle"-funktion | Råutkast klart 2026-05-03 |
| `/math` | Artikel: Math i Markdown — LaTeX, KaTeX, AI-genererade ekvationer | HTML-fil klar (okänt datum) |
| `/mermaid` | Artikel: Mermaid-diagram — formatet AI ritar i | HTML-fil klar (okänt datum) |
| `/syntax-highlighting` | Artikel: Syntaxmarkering i Markdown — hur det fungerar och varför det spelar roll | HTML-fil klar (okänt datum) |
| `/guides` | Guideslistning — 2 featured + 6 i grid | Klar 2026-05-09 |
| `/which-markdown-flavor-for-ai` | Artikel: Vilket Markdown-dialekt passar bäst med AI? (GFM) | HTML klar |
| `/about` | Om sajten | HTML klar |
| `/privacy` | Integritetspolicy | HTML klar |

---

## Needs attention

- Azure SWA: ej skapad — nästa steg inför deploy
- markdownword-kort i hero: bekräfta pris ("from $19") och länk till webappen ("Try it free →")
- GA4: platshållaren `G-XXXXXXXXXX` måste bytas ut mot riktigt mätnings-ID
- Custom domain i SWA efter deploy
- Byggs/lanseras fullt ut när minst 2–3 Markdown-produkter är live

---

## SESSION_LOG

### 2026-05-02
- Historiesida skapad: `history.html` — Markdowns ursprung, John Gruber, Aaron Swartz, Jeff Atwood, John MacFarlane, CommonMark-konflikten, Wikipedia-länkar
- Artikel skapad: `copy-button-vs-selection.html` — varför copy-knappen ger raw Markdown och Ctrl+C ger renderad text; destination-guide + Word-problemet
- Artikel skapad: `jupyter-notebooks.html` — Jupyter/.ipynb som AI-nativt format; JSON-strukturen, Markdown-celler, LLM-generering, seams i formatet

### 2026-05-10
- Nav/footer standardiserat i samtliga 13 HTML-sidor
- `site.css` lades till i guides.html, about.html, privacy.html (saknades)
- Borttaget: dubbla hardkodade nav-block i alla artikelsidor
- Borttaget: gamla hardkodade `<footer>` i history.html, math.html, jupyter-notebooks.html, which-markdown-flavor-for-ai.html, mermaid.html — ersatta med `<div id="site-footer">`
- Footer-wordmark gjord distinkt från nav-wordmark (ny klass `mh-footer-brand`, 14px/600)

### 2026-05-09
- `index-proposal.html` uppdaterad: hero-höger ersatt med featured markdownword-produktkort (betald) + 2 artikelteaser; guidesektionen neddragen till 3 artiklar + "More guides →"-länk
- `guides.html` skapad: sidohuvud, 2 featured-artiklar (mermaid + plain-text-formatted), 6 artiklar i grid

### 2026-05-03
- Artikelutkast: `title-vs-headings.md` — H1 som titel vs rubrik, AI-koppling, markdownword firstH1AsTitle. Behöver redigering + HTML-konvertering.

### 2026-05-01
- Mapp skapad under rmp-software/
- Första innehållssida utkast: `plain-text-formatted.html` (research + artikeltext klar)
