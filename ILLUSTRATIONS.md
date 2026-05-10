# ILLUSTRATIONS.md — markdownheaven.com

*Skapad: 2026-05-09*
*Källa för sanning vid alla illustrationer på markdownheaven.com.*

---

## Syfte

Varje artikel på markdownheaven.com har en illustration som används på två ställen:

1. **Artikelkort på startsidan** — thumbnail, beskärs med `object-fit: cover`, ca 280×160 px
2. **Artikelns hero** — header-bild, full bredd, ca 800×300 px

Samma fil används på båda ställena. Ingen separat thumbnail behövs.

---

## Filstruktur och namngivning

```
markdownheaven/
  illustrations/
    plain-text-formatted.jpg
    copy-button-vs-selection.jpg
    history.jpg
    jupyter-notebooks.jpg
    title-vs-headings.jpg
```

**Regel:** Filnamnet matchar exakt motsvarande HTML-fil, men med `.jpg` (eller `.png` vid transparens).

**Format:** JPG vid hög kvalitet (80–85 %) om bakgrunden är solid. PNG om transparens behövs.

**Storlek:** Spara i full 1200×800 px (3:2). CSS hanterar beskärning.

---

## Visuell stil

Illustrationerna skapas med AI-bildgenerering (Gemini) och följer en etablerad stil:

- **Flat editorial vector illustration** — geometriska former, platta ytor, inget 3D
- **En eller två mänskliga figurer** som interagerar med symboler och former
- **Markdown-symboler** (`#`, `*`, `_`, `**`) som visuella element — fysiska objekt i scenen
- **Generöst negativt utrymme** — luftig komposition, inte trång
- **Asymmetrisk balans** — inte symmetrisk/centrerad

### Färgpalett — strikt

| Färg | Värde | Användning |
|---|---|---|
| Bakgrund | `#fef9f4` | Varm cream |
| Sky blue primär | `#0284c7` | Dominant accent |
| Sky blue ljus | `#bae6fd`, `#e0f2fe` | Fyllnadsfärger |
| Mörk | `#0f172a` | Strukturelement, rubriker |
| Slate | `#94a3b8`, `#cbd5e1` | Sekundära element |
| **Korall accent** | `#e0603c` | **Syns tydligt på minst en figurs kläder** |

Korallen är markdownheavens sekundärfärg — den används inte på produktsidorna. Den ska synas omedelbart, inte vara en subtil detalj.

### Vad som inte ska finnas

- Varumärkesnamn eller text i bilden
- UI-skärmbilder eller fönster (för tekniska, för ömtåliga)
- Stockfoto-känsla
- Mer än 2–3 mänskliga figurer
- Gradients (hårt, inte diffust ljus)
- **Konturer/streck runt objekt** — inga svarta eller mörka linjer som ramar in former eller figurer. Fyllnadsfärg räcker. Stilren flat design, inte "sticker-art" eller "outline illustration".

---

## Etablerad stil — referensbild

**Fil:** `illustrations/plain-text-formatted.jpg`
**Skapad:** 2026-05-09 med Gemini

Kompositionen som satte stilen: kaos av symboler och former till vänster, en person som arbetar sig igenom mot ordning, ett stort `#` till höger, en figur som välkomnar den strukturerade världen. Geometriska bakgrundsformer i blå toner. En figur bär korall.

Alla kommande illustrationer ska hålla sig till samma visuella språk.

---

## Gemini-prompt — mall

Använd denna mall för varje ny illustration. Fyll i `[ARTIKEL]`, `[KONCEPT]` och `[VISUELLA ELEMENT]`.

```
ONE single illustration. Landscape, exactly 3:2 ratio (1200×800px).
One unified composition — not panels, not a triptych.

Article: [ARTIKEL]

Concept: [KONCEPT — 2–3 meningar om vad artikeln handlar om och vad
illustrationen ska förmedla]

Style: Same flat editorial vector illustration style as the reference
image — geometric shapes, markdown symbols as physical objects in the
scene, flat human figures interacting with the composition. Confident
and abstract, not corporate clipart, not a UI screenshot.

Color palette (strict):
- Background: warm cream (#fef9f4)
- Sky blue dominant: #0284c7, #bae6fd, #e0f2fe
- Dark near-black: #0f172a
- Slate: #94a3b8
- Warm coral-red (#e0603c) clearly visible on one figure's main
  clothing — it should read immediately, not be a subtle detail

Key visual elements: [VISUELLA ELEMENT — 3–4 punkter]

No brand name or UI text in the image. Generous negative space.
```

---

## Prompts per artikel

### plain-text-formatted.png ✅ klar

Sparad som PNG. Omgjord med korall-accent 2026-05-09. Referensbild för stilen.

<details>
<summary>Prompt (om den behöver göras om)</summary>

