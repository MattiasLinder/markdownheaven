# What is Markdown — and why does it matter now?

Markdown is a way of writing plain text that carries meaning. A word surrounded by asterisks becomes bold. A line starting with a hash becomes a heading. A hyphen at the start of a line becomes a list item. The formatting is visible in the text itself — not hidden behind a toolbar or stored in a binary format you cannot read without a dedicated application.

That simplicity is the point. Markdown was designed in 2004 by John Gruber with a single goal: let you write in a format that is readable as-is, and convertible to clean HTML without any fuss. It has no vendor, no licence fee, and no lock-in. A markdown file is a text file. It will open in any text editor, on any device, in any decade.

---

## The basics

Markdown syntax is small enough to learn in a single sitting. The elements you use every day cover perhaps a dozen rules:

```
# Heading 1
## Heading 2

**bold**, *italic*, ~~strikethrough~~

- List item
- Another item

1. Numbered item
2. Another

[Link text](https://example.com)

![Alt text](image.png)

`inline code`

> Blockquote

---  (horizontal rule)
```

Tables, footnotes, and task lists exist in extended variants (GitHub Flavoured Markdown being the most common), but the core is intentionally minimal. You do not need to learn much to be productive with it.

---

## What markdown is not

Markdown is not a word processor. It does not control page margins, font choices, or print layout. It does not track changes or support comments in the way a Word document does. It is a content format, not a design format.

This is a feature, not a deficiency. When you write in markdown, you are separating what you say from how it looks. The rendering — the colours, the font, the spacing — is handled elsewhere, by a stylesheet or an application. Your content stays portable.

---

## Why markdown became the language of the internet

By the time most people had heard of markdown, it had already become the default format for large parts of the web. GitHub uses it for README files and issue comments. Stack Overflow uses it for questions and answers. Most documentation platforms use it. Many blogging tools use it.

The reason is the same as the reason it was created: it works in plain text, requires no special tools, and converts cleanly to HTML. Developers in particular adopted it quickly because plain text fits naturally into version control — you can diff a markdown file, review it in a pull request, and track every change over time.

---

## Markdown and AI

If you use AI tools — ChatGPT, Claude, Gemini, Copilot — you have been reading markdown whether you knew it or not.

When an AI assistant responds to a question with a structured answer, it typically formats that answer in markdown. The **bold** terms, the bullet points, the numbered steps, the code blocks — all of it is markdown syntax. The chat interface renders it into formatted text so it looks polished. Underneath, it is plain markdown.

This is not arbitrary. AI models are trained on text from the internet, and a large proportion of that text is in markdown. It is the format these models understand natively, the one they reach for when they want to communicate structure. When an AI writes a heading, it writes `##`. When it writes a list, it writes `-`. It does not think in bullet points — it thinks in markdown.

This has a practical consequence. The output of an AI assistant is, in its raw form, a markdown document. When you copy that output and paste it into an email, a Word document, a Slack message, or a note-taking app, something often goes wrong. The formatting disappears, or the markdown symbols leak through as literal characters, or the structure collapses into a single block of text.

The problem is not the AI. The problem is that most applications were not built with markdown in mind.

---

## What this means for how you work

If you rely on AI tools as part of your workflow — and most knowledge workers increasingly do — then markdown is already at the centre of how you receive and produce information. Getting it to behave correctly across applications is, for most people, a daily source of small frustrations.

The friction shows up in specific places:

- Copying an AI response into a Word document and losing all structure
- Pasting into an email client and seeing asterisks instead of bold text
- Sharing notes between apps where markdown renders in some and not others
- Trying to convert AI-drafted content into a formatted document without manual cleanup

None of these are unsolvable problems. They are the result of tools that were built before AI output became a routine part of everyday work. The gap is closing — but in the meantime, a small set of the right tools makes a significant difference.

---

## Where to go from here

Markdown is not going away. If anything, its role will grow as AI becomes more deeply embedded in how we write, research, and communicate. Understanding what it is — and where it breaks down — is increasingly practical knowledge, not just technical curiosity.

The tools on this site were built around exactly that gap: making markdown work in the rest of your workflow, not just in the places that natively support it.
