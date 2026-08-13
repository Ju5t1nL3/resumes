#import "resume.typ": *

// Put your personal information here
#let name = "Justin Le"
#let phone = "832-586-3989"
#let email = "justinle2006@gmail.com"
#let github = "Ju5t1nL3"
#let linkedin = "justindtle"
#let personal-site = "justindtle.com"

// Since the following arguments are within the `with` block,
// you can remove/comment any argument to fallback to the preset value and/or
// remove it.
#show: resume.with(
  font: "New Computer Modern",
  personal-info-font-size: 10pt,
  author-position: center,
  personal-info-position: center,
  author-name: name,
  phone: phone,
  email: email,
  website: personal-site,
  linkedin-user-id: linkedin,
  github-username: github,
)

// Use custom-title function instead of first-level headings to customize the
// size between two sections by specifying the `spacingBetween` argument.
// https://typst.app/docs/reference/layout/length/

#custom-title("Education")[
  #education-heading(
    [*Texas A&M University | Engineering Honors *], // institution
    "GPA: 4.00/4.00", // gpa
    "Bachelor of Science in Computer Science", // degree
    "May 2028",
  )[
    - *Relevant Coursework*: Data Structures and Algorithms, Computer Architecture, Computer Systems, Foundations of Software Engineering, Competitive Programming, Machine Learning, Cryptography
  ]
  #education-heading(
    [*Dulles High School* | Valedictorian (1/518) | _GPA: 4.63/4.00_ ], // institution
    "", // gpa
    "", // major
    "May 2024",
  )[]
]

#custom-title("Experience")[
  #work-heading(
    "Hewlett Packard Enterprise", // company
    "Software Engineer Intern", // title
    "San Jose, CA", // location
    datetime(year: 2026, month: 5, day: 26), // start-date
    datetime(year: 2026, month: 8, day: 14), // end-date
  )[
    - Accelerated test discovery *8x*, parallelizing *LLM agents* to expose untested edge cases across *25K+ lines*.
    - Engineered pipelines to resolve *1.6K Stryker mutations*, enforcing deterministic validation via *Mocha* and *c8*.
    - Injected AI tests covering *600+ new lines*, applying serial validation to block *Redis/MongoDB* state pollution.
    - Orchestrated *PR workflows*, bypassing CI/CD bottlenecks to safely scale AI test generation across the monolith.
  ]
  #work-heading(
    "TAMUhack", // company
    "Technical Lead", // title
    "College Station, TX", // location
    datetime(year: 2024, month: 11, day: 26), // start-date
    "Present", // end-date
  )[
    - Optimized *Next.js/Astro* render performance by *50%* for *20K+ users* via *GPU-compositing* and *SVG culling*.
    - Scaled *Django* dispatch for *1K+ applicants*, decoupling synchronous email tasks via *async worker queues*.
    - Hardened help-desk APIs via *HMAC-SHA256* signatures and strict timestamp validation blocking *replay attacks*.
    - Architected a pairwise judging platform in *FastAPI* and *PostgreSQL*, standardizing evaluation for *150+ teams*.
  ]
  #work-heading(
    "Flow", // company
    "Software Engineer", // title
    "College Station, TX", // location
    datetime(year: 2024, month: 12, day: 26), // start-date
    datetime(year: 2026, month: 2, day: 26), // end-date
  )[
    - Deployed geospatial ride-matching via *geohashing*, ranking and routing sequential offers for *100+ drivers*.
    - Integrated a *Stripe Connect* payment pipeline, utilizing manual capture auth and scheduled weekly cron payouts.
    - Provisioned event-driven *Cloud Functions* via *Firestore* triggers to chunk and dispatch *Expo* push alerts.
    - Trained *PyTorch* predictive models to map high-demand geographic hotspots, optimizing driver routing margins.
  ]
]

#custom-title("Projects")[
  #project-heading(
    "Mailgun-to-Listmonk Webhook Bridge",
    url: "https://github.com/Ju5t1nL3/mailgun-listmonk-webhook",
    [_Python, FastAPI, Docker, uv_],
  )[
    - Developed a *FastAPI* bridge translating *Mailgun* events to *Listmonk* APIs, resolving an open-source gap.
    - Secured the webhook pipeline via *HMAC-SHA256* signature verification and custom headers to drop spoofed data.
    - Achieved *100% test coverage* in *pytest*, utilizing *Pydantic* schemas to strictly validate JSON transformations.
    - Published a production *GHCR Docker* image, enforcing strict typing and linting via *uv*, *Pyright*, and *Ruff*.
  ]
  #project-heading(
    "Presentation Coach",
    url: "https://github.com/Ju5t1nL3/mailgun-listmonk-webhook",
    "2024 HowdyHack Winner",
    [_Next.js, Tailwind CSS, Flask, OpenCV, Whisper AI_],
  )[
    - Constructed a computer vision pipeline via *OpenCV Haar cascades* to quantify audience eye-contact and retention.
    - Processed local media inputs via *FFmpeg* and *OpenAI Whisper* to transcribe speech and extract temporal data.
    - Parsed presentation *XML*, utilizing *NLTK* and fuzzy text matching to auto-sync speech to slide transitions.
    - Rendered real-time analytics dashboards via *Next.js* and *Chart.js*, streaming multi-metric speaker feedback.
  ]
]

// Use `skills` function to create list with custom rules surrounding indentation and alignment.
// It is specifically for lists directly inside the custom-title section.
#custom-title("Skills")[
  #skills()[
    - *Languages:* C++, Python, TypeScript, HTML/CSS, JavaScript, Go (Golang), Rust, Java, SQL
    - *Frameworks & Libraries:* React, TailwindCSS, FastAPI, GSAP, PyTorch, Django, Next.js, Framer Motion, Zustand, Prisma (ORM), Flask, Node.js, Svelte, Vue.js
    - *Tools & Infrastructure:* Git, GitHub, GitHub Actions, PostgreSQL, Firebase, RESTful APIs, Docker, Railway, Vercel, Microservices Architecture, AWS (S3, Lambda), SQLite, WebSockets, Google Cloud Platform (GCP)
  ]
]
