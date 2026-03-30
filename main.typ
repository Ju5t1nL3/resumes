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
    "Hewlett Packard Enterprise", // title
    "Incoming Software Engineer Intern", // company
    "San Jose, CA", // location
    datetime(year: 2026, month: 5, day: 26), // start-date
    datetime(year: 2026, month: 8, day: 22), // end-date
  )[]
]

#custom-title("Projects")[
  #project-heading(
    "Schrute Farms (Bed and Breakfast)", // name
    // "Next.js, TailwindCSS, Postgres",      // stack
    // "schrutefarms.com"                     // project_url
  )[
    - Established and managed a family-run agro-tourism business offering unique activities such as table-making workshops, beet farming tours, and hay rides
    - Increased guest bookings by 50% through effective online marketing and guest engagement
    - Maintained a 4.9/5 guest satisfaction rating on travel review platforms
  ]
  // More projects ...
]

// Use `skills` function to create list with custom rules surrounding indentation and alignment.
// It is specifically for lists directly inside the custom-title section.
#custom-title("Skills")[
  #skills()[
    - *Professional Skills:* Sales Expertise, Leadership, Conflict Resolution, Strategic Planning, Negotiation
    - *Personal Traits:* Hardworking, Alpha Male, Jackhammer, Merciless, Insatiable
    - *Specialized Talents:* Karate (Black Belt), Jujitsu, Werewolf Hunting, Table Making
  ]
]
