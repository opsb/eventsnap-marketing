# List available commands
default:
    @just --list

# Start local development server with live reload
dev:
    hugo server

# Start dev server with drafts enabled
dev-drafts:
    hugo server --buildDrafts

# Build the site for production
build:
    hugo --gc --minify

# Build the site including draft content
build-drafts:
    hugo --gc --minify --buildDrafts

# Clean the build output
clean:
    rm -rf public/ resources/_gen/

# Create a new blog post (usage: just new-post my-post-slug)
new-post slug:
    hugo new blog/{{slug}}.md

# Create a new content page (usage: just new-page section/page-name)
new-page path:
    hugo new {{path}}.md

# Build and serve the production build locally
preview:
    hugo --gc --minify && cd public && python3 -m http.server 8080
