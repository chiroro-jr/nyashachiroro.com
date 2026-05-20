# nyashachiroro.com

Personal portfolio for **Nyasha D. Chiroro** — Full Stack Developer based in Harare, Zimbabwe.

Single-page site showcasing production work on logistics and mobility platforms (MyKargoLink, MyKarLink), experience, skills, and education.

## Live site

Static files in `public/` are deployed via Cloudflare Workers. Deploy with:

```bash
npx wrangler deploy
```

## Local preview

```bash
npx serve public
```

Serves the site at [http://localhost:3000](http://localhost:3000) by default. Use a custom port if needed:

```bash
npx serve public -l 8765
```

## Project structure

| Path | Description |
|------|-------------|
| `public/index.html` | Portfolio page |
| `public/og-image.jpg` | Social preview image (1200×630, ~60 KB) |
| `public/cv.pdf` | Downloadable CV |
| `og.html` | Source template to regenerate the OG image (not deployed) |
| `logo.html` | Source template for the NDC. logo (not deployed) |
| `logo.png` | Square logo for [favicon.io converter](https://favicon.io/favicon-converter/) |
| `cv.md` | CV source (markdown) |
| `wrangler.jsonc` | Cloudflare Workers config |

### Regenerate OG image

Edit `og.html`, then:

```bash
chromium --headless=new --disable-gpu --hide-scrollbars --window-size=1200,630 \
  --screenshot=public/og-image.png "file://$(pwd)/og.html"
magick public/og-image.png -strip -quality 82 public/og-image.jpg
```

Social meta tags point to `og-image.jpg` (smaller file — WhatsApp often fails on 700 KB+ PNGs).

### Regenerate logo (for favicon)

Edit `logo.html`, then:

```bash
chromium --headless=new --disable-gpu --hide-scrollbars --window-size=512,512 \
  --screenshot=logo.png "file://$(pwd)/logo.html"
```

Upload `logo.png` to [favicon.io/favicon-converter](https://favicon.io/favicon-converter/), download the package, and place the generated files in `public/favicon/`.

## Contact

- **Email:** chirorodennis@gmail.com
- **GitHub:** [chiroro-jr](https://github.com/chiroro-jr/)
