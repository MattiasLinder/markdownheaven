# Which Markdown Flavor Should You Use with AI Tools?

*CommonMark, GFM, Obsidian — and why it matters when you write to Claude or ChatGPT.*

---

Markdown is not one thing. The original spec John Gruber published in 2004 left a lot undefined, and over the years different communities filled in the gaps in different ways. Today there are several distinct dialects in common use.

If you write to AI tools — crafting prompts, building knowledge bases, feeding documents to Claude Desktop or ChatGPT — the choice of dialect is not just theoretical. It affects how reliably your structure is understood, and how smoothly output flows back into your workflow.

## A quick map of the dialects

**CommonMark** is the closest thing to a formal standard. It pins down the ambiguous corners of original Markdown and adds fenced code blocks (the triple-backtick syntax). What it does *not* include: tables. If you need to pass structured data in a grid, CommonMark leaves you without a native way to do it.

**GFM — GitHub Flavored Markdown** — extends CommonMark with the features GitHub users needed: tables, task lists (`- [ ]`), strikethrough, and autolinks. Because GitHub is one of the largest repositories of text on the internet, GFM has become the de facto standard for technical writing.

**Obsidian-flavor** adds wikilinks (`[[Page Name]]`), callouts (`> [!NOTE]`), and embedded files. These are useful inside an Obsidian vault but have no special meaning outside it — including to AI tools.

**Pandoc Markdown** and **MultiMarkdown** add footnotes, definition lists, and other scholarly features. Useful if your pipeline ends in a Word document or a PDF; less relevant for pure AI interaction.

## What Claude Desktop and ChatGPT actually use

Both tools render GFM in their responses. Tables come out as tables. Code blocks get syntax highlighting. Task lists render as checkboxes. This is not a coincidence — GFM is what the models were trained on at scale.

When you write *to* these tools, they don't render your markdown — they read it semantically. A `##` heading signals hierarchy. A fenced code block signals: *this is code, treat it differently*. A table signals: *here is structured, comparative data*. The formatting shapes how the model interprets what you've written.

## The case for GFM

There are three reasons GFM is the right choice for AI-first writing:

**1. It matches the output.** Both Claude and ChatGPT produce GFM in their responses. If you write in GFM, you can take the model's output and use it directly as input in a follow-up prompt — or save it as a document — without translation or cleanup. Input and output speak the same language.

**2. It is the most deeply understood dialect.** Language models learn from text. GitHub — the largest single corpus of GFM on the internet — is a foundational part of that training data. GFM syntax sits closer to the model's core understanding than any other dialect, including CommonMark alone.

**3. Tables work.** Structured data is one of the most powerful things you can pass to an AI model. A prompt that includes a table of options, parameters, or examples gives the model something to reason about with precision. CommonMark doesn't have tables. GFM does.

## What about other dialects?

If you write in **Obsidian**, you are mostly fine. The wikilinks and callouts are just read as plain text by AI tools — they don't cause confusion, they just don't add value in that context. Your content comes through.

If you need **footnotes or definition lists** — formats that appear in Pandoc Markdown — current AI tools will understand the content but won't give those elements any special treatment. It's not a problem; it's just not a feature you'll get leverage from.

## The recommendation

**Write in GFM.** Use tables for structured data. Use fenced code blocks with a language tag. Use `##` headings to give your prompts clear sections. Use task lists when you want the model to track or produce sequential steps.

You don't need a plugin or a special editor. Any Markdown editor that supports GFM — VS Code, Obsidian, Typora, or a simple `.md` file — is enough. The point is to be consistent: same dialect in, same dialect out, with no friction in between.

---

*markdownheaven.com — tools and guides for working in human-readable text.*
