# EventSnap Marketing Site

Marketing and landing site for [EventSnap](https://eventsnap.it/) — a wedding photo collection app that helps couples gather all their guests' photos in one place.

## Tech Stack

- **[Hugo](https://gohugo.io/)** (v0.157.0) — Static site generator
- **[just](https://github.com/casey/just)** — Command runner (see `justfile` for available commands)
- **Vanilla CSS** — No frameworks; custom responsive styles with CSS variables
- **Google Fonts** — Comfortaa (headings) and Afacad (body)
- **GitHub Pages** — Hosting and deployment via GitHub Actions

## Project Structure

```
eventsnap-marketing/
├── archetypes/          # Content templates
├── content/             # Markdown pages and blog posts
│   ├── _index.md        # Home page content
│   ├── blog/            # Blog articles
│   ├── pricing/
│   ├── affiliate-program/
│   ├── contact/
│   ├── signin/
│   └── privacy-policy/
├── layouts/             # HTML templates
│   ├── index.html       # Home page layout
│   ├── _default/        # Base and fallback layouts
│   ├── blog/            # Blog list and single templates
│   ├── partials/        # Reusable components (header, footer, FAQ, etc.)
│   └── ...              # Section-specific layouts
├── static/
│   ├── css/style.css    # Main stylesheet
│   └── images/          # WebP image assets
├── hugo.toml            # Hugo configuration
└── .github/workflows/
    └── deploy.yml       # GitHub Pages CI/CD
```

## Getting Started

### Prerequisites

- [Hugo](https://gohugo.io/installation/) (extended edition, v0.157.0+)
- [just](https://github.com/casey/just) — Command runner

Install on macOS:

```sh
brew install hugo just
```

### Common Commands

All commands are defined in the `justfile`. Run `just` to see the full list.

```sh
just dev            # Start local dev server with live reload
just dev-drafts     # Start dev server with drafts enabled
just build          # Build for production (--gc --minify)
just build-drafts   # Build including draft content
just clean          # Remove build output (public/, resources/_gen/)
just new-post slug  # Create a new blog post
just new-page path  # Create a new content page
just preview        # Build and serve production build locally on :8080
```

The dev server runs at `http://localhost:1313/` with automatic live reload.

## Deployment

The site deploys automatically to **GitHub Pages** when changes are pushed to the `main` branch. The workflow (`.github/workflows/deploy.yml`) handles:

1. Installing Hugo (extended edition)
2. Building the site with `--gc --minify`
3. Deploying to GitHub Pages

Manual deployment can also be triggered from the Actions tab.

## Content

### Pages

| Page               | Path                        | Description                     |
| ------------------ | --------------------------- | ------------------------------- |
| Home               | `/`                         | Landing page with hero, features, testimonials, FAQ |
| Pricing            | `/pricing/`                 | Pricing plans                   |
| Blog               | `/blog/`                    | Blog listing                    |
| Affiliate Program  | `/affiliate-program/`       | Partner program details         |
| Contact            | `/contact/`                 | Contact form                    |
| Sign In            | `/signin/`                  | Redirect to app                 |
| Privacy Policy     | `/privacy-policy/`          | Legal information               |

### Adding a Blog Post

Create a new Markdown file in `content/blog/`:

```sh
hugo new blog/my-new-post.md
```

Front matter format:

```yaml
---
title: "Post Title"
date: 2026-01-15
author: "Author Name"
image: "/images/blog-cover.webp"
excerpt: "Short description for the blog listing."
description: "SEO meta description."
---
```

## Configuration

Site configuration lives in `hugo.toml`:

- **baseURL** — Production URL (`https://eventsnap.it/`)
- **params.appURL** — Link to the main app (`https://app.eventsnap.it`)
- **params.instagramURL** / **params.tiktokURL** — Social media links
- **menus** — Main navigation and footer link structure
