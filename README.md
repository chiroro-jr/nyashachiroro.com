# nyashachiroro.com

Personal portfolio for **Nyasha D. Chiroro**, a software engineer in Harare, Zimbabwe.

Single-page site covering production work on Aplyk, MyKargoLink, and MyKarLink, plus experience, skills, and education.

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
| `public/favicon/` | Favicon package (from favicon.io) |
| `asset-gen/` | Source templates and scripts to generate the CV, OG image, and logo (not deployed) |
| `wrangler.jsonc` | Cloudflare Workers config |

### Generate CV

Requires `chromium`. Edit `asset-gen/cv.html`, then:

```bash
./asset-gen/generate-cv.sh
```

Writes `public/cv.pdf` (A4, selectable text).

### Generate OG image

Requires `chromium` and `magick` (ImageMagick). Edit `asset-gen/og.html`, then:

```bash
./asset-gen/generate-og.sh
```

Social meta tags point to `og-image.jpg` (smaller file — WhatsApp often fails on 700 KB+ PNGs).

### Generate logo (for favicon)

Requires `chromium`. Edit `asset-gen/logo.html`, then:

```bash
./asset-gen/generate-logo.sh
```

Upload `asset-gen/logo.png` to [favicon.io/favicon-converter](https://favicon.io/favicon-converter/), download the package, and place the generated files in `public/favicon/`.

## Contact

- **Email:** chirorodennis@gmail.com
- **GitHub:** [chiroro-jr](https://github.com/chiroro-jr/)