```
ONE single illustration. Landscape, exactly 3:2 ratio (1200×800px).
One unified composition — not panels, not a triptych.

Article: "Plain text formatted — what 'AI-ready' really means"

Concept: Structured plain text is the most reliable format for AI
communication. The illustration should show transformation from
unstructured chaos — raw symbols, noise, disorder — toward clean,
readable structure. A sense of clarity arriving. Not technical, not
a screenshot. Abstract and editorial.

Style: Flat editorial vector illustration — geometric shapes, flat
human figures, markdown symbols (#, *, _) as physical objects in the
scene. Confident and abstract, not corporate clipart.

Color palette (strict):
- Background: warm cream (#fef9f4)
- Sky blue dominant: #0284c7, #bae6fd, #e0f2fe
- Dark near-black: #0f172a
- Slate: #94a3b8
- Warm coral-red (#e0603c) clearly visible on one figure's main
  clothing — it must read immediately, not be a subtle detail

Key visual elements:
- Chaos of floating symbols (#, *, _, text fragments) on one side
- A human figure in the middle, working through the chaos
- Order and structure emerging on the other side
- A large # symbol as anchor or landmark in the composition
- Generous negative space — asymmetric, not crowded

No brand name or UI text in the image.
```

</details>

---

### copy-button-vs-selection.jpg

```
ONE single illustration. Landscape, exactly 3:2 ratio (1200×800px).
One unified composition — not panels, not a triptych.

Article: "Copy button vs. selection — why they give you different text"

Concept: When you click the copy button in an AI chat interface, you
get raw Markdown syntax leaking into what you paste — #, **, _ visible
as literal characters. When you select text manually and press Ctrl+C,
you get clean rendered text. Same source, completely different result.
The illustration should convey this moment of surprise or discovery.

Style: Same flat editorial vector illustration style as the reference
image in this conversation — geometric shapes, markdown symbols as
physical objects, flat human figures. Confident and abstract.

Color palette (strict):
- Background: warm cream (#fef9f4)
- Sky blue dominant: #0284c7, #bae6fd, #e0f2fe
- Dark near-black: #0f172a
- Slate: #94a3b8
- Warm coral-red (#e0603c) clearly visible on one figure's main clothing

Key visual elements:
- A clipboard or copy symbol (⎘) — geometric, stylized, prominent
- Markdown characters leaking out as physical objects: #, ** floating
  in the scene
- One or two human figures reacting to what they see
- A sense of contrast between clean output and symbol-polluted output

No brand name or UI text. Generous negative space.
```

---

### history.png ✅ klar

```
ONE single illustration. Landscape, exactly 3:2 ratio (1200×800px).
One unified composition — not panels, not a triptych.

Article: "The history of markdown — from Gruber to CommonMark"

Concept: Markdown was created in 2004 by John Gruber and Aaron Swartz
as a simple way to write HTML. It became the default language of the
internet — GitHub, Stack Overflow, Reddit — and eventually of AI. The
illustration should feel like origin, evolution, something growing from
a small idea into something large and structural.

Style: Same flat editorial vector illustration style as the reference
image — geometric shapes, markdown symbols as physical objects, flat
human figures. Historical without being literal.

Color palette (strict):
- Background: warm cream (#fef9f4)
- Sky blue dominant: #0284c7, #bae6fd, #e0f2fe
- Dark near-black: #0f172a
- Slate: #94a3b8
- Warm coral-red (#e0603c) clearly visible on one figure's main clothing

Key visual elements:
- A large # symbol as a monument or founding object
- A sense of time passing — perhaps a timeline suggested by geometry
- One or two figures, one possibly building or placing something
- Markdown symbols as building blocks or stepping stones

No brand name or UI text. Generous negative space.
```

---

### jupyter-notebooks.png ✅ klar

```
ONE single illustration. Landscape, exactly 3:2 ratio (1200×800px).
One unified composition — not panels, not a triptych.

Article: "Jupyter notebooks and markdown — AI-native by design"

Concept: Jupyter notebooks mix code, output, and markdown text in one
document. It is AI-native: you can drop generated code and explanation
side by side. The illustration should convey layering and flow — different
kinds of content coexisting in one coherent structure. Not a screenshot.
Abstract and editorial.

Style: Flat editorial vector illustration — geometric shapes, flat human
figures, markdown symbols (#, *, _) as physical objects in the scene.
Confident and abstract, not corporate clipart.
IMPORTANT: No outlines or strokes around any shapes or figures. Pure
flat filled shapes only — no black borders, no contour lines, no stroke.

Color palette (strict):
- Background: warm cream (#fef9f4)
- Sky blue dominant: #0284c7, #bae6fd, #e0f2fe
- Dark near-black: #0f172a
- Slate: #94a3b8
- Warm coral-red (#e0603c) clearly visible on one figure's main
  clothing — it must read immediately, not be a subtle detail

Key visual elements:
- Layered horizontal bands or blocks suggesting stacked cells — code,
  text, output — as abstract geometric forms, not a UI screenshot
- A human figure interacting with or assembling the layers
- A markdown symbol (#) visible as a physical element in one of the layers
- A sense of order and modularity — structured, not chaotic

No outlines or strokes on any element. No brand name or UI text.
Generous negative space.
```

