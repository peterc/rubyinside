# Ruby Inside

Hugo source for [rubyinside.com](https://rubyinside.com/) — the archived Ruby blog that ran from 2006 to 2014 (1,285 posts).

## Build

```sh
hugo serve   # local dev at http://localhost:1313
hugo         # build to ./public
```

## Contribute

New posts go in `content/` as Markdown. See `archetypes/default.md` for the frontmatter template, or `hugo new posts/your-slug.md`.

## Deploy

`./deploy.sh` builds and rsyncs to the production host (Peter only).

## Layouts

- `layouts/_default/single.html` — default for posts; renders title + byline (author and date).
- `layouts/_default/static.html` — for static pages without a byline (About, etc.). Opt in via `layout: static` in the page's frontmatter.
- `layouts/_default/archives.html` — for the archives listing. Opt in via `layout: archives`.

Note: do not name a template `_default/page.html`. In Hugo 0.146+ that name is picked before `single.html` for regular pages, which silently strips the byline from posts that don't set an explicit `layout:`.
