# Article draft: H1 as title, or H1 as heading — what's right?

*Status: Draft — raw content, needs editing and HTML conversion*
*Planned URL: /title-vs-headings*
*Connection to theme: Markdown structure that AI tools produce, and how it maps to Word export*

---

## Core question

Should you use `#` for the document title, or for the first main heading? And is it a problem if both look the same?

---

## Raw content (from discussion, needs editing)

Markdown is designed to be simple, which means it lacks the specific "Title" style found in more advanced word processors. There is no dedicated title element — just heading levels 1 through 6.

### The standard: one `#` per document

In the technical and academic world of Markdown, `#` (H1) functions as the document's title. There should only be one, at the top.

- **H1 (`#`):** Document title — e.g. "Project Plan 2026"
- **H2 (`##`):** Main sections — e.g. "Background", "Goals", "Budget"
- **H3 (`###`):** Subsections under these

This creates a logical hierarchy readable by both humans and machines — screen readers, table-of-contents generators, and AI models parsing document structure.

### Alternative: YAML frontmatter as title

Many Markdown writers (especially in blogs and documentation tools) use YAML frontmatter. The title goes in as pure metadata, and `#` is reserved for main headings in the body:

```markdown
---
title: My great report
author: Name Nameson
---

# Introduction
Body text starts here...
```

### Why using `#` for everything is problematic

If you use `#` for both title and headings, the document becomes "flat":

- **Table of contents:** An auto-generated TOC puts everything at the same level — unusable.
- **Accessibility:** Screen reader users navigate by jumping between heading levels. If everything is a title, they lose track of what belongs where.
- **Export to PDF/Word/HTML:** Your title and your headings look identical, making the text hard to scan.

### The AI angle

AI models — especially large language models — consistently produce Markdown with a single H1 at the top as the document title, followed by H2/H3 for structure. This is both correct and intentional: the model has learned the convention.

When you export AI-generated Markdown to Word, the H1 maps naturally to Word's built-in "Title" style — but only if the tool knows to make that distinction. Without it, `#` becomes Heading 1, and the visual hierarchy is lost.

This is why markdownword has a dedicated "Treat first # as Title" toggle: it bridges the gap between Markdown convention and Word's style system.

---

## TODOs for this article

- [ ] Rewrite as proper article (not Q&A format)
- [ ] Add connection to markdownword's "firstH1AsTitle" feature
- [ ] Add connection to how AI models structure output
- [ ] Decide: standalone article or part of a larger "Markdown structure" piece?
- [ ] Convert to HTML when markdownheaven site is being built
