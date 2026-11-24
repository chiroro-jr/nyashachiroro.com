# Sitemap

The site shows who Nyasha is as an engineer. It isn't tailored to any one job; each application gets its own tailored CV instead.

## Pages

```
/                       Home
/work/aplyk             Case study
/work/mykargolink       Case study
/work/mykarlink         Case study
/cv.pdf                 CV
```

### `/` Home

Sections in order:

1. **Header.** Name, plus links to Work, the CV, and email. Shown on every page.
2. **Intro.** Name, what Nyasha builds (mobile, web, backend, infrastructure), and location (Harare, UTC+2).
3. **Selected work.** One short entry per product, in this order: Aplyk, MyKargoLink, MyKarLink. Each entry says what the product does, who uses it, and what Nyasha built, in two or three lines, then links to its case study. Aplyk comes first because it's the largest body of work.
4. **Experience.** Employers in reverse date order, each with title, dates, and one line on scope: Aplyk, MyKargoLink, MyKarLink, First Mutual Health. MyKargoLink and MyKarLink are sister companies but separate employers, so each gets its own entry. The MyKarLink entry ends in August 2025, when Nyasha moved to MyKargoLink; MyKarLink work after that is part of the MyKargoLink role. Titles and dates must match the CV and LinkedIn.
5. **Education.** One line under its own heading: degree, class, university, year.
6. **Contact.** Email as plain text you can copy, plus GitHub and LinkedIn.

### `/work/<product>` Case studies

Every case study is 300–500 words and uses the same sections:

1. **Summary.** Product, Nyasha's role, timeframe, stack, and a link to the live product if there is one.
2. **Problem.** Who needed what, in plain language.
3. **What Nyasha owned.** What Nyasha built. Credit decisions others made to them, by role rather than name.
4. **Key decisions.** One to three choices Nyasha made or co-made: the alternatives, why this one fit, and what was given up.
5. **Outcome.** What shipped or changed. Use only results that are already public.

Describe the work at the level of a conference talk. Code from these employers is private, so use approved screenshots or, at most, a simple diagram. Keep out:

- Infrastructure specifics: account IDs, server names or addresses, network and security setup.
- Security details: how sign-in and identity checks are wired, known bugs.
- Business information: pricing, rewards, legal positioning, launch dates, user numbers.
- Internal discussions and meeting notes.
- Colleagues' names, unless they agree.

| Page | Product | Main stack (from repos) |
|---|---|---|
| `/work/aplyk` | Aplyk | Flutter mobile app, C# backend, infrastructure (HCL), TypeScript web |
| `/work/mykargolink` | MyKargoLink, a logistics platform | TypeScript web app, Java backend, typed API client |
| `/work/mykarlink` | MyKarLink, a car rental platform | TypeScript web app |

### `/cv.pdf`

A PDF whose text can be selected and copied. It's linked from the header and the contact section, and it's swapped for each application.

## Optional later

### `/design-system`

A page showing the site's own design tokens: colour, typography, spacing, radius, elevation and motion, in light and dark. Not needed to launch. Add it only if there's time after the core pages, and link it from the footer rather than the header.

## Left out

| Left out | Why |
|---|---|
| Skills section, skill bars, logo walls | Ratings mean nothing to a reader, and logos don't say what was done with the tool. Tools are named inside each project and job instead. |
| About page | The intro already covers it. |
| Blog or writing page | A blog with a couple of posts looks abandoned. Add one once there are at least two solid technical posts. |
| Testimonials | They read as sales copy to hiring teams. |
| Public tools (pi-cursor-sdk, codex-account, pencil-design-skill) | pi-cursor-sdk is a fork made only to send a PR, and the other two are small and no longer used. |
| Karza | It was a learning project. The three production products are stronger. |
