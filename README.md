# Writeup Template

This project contains a single file typst theme that can be copied and
applied to a new file easly.

The goal is to enable to fast creation of new writeup files on local machines
without the need for the online editor.

An example of the theme can be found in [example.pdf](./example.pdf).
The source code used to create this PDF can be found in [example.typ](./example.typ).

## Installation

1. Download the `style.typ` file.
2. Create your writeup file.
3. Import the `style.typ` into your writeup like so:

```typ
import "style.typ": *
```

## Usage

Tho apply the theme to your content, use the `writeup()` function.
Check out the [example.typ](./example.typ) file for a larger demonstration.

```typ
#writeup(
    title: "<writeup title>",
    author: "<writeup author>"
)[
<All your content goes here>
]
```

Optionally, the date and font can be specified manually with the `date` and `font` parameters.

```typ
#writeup(
    title: "<writeup title>",
    author: "<writeup author>",
    date: "01.01.1997",
    font: "PT Sans"
)[...]
```

## Additional features

There are some additional functions build into the theme:

| Function  | Description |
|-----------|-------------|
| `#good()` | Creates a green checkmark icon. |
| `#warn()` | Creates a orange warning icon.  |
| `#bad()`  | Creates a red error icon.       |
| `#checkbox(check: false|true)` | Create a checkbox icon. |

## Contributing:

Just open an issue or pull request.
