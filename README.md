# nyashachiroro.com

Personal portfolio for **Nyasha D. Chiroro** — Frontend Software Engineer based in Harare, Zimbabwe.

Single-page site showcasing production work on logistics and mobility platforms (MyKargoLink, MyKarLink), experience, skills, and education.

## Live site

Deploy `index.html` and `cv.pdf` to any static host. The site is self-contained (HTML, CSS, and JS in one file).

## Local preview

```bash
npx serve .
```

Serves the project directory at [http://localhost:3000](http://localhost:3000) by default. Use a custom port if needed:

```bash
npx serve . -l 8765
```

## Project structure

| File | Description |
|------|-------------|
| `index.html` | Portfolio page |
| `og-image.jpg` | Social preview image for WhatsApp, etc. (1200×630, ~60 KB) |
| `og.html` | Source template to regenerate the OG image |
| `cv.pdf` | Downloadable CV |
| `cv.md` | CV source (markdown) |

### Regenerate OG image

Edit `og.html`, then:

```bash
chromium --headless=new --disable-gpu --hide-scrollbars --window-size=1200,630 --screenshot=og-image.png "file://$(pwd)/og.html"
magick og-image.png -strip -quality 82 og-image.jpg
```

Social meta tags point to `og-image.jpg` (smaller file — WhatsApp often fails on 700 KB+ PNGs).

## Contact

- **Email:** chirorodennis@gmail.com
- **GitHub:** [chiroro-jr](https://github.com/chiroro-jr/)
