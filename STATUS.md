# markdownheaven.com — STATUS

*Last updated: 2026-05-09*

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

**Fas:** Design proposal — `index-proposal.html` och `guides.html` klara för granskning

| Fält | Värde |
|---|---|
| Domän | markdownheaven.com (köpt 2026-04-25) |
| Azure SWA | Ej skapad |
| Design | Proposal C klar (`index-proposal.html`) |
| Kod | Proposal-filer klara — ej produktionssatt |

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

---

## Needs attention

- `index-proposal.html` → `index.html`: byt filnamn + justera interna länkar när proposal godkänns
- markdownword-kort i hero: bekräfta pris ("from $19") och länk till webappen ("Try it free →")
- Azure SWA: ej skapad ännu
- Byggs fullt ut när minst 2–3 Markdown-produkter är lanserade

---

## SESSION_LOG

### 2026-05-02
- Historiesida skapad: `history.html` — Markdowns ursprung, John Gruber, Aaron Swartz, Jeff Atwood, John MacFarlane, CommonMark-konflikten, Wikipedia-länkar
- Artikel skapad: `copy-button-vs-selection.html` — varför copy-knappen ger raw Markdown och Ctrl+C ger renderad text; destination-guide + Word-problemet
- Artikel skapad: `jupyter-notebooks.html` — Jupyter/.ipynb som AI-nativt format; JSON-strukturen, Markdown-celler, LLM-generering, seams i formatet

### 2026-05-09
- `index-proposal.html` uppdaterad: hero-höger ersatt med featured markdownword-produktkort (betald) + 2 artikelteaser; guidesektionen neddragen till 3 artiklar + "More guides →"-länk
- `guides.html` skapad: sidohuvud, 2 featured-artiklar (mermaid + plain-text-formatted), 6 artiklar i grid

### 2026-05-03
- Artikelutkast: `title-vs-headings.md` — H1 som titel vs rubrik, AI-koppling, markdownword firstH1AsTitle. Behöver redigering + HTML-konvertering.

### 2026-05-01
- Mapp skapad under rmp-software/
- Första innehållssida utkast: `plain-text-formatted.html` (research + artikeltext klar)
