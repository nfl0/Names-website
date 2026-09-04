# Coppice Names website

A static, single-page landing site for
[Coppice Names](https://github.com/nfl0/coppice-names) — private, trustless
`.zec` names on Zcash.

## Structure

- `index.html` — the whole site: markup, styles, and a small scroll-reveal
  script, all inline. No build step, no dependencies, no tracking.

## Local preview

```sh
python3 -m http.server 8000
# open http://localhost:8000/
```

## Deployment

Any static file host works; upload or point the host at this directory.

## Design notes

The layout language (off-white canvas, deep-indigo accent, mono utility text,
serif-italic display, numbered sections, card/stat grids) follows the visual
style of the Darkbloom landing page, re-implemented from scratch for Coppice
Names. All fonts are served from Google Fonts under the SIL Open Font License:
Instrument Sans, Instrument Serif, and IBM Plex Mono.
