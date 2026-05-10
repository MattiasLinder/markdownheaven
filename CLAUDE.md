# CLAUDE.md — markdownheaven.com

## Innan du börjar en ny artikel

Läs `THEME_ARTICLES.md` i den här mappen. Det är den fullständiga stilguiden — tokens, layout-CSS, alla komponenter, och HTML-boilerplates för båda malltyperna. Kopiera därifrån; introducera inga egna CSS-värden.

---

## Välj malltyp

**Type A — Guide/tool article**
Teknisk förklaring som leder till ett konkret verktyg. 2-kolumnslayout med sticky sidebar-TOC. Avslutas med sidebar-CTA och en blå callout som pekar på en produkt.

Exempel: plain-text-formatted.html, copy-button-vs-selection.html, syntax-highlighting.html, mermaid.html, math.html

**Type B — Editorial article**
Berättande eller djupdykande — historik, koncept, analys. Single-column, max-width 720px. 3px accent-linje överst. Inline TOC i artikelkroppen. Rik footer. CTA som inline-länk i brödtexten, ingen sidebar.

Exempel: history.html

---

## Regler som inte får brytas

- Inga nya CSS-färger eller typsnitt — bara tokens från `:root`-blocket i THEME_ARTICLES.md.
- Inga illustrationer, inga stockfoton.
- `<code>` används för syntaxtecken och elementnamn — inte för att styla godtycklig text.
- Alla `h2` ska ha ett `id`-attribut för ankarlänkar.
- Type A: alla `h2` utan `border-top` (margin-top räcker).
- Type B: alla `h2` med `border-top: 2px solid var(--color-border-subtle)`.
- Inkludera bara komponenternas CSS som faktiskt används i artikeln.

---

## CTA-mappning

| Ämne | CTA pekar på |
|---|---|
| Markdown → Word | markdownword.com |
| Systemprompt / token-format | promptcorrector.com |
| Klippbords-/paste-workflow | clipboardformatter.com |
| Historik / koncept (Type B) | Inline-länk i brödtext, ingen CTA-knapp |

---

## Befintliga filer

| Fil | Typ | Ämne |
|---|---|---|
| plain-text-formatted.html | A | Plain text formatted (AI-ready) för systemprompts |
| copy-button-vs-selection.html | A | Skillnaden mellan copy-knapp och markera+kopiera |
| syntax-highlighting.html | A | Syntax highlighting i kodblockar |
| mermaid.html | B | Mermaid-diagram i Markdown |
| math.html | B | LaTeX/matematik i Markdown |
| history.html | B | Markdowns historia — Gruber, Swartz, CommonMark |
| safe-markdown-subset.md | — | Referens: säker Markdown-delmängd |

---

## Produktekosystem (för CTA-text och kontext)

- **markdownword.com** — Markdown-till-Word-konverterare (webb + Windows-app)
- **promptcorrector.com** — Konverterar Markdown/HTML/rik text till plain text formatted (AI-ready)
- **clipboardformatter.com** — Windows tray-app som transformerar klippbordsinnehåll (kommer snart)
- **markdownheaven.com** — Paraply-sajt som samlar alla verktyg och artikel

---

*Stilguide: THEME_ARTICLES.md — läs den först.*
