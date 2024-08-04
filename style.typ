#let good() = {
  box(
    stroke: 1pt + olive,
    radius: 100%,
    height: 7pt,
    width:  7pt,
    inset:  (left: 1pt),
    text(
      fill: green,
      size: 10pt,
      emoji.checkmark,
    ))
}

#let warn() = {
  box(
    stroke: 1pt + orange,
    radius: 100%,
    height: 7pt,
    width:  7pt,
    inset:  (left: 2.4pt),
    text(
      fill: orange,
      weight: "bold",
      size: 9pt,
      "!"
    )
  )
}

#let bad() = {
  box(
    stroke: 1pt + red,
    radius: 100%,
    height: 7pt,
    width:  7pt,
    inset:  (left: 0.3pt, top: 0.5pt),
    text(
      fill: orange,
      size: 9pt,
      weight: "bold",
      "X"
    )
  )
}

#let checkbox(
  check: false
) = {
  box(
    height: 7pt,
    width:  7pt,
    radius: 1pt,
    stroke: 1pt + black,
    fill: luma(230),
    if (check) {
      [X]
    }
  )
}

#let writeup(
  title:  "<title>",
  author: "<author>",
  date:   datetime.today().display("[year]-[month]-[day]"),
  font:   "PT Sans",
  content
) = {
  let page_numbering_style    = "1"
  let heading_numbering_style = "1."

  set text(font: font)

  set page(
    header: {
      grid(
        columns: (50%, 50%),
        align: (left, right),
        smallcaps(title),
        date
      )

      line(length: 100%)
    },

    footer: {
      line(length: 100%)
      grid(
        columns: (50%, 50%),
        align: (left, right),
        smallcaps("by " + author),
        counter(page).display(page_numbering_style)
      )
    }
  )

  set heading(
    numbering:  heading_numbering_style,
    outlined:   true,
    bookmarked: true,
  )

  show heading.where(level: 1): heading => {
    box(
      fill: luma(220),
      inset: (x: 5pt),
      outset: (y: 10pt),
      width: 100%,
      radius: 5pt,
      text(
        size: 25pt,
        weight: "bold",
        underline(heading)
      )
    )
    v(10pt)
  }

  show heading.where(level: 2): heading => {
    grid(
      columns: (auto, auto),
      text(
        size: 15pt,
        heading
      ),
      line(
        start: (5pt, 6.5pt),
        length: 100%,
        stroke: (dash: "dashed"),
      ),
    )
    v(5pt)
  }

  show heading.where(level: 3): heading => {
    text(
      weight: "bold",
      heading
    )
  }

  show table.cell.where(y: 0): strong
  show table: set table(
    fill: (x, y) => {
      if y == 0 {
        gray.lighten(80%)
      }
    }
  )

  show table: table => {
    block(
      stroke: 2pt,
      radius: 5pt,
      clip: true,
      breakable: true,
      table,
    )
  }

  show raw.where(block: true): block.with(
    breakable: true,
    fill: luma(240),
    width: 100%,
    inset: 10pt,
    radius: 5pt,
  )

  show raw.where(block: false): box.with(
    fill: luma(240),
    outset: (y: 2pt),
    inset: (y: 0pt),
    radius: 2pt,
  )

  align(
    center,
    {
      text(
        size: 25pt,
        weight: "bold",
        title
      )
      linebreak()
      text(
        style: "italic",
        size: 15pt,
        "by " + author
      )
      linebreak()
      text(
        style: "italic",
        size: 15pt,
        date
      )
    }
  )

  content
}
