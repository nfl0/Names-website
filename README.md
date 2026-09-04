# Coppice Names website

A static, single-page landing site for
[Coppice Names](https://github.com/nfl0/coppice-names) — private, trustless
`.zec` names on Zcash.

**Live:** https://coppice-names.pages.dev (Cloudflare Pages, project
`coppice-names`, production branch `main`)

## Structure

- `index.html` — the landing page: markup, styles, and a small scroll-reveal
  script, all inline. No build step, no dependencies, no tracking.
- `privacy.html` — the privacy page.
- `404.html` — served by Cloudflare Pages for missing paths.
- `fonts/` — self-hosted OFL fonts; the site makes no third-party requests.
- `deploy.sh` — clean-directory deploy to Cloudflare Pages (keeps README,
  scripts, and local state out of the deployment).

## Local preview

```sh
python3 -m http.server 8000
# open http://localhost:8000/
```

## Deployment

```sh
./deploy.sh
```

When a custom domain is attached to the Pages project, update the
`og:url`/`canonical` values in `index.html` to match.

## Design notes

The layout language (off-white canvas, deep-indigo accent, mono utility text,
serif-italic display, numbered sections, card/stat grids) follows the visual
style of the Darkbloom landing page, re-implemented from scratch for Coppice
Names. Fonts are SIL OFL: Instrument Sans (variable), Instrument Serif, and
IBM Plex Mono.