---

### title-vs-headings.png ✅ klar

---

### math.png ✅ klar

```
ONE single illustration. Landscape, exactly 3:2 ratio (1200×800px).
One unified composition — not panels, not a triptych.

Article: "Math in Markdown"

Concept: Markdown has no built-in math syntax — but a convention
exists: embed LaTeX expressions between dollar signs, and a rendering
engine turns them into typeset equations. Whether it renders or shows
as raw source depends entirely on the tool reading the file. The
illustration should convey the transformation from abstract symbols
to clear mathematical beauty — a meeting of language and formula.

Style: Flat editorial vector illustration — geometric shapes, flat
human figures, markdown symbols and mathematical notation as physical
objects in the scene. Confident and abstract, not a textbook.
IMPORTANT: No outlines or strokes around any shapes or figures. Pure
flat filled shapes only — no black borders, no contour lines, no stroke.

Color palette (strict):
- Background: warm cream (#fef9f4)
- Sky blue dominant: #0284c7, #bae6fd, #e0f2fe
- Dark near-black: #0f172a
- Slate: #94a3b8
- Warm coral-red (#e0603c) clearly visible on one figure's main
  clothing — it must read immediately, not be a subtle detail

Key visual elements:
- Mathematical symbols (∑, ∫, π, or similar) as large, elegant physical
  objects — floating or standing in the scene
- Dollar signs ($) as the markdown delimiter — visible in the composition
- One or two human figures engaging with the symbols — studying, placing,
  or pointing at them
- A sense of precision and elegance — structured, almost architectural

No outlines or strokes on any element. No brand name or UI text.
Generous negative space.
```

---

### mermaid.png ✅ klar

```
ONE single illustration. Landscape, exactly 3:2 ratio (1200×800px).
One unified composition — not panels, not a triptych.

Article: "Mermaid and Markdown"

Concept: Mermaid turns plain text into diagrams. The illustration should
feel like structure emerging — simple geometric shapes (circles, rectangles)
connected by clean lines, as if a diagram is crystallising out of nothing.
Abstract and calm, not a technical flowchart.

Style: Flat editorial vector illustration — geometric shapes only, flat
human figures. The diagram elements are pure geometry: plain circles and
rectangles connected by lines or curves. No icons, no labels, no text
inside any shape. Confident and minimal.
IMPORTANT: No outlines or strokes around any shapes or figures. Pure
flat filled shapes only — no black borders, no contour lines, no stroke.
NO text, labels, or icons inside or near any shape.

Color palette (strict):
- Background: warm cream (#fef9f4)
- Sky blue dominant: #0284c7, #bae6fd, #e0f2fe
- Dark near-black: #0f172a
- Slate: #94a3b8
- Warm coral-red (#e0603c) clearly visible on one figure's main
  clothing — it must read immediately, not be a subtle detail

Key visual elements:
- A loose cluster of plain circles and rectangles connected by smooth
  lines or curves — purely geometric, no text, no icons inside them
- The shapes vary in size, arranged asymmetrically — not a rigid grid
- One human figure interacting with the structure — placing a shape,
  drawing a connection, or stepping back to look
- A sense of emergence — the diagram feels like it is being assembled,
  not finished

No text or labels anywhere in the image. No icons. No outlines or strokes
on any element. No brand name. Generous negative space.
```

---

### syntax-highlighting.png ✅ klar

```
ONE single illustration. Landscape, exactly 3:2 ratio (1200×800px).
One unified composition — not panels, not a triptych.

Article: "The language hint that gives code its colors"

Concept: When you write ```python above a code block in markdown, tools
automatically colorize keywords, strings, and comments. A tiny hint —
the language name — triggers a whole system of recognition and color.
The illustration should convey the magic of a label transforming
something plain into something vivid and structured. Color emerging
from a single word.

Style: Flat editorial vector illustration — geometric shapes, flat
human figures, abstract color bands or blocks in the scene. Confident
and abstract, not a code editor screenshot.
IMPORTANT: No outlines or strokes around any shapes or figures. Pure
flat filled shapes only — no black borders, no contour lines, no stroke.

Color palette (strict):
- Background: warm cream (#fef9f4)
- Sky blue dominant: #0284c7, #bae6fd, #e0f2fe
- Dark near-black: #0f172a
- Slate: #94a3b8
- Warm coral-red (#e0603c) clearly visible on one figure's main
  clothing — it must read immediately, not be a subtle detail

Key visual elements:
- Horizontal bands of color — abstract, suggesting colored code lines
  without showing actual text or a UI
- A small label or tag element triggering the color — the "hint"
- One or two human figures — one pointing or placing the label, one
  observing the result
- A before/after sense: grey/flat on one side, color emerging on the other

No outlines or strokes on any element. No brand name or UI text.
Generous negative space.
```
