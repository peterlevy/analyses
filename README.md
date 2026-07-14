# peterlevy.github.io

Data analyses of no fixed abode — a small [Quarto](https://quarto.org) blog. Posts are `.qmd` documents under `posts/`, mixing prose with R code (executed via knitr).

## Local rendering

Requires only R and Quarto — no Ruby, Jekyll, or Node.

- `quarto preview` — live-reload preview while writing.
- `quarto render` — full build into `docs/` (run this once before committing, so every post is freshly and completely rendered, not just the ones visited during a preview session).

## Publishing

The site is served by GitHub Pages directly from the `docs/` folder on `main` — there is no GitHub Actions workflow. To publish a change: render locally, commit `docs/` along with the source, and push.

GitHub repo settings: Settings → Pages → Build and deployment → Source: "Deploy from a branch" → Branch: `main`, folder `/docs`.
