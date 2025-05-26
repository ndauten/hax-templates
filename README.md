# hax-templates

Templates for my hax.

Absolutely — here’s a clean, expressive **README** for your **templates repository**, explaining your language spectrum, guiding philosophy, and when to use each tool. It includes simple tables and clear distinctions based on your method of thinking and development.

---

## 🧾 `README.md` — Templates Repository

### 🛠 Purpose

This repository contains clean, minimal templates for scripts and tools that span my preferred **language spectrum** — from shell-like quick scripts to robust system programs. Each language here supports a different cognitive and practical use case, unified by the **Unix philosophy** of composability, simplicity, and clarity.

---

### 🧠 Philosophy

My work style is driven by:

* **Composability**: I think in pipelines and transformations.
* **Structure where it matters**: I use classes and types when the task demands modeling or scaling.
* **Low overhead**: I prioritize minimal setup and fast feedback loops.
* **Hash-oriented thinking**: I often represent relationships using key-value semantics (hashes, dicts, structs).
* **Portability**: Tools should work cleanly across environments, without heavyweight dependencies.

---

### 🧰 Language Spectrum

| Level | Purpose                       | Language             | Notes                                           |
| ----- | ----------------------------- | -------------------- | ----------------------------------------------- |
| 0     | Unix-style filters            | `grep`, `awk`, `sed` | Native shell tools — fast, composable           |
| 1     | Orchestration, glue           | `GNU Make`           | Rule-based execution, minimal shell replacement |
| 2     | Quick scripting, data munging | **Perl**             | Hash-friendly, powerful regex, great for IO     |
| 3     | Structured scripting / DSLs   | **Ruby**             | Cleaner OO, readable, ideal for CLI tools       |
| 4     | Robust systems/tools          | **Rust**             | Safety, correctness, composability at scale     |

---

### 🔁 Workflow Philosophy

```text
Fast IO munging    → Perl
Structured scripts → Ruby
Build automation   → Make
System logic       → Rust
```

Think of this repo as a **toolbox**, not a monolith — choose the language that fits the size and scope of the task.

---

### 📂 Directory Layout

TBD

```text
templates/
├── perl/       # Perl one-liner and small tool templates
├── ruby/       # Ruby CLI skeletons and filters
├── rust/       # Rust tool scaffolds (clap, serde, etc.)
├── make/       # Makefile patterns for orchestration
├── shell/      # Optional helpers using sed/awk/grep
└── shared/     # README and docs like this one
```

---

### 🧪 When to Use What?

| Task Type                    | Preferred Language |
| ---------------------------- | ------------------ |
| File munging / quick filters | Perl               |
| Command chaining             | Make               |
| Small reusable CLI tools     | Ruby               |
| Systems and tooling          | Rust               |
| Interactive pipelines        | Perl + Make        |

---

### 🚀 Templates to Start With

TBD
