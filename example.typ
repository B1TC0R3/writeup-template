#import "style.typ": *

#writeup(
  title:  "Example CTF - Writeup",
  author: "B1TC0R3",
)[
= Challenge Description

There should be a short explanation about the challenge here so
a reader can understand the goal and approach.

= Recon

== Operating System

#table(
  columns: (auto, auto, auto),
  table.header(
    [], [*Operating System*], [*Version*],
  ),
  [#checkbox(check: true)], [Linux], [5.15],
  [#checkbox()], [Windows], [],
  [#checkbox()], [MacOS], [],
  [#checkbox()], [Other], [],
)

Additional notes can go here as well.

== Open Ports

#table(
  columns: (auto, auto, auto, auto),
  table.header(
    [*Port*], [*State*], [*Service*], [*Version*],
  ),
  [80], [open], [http], [nginx 1.18.0],
)

== Host Names

- example.htb
- vhost.example.htb

== Site Map

*example.htb*:

```config
index.php
about.php
...
```

= Exploitation

== Crossite Scripting

No XSS vulnerability could be identified.

== Local File Inclusion

No LFI vulnerability could be identified.

== SQL Injection

#table(
  columns: (auto, auto, auto),
  table.header(
    [*Description*], [*Level/Risk*], [*Result*]
  ),

  table.cell(rowspan: 2, [example]),
  [default], [#warn() Not tested],
  [3/5],     [#warn() Not tested],
)

= Flags

#table(
  columns: 2,
  table.header(
    [*User*], [*Location*], [*Value*],
  ),
  [user], [/home/user/user.txt], [exampleflag],
  [root], [/root/toor.txt], [exampleflag],
)
]
