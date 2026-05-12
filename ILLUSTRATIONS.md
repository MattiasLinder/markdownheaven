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

### Bakgrund — enkel, inte tom

Bakgrunden är varm cream (#fef9f4) men ska inte vara helt tom. Lägg till ett eller flera av dessa element, mycket sparsamt:

- Två–tre låga kullar eller berg som enkla streck/linjer nära horisonten
- En liten sol (bara en cirkel, inga strålar) högt i ett hörn
- Ett enkelt molnmoln (två–tre mjuka kurvor, inget mer)

Elementen ska vara knappt synliga mot bakgrunden — inte dominera kompositionen.

### Djup — subtilt, inte 3D

Figurer och objekt är fortfarande flat design, men kan ha ett visst djup: storleksvariationer som antyder perspektiv, lätt lagring av former, objekt som täcker varandra. Inte skuggor, inte 3D-rendering.

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

### which-markdown-flavor-for-ai.png

```
ONE single illustration. Landscape, exactly 3:2 ratio (1200×800px).
One unified composition — not panels, not a triptych.

Article: "Which Markdown flavor should you use with AI tools?"

Concept: Several Markdown dialects exist — CommonMark, GFM, Obsidian —
but for AI tools there is one clear choice: GitHub Flavored Markdown.
It is what the models output, what they were trained on, and what
creates a friction-free loop between writing and receiving. The
illustration should convey convergence — many paths becoming one,
a choice that clarifies rather than complicates.

Style: Same flat editorial vector illustration style as the reference
image — geometric shapes, markdown symbols as physical objects in the
scene, flat human figures interacting with the composition. Confident
and abstract, not corporate clipart.
IMPORTANT: No outlines or strokes around any shapes or figures. Pure
flat filled shapes only — no black borders, no contour lines, no stroke.

Color palette (strict):
- Background: warm cream (#fef9f4)
- Sky blue dominant: #0284c7, #bae6fd, #e0f2fe
- Dark near-black: #0f172a
- Slate: #94a3b8
- Warm coral-red (#e0603c) clearly visible on one figure's main
  clothing — it should read immediately, not be a subtle detail

Key visual elements:
- Several diverging paths or branching lines converging into one clear
  direction — geometric and abstract, not a literal road or map
- A large # symbol as a landmark or focal point at the convergence
- One human figure walking toward or standing at the convergence point,
  facing forward
- A sense of resolution and clarity — not chaos, not confusion, but
  a decision made

No brand name or UI text in the image. Generous negative space.
```

---

### what-is-markdown.png ✅ klar

```
ONE single illustration. Landscape, exactly 3:2 ratio (1200×800px).
One unified composition — not panels, not a triptych.

Article: "What is Markdown — and why does it matter now?"

Concept: Markdown is plain text with meaning — a handful of symbols
(#, **, *, -, >) that carry structure without any toolbar or binary
format. The illustration should feel like a first encounter: simple,
clear, inviting. The symbols themselves are the subject. A figure
discovering that these small characters contain meaning — not chaos,
but elegant simplicity.

Style: Same flat editorial vector illustration style as the reference
image — geometric shapes, markdown symbols as physical objects in the
scene, flat human figures interacting with the composition. Confident
and abstract, not corporate clipart, not a UI screenshot.
IMPORTANT: No outlines or strokes around any shapes or figures. Pure
flat filled shapes only — no black borders, no contour lines, no stroke.

Color palette (strict):
- Background: warm cream (#fef9f4)
- Sky blue dominant: #0284c7, #bae6fd, #e0f2fe
- Dark near-black: #0f172a
- Slate: #94a3b8
- Warm coral-red (#e0603c) clearly visible on one figure's main
  clothing — it should read immediately, not be a subtle detail

Key visual elements:
- Several core markdown symbols (#, **, *, >) as large, distinct
  physical objects arranged in the scene — not floating randomly but
  placed with intention, like a small collection
- One human figure standing among or looking up at the symbols —
  a moment of recognition, not confusion
- A sense of simplicity and order — clean, spacious, not dense
- Generous negative space — the symbols should breathe

No outlines or strokes on any element. No brand name or UI text.
Generous negative space.
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

---

### spec-driven-development.png ✅ klar

```
ONE single illustration. Landscape, exactly 3:2 ratio (1200×800px).
One unified composition — not panels, not a triptych.

Article: "Spec-driven development — this is where Markdown really shines"

Concept: Writing a Markdown specification before writing any code produces
better output and doubles as documentation. The illustration should convey
precision and intention — a deliberate document that becomes the blueprint
for everything that follows. Structure arriving before chaos gets a chance.

Style: Same flat editorial vector illustration style as the reference
image — geometric shapes, markdown symbols as physical objects in the
scene, flat human figures interacting with the composition. Confident
and abstract, not corporate clipart, not a UI screenshot.
IMPORTANT: No outlines or strokes around any shapes or figures. Pure
flat filled shapes only — no black borders, no contour lines, no stroke.
Objects may suggest subtle depth through layering and size variation —
still flat in style, not rendered 3D.

Color palette (strict):
- Background: warm cream (#fef9f4)
- Sky blue dominant: #0284c7, #bae6fd, #e0f2fe
- Dark near-black: #0f172a
- Slate: #94a3b8
- Warm coral-red (#e0603c) clearly visible on one figure's main
  clothing — it should read immediately, not be a subtle detail

Key visual elements:
- A large, structured document shape — with visible # heading marks and
  a short list — as a central physical object, slightly layered for depth
- A human figure writing or placing elements into the document
- Markdown symbols (# and maybe ```) as objects in the scene
- A sense of calm deliberation — not rush, not code flying everywhere
- Background: a faint horizon line with two or three low hill silhouettes,
  one small sun circle high in a corner

No outlines or strokes on any element. No brand name or UI text.
Generous negative space.
```

---

### markdown-as-rag.png ✅ klar

```
ONE single illustration. Landscape, exactly 3:2 ratio (1200×800px).
One unified composition — not panels, not a triptych.

Article: "Markdown as RAG — your own lightweight context layer"

Concept: A plain Markdown file can serve as the knowledge layer for an
AI agent — faster and more readable than Word, PDF, or a vector database.
The illustration should convey grounding and flow: a document as a foundation
that knowledge rises from, light and interpretable. No infrastructure, no
complexity — just a file and clarity.

Style: Same flat editorial vector illustration style as the reference
image — geometric shapes, markdown symbols as physical objects in the
scene, flat human figures interacting with the composition. Confident
and abstract, not corporate clipart, not a UI screenshot.
IMPORTANT: No outlines or strokes around any shapes or figures. Pure
flat filled shapes only — no black borders, no contour lines, no stroke.
Objects may suggest subtle depth through layering and size variation —
still flat in style, not rendered 3D.

Color palette (strict):
- Background: warm cream (#fef9f4)
- Sky blue dominant: #0284c7, #bae6fd, #e0f2fe
- Dark near-black: #0f172a
- Slate: #94a3b8
- Warm coral-red (#e0603c) clearly visible on one figure's main
  clothing — it should read immediately, not be a subtle detail

Key visual elements:
- Two or three flat document shapes stacked or fanned at the bottom,
  slightly layered so depth is implied — the stack as a foundation
- A simple upward line or beam connecting the stack to a small geometric
  shape above (the agent/process) — abstract, not a technical diagram
- A human figure standing near the documents, possibly handing one upward
- Markdown # symbol visible on one of the documents
- Background: a faint horizon with one or two low hill curves, a small
  sun circle near the top edge

No outlines or strokes on any element. No brand name or UI text.
Generous negative space.
```

---

### enshittification-of-markdown.png ✅ klar

```
ONE single illustration. Landscape, exactly 3:2 ratio (1200×800px).
One unified composition — not panels, not a triptych.

Article: "The Enshittification of Markdown"

Concept: AI chat interfaces take markdown — the native language of every
large language model — and bury it under rendering, reformatting, and
friction. The illustration should show markdown symbols being overwhelmed
or polluted. The poo emoji (💩) is a central visual element — large,
cheerful, unmistakable — as the literal embodiment of the enshittification
concept. Absurd but composed.

Style: Same flat editorial vector illustration style as the reference
image — geometric shapes, flat human figures, markdown symbols as
physical objects in the scene. Confident and editorial, not corporate
clipart, not a UI screenshot.
IMPORTANT: No outlines or strokes around any shapes or figures. Pure
flat filled shapes only — no black borders, no contour lines, no stroke.
Objects may suggest subtle depth through layering and size variation —
still flat in style, not rendered 3D.

Color palette (strict):
- Background: warm cream (#fef9f4)
- Sky blue dominant: #0284c7, #bae6fd, #e0f2fe
- Dark near-black: #0f172a
- Slate: #94a3b8
- Warm coral-red (#e0603c) clearly visible on one figure's main
  clothing — it should read immediately, not be a subtle detail
- The poo emoji is rendered in warm brown tones — flat vector style,
  consistent with the rest of the illustration

Key visual elements:
- One large, prominent poo emoji shape (💩 style — round base, swirl top)
  as the dominant villain of the composition — large enough to read at
  thumbnail size, flat design. The face is EVIL: heavy angled eyebrows
  pointing inward and downward, narrow menacing eyes, a wide sharp-toothed
  grin — unmistakably villainous, not friendly or cute
- The poo is ACTIVELY DOING something: it is grabbing or pushing free-floating
  markdown symbols (#, *, **) — which are fluid, organic, slightly curved
  shapes — and forcing them into rigid grey square boxes. The boxes are stiff,
  bureaucratic rectangles. The contrast between the living flowing symbols
  and the dead locked boxes is the central tension of the image
- One or two markdown symbols are still free and organic on one side of the
  composition; on the other side they are already trapped inside grey squares
- One human figure — wearing coral clothing — watching with alarm or
  helplessness as the transformation happens
- Background: a generous warm cream field with a faint horizon line, two
  or three low hill silhouettes, and one small sun circle high in a corner —
  clearly visible backdrop, not an empty void
- Generous negative space — the composition breathes, no crowding

No outlines or strokes on any element. No brand name or UI text.
Large, bold shapes — no small fussy details.
```

---

### spec-driven-workflow.png ✅ klar

```
ONE single illustration. Landscape, exactly 3:2 ratio (1200×800px).
One unified composition — not panels, not a triptych.

Article: "Spec-driven development: the full workflow"

Concept: A software project built with spec-driven development moves
through distinct phases — idea, specification, planning, slices, code,
maintenance — with Markdown as the connective thread throughout. The
illustration should convey a calm journey: stages connected, each one
building on the previous, no chaos.

Style: Same flat editorial vector illustration style as the reference
image — geometric shapes, markdown symbols as physical objects in the
scene, flat human figures interacting with the composition. Confident
and abstract, not corporate clipart, not a UI screenshot.
IMPORTANT: No outlines or strokes around any shapes or figures. Pure
flat filled shapes only — no black borders, no contour lines, no stroke.
Objects may suggest subtle depth through layering and size variation —
still flat in style, not rendered 3D.

Color palette (strict):
- Background: warm cream (#fef9f4)
- Sky blue dominant: #0284c7, #bae6fd, #e0f2fe
- Dark near-black: #0f172a
- Slate: #94a3b8
- Warm coral-red (#e0603c) clearly visible on one figure's main
  clothing — it should read immediately, not be a subtle detail

Key visual elements:
- Four or five flat document or card shapes arranged left to right in
  a gentle progression — earliest slightly open/sketchy, last solid and
  complete — connected by a thin continuous line
- One human figure walking along or tending to the progression — a sense
  of forward movement
- A # symbol visible on one of the earlier documents
- Background: a faint horizon line with two or three low hill silhouettes,
  one small sun circle, optionally a minimal cloud shape — all barely
  perceptible against the cream

No outlines or strokes on any element. No brand name or UI text.
Generous negative space.
```
