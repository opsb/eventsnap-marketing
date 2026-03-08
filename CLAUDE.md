# EventSnap Marketing Site

Hugo static site for the EventSnap marketing/landing pages.

## Quick Reference

- **Hugo config**: `hugo.toml`
- **Content**: `content/` (Markdown with YAML front matter)
- **Templates**: `layouts/` (HTML templates and partials)
- **Styles**: `static/css/style.css` (vanilla CSS, no framework)
- **Images**: `static/images/` (WebP format)
- **Deployment**: GitHub Pages via `.github/workflows/deploy.yml`

## Justfile Commands

Run `just` to see all available commands:

- `just dev` — Start local dev server (localhost:1313)
- `just dev-drafts` — Dev server with drafts
- `just build` — Production build (--gc --minify)
- `just build-drafts` — Build including drafts
- `just clean` — Remove public/ and resources/_gen/
- `just new-post <slug>` — Create a blog post
- `just new-page <path>` — Create a content page
- `just preview` — Build and preview production output on :8080

## Key Conventions

- Blog front matter uses YAML delimiters (`---`)
- Images are WebP format, stored in `static/images/`
- Each section (pricing, contact, etc.) has its own layout in `layouts/<section>/`
- Reusable components live in `layouts/partials/`
- Goldmark unsafe HTML rendering is enabled in hugo.toml
