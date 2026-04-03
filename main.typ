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
  top-margin: 0.45in,
  font: "New Computer Modern",
  personal-info-font-size: 9.2pt,
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
    "Incoming Software Engineer Intern", // title
    "San Jose, CA", // location
    datetime(year: 2026, month: 5, day: 26), // start-date
    datetime(year: 2026, month: 8, day: 22), // end-date
  )[]
  #work-heading(
    "Flow", // company
    "Software Engineer (Contract/Part-time)", // title
    "College Station, TX", // location
    datetime(year: 2024, month: 12, day: 26), // start-date
    "Present", // end-date
  )[
    - Led backend development of a mobile app to improve ride share experiences with *100+* drivers on board powered by *Google Firebase, Google Maps API, and Stripe*
    - Implemented an advanced AI model engineered to identify and predict high-demand hotspots for drivers' earning potential with *PyTorch*
  ]
  #work-heading(
    "TAMUhack", // company
    "Technical Lead", // title
    "College Station, TX", // location
    datetime(year: 2024, month: 11, day: 26), // start-date
    "Present", // end-date
  )[
    - Plan and develop *accessible* website experiences attracting *20K+ visitors* for one of Texas's largest student-run hackathons with *800+ attendees* powered by *Next.js, Astro, Svelte, React, GSAP, Framer, and more*
    - Processed over *1K+ applications and email sending* using hacker registration system written with *Django*
    - Built a pairwise-comparison judging system improving consistency across *150+ teams* utilizing *React, FastAPI, SQLAlchemy, and PostgreSQL*, with *Pytest* for testing and *REST API structure*
  ]
]

#custom-title("Projects")[
  #project-heading(
    "Mailgun-to-Listmonk Webhook Bridge",
    url: "https://github.com/Ju5t1nL3/mailgun-listmonk-webhook",
    [_Python, FastAPI, Docker, GitHub Actions, Pytest_],
  )[
    - Architected an asynchronous microservice with *FastAPI* to parse, verify, and translate Mailgun event payloads into Listmonk's bounce processing API structure
    - Engineered a fully automated *CI/CD pipeline* using *GitHub Actions* to run rigorous type-checking, execute *Pytest* suites, and publish *Dockerized images* to the GitHub Container Registry
  ]
  #project-heading(
    "Presentation Coach",
    url: "https://github.com/Ju5t1nL3/mailgun-listmonk-webhook",
    "2024 HowdyHack Winner",
    [_Next.js, React, Tailwind CSS, TypeScript, Python_],
  )[
    - Collaborated with team through *Git* to integrate *OpenCV* in *Python* to determine audience engagement through facial recognition and *Whisper* to pull a transcript, identifying repeat and filler words, as well as words per minute}
    - Built a responsive front end using *Next.js* and *Chart.js* to visually display audience retention over time, and *Flask* to store these time changes and correlate time data with audience engagement
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
