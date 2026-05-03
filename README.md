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
